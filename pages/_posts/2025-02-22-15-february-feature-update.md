---
title: Android 15, February Feature update
date: 2025-02-22
---

* CalyxOS 6.4.2 - Android 15 is now available for FP5, FP4, Moto G52, G42, G32, Pixel 5 - 9
* Android Auto support, better accessibility, bugfixes, and more!

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Beta | 22 February, Saturday |  |
| Security express | 24 February, Monday |  |
| Stable | 27 February, Thursday | |

### Restrict cleartext traffic feature deprecation
* We've decided to remove the "Restrict cleartext traffic" feature in the next feature update in March.
* For more details, see: [Why we are phasing out the Cleartext Restriction feature](/global-no-cleartext/){:target="_blank"},

### Changelog
* CalyxOS 6.4.2 - February Feature update
* [[android-auto]] support! Enable from Settings -> Connected devices -> Connection preferences -> Android Auto
* Add a Text-to-speech engine by default, eSpeakNG
* Add Talkback screen reader
* Always allow editing APNs.
* Fix MMS sending failures
* Add an option to wipe the device after a number of failed unlock attemps
* Chromium: 133.0.6943.121
* Switch to the new LineageOS Music app, Twelve
* Add the new LineageOS PDF Viewer app, Camelot
* Calendar: Update to Etar 1.0.48
* Launcher: Allow enabling monochrome themed icons for all apps
* The "Restrict Cleartext" feature has been deprecated and will be removing in the next Feature update
* Fix Firewall status bar indicator
* Camera: Fix preview from lockscreen
* Gallery: Fix photo picker
* Fix Always-on-Display burn-in protection
* Fix wrong rounded corners in UI when using custom icon shapes
* Seedvault: Update to 15-5.3
* Seedvault: Added support for user CA certificates
* Seedvault: Fixed issue where many Go server implementations of WebDAV did not work with the WebDAV client in Seedvault
* Seedvault: Bumped the app data quota from 1GB to 3GB
* Seedvault: Nextcloud app is no longer allowed for backup (Use built-in WebDAV Cloud support!)
* Seedvault: Improved handling of metered networks, if disallowed, the backup process will be aborted
* Seedvault: Fixed backup errors with USB when file and app backup are both on
* Seedvault: Fixed overdue backups not automatically starting when USB drives are plugged in
* Seedvault: The size of each app backup is now shown on the restore screen
* Seedvault: Fixed a common error (StaleDataException) causing backups to fail
* Seedvault: Fixed error message when no backups are available to restore
* Seedvault: Implemented a wrapper for the backend with a retrying mechanism, giving us less common errors
* Update all included apps
* Update translations

#### 8 Pro, 9 Pro, 9 Pro XL
* Add Thermometer app. You may have to update it from Aurora Store.

#### FP5
* Update Kernel to ASB-2025-02-05_11-5.4

#### FP4
* Kernel updates

#### Moto G32, G42, G52
* Fix thumbnails of videos
* Kernel updates
