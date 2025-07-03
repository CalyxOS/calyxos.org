/*
  Calyxos.org website search

  This uses the library MiniSearch to implement a simple search engine
  for calyxos.org. A jekyll plugin, site-contents-json.rb, creates
  assets/sitecontents-<unix timestamp>.json which is fetched after
  page load and cached in LocalStorage if enabled:

  type Document {
    page_type: "page" | "post"
    content: String
    title: String | Nil
    url: String
  }

  HTML Template

  <li class="searchresults"><a></a><div><b></b></div></li>

  If the url param q is set, the query is rendered after the documents
  are fetched i.e. https://calyxos.org/search?q=android

  To use in console:

  window.websiteSearch("search term") => Document[]

  Debug:

  window._minisearch

*/
(function () {
  // get variables from jekyll
  // 
  // 
  const SITE_CONTENTS_FILE = "sitecontents-1751503879.json";
  const SITE_CONTENTS_URL =
    "/assets/sitecontents-1751503879.json";

  async function fetchDocuments() {
    if (window.localStorage) {
      try {
        let data = localStorage.getItem(SITE_CONTENTS_FILE);
        if (data) {
          console.debug("Found " + SITE_CONTENTS_FILE + " in localstorage.");
          return JSON.parse(data);
        }
      } catch (err) {
        console.debug("Failed to get item from LocalStorage.", err);
      }
    }

    const response = await fetch(SITE_CONTENTS_URL);

    if (!response.ok) {
      throw new Error("Failed to fetch site contents.");
    }

    const data = await response.json();

    if (window.localStorage) {
      try {
        // Clear old cache
        Object.keys(localStorage)
          .filter((x) => x.search(/sitecontents-[0-9]+\.json/) !== -1)
          .forEach((x) => localStorage.removeItem(x));
        console.debug(
          "Saving " + SITE_CONTENTS_URL + "->localstorage:" + SITE_CONTENTS_FILE
        );
        localStorage.setItem(SITE_CONTENTS_FILE, JSON.stringify(data));
      } catch (err) {
        console.debug("Failed to save response in LocalStorage.", err);
      }
    }

    return data;
  }

  const MAX_LENGTH = 250;

  function smartShort(regex, text) {
    let str = text;

    while (str.length > MAX_LENGTH) {
      let middle = Math.round((str.length - 1) / 2);
      if (str.search(regex) >= middle) {
        str = str.slice(str.indexOf(" ") + 1);
      } else {
        str = str.slice(0, str.lastIndexOf(" "));
      }
    }

    return str;
  }

  function Finder(term) {
    const SepRegex = new RegExp(
      "([\n -,/:{}]|^)(" + term + ")([\n -,/:{}]|$)",
      "ig"
    );

    const AnyRegex = new RegExp("(" + term.toLowerCase() + ")", "ig");

    return {
      sepSearch: (str) => str.search(SepRegex),
      sepShort: (str) => smartShort(SepRegex, str),
      sepBold: (str) => str.replaceAll(SepRegex, "$1<b>$2</b>$3"),
      anySearch: (str) => str.search(AnyRegex),
      anyShort: (str) => smartShort(AnyRegex, str),
      anyBold: (str) => str.replaceAll(AnyRegex, "<b>$1</b>"),
    };
  }

  // stops at first excerpt found
  function findExcerpt(doc) {
    for (const term in doc.match) {
      const finder = Finder(term);
      const fields = doc.match[term].sort().reverse() // "title" is searched first

      for (let field of fields) {
	let text = doc[field].replaceAll(/[ \n]+/g, " ");
	if (finder.sepSearch(text) > -1) {
	  return finder.sepShort(text)
	}
      }

      for (let field of fields) {
	let text = doc[field].replaceAll(/[ \n]+/g, " ");
	if (finder.anySearch(text) > -1) {
	  return finder.anyShort(text)
	}
      }
    }
    console.debug("Failed to find excerpt for terms " + doc.terms.join(',') + " in " + doc.id);
    return doc.content.replaceAll(/[ \n]+/g, " ").slice(0, MAX_LENGTH)
  }

  function renderExcerpt(doc) {
    let excerpt = findExcerpt(doc)

    for (let term of doc.terms) {
      let finder = Finder(term)
      if (finder.sepSearch(excerpt)) {
	excerpt = finder.sepBold(excerpt)
      } else {
	excerpt = finder.anyBold(excerpt)
      }
    }
    const div = document.createElement("div");
    div.innerHTML = "..." + excerpt;

    return div;
  }

  const PER_PAGE = 15


  function renderResults(results) {
    const listItems = results.slice(0, PER_PAGE).map((doc) => {
      const li = document.createElement("li");
      li.classList.add("searchresult");
      const link = document.createElement("a");
      link.textContent = doc.title;
      link.href = doc.url;
      li.appendChild(link);
      li.appendChild(renderExcerpt(doc));
      return li;
    });
    document.getElementById("searchresults").replaceChildren(...listItems);
  }

  function renderNotice(html) {
    const notice = document.getElementById("searchnotice")
    // clear results
    document.getElementById('searchresults').innerHTML = '';
    notice.innerHTML = html
    notice.hidden = false
  }

  // Configure miniSearch
  //   MiniSearch API documentation: https://lucaong.github.io/minisearch
  //   searchOptions: https://lucaong.github.io/minisearch/modules/_minisearch_.html#searchoptions-1
  window._minisearch = new MiniSearch({
    idField: "url",
    searchOptions: { boost: { title: 2 } },
    fields: ["content", "title"],
    storeFields: ["page_type", "url", "title", "content"],
  });

  window.websiteSearch = function (query) {
    return window._minisearch.search(query);
  };

  const SearchIndexReadyEvent = new Event("SearchIndexReady");

  function autoSearch() {
    if (window.location.search) {
      const searchParams = new URLSearchParams(window.location.search);
      if (searchParams.has("q")) {
        const query = searchParams.get("q");
        document.querySelector("#searchbox > input").value = query;
	document.querySelector("#searchbox > button").click()
      }
    }
  }

  window.addEventListener("SearchIndexReady", autoSearch);
  // handle browser forward/back
  window.addEventListener('popstate', autoSearch)

  // on click. also can be triggered by above events
  window.document.querySelector("#searchbox > button").addEventListener("click", () => {
    const query = document.querySelector("#searchbox > input").value;
    if (typeof query === 'undefined' || query.length < 2) {
      renderNotice("<p>2 character minimum</p>")
    } else {
      // add to history if not in history
      const url = new URL(window.location)
      if (url.searchParams.get("q") !== query) {
	url.searchParams.set("q", query);
	window.history.pushState({}, "", url);
      }
      // do the search
      const results = websiteSearch(query)
      // handle no results
      if (results.length > 0) {
	renderResults(results)
	document.getElementById("searchnotice").hidden = true
      } else {
	renderNotice("<p>no results ❗</p>")
      }
    }
  });

  // after page load get documents, add them to MiniSearch, then dispatch ready event
  window.addEventListener("load", (event) => {
    fetchDocuments()
      .then((documents) => window._minisearch.addAllAsync(documents))
      .then(() => window.dispatchEvent(SearchIndexReadyEvent));
  });

})();
