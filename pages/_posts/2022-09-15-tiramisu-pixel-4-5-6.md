---
title: Tiramisu - Android 13 - Pixel 4 - 6a
date: 2022-09-15
---

CalyxOS 4.1 - Android 13 is now avaiable for testing for the Google supported Pixels, i.e. Pixel 4 - 6a

We've done some basic testing internally, and are also simultaneously doing more extensive testing. Based on that and the feedback from testers, we'll bump it to beta and then eventually stable.

Pixel 3, 3a and Fairphone 4 are still under investigation, and we'll try to post an update on their status ASAP.

We will also revisit OnePlus devices after that.

## Steps
1. Make sure your phone is running the latest stable CalyxOS 3.9.0 - Factory images will be available later.
2. Backup your data - you can use SeedVault, the included Backup app.
3. Enable USB Debugging on your phone.
4. From your computer: `adb shell setprop sys.update.channel thirteen`
5. Then, on your phone: Settings -> System -> System update settings -> Check for updates

## Changelog
* CalyxOS 4.1.0 - Pixel 4, 4 XL, 4a, 6, 6 Pro, 6a
* CalyxOS 4.1.1 - Pixel 4a (5G), 5a
* CalyxOS 4.1.2 - Pixel 5
* September 2022 Security update (2022-09-05)
* Chromium: 105.0.5195.124 (105.0.5195.136 available through F-Droid testing repo)

* More to be added here later

## Known issues
### Common
* Launcher All apps screen is slightly cut off at the top

### Pixel 4a (5G), 5, 5a
* Camera not working

### Pixel 6a
* Fingerprint not working

## IMPORTANT

{% include install/arb_notes.html %}
