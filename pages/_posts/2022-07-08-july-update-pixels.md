---
title: July 2022 Security update - Pixels
date: 2022-07-08
---

CalyxOS 3.7.0 - Android 12L  is now available for all supported Pixels, i.e. Pixel 3 - Pixel 6

Newer Fairphone and OnePlus builds will be next week, with the security update and additional fixes based on feedback from testing.

## Changelog
* CalyxOS 3.7.0 - Android 12L
* July 2022 Security update (2022-07-05)
* Chromium: 103.0.5060.71 (latest stable)
* Chromium: Drop native autofill support for now
* Bluetooth timeout bugfixes
* Gallery: Take some unnecessary privileges away, allow disabling the app again
* Update all included apps.

### Pixel 3a
* Linux 4.9.317

### Pixel 3
* VoLTE roaming for many U.S and global carriers (Google's June update)
* Linux 4.9.317

### Fixed issues
* Chromium (and other Chromium based browsers) crash on video playback if microG is disabled.
  * Chromium should be fine now
  * For other browsers, it will start working once they're based on Chromium 103

### Known issues
* Creating new work profile quits midway - Will be fixed in next week's build
