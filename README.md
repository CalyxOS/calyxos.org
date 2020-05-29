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

    ./update_releases

Build the static pages:

    make build

To view the pages via a local server:

    make serve

## TODO

Localization: https://guardianproject.info/2020/04/23/figuring-out-crowdsourced-translation-of-websites/
