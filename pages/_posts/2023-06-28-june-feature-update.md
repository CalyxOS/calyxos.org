---
title: June 2023 Feature update
date: 2023-06-28
---

CalyxOS 4.10.2 - June 2023 Feature update is now available for the Pixels, FP4 and SHIFT6MQ

It's currently in the Beta and Security express channel, and will be bumped to Stable depending on feedback

### Pixel Tablet
* Work in progress, very close, follow at <https://gitlab.com/CalyxOS/calyxos/-/issues/1676>

### Pixel Fold
* Work in progress, follow at <https://gitlab.com/CalyxOS/calyxos/-/issues/1677>

### Changelog
* CalyxOS 4.10.2
* June 2023 Feature update
* Chromium 114.0.5735.196 (latest stable)
* Re-add ability to pause apps from the Launcher
* Fix crash while trying to change wallpaper
* Network traffic: It can now be on left, right or center, depending on the camera notch.
* microG: Reduce push service heartbeat interval to help with notifications
* Enable lockscreen shortcuts, configurable from long press on home screen -> Wallpaper and style -> Shortcuts
* Firewall: Under the hood improvements
* Enable widgets for work profiles created using the built in "Work Profile" app.
* Contacts: Allow storing contacts on device even when a Google account is added.
* Font and icon shape settings moved to long press on home screen -> Wallpaper and style
* Drop Aurora Services - it worked the same as "Session Installer" on CalyxOS anyways.
* Aurora Store will keep working the same as before.

#### Pixel 6 - 7a
* Fix "Long press on fingerprint sensor to unlock phone"

#### FP4
* CalyxOS 4.10.2-2 (23410022)
* Update to FP4.SP29.B.069.20230510
* Tapping the fingerprint scanner wakes up the device, only if configured to do so. Settings -> Fingerprint -> Manage fingerprints -> Touch to unlock anytime

### Note

{% include install/security_notes.html %}
