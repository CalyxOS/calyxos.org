---
date: 2022-06-10
title: Chromium based on Bromite
---

We've entirely reworked our Chromium fork to be based on [Bromite](https://bromite.org)

The [stable version](https://chromiumdash.appspot.com/releases?platform=Android) for Android, 102.0.5005.98 is now available in our [F-Droid repo](https://gitlab.com/CalyxOS/calyx-fdroid-repo).

The previous version, 102.0.5005.78 is shipping in the [June update, CalyxOS 3.6.0](https://calyxos.org/news/2022/06/08/june-update-pixels/)

### Background

We've been shipping Chromium since day one, since on Android apart from being a full browser, it also provides the WebView (used by more apps than you'd think - changelog in our Updater, DuckDuckGo Browser, many Reddit apps, etc.)

Additionally, we also ship Tor Browser for protection against tracking, surveillance, and censorship.

Bromite has some very useful features, and scores well on [privacy tests](https://privacytests.org/android.html) thanks to their extensive patches. Thus it was decided that we will start to ship a fork of Bromite as our version of Chromium.

We also used to ship DuckDuckGo Browser as the default, but we've dropped that in the June update.

* Having multiple browsers is confusing for users.
* With a Bromite fork now, we have built in adblocking.

### What you need to do

Nothing!

If you're already running CalyxOS, then you'll get this directly with the [June update, CalyxOS 3.6.0](https://calyxos.org/news/2022/06/08/june-update-pixels/).

We don't plan on making these builds available for normal installation on other ROMs, you can simply install [Bromite](https://bromite.org) directly on those.

### Features

* Built in AdBlocking, enabled by default.
  * Disable globally from Chromium -> Menu (top right) -> Settings -> AdBlock settings
  * Disable per-site from Chromium -> padblock (top left) -> Permissions -> Ads
* Native Android autofill support
* 

### Differences
* We try to build everything we ship in the OS ourselves, and it also gets signed with our private keys.
* We're starting with a [smaller set of patches]() to keep the port manageable on our end.
* Additionally, we build a [different variant](https://chromium.googlesource.com/chromium/src.git/+/master/docs/android_native_libraries.md#Trichrome) than upstream to share some code between WebView and the browser given that we're shipping both at the same time in the OS.
* The idea was that we can always add more later depending on how things go.

### Known issues
* Chromium (and other Chromium based browsers) crash on video playback if microG is disabled. Looking into it.
* Chromium: Enabling native autofill for incognito mode causes a crash, looking into it.

### Future

#### Chromium version updates
Going forward, we will ensure that updates are timely.

As a first step towards this, we started on trying to port to 103 already, and [opened a discussion with Bromite](https://github.com/bromite/bromite/pull/2102) on how to proceed for this version and also going forward.

We will try and get the port done around the time the last/fourth beta is released, which is usually a week or so before the same release gets bumped up to stable.

Example: 102.0.5005.58: Beta -> May 19 2022, Stable -> May 24 2022

#### Delivering those updates to your phone

We've had patches in F-Droid to be able to update Chromium outside OS updates, and while for the most part it works, there have always been reports of some people not being able to update. We've tried a few fixes so far but nothing has been 100% reliable.

To end that once and for all, we're testing [a patch](https://review.calyxos.org/c/CalyxOS/platform_frameworks_base/+/10230) directly to the OS to allow updating this seamlessly. Hopefully that addresses it going forward.

### Links:
* [Bromite](https://bromite.org)
* [Our fork](https://gitlab.com/CalyxOS/platform_external_calyx_chromium)
