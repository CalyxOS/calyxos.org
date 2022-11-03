---
title: New builds for Pixel 3 - 7, FP4
date: 2022-11-01
---

CalyxOS 4.2.7 - Android 13 is now available the Pixels 3 - 7, and also the Fairphone 4.

It's currently in the beta channel, and will be bumped to stable later if all goes well. Factory images will be available at that time as well.

## Changelog
* CalyxOS 4.2.7 - Android 13 - Tiramisu
* Fix VPN issues with mobile data on certain carriers
* microG: v0.2.25.223616
* microG: FIDO Support - allows using U2F and Fido devices via USB or NFC with supported Browsers (Chromium and Firefox) and to sign into your Google Account in microG.
* microG: FIDO Support - Note that some devices are still not fully supported.
* SeedVault: Fix "Backup now" being greyed out when storing backups on Nextcloud / DAVx5
* Settings: Add toggle for Connectivity check. Settings -> Network and internet -> Connectivity check
* Allow using Bromite System WebView again (Bromite 106 or higher required)

### Changelog from 4.2.6 (It was briefly in beta, and then pulled due to the issues reported)
* microG: Fix notifications not working / toggle turning off
* Pixel 6, 6 Pro, 6a: Fix Night Light, Reading mode, and also the crashes due to that.

## Devices

### Pixel 7
* CalyxOS 4.2.7 is now available as beta

#### Known issues
* When Smooth Display is turned off, fingerprint doesn't work reliably
* Face unlock is not available

### Pixel 4 - 6a
* CalyxOS 4.2.7 is now available as beta
* Should be fully working

### Pixel 3, 3a
* CalyxOS 4.2.7 is now available as beta
* LTE has been fixed. Thanks to LineageOS and PixelExperience
* Mobile data, calls (both incoming and outgoing), and texts work fine
* There were no other major issues reported with the previous tested builds

### Fairphone 4
* Should be fully working

### OnePlus
* This is next on our list now that the 3 and 3a are done, and we hope to be able to share an update soon.

## Steps
### Pixel 4 - 7, FP4 - beta
1. Settings -> System -> System update settings -> Release channel -> Beta
2. Then, tap the "Check for updates" button.

### Pixel 3, 3a - beta, first Android 13 build
1. Make sure your phone is running the latest stable CalyxOS 3.9.0 - Factory images will be available later. If you're on the previous test Tiramisu build, you can skip this step.
2. Backup your data - you can use SeedVault, the included Backup app.
3. Settings -> System -> System update settings -> Release channel -> Beta
4. Then, tap the "Check for updates" button.
