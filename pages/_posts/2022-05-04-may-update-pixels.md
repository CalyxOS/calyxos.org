---
title: May 2022 Security update - Pixels
date: 2022-05-04
---

CalyxOS 3.5.0 - Android 12L is now available for all supported Pixels, i.e. Pixel 3 - Pixel 6

It is currently in the beta channel, and will be bumped to the stable channel later after additional testing and feedback. Factory images will be available at that time as well.

Newer Fairphone and OnePlus builds will be available soon, with the security update and additional fixes based on feedback from testing.

## Changelog
* Minimize screen unlock delay
* Cross profile file sharing - copy files to work profile from the default Files app
* Seedvault: Allow storing work profile and secondary user backups on USB drives. Allows restore too!
* Switch Gallery app to LineageOS based on CAF - same as Android 11
* Dialer: Allow call recording in countries where legal without consent from both parties
* New icons for all system apps, from LineageOS
* Chromium: 100.0.4896.127 (version 101 work in progress)
* New sounds for UI effects (unlock, charging, etc.)
* New material sound options for Ringtone, Notification and Alarm
* Add 3 new languages: Asturian (Spain), Scottish Gaelic (UK), Welsh (UK), from LineageOS
* Firewall status bar indicator: Don't show for launcher
* Status bar icons: Fix vibrate / mute / alarm
* USB detection fixes
* Use a thinner font for the lockscreen clock
* Fix addition of Emergency contacts
* AudioFX icon is now hidden by default, access from Music -> Any Song -> Menu -> Equalizer
* Clock: Material You redesign
* Keyboard: Material You redesign
* Launcher: Fix occasional crash
* Recorder: Bugfixes and improvements
* Enable hotspot VPN usage by default, to prevent leaks
* Show permission usage timeline for more permissions under Settings -> Privacy
* MozillaNlpBackend: Update to 1.5.0
* Remove some default included apps. They'll still be kept installed if you had them already.
* Drop OpenKeychain - no longer actively developed
* Drop LocationPrivacy - hasn't been updated in a while, not working properly on Android 12
* Drop YubicoAuthenticator - hasn't been updated in a while
* Update all included apps.
* Update translations for all apps, and the OS.

## Known issues
* "Phone Services" shows as using location. Working on it.
* If you had hidden Gallery before this update, you cannot unhide. Workaround, run `adb shell pm install-existing com.android.gallery3d` from a computer.
