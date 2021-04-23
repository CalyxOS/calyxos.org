# CalyxOS website

## Directory layout

* pages: The source content for the site.
* docs: Rendered static pages. These are not committed to this repo.

## Building the static pages

Prerequisites:

    sudo apt install git ruby bundler build-essential libxml2 libxslt1.1 zlib1g-dev

Clone git repo:

    git clone https://gitlab.com/CalyxOS/calyxos.org.git

Install gems for development

    cd calyxos.org
    gem install bundler
    bundle install --path=vendor

Install gems for deployment

    cd calyxos.org
    gem install bundler
    bundle config set deployment true
    bundle

Update the firmware release download links:

    rake update-releases

Build the static pages:

    rake build

To view the pages via a local server:

    rake develop


### Alternatie debian package install

Typically, ruby is distributed with a Gemfile, which uses the
`bundle` and `gem` commands to install the particular versions of
ruby libraries (gems) that are needed.

However, on Debian, many gems are also packages as Debian packages.
Installing using Debian packages may be easier if you are not familar
with ruby.

First, make sure [_buster-backports_ is
enabled](https://backports.debian.org/Instructions/). Then install
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

## Development

Development is done on [Gerrit](https://review.calyxos.org/q/project:CalyxOS%252Fcalyxos.org)

A staging version of the website can be viewed on [GitLab](https://calyxos.gitlab.io/calyxos.org/)

## External Sources

Data from these places are pulled in to help generate this site:

* https://gitlab.com/CalyxOS/release.git
* https://gitlab.com/CalyxOS/releases.git
* https://gitlab.com/CalyxOS/platform_prebuilts_calyx_fdroid/-/raw/android11-qpr1/repo/index.xml

The images on this site are sourced from:

* https://github.com/signalapp/Signal-Android/blob/master/artwork/logo-512.png
* https://github.com/guardianproject/orbot/blob/a608a964964506e52878ef55e5b500fd54af90fb/ic_launcher.svg
* https://code.briarproject.org/briar/briar/-/blob/master/briar-android/artwork/logo_vertical_black.svg
* https://en.wikipedia.org/wiki/Outline_of_Google#/media/File:Google_2015_logo.svg
* https://github.com/k9mail/k-9/blob/master/images/K-9_Mail.svg
* https://fontawesome.com (CC BY 4.0 https://fontawesome.com/license)

## TODO

Localization: https://guardianproject.info/2020/04/23/figuring-out-crowdsourced-translation-of-websites/
