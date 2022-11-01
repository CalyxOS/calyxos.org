---
title: New builds for Pixel 3 - 7, FP4
date: 2022-11-01
---

CalyxOS 4.2.6 - Android 13 for the Pixels 3 - 7, and also the Fairphone 4.

Pixel 4 - 7, and FP4 - the builds have been pulled from beta due to an issue.

It's available as a test release for the Pixel 3, 3a and will be released to beta if all goes well.

## Changelog
* CalyxOS 4.2.6 - Android 13 - Tiramisu
* Fix VPN issues with mobile data on certain carriers
* microG: v0.2.25.223616
* microG: FIDO Support - allows using U2F and Fido devices via USB or NFC with supported Browsers (Chromium and Firefox) and to sign into your Google Account in microG.
* microG: FIDO Support - Note that some devices are still not fully supported.
* SeedVault: Fix "Backup now" being greyed out when storing backups on Nextcloud / DAVx5
* Settings: Add toggle for Connectivity check. Settings -> Network and internet -> Connectivity check
* Allow using Bromite System WebView again (Bromite 106 or higher required)

## Devices

### Pixel 7
* CalyxOS 4.2.6, builds pulled due to an issue, will be available again soon.

#### Known issues
* When Smooth Display is turned off, fingerprint doesn't work reliably
* Face unlock is not available

### Pixel 4 - 6a
* CalyxOS 4.2.6, builds pulled due to an issue, will be available again soon.
* Should be fully working

### Pixel 3, 3a
* CalyxOS 4.2.6 is now available for testing
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

### Pixel 3, 3a
1. Make sure your phone is running the latest stable CalyxOS 3.9.0 - Factory images will be available later. If you're on the previous test Tiramisu build, you can skip this step.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Enable USB Debugging on your phone.
5. From your computer: `adb shell setprop sys.update.channel thirteen`
6. Then, on your phone: Settings -> System -> System update settings -> Check for updates
