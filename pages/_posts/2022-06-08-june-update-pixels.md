---
title: June 2022 Security update - Pixels
date: 2022-06-08
---

CalyxOS 3.6.0 - Android 12L  is now available for all supported Pixels, i.e. Pixel 3 - Pixel 6

Newer Fairphone and OnePlus builds will be available later, with the security update and additional fixes based on feedback from testing.

## Changelog
* CalyxOS 3.6.0 - Android 12L
* June 2022 Security update & Feature drop (2022-06-05)
* [Chromium: Switch to a Bromite fork with many features!](https://calyxos.org/news/2022/06/14/chromium-bromite/)
* Chromium: Adblocking built-in, ads are blocked by default. Control per-site by tapping the padlock, and then permissions.
* Chromium: 102.0.5005.78
* Camera: Add QR code Scanner, usable by launcher shortcut (long press icon)
* Also accessible by a Quick Settings Tile
* Exempt Bluetooth from location indicators
* Entirely redesigned SetupWizard, following Material You
* Switch to gesture navigation by default for new installs.
* Drop DuckDuckGo Privacy Browser. It'll still be kept installed if you had it already.
* F-Droid: 1.15.2, switch to using APK signed by F-Droid (instead of us.)
* Update all included apps.

### Pixel 4, 4a, 5, 4a 5g, 5a, 6, 6 Pro
* Support automatic high brightness mode

### Known issues
* Chromium (and other Chromium based browsers) crash on video playback if microG is disabled. Looking into it.
* Chromium: Enabling native autofill for incognito mode causes a crash, looking into it.
