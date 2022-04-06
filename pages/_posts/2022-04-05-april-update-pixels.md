---
title: April 2022 Security update - Pixels
date: 2022-04-05
---

CalyxOS 3.4.0 - Android 12L is now available for all supported Pixels, i.e. Pixel 3 - Pixel 6

Newer Fairphone and OnePlus builds will be available later, with the security update and additional fixes based on feedback from testing.

## Changelog
* CalyxOS 3.4.0 - Android 12L
* April 2022 Security update (2022-04-05)
* Chromium: 99.0.4844.88 (version 100 work in progress)
* Calendar: Update to latest upstream version (Etar)
* Add a firewall indicator to the status bar. Shows an icon when the current app is blocked by Datura firewall.
* Firewall indicator can be turned off from Settings -> System -> Status bar -> System icons
* Fix icon shape and fonts being reset on reboot or wallpaper change.
* Hide app feature: Fix for work profile by not requiring developer options to be enabled anymore to use this feature.

### Known issues
* The firewall indicator icon is sometimes shown on the home screen - that's because the default Launcher does not have internet access
