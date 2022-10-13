---
title: Another October update
date: 2022-10-13
---

CalyxOS 4.2 - Android 13 is now available for the Google supported Pixels, i.e. Pixel 4 - 6a, and the Fairphone 4

It's in the stable channel so all your devices should be getting the update. Factory image links are available under [[get]].

We will be supporting the Pixel 7 and 7 Pro. We have started receiving phones, and are waiting for the source code.

## Current status

| Device | Build | Status |
| -------| ----- | ------ |
| Pixel 7, 7 Pro | - | [[https://gitlab.com/CalyxOS/calyxos/-/issues/1079]] |
| Pixel 6a | 4.2.3 | Stable |
| Pixel 6, 6 Pro | 4.2.3 | Stable |
| Pixel 5, 4a (5G), 5a | 4.2.3 | Stable |
| Pixel 4a | 4.2.3 | Stable |
| Pixel 4, 4 XL | 4.2.3 | Stable |
| Fairphone 4 | 4.2.2 | Stable |
| Pixel 3a, 3a XL | 4.1.3 | Testing, LTE broken, September security patch |
| Pixel 3, 3 XL | 4.1.3 | Testing, LTE broken, September security patch |
| OnePlus | WiP | To be revisited soon |

## Changelog for 4.2.3 for the Pixels
* CalyxOS 4.2.3 - Android 13 - Tiramisu
* Fix carrier configuration - should improve LTE / 5G / MMS functionality
* Chromium: 106.0.5249.79

## Steps

### Pixel 4 - 6a, stable
1. Backup your data - you can use SeedVault, the included Backup app.
2. Settings -> System -> System update settings -> Check for updates"

### FP4 - stable
1. This is only for users already running CalyxOS. For fresh installs, factory images will be available soon.
2. Backup your data - you can use SeedVault, the included Backup app.
3. Settings -> System -> System update settings -> Check for updates"

### Pixel 3 - 3a, testing
1. Make sure your phone is running the latest stable CalyxOS 3.9.0 - Factory images will be available later. If you're on the previous test Tiramisu build, you can skip this step.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Enable USB Debugging on your phone.
5. From your computer: `adb shell setprop sys.update.channel thirteen`
6. Then, on your phone: Settings -> System -> System update settings -> Check for updates
