require 'nokogiri'

module SiteContentsJson
  def self.create(jekyll_doc)
    nDoc = Nokogiri::HTML.parse(jekyll_doc.content)
    # skip button bar
    nDoc.search('div.button-bar').remove
    # cleanup whitespace
    text_content = nDoc.text.strip.split(/\n+/).join("\n")

    {
      "page_type" => jekyll_doc.type.to_s,
      "content" => text_content,
      "title" => jekyll_doc.data['title'],
      "url" => jekyll_doc.url
    }
  end
end

Jekyll::Hooks.register :site, :post_write do |site|
  output_file = File.join(site.dest, "assets/sitecontents-#{site.time.to_i}.json")
  puts "Creating site contents json: #{output_file}"

  documents = []

  site.pages.each do |page|
    next if !page.html? || page.url == "/" || page.url == "/404.html"

    documents << SiteContentsJson.create(page)
  end

  site.posts.docs.each do |post|
    documents << SiteContentsJson.create(post)
  end

  File.open(output_file, 'w') do |f|
    f.write JSON.generate(documents)
  end
end
