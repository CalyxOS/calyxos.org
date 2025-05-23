---
title: April 2025 Feature update
date: 2025-04-25
---

* CalyxOS 6.6.22 - April 2025 Feature update for FP5, FP4, Moto g32, g42, g52, Pixel 4a (5G) - 9
* One of our biggest yet with a lot of features and long-pending bug fixes
* Upcoming devices are work in progress

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Beta | 25 April, Friday | 6.6.22 |
| Security express | 25 April, Friday | 6.6.22 |
| Beta | 30 April, Wednesday | 6.6.23, with fixes |
| Security express | 30 April, Wednesday | 6.6.23, with fixes |
| Stable | 1 May, Thursday | 6.6.23 |


### Changelog
* CalyxOS 6.6.23
* April 2025 Feature update
* Temporarily remove charging control suppport
* Phasing out the Cleartext Restriction feature [#2987](https://gitlab.com/CalyxOS/calyxos/-/issues/2987)
* Allow configuring timeout for microphone and camera access, from Settings -> Security and privacy -> Privacy controls [#1597](https://gitlab.com/CalyxOS/calyxos/-/issues/1597)
* Chromium: 135.0.7049.111
* Chromium: Don't save payment methods or addresses by default [#3060](https://gitlab.com/CalyxOS/calyxos/-/issues/3060)
* Chromium: Increase wait before declaring HTTPS unavailable [#2974](https://gitlab.com/CalyxOS/calyxos/-/issues/2974)
* Chromium: Ask before opening apps [#2655](https://gitlab.com/CalyxOS/calyxos/-/issues/2655)
* microG: Display data being set to Google in app [#713](https://gitlab.com/CalyxOS/calyxos/-/issues/713)
* microG: v0.3.7
* microG: Work Profile: You can now sign into various work accounts that setup a work profile when using microG. [#1799](https://gitlab.com/CalyxOS/calyxos/-/issues/1799)
* microG: Play Feature Delivery: Apps can request installation of additional languages or features from split packages. You can activate this from microG Settings > Play Store
* microG: Face detection: This release ships with initial support for Google's Face Detection API. This functionality is still very incomplete, but works for some apps using it.
* microG: Improve Barcode Scanning APIs
* microG: Various fixes for quick login and third-party Google sign-in
* microG: DroidGuard: Disable access to hardware attestation.
* microG: Various fixes to improve support for Google Apps
* Seedvault Backup: 15-5.5
* Seedvault: Unify scheduling of app and file backup, now they always run one after the other
* Seedvault: Fix bug where we didn't find any backups, if user had only file backups
* Seedvault: Launch foreground service when finalizing backup to prevent system from freezing us
* Seedvault: Auto-retry more WebDAV connection errors
* Settings: Protect sensitive data in mobile network settings
* Settings: Fix unrestricted data toggle switches [#2547](https://gitlab.com/CalyxOS/calyxos/-/issues/2547)
* Keyboard: Various fixes [#3077](https://gitlab.com/CalyxOS/calyxos/-/issues/3077) [#2916](https://gitlab.com/CalyxOS/calyxos/-/issues/2916) [#1901](https://gitlab.com/CalyxOS/calyxos/-/issues/1901) [#1890](https://gitlab.com/CalyxOS/calyxos/-/issues/1890)
* Camera: Fix wrong orientation of pictures [#1450](https://gitlab.com/CalyxOS/calyxos/-/issues/1450)
* PDF Viewer: Fix opening of saved files [#3071](https://gitlab.com/CalyxOS/calyxos/-/issues/3071)
* Messaging: Fix MMS download [#3121](https://gitlab.com/CalyxOS/calyxos/-/issues/3121)
* Remove eSpeak launcher icon [#3040](https://gitlab.com/CalyxOS/calyxos/-/issues/3040)
* Fix Android Auto showing up in private space and secondary users [#3032](https://gitlab.com/CalyxOS/calyxos/-/issues/3032)
* Add Aurora Store & F-Droid to private space by default, if installed [#2933](https://gitlab.com/CalyxOS/calyxos/-/issues/2933)
* Fix various settings which didn't work correctly across multiple users
* Support Private space on secondary users
* Fix auto brightness toggle in status bar [#3069](https://gitlab.com/CalyxOS/calyxos/-/issues/3069)
* Switch to Thunderbird for new installs
* Add test property to restart apps that were stopped by backup [#2887](https://gitlab.com/CalyxOS/calyxos/-/issues/2887) [#2816](https://gitlab.com/CalyxOS/calyxos/-/issues/2816)
* Update all included apps
* Update translations

#### FP4
* Fix some media playback issues [#3189](https://gitlab.com/CalyxOS/calyxos/-/issues/3189)

#### Moto G32, G42, G52
* Always show and allow editing enhanced 4G calling setting [#2895](https://gitlab.com/CalyxOS/calyxos/-/issues/2895)

#### Pixel 6 - 9
* Always show and allow editing enhanced 4G calling setting [#2895](https://gitlab.com/CalyxOS/calyxos/-/issues/2895)

## Note

{% include install/security_notes.html %}
