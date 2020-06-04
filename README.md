# CalyxOS website

## Directory layout

* pages: The source content for the site.
* docs: Rendered static pages. These are not committed to this repo.

## Building the static pages

Prerequisites:

    gem install bundler
    git clone git@0xacab.org:calyx/os/calyxos.org.git
    cd calyxos.org
    bundle config set deployment true
    bundle

Update the firmware release download links:

    ./update-releases

Build the static pages:

    make build

To view the pages via a local server:

    make serve

## Adding pages

To modify the navigation menu, edit the file `pages/_data/menu.yml`.

A page can be in the form of `page-name.md` or `page-name/index.md`.

To add a new/blog post, create a file under `pages/_posts` in the form `YYYY-MM-DD-title.md`.

To make linking easier, you can use wiki-style links. For example:

    [[install]] or [[install firmware => install]]

By adding links in this way, the links will still be valid even if you move the 'install' page to a different path in the page hierarchy.

## Auto update firmware download links

Add this to a crontab:

    0 * * * * cd /var/www/calyxos && ./update-releases > /dev/null 2>&1 && make build > /dev/null 2>&1



## TODO

Localization: https://guardianproject.info/2020/04/23/figuring-out-crowdsourced-translation-of-websites/
