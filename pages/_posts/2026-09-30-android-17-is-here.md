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
* CalyxOS 8.0.0.0 - Android 17
* Chromium: 155.0.8059.16
* microG: v0.3.17.252432
* microG: Improve location handling
* microG: Fix Google location settings redirect
* microG: Fix security issues in Location, Fido, GCM, Asset Modules, and Auth

### Device specific
#### Fairphone 4
* Update to FP4.QREL.15.20.0

#### Fairphone 5
* Update to FP5.VT32.C.116

#### Fairphone 6
* Update to FP6.QREL.16.111.0
* Note: Fingerprint functionality is currently not working. See [issue on GitLab](LINK) for details.

#### moto g 5G - 2024
* Update to [fogo stock update number]

#### moto g34 5G and g45 5G
* Update to [fogos stock update number]

#### Pixel 10a
* First CalyxOS build available when 8.0.0.0 rolls out to stable

### Device Flasher

Device Flasher 1.3 is out and all links on our install pages have been updated accordingly. This  update includes the following changes:

* Pixel 10a detection
* ARM support and unifying x86_64 + arm64 handling
* Enabling macOS support for both Apple Silicon and Intel processors, with updated platform-tools
* In-tool checks for Anti-Rollback index issues on applicable Motorola devices to prevent bootloader locking when an index mismatch is detected

## Note

{% include install/security_notes.html %}
