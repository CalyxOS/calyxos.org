# CalyxOS website

## Directory layout

* pages: The source content for the site.
* static: Rendered static pages. These are not committed to this repo.
* tasks: Various `rake` tasks, such as fetching the updated list of releases. Run `rake -T` for the list of available tasks.

## Install prerequisites

### MacOS

    brew install git
    brew install ruby

### Debian & Ubuntu

    sudo apt install git ruby bundler build-essential libxml2 libxslt1.1 zlib1g-dev

## Install Gems

First, clone git repo:

    git clone https://gitlab.com/CalyxOS/calyxos.org.git -b dev

### The ruby way

Install gems for development:

    cd calyxos.org
    gem install bundler
    bundle install --path=vendor

Install gems for deployment:

    cd calyxos.org
    gem install bundler
    bundle config set deployment true
    bundle

### The Debian way

Instead of using bundler to fetch the gems from rubygems.org, you can use Debian or Ubuntu packages:

First, make sure [_buster-backports_ is enabled](https://backports.debian.org/Instructions/). Then install
the dependencies:

    sudo apt-get install -t buster-backports \
      jekyll ruby-jekyll-feed ruby-jekyll-polyglot ruby-jekyll-toc ruby-rouge po4a
    rm -f Gemfile Gemfile.lock

## Building the static pages

Build the static pages:

    rake update-releases       # updates factory image links
    rake update-app-list       # updates app list
    rake update-back-to-stock  # update stock factory image links
    rake generate-data-pages   # re-creates pages that are built from pages/_data/
    rake build

You only need to run the `update-*` and `generate-` rake tasks once in a while (the upstream data doesn't change very often).

## Editing pages

To view the pages via a local server:

    rake server

To modify the navigation menu, edit the file `pages/_data/menu.yml`.

A page can be in the form of `page-name.md` or `page-name/index.md`.

To add a new/blog post, create a file under `pages/_posts` in the form `YYYY-MM-DD-title.md`.

To make linking easier, you can use wiki-style links. For example:

    [[install]] or [[install firmware => install]]

By adding links in this way, the links will still be valid even if you move the 'install' page to a different path in the page hierarchy.

## Deployment

The 'master' branch of this git repository is automatically deployed to <https://calyxos.org>

The 'dev' branch of this git repository is automatically deployed to <https://calyxos.gitlab.io/calyxos.org/>

## Development

Development is done on [Gerrit](https://review.calyxos.org/q/project:CalyxOS%252Fcalyxos.org) - for more details see the [contribution guide](https://calyxos.org/development/gerrit/)

The 'dev' branch is used for development, and 'master' is considered the stable branch.

Changes must first go the 'dev' branch, after which they can be cherry-picked or merged into 'master' as desired.

## External Sources

Data from these places are pulled in to help generate this site:

* https://gitlab.com/CalyxOS/release.git
* https://gitlab.com/CalyxOS/releases.git
* https://gitlab.com/CalyxOS/platform_prebuilts_calyx_fdroid/-/raw/android11-qpr1/repo/index.xml
* https://github.com/AOSPAlliance/vendor_google_devices/raw/android11/config.json

The images on this site are sourced from:

* Various illustrations: https://undraw.co/illustrations
* Signal icon: https://github.com/signalapp/Signal-Android/blob/master/artwork/logo-512.png
* Orbot icon: https://github.com/guardianproject/orbot/blob/a608a964964506e52878ef55e5b500fd54af90fb/ic_launcher.svg
* Briar icon: https://code.briarproject.org/briar/briar/-/blob/master/briar-android/artwork/logo_vertical_black.svg
* Google icon: https://en.wikipedia.org/wiki/Outline_of_Google#/media/File:Google_2015_logo.svg
* K-9 icon: https://github.com/k9mail/k-9/blob/master/images/K-9_Mail.svg
* Misc icons: https://fontawesome.com (CC BY 4.0 https://fontawesome.com/license)

## Branding

Color definitions:

* `--calyx-light`: `rgba(154, 202, 60, 1)` aka `#9ACA3C`
* `--calyx-base`: `rgba(98, 128, 38, 1)` aka `#628026`
* `--calyx-dark`: `rgba(78, 102, 31, 1)` aka `#4E661F`

## TODO

Localization: https://guardianproject.info/2020/04/23/figuring-out-crowdsourced-translation-of-websites/
