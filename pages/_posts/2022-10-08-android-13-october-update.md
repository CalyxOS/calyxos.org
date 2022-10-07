---
title: Android 13 - October Security update
date: 2022-10-08
---

CalyxOS 4.2 - Android 13 is now available for the Google supported Pixels, i.e. Pixel 4 - 6a

We had this in beta for a longer time than planned, however that has allowed us to ensure stability.

Thanks for all the testing, feedback and bugreports!

We also have some builds available for the FP4 and Pixel 3, and are working on them.

## Current status

| Device | Build | Status |
| -------| ----- | ------ |
| Pixel 6a | 4.2.1 | Stable |
| Pixel 6, 6 Pro | 4.2.0 | Stable |
| Pixel 5, 4a (5G), 5a | 4.2.0 | Stable |
| Pixel 4a | 4.2.0 | Stable |
| Pixel 4, 4 XL | 4.2.0 | Stable |
| Pixel 3a, 3a XL | 4.1.3 | Testing, LTE broken, September security patch |
| Pixel 3, 3 XL | 4.1.3 | Testing, LTE broken, September security patch |
| FP4 | 4.1.7 and 4.1.9-2 | Testing, September security patch, October update work in progress |

## Changelog for 4.2
* CalyxOS 4.2 - Android 13 - Tiramisu
* October Security update (2022-10-05)
* Chromium: 106.0.5249.65
* Show Material You color picker (Long press Home Screen -> Home Settings)
* Re-add previous translations

## Steps

### Pixel 4 - 6a, stable
1. Backup your data - you can use SeedVault, the included Backup app.
2. Settings -> System -> System update settings -> Check for updates"

### Pixel 3 - 3a, testing
1. Make sure your phone is running the latest stable CalyxOS 3.9.0 - Factory images will be available later. If you're on the previous test Tiramisu build, you can skip this step.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Enable USB Debugging on your phone.
5. From your computer: `adb shell setprop sys.update.channel thirteen`
6. Then, on your phone: Settings -> System -> System update settings -> Check for updates

### FP4, testing
1. Make sure your phone is running the latest stable CalyxOS 3.9.0. If you're on the previous test Tiramisu build, please wait for the next update, this build won't work.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Enable USB Debugging on your phone.
   Note: This will not work if you're already on Android 13 / 4.1.7
5. From your computer: `adb shell setprop sys.update.channel thirteen`
6. Then, on your phone: Settings -> System -> System update settings -> Check for updates

### Fresh installs, factory images

See [[install]]

Note: FP4 factory images will be available when stable
