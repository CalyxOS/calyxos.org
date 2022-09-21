---
title: More Tiramisu - Android 13 - Pixel 3 - 6a
date: 2022-09-21
---

CalyxOS 4.1 - Android 13 is now available for testing for all Google Pixels.

We've done some basic testing internally, and are also simultaneously doing more extensive testing. Based on that and the feedback from testers, we'll bump it to beta and then eventually stable. Factory images will be available at that time.

Fairphone 4 Android 13 port is work in progress, we hope to be able to release it next week.

We will be revisiting OnePlus devices after that.

## Changelog
* CalyxOS 4.1.3 - Pixel 3, 3XL, 3a, 3a XL
* CalyxOS 4.1.4 - Pixel 4, 4 XL, 4a, 4a (5G), 5, 5a,6, 6 Pro, 6a
* Chromium: 105.0.5195.136
* VoLTE and Wi-Fi calling fixed. If it worked on
* Pixel 4a (5G), 5, 5a: Camera has been fixed

## Known issues
### Common
* Launcher All apps screen is slightly cut off at the top

### Pixel 3, 3 XL, 3a, 3a XL
* LTE is broken. It is under investigation

### Pixel 4, 4 XL
* Front camera is not working. Will be fixed for the next build
* Face unlock is not working on new installs due to the above. Somehow it's fine on upgrades.

### Pixel 6a
* Fingerprint not working on upgrades. Fresh installs are ok

## Steps
1. Make sure your phone is running the latest stable CalyxOS 3.9.0 - Factory images will be available later.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Enable USB Debugging on your phone.
5. From your computer: `adb shell setprop sys.update.channel thirteen`
6. Then, on your phone: Settings -> System -> System update settings -> Check for updates

## IMPORTANT

{% include install/arb_notes.html %}
