---
title: CalyxOS 8.0.0.0 - Android 17 is here!
date: 2026-09-30
---

* CalyxOS 8.0.0.0 running Android 17 is now available for all supported devices
* First official build included for Pixel 10a


All supported devices have been tested internally, although there may still be a few minor bugs. If you run into any issues, please report them.

We've decided to roll out this release to both the Beta and Security express channels because it includes significant security patches for multiple devices and apps. Note that the Pixel 10a build will be made available when this update rolls out to Stable; please see the rollout dates below.

Alongside this release, we're also releasing an update to our device-flasher install tool with the most exciting changes enabling installations from MacOS and adding safeguards to prevent bootloader locking in case of Anti-Rollback index mismatches.

### Rollout

| Release channel  | Date |
| ---------------- | ---- |
| Beta | 30 September, Wednesday |
| Security express | 30 September, Wednesday |
| Stable | 5 October, Monday |

### Changelog
* CalyxOS 8.0.0.0
* Android 17
* Chromium: 155.0.8059.16
* microG: v0.3.17.252432
* Calendar (Etar): v1.0.57
* Update included apps
* Update translations
* Update kernel

### Features and bug fixes
* Update to Android 17
* Android Auto setup: Fix launching browser when clicking "Tap to read more"
* Dialer: Promote in call notification to chip
* Files: Enable Material Design 3 theme
* Messaging: Fix white background revealed by conversation list swipe in dark theme
* Messaging: Fix white background in contact search/recipient picker in dark theme
* Messaging: Enable elegant text height for arabic script rendering
* Seedvault: Show preference in Accounts and Backup settings
* Seedvault: Exclude SMS provider from backup on non-main users
* Seedvault: Warn when Backup now has nothing selected to back up
* Settings: Make the Settings search bar style consistent
* Theme Picker: Update available color bundles from Pixel 10 stock OS

### The Fairphone (Gen. 6/6+)
* Add support for Gen. 6+ EU and US models
* Fix available RAM being limited to 8GB on the Gen. 6+ model
* Update to FP6.QREL.16.111.0.20260831102426
* Relax thermal limits to prevent app downloads stalling
* Fix USB restriction feature
* Note: There is a known issue with the fingerprint sensor. A fix is in progress.

### Fairphone 5
* Update to FP5.VT32.C.116.20260903

### Fairphone 4
* Update to FP4.QREL.15.20.0.20260821145807

### moto g32, g42, g52
* Fix thermal HAL support

### moto g34 5G and g45 5G
* Update to V1UGS35H.75-14-3-10
* Fix thermal HAL support

### moto g84
* Fix thermal HAL support

### moto g 5G - 2024
* Update to V1UFNS35H.193-20-16
* Fix thermal HAL support

### Pixel 6+
* Update to CP2A.260705.006
* Update kernel to android14-6.1-2025-12_r30

### Pixel 8+
* Update to CP2A.260805.005
* Update kernel to android14-6.1-2025-12_r30

### Pixel 10a
* Initial official build

### Pixel Tablet
* Enable desktop windowing mode on internal displays

### SHIFTphone 8
* Fix available RAM being limited to 8GB

### Device Flasher

Device Flasher 1.3 is out and all links on our install pages have been updated accordingly. This  update includes the following changes:

* Pixel 10a detection
* ARM support and unifying x86_64 + arm64 handling
* Enabling macOS support for both Apple Silicon and Intel processors, with updated platform-tools
* In-tool checks for Anti-Rollback index issues on applicable Motorola devices to prevent bootloader locking when an index mismatch is detected

## Note

{% include install/security_notes.html %}
