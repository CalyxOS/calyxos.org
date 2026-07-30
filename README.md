# CalyxOS website

## Directory layout

* pages: The source content for the site.
* pages/_plugins: Jekyll Plugins.
* static: Rendered static pages. These are not committed to this repo.
* tasks: Rake tasks.

## Building the static pages

Prerequisites on debian:

    sudo apt install git ruby bundler build-essential libxml2 libxslt1.1 zlib1g-dev

Clone git repo:

    git clone https://gitlab.com/CalyxOS/calyxos.org.git -b main

Install gems:

    cd calyxos.org
    gem install bundler
    bundle install --path=vendor

Build the static pages:

    rake build

To view the pages via a local server:

    rake develop

Update the firmware release download links:

    rake update-releases

Update the app list:

    rake update-app-list

## Using docker

Build docker image

    docker build -t calyxos.org:latest .

View on localhost

    docker run --rm -p 8080:80 calyxos.org:latest

## Adding pages

To modify the navigation menu, edit the file `pages/_data/menu.yml`.

A page can be in the form of `page-name.md` or `page-name/index.md`.

To add a new/blog post, create a file under `pages/_posts` in the form `YYYY-MM-DD-title.md`.

To make linking easier, you can use wiki-style links. For example:

    [[install]] or [[install firmware => install]]

By adding links in this way, the links will still be valid even if you move the 'install' page to a different path in the page hierarchy.

## Deployment

The 'main' branch of this git repository is automatically deployed to <https://calyxos.org> and to <https://calyxos.gitlab.io/calyxos.org/>.

## Development

Development is done on [Gerrit](https://review.calyxos.org/q/project:CalyxOS%252Fcalyxos.org) - for more details see the [contribution guide](https://calyxos.org/development/gerrit/)

## External Sources

Data from these places are pulled in to help generate this site:

* https://gitlab.com/CalyxOS/release.git
* https://gitlab.com/CalyxOS/releases.git
* https://gitlab.com/CalyxOS/lfs_prebuilts_calyx_fdroid/-/raw/main/repo/index-v1.json

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
