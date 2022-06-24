---
date: 2022-06-24
title: CalyxOS Status update - June
---

### Known issues
* Work profile creation fails on 3.6.0
  * Fix almost ready for next update, update will be released as soon as this is done
* Chromium crashing when microG is disabled
  * Investigating

### Chromium based on Bromite
* Latest stable is 103, work in progress
* Reliable updates for Trichrome outside of OS updates work in progress

### SeedVault
* Testing a way to allow backing up more apps

### Devices
#### Pixel 3, 3a
* Microphone low volume fix ready for next update

#### Fairphone 4
* Working on June update with latest firmware plus other fixes
* Stock Android 12 status still unknown, would be super nice to have it before Android 13

#### OnePlus 8T
* Working on June update
* Android 12 firmware update pending

#### OnePlus 9, 9 Pro
* Working on June update
* Android 12 firmware update work in progress

#### Other new devices
* Nothing planned soon as of yet, we'll keep updating this.

### Future planning
* AOSP Security updates are already merged monthly
* Setting up a schedule for various merges (Translation, LineageOS, other apps, etc) to make sure they're always done in a timely manner rather than the current ad-hoc on demand system
* CI (integrated with Gerrit), likely using Jenkins.
* Android 13 rough plans, still months out
