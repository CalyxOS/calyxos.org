# CalyxOS website

## Directory layout

* pages: The source content for the site.
* docs: Rendered static pages. These are not committed to this repo.

## Building the static pages

Prerequisites:

    gem install bundler
    git clone git@0xacab.org:calyx/os/calyxos.org.git
    cd calyxos.org
    bundle

Build the static pages:

    cd calyxos.org
    make build

To view the pages via a local server:

    cd calyxos.org
    make serve
