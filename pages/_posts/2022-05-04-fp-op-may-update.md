---
title: May 2022 Security update - Fairphone 4, OnePlus 8T, 9, 9 Pro
date: 2022-05-04
---

CalyxOS 3.5.0 - Android 12L is now available for Fairphone 4

These are still test builds and intended for testers. Please report any issues to the testers channel.

We've tried to test everthing we possibly can, for the most part things should be fine.

OnePlus 8T, 9 and 9 Pro builds have been pulled - please see [OnePlus Android 12 relock issue](https://calyxos.org/news/2022/07/06/oneplus-android-12-relock-issue/) for more details. 

## Testers channel

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |

## Path towards stable

### Fairphone 4
* Updating `device-flasher` to support it.
* Website changes.

### OnePlus 8T, 9, 9 Pro
* Please see [OnePlus Android 12 relock issue](https://calyxos.org/news/2022/07/06/oneplus-android-12-relock-issue/) for more details.

## Changelog

### Fairphone 4
* Change to new material sounds, please check your ringtone/notification/alarm from Settings -> Sounds
* Fix bluetooth audio
* Update to latest stock firmware

### Common for all
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
* If you had hidden Gallery before this update, you cannot unhide. Looking into it.
* Default ringtone / notification / alarm reset. One time thing, we changed sounds for new devices
* For most users BT audio will now work, however if BT audio still isn't working for you, then:
  1. Enable Developer Options
  2. Turn on "Disable Bluetooth A2DP hardware offload"
  3. Keep Developer Options enabled

## Downloads

* If you were already running the previous build, you will receive this as an OTA update
* For new installations, follow below steps:

| Name | Link | SHA256 checksum | [Signature](/install/verify) |
| ---- | ---- | --------------- | ---------------- |
| Fairphone 4 "FP4" | [Factory image](https://release.calyxinstitute.org/FP4-factory-22305000.zip) | a0205a9b56483852696da880e54c98948d3f05331e524e67e27a902f72bc48d4 | [minisig](https://release.calyxinstitute.org/FP4-factory-22305000.zip.minisig) |
| OnePlus 8T "kebab" | | Please see [OnePlus Android 12 relock issue](https://calyxos.org/news/2022/07/06/oneplus-android-12-relock-issue/) for more details |
| OnePlus 9 "lemonade" | | Please see [OnePlus Android 12 relock issue](https://calyxos.org/news/2022/07/06/oneplus-android-12-relock-issue/) for more details |
| OnePlus 9 Pro "lemonadep" | | Please see [OnePlus Android 12 relock issue](https://calyxos.org/news/2022/07/06/oneplus-android-12-relock-issue/) for more details  |

## Preparing your device

### Fairphone 4 "FP4"
* [Get code to enable unlocking from Fairphone, and follow their instructions](https://www.fairphone.com/en/bootloader-unlocking-code-for-fairphone-3/)
* Unlock the bootloader using
  1. `fastboot flashing unlock_critical`
  2. `fastboot flashing unlock`
* Follow installation steps below

## CalyxOS Installation

* For now installation has to be performed manually, by downloading, unzipping, and then running either `flash-all.bat` on Windows, or `flash-all.sh` on Linux or MacOS. The latest version of `fastboot` needs to be installed
* Re-lock the bootloader using `fastboot flashing lock`
* **DO NOT** lock critical **DO NOT**
