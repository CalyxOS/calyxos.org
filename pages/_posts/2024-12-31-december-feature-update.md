---
title: December 2024 Feature update
date: 2024-12-31
---

* CalyxOS 6.2.2 - Android 15 for Pixel 6 - 9
* CalyxOS 5.14.1 - Android 14 for FP5, FP4, Moto G52, G42, G32, Pixel 4 - 5
* New microG, SeedVault, and more

### Rollout

| Version | Release channel  | Date   | Notes |
| ------- | ---------------- | ------ | ------ |
| 6.2.2 | Beta | 27 December, Friday | |
| 5.14.1 | Beta | 31 December, Tuesday | |

#### Known issues
* Some apps using maps crash. A fix is in the works, and this page will be updated with the details as soon as it's available

### Changelog
#### 6.2.2 - Android 15
* CalyxOS 6.2.2
* December 2024 Feature update
* microG: Fix some google apps not working after recent updates (again)
* microG: v0.3.6.244735
* microG: Online location sources - prompt to choose one
* microG: Many other fixes and improvements from the past few months
* Add Private Space feature
* Chromium: 131.0.6778.200
* Fix installation of updated apps on creating new work profile / user
* SeedVault: 15-5.2
* SeedVault: It is now possible to verify the integrity of app and file backups, partially or fully
* SeedVault: Allow changing backup location when USB drive isn't plugged in
* SeedVault: Fix work profile USB backup
* SeedVault: A launch button is now shown for apps that are force-stopped so that they can be backed up
* Allow disabling lock screen user switcher
* Allow user switching when system user locked
* Improve verification of links apps can open
* Allow turning off work profile on end of work hours
* Fix creation of work profile in certain cases
* Fix status bar padding
* Remove support for no longer updated Mulch WebView.
* Update all included apps

#### 5.14.1 - Android 14
* CalyxOS 5.14.1
* December 2024 Feature update
* microG: Fix some google apps not working after recent updates
* microG: v0.3.6.244735
* microG: Online location sources - prompt to choose one
* microG: Many other fixes and improvements from the past few months
* Chromium: 131.0.6778.200
* Fix installation of updated apps on creating new work profile / user
* SeedVault: 14-5.2
* SeedVault: New backup format using compression and deduplication (same as Android 15)
* SeedVault: Can still restore old backups, but old Seedvault can't restore backups from this version
* SeedVault: It is now possible to verify the integrity of app and file backups, partially or fully
* SeedVault: Allow changing backup location when USB drive isn't plugged in
* SeedVault: Fix work profile USB backup
* SeedVault: Faster and more reliable backups making snapshots that can individually be restored
* SeedVault: Auto-cleaning of old backups
* SeedVault: All backups now mimic device-to-device (allowing backup for all apps)
* SeedVault: All backups now use a high per-app app quota
* SeedVault: Show more information for backups available to restore
* SeedVault: Fix "Waiting to back up..." showing for apps
* SeedVault: A launch button is now shown for apps that are force-stopped so that they can be backed up
* Remove support for no longer updated Mulch WebView.
* Update all included apps
* Updated translations

#### FP5
* Update to FP5.UT2H.B.088.20241122
* Kernel: Update to Linux 5.4.286, ASB-2024-12-05_11-5.4

#### FP4
* Kernel: Update to Linux 4.19.324, ASB-2024-12-05_4.19-stable

#### Moto G32
* Update to T2SNS33.73-22-3-11
* Kernel: Update to Linux 4.19.324, ASB-2024-12-05_4.19-stable

#### Moto G42
* Kernel: Update to Linux 4.19.324, ASB-2024-12-05_4.19-stable

#### Moto G52
* Update to T2SRS33.72-22-4-9
* Kernel: Update to Linux 4.19.324, ASB-2024-12-05_4.19-stable

#### Pixel 5a, 5, 4a (5G)
* Enable charging limit


## Note

{% include install/security_notes.html %}