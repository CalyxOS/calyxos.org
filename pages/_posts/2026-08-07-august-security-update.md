---
title: August 2026 Security update
date: 2026-08-07
---

* CalyxOS 7.2.4.20 - Android 16 - available for all supported devices
* August security update

### Rollout

| Release channel  | Date   |Notes | 
| ---------------- | ------ |------ | 
| Security express | 7 August, Friday   ||
| Beta | 10 August, Monday   ||
| Stable | 10 June, Monday  ||

### Changelog
* Chromium: 151.0.7922.71
* microG: v0.3.16.252432
* Calendar (Etar): v1.0.56
* Update all included apps
* Update translations
* Fix keyboard dictonary popup theme
* Remove the Disallow 2G toggle on devices that do not support toggling it
* Aperture: Force dark navigation bar in camera view
* Calculator: Fix button text size scaling
* DeskClock: Increase importance of all notifications so that they show on lockscreen
* Etar: Allow any day of the week to be set as the week start day
* Etar: Prevent Etar from overriding external calendar sync settings
* Etar: Use Storage Access Framework to avoid external storage permissions
* microG: Add support for Google Maps timeline
* microG: Fix Play Integrity issues
* microG: FIDO bug fixes and improvements

### Device specific changes
* Fix eSIM installation on Pixel devices when microG is not used
* Update firmware/proprietary files for FP4, FP5, bangkk, fogo, fogos, and otter
* Enable FM Radio support on otter

## Note

{% include install/security_notes.html %}