---
title: September 2024 Feature update
date: 2024-09-25
---

* CalyxOS 5.11.2 - September 2024 Feature update for Pixel 4 and newer, Fairphone, Motorola
* Android 15, Pixel 9 work in progress
* Pixel 3, 3a, SHIFT6MQ are EOL, but will receive another update

## CalyxOS 5.11.2
### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Beta | 25 September, Wednesday |  |
| Security express | 27 September, Friday |  |
| Stable | 2 October, Wednesday | |

### Changelog
* CalyxOS 5.11.2
* September 2024 Feature update
* microG: Fix unexpected registration and notifications state [#2674](https://gitlab.com/CalyxOS/calyxos/-/issues/2674)
* System: Fixes for VPN-covered DNS traffic [#2660](https://gitlab.com/CalyxOS/calyxos/-/issues/), [#2680](https://gitlab.com/CalyxOS/calyxos/-/issues/2660)
* Chromium: 129.0.6668.54 (latest stable)
* Chromium: Switch to self-hosted adblock filter [#2679](https://gitlab.com/CalyxOS/calyxos/-/issues/2679)
* Chromium: Fix some AMP / Google News links [#2689](https://gitlab.com/CalyxOS/calyxos/-/issues/2689)
* Chromium: Prevent some unwanted sign-in-related connections [#2703](https://gitlab.com/CalyxOS/calyxos/-/issues/2703)
* Seedvault: Update to [14-4.1](https://github.com/seedvault-app/seedvault/releases/tag/14-4.1), many new features included
* Seedvault: It is now possible to restore after setting up a profile
* Seedvault: It is now possible to select what to restore (e.g. apps, files...)
* Firewall: Refresh app list on new install & uninstalls
* Firewall: Fix handling of VPN-only apps after restore of backup [#2586](https://gitlab.com/CalyxOS/calyxos/-/issues/2586)
* Firewall: Fix blocking of updated apps that newly have INTERNET permission [#2657](https://gitlab.com/CalyxOS/calyxos/-/issues/2657)
* Camera: Fix front camera intent preview mirroring
* Camera: Add support for mute button and mic mute gesture
* Calendar: Updates from upstream Etar, version 1.0.47
* Messaging: Fix animated GIFs [#2535](https://gitlab.com/CalyxOS/calyxos/-/issues/2535)
* Work Hours: Fix stopping of work profile on second reminder [#2462](https://gitlab.com/CalyxOS/calyxos/-/issues/2462)
* Update all included apps

## Android 15
* Work in progress
* Still waiting for Google to release it for the Pixels to get the required proprietary files

## Pixel 9
* Work in progress, will be released after Android 15

## Pixel 4, 4a
* We're looking into possibilities to extend support for these devices further.
* The options are:
  * Get Android 15 working on these, and support that for some time
  * Keep Android 14 maintained further to extend support
* We'll post an update once we have some more info.

## Pixel 3, 3a, SHIFT6MQ
* We're ending support for these devices
* We will release another update or two with as many bugfixes as possible, to have a better last build

## Note

{% include install/security_notes.html %}