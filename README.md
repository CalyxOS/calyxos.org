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

    rake update-releases

Build the static pages:

    rake build

To view the pages via a local server:

    rake serve


### Debian/buster test build setup

Installing from Debian is easier for people unfamiliar with Ruby
development.  This setup is for editing the site with live preview.
First, make sure [_buster-backports_ is
enabled](https://backports.debian.org/Instructions/).  Then install
the dependencies:

    sudo apt-get install -t buster-backports \
      jekyll ruby-jekyll-feed ruby-jekyll-polyglot ruby-jekyll-toc ruby-rouge po4a
    rm -f Gemfile Gemfile.lock
    jekyll serve


## Adding pages

To modify the navigation menu, edit the file `pages/_data/menu.yml`.

A page can be in the form of `page-name.md` or `page-name/index.md`.

To add a new/blog post, create a file under `pages/_posts` in the form `YYYY-MM-DD-title.md`.

To make linking easier, you can use wiki-style links. For example:

    [[install]] or [[install firmware => install]]

By adding links in this way, the links will still be valid even if you move the 'install' page to a different path in the page hierarchy.

## Auto update firmware download links

Add this to a crontab:

    0 * * * * cd /var/www/calyxos && rake update-releases > /dev/null 2>&1 && rake build > /dev/null 2>&1


## External Sources

Data from these places are pulled in to help generate this site:

* https://gitlab.com/CalyxOS/release.git
* https://gitlab.com/CalyxOS/releases.git
* https://gitlab.com/CalyxOS/platform_prebuilts_calyx_fdroid/-/raw/android11/repo/index.xml

The images on this site are sourced from:

* https://github.com/signalapp/Signal-Android/blob/master/artwork/logo-512.png
* https://github.com/guardianproject/orbot/blob/a608a964964506e52878ef55e5b500fd54af90fb/ic_launcher.svg
* https://code.briarproject.org/briar/briar/-/blob/master/briar-android/artwork/logo_vertical_black.svg
* https://en.wikipedia.org/wiki/Outline_of_Google#/media/File:Google_2015_logo.svg
* https://github.com/k9mail/k-9/blob/master/images/K-9_Mail.svg
* https://fontawesome.com (CC BY 4.0 https://fontawesome.com/license)

## TODO

Localization: https://guardianproject.info/2020/04/23/figuring-out-crowdsourced-translation-of-websites/
