---
title: Android 14, December 2024 Security update
date: 2024-12-04
---

* CalyxOS 5.14.0 - Android 14 for FP5, FP4, Moto G52, G42, G32, Pixel 4 - 5a
* Will determine Android 15 status for the above devices after the Android 15 QPR1 release
* Still waiting for Google to release the Android 15 update for Pixel 6 - 9

### Pixel 6 - 9a
* We're still waiting for Google to release their Android 15 update for these devices, which will contain the update to all the device-specific bits that we use.
* As soon as that's released, we'll integrate it and release CalyxOS 6.2.0
* Till then, we figured might as well get the Android 14 update out of the way, while we wait for Google :)

### Android 15 for FP5, FP4, Moto G52, G42, G32, Pixel 4 - 5a
* During Android 14, we had 3 major quarterly updates - December, March and June.
* Each of those brought major changes, which affected functionality on all devices apart from the Pixels Google still supported at the time.
* Thus, for Android 15, we've decided to at least wait for the December Quarterly update before deciding how the Android 15 rollout for these devices should be handled
* We'll post an update once we know more.

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 4 December, Wednesday |  |
| Beta | 5 December, Thursday |  |
| Stable | 9 December, Monday | |

### Changelog
* CalyxOS 5.14.0
* December 2024 Security update
* Chromium: 131.0.6778.104
* Fix Global VPN being turned off upon app uninstallation [#2761](https://gitlab.com/CalyxOS/calyxos/-/issues/2761)
* Fix issue with dark theme scheduling [#2633](https://gitlab.com/CalyxOS/calyxos/-/issues/2633)
* Update all included apps
* Update translations

#### FP5
* Update to FP5.UT2E.B.078.20241105
* Include additional kernel fix for CVE-2024-43093
* Kernel: Update to Linux 5.4.284, ASB-2024-11-05_11-5.4

#### FP4
* Update to FP4.TP2N.C.0128
* Include additional kernel fix for CVE-2024-43093
* Kernel: Update to ASB-2024-11-05_4.19-stable

#### Moto G32, G42, G52
* Include additional kernel fix for CVE-2024-43093
* Kernel: Update to ASB-2024-11-05_4.19-stable

#### Pixel 5a
* Update to AP2A.240805.005.S4
* Include additional kernel fix for CVE-2024-43093

#### Pixel 5, 4a (5G)
* Include additional kernel fix for CVE-2024-43093

#### Pixel 4a, 4, 4 XL
* Kernel: Update to Linux 4.14.355

## Note

{% include install/security_notes.html %}
