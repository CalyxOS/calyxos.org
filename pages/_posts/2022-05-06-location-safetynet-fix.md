---
title: Location indicator and Safetynet fix
date: 2022-05-07
---

CalyxOS 3.5.1 - Android 12L is now available for all supported devices, i.e. Pixel 3 - Pixel 6, and Fairphone 4, OnePlus 8T, 9 and 9 Pro

It is currently in the beta channel, and will be bumped to the stable channel later after additional testing and feedback. Factory images will be available at that time as well.

Going forward, we'll be testing the releases even more and make sure things like this get caught early, especially before builds hit stable.

## Changelog
* Fix "Phone Services" location indicator spam.
* This was merely a UI bug. A code change by Google this month made it so that the Phone app
  accessing cellular information like it always has got reported as location access.

### Pixels 3a - 6
* microG SafetyNet Basic attestation is now working. Device Registration needs to be enabled.

## Known issues
### Common
* If you had hidden Gallery before this update, you cannot unhide. Workaround, run `adb shell pm install-existing com.android.gallery3d` from a computer.
* New icons don't show up for all apps. Workaround: Change Icon Shape from Settings -> Display, and change it back.

### Fairphone, OnePlus
* Default ringtone / notification / alarm reset. One time thing, we changed sounds for new devices

### Fairphone 4
* For most users BT audio will now work, however if BT audio still isn't working for you, then:
  1. Enable Developer Options
  2. Turn on "Disable Bluetooth A2DP hardware offload"
  3. Keep Developer Options enabled
