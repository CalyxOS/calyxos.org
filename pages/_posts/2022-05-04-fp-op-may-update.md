---
title: May 2022 Security update - Fairphone 4, OnePlus 8T, 9, 9 Pro
date: 2022-05-04
---

CalyxOS 3.5.0 - Android 12L is now available for Fairphone 4, OnePlus 8T, OnePlus 9

These are still test builds and intended for testers. Please report any issues to the testers channel.

We've tried to test everthing we possibly can, for the most part things should be fine.

Test builds are available for the OnePlus 9 Pro as well.

## Testers channel

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |

## Path towards stable

### Fairphone 4
* Updating `device-flasher` to support it.
* Website changes.

### OnePlus 8T, 9, 9 Pro
* Updating `device-flasher` to support it.
* `flash-all.sh` changes for these devices.
* Automatic install and updates for correct regional firmware (NA/Global, EU and India)
* Update to latest Android 12 firmware where kernel source is available.

## Changelog

### Fairphone 4
* Change to new material sounds, please check your ringtone/notification/alarm from Settings -> Sounds
* Fix bluetooth audio
* Update to latest stock firmware

### OnePlus 8T, 9
* Change to new material sounds, please check your ringtone/notification/alarm from Settings -> Sounds

### OnePlus 9 Pro
* Initial build

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
| OnePlus 8T "kebab" | [Factory image](https://release.calyxinstitute.org/kebab-factory-22305000.zip) | 7544eaac20c2f6c4593af4d80acfeb5f3dfd4b0b7bd7a040fbad9916eb70b801 | [minisig](https://release.calyxinstitute.org/kebab-factory-22305000.zip.minisig) |
| OnePlus 9 "lemonade" | [Factory image](https://release.calyxinstitute.org/lemonade-factory-22305000.zip) | 5fbd08401e3d6cefa5464832bde923cca84fab4dd9efefc3948d8154b810e94f | [minisig](https://release.calyxinstitute.org/lemonade-factory-22305000.zip.minisig) |
| OnePlus 9 Pro "lemonadep" | [Factory image](https://release.calyxinstitute.org/lemonadep-factory-22305000.zip) | a9a456724c5abc0590f08ea797d0301c88efa446636e97970fdd41d2507fc4ff | [minisig](https://release.calyxinstitute.org/lemonadep-factory-22305000.zip.minisig) |

## Preparing your device

### Fairphone 4 "FP4"
* [Get code to enable unlocking from Fairphone, and follow their instructions](https://www.fairphone.com/en/bootloader-unlocking-code-for-fairphone-3/)
* Unlock the bootloader using 
  1. `fastboot flashing unlock_critical`
  2. `fastboot flashing unlock`
* Follow installation steps below

### OnePlus 8T "kebab"
* Unlock the bootloader using `fastboot flashing unlock`
* Install stock Android 11, choose the correct version for your variant / region.

<!-- https://forums.oneplus.com/threads/oxygenos-11-0-13-13-eu-glo-and-11-0-12-12-in-for-the-oneplus-8t.1547733/ and https://forum.xda-developers.com/t/oneplus-8t-rom-ota-oxygen-os-repo-of-oxygen-os-builds.4193183/ -->

| Version and variant / region | Link | MD5 checksum |
| ------- | ---- | --------------- |
| 11.0.13.13.KB05AA North America / Global | [OTA Update](https://oxygenos.oneplus.net/OnePlus8TOxygen_15.O.31_OTA_0310_all_2202182359_ca105dab55fd44e6.zip) | 28244120aa8a505454e459e7dcf7499c |
| 11.0.13.13.KB05BA Europe | [OTA Update](https://otafsg-cost-az.coloros.com/OnePlus8T_EEA/OnePlus8TOxygen_15.E.31_GLO_0310_2202182356/patch/amazone2/GLO/OnePlus8TOxygen/OnePlus8TOxygen_15.E.31_GLO_0310_2202182356/OnePlus8TOxygen_15.E.31_OTA_0310_all_2202182356_c7bd2.zip) | ecc4bccb555141973baf8cfb28a4ad04 |
| 11.0.12.12.KB05DA India | [OTA Update](https://otafsg-cost-az.coloros.com/OnePlus8T_IND/OnePlus8TOxygen_15.I.29_GLO_0290_2202182359/patch/amazone2/GLO/OnePlus8TOxygen/OnePlus8TOxygen_15.I.29_GLO_0290_2202182359/OnePlus8TOxygen_15.I.29_OTA_0290_all_2202182359_e054f01fb15b914.zip) | 8bf8bcb47a8567f3681a69fec77232c6 |

* Follow installation steps below

### OnePlus 9 "lemonade"
* Unlock the bootloader using `fastboot flashing unlock`
* Install stock Android 11, choose the correct version for your variant / region

<!-- https://forums.oneplus.com/threads/oxygenos-11-2-10-10-for-the-oneplus-9-and-oneplus-9-pro.1521570/ and https://forum.xda-developers.com/t/oneplus-9-rom-ota-oxygen-os-repo-of-oxygen-os-builds.4254579/ -->

| Version and variant / region | Link | MD5 checksum |
| ------- | ---- | --------------- |
| 11.2.10.10.LE25AA North America / Global | [OTA Update](https://android.googleapis.com/packages/ota-api/package/580d47a7dde5862a306c07ff939cc4fe1520860f.zip) | e42fedd14cdcaf0d25eef91c5f1b9088 |
| 11.2.10.10.LE25BA Europe | [OTA Update](https://otafsg-cost-az.coloros.com/OnePlus9_EEA/OnePlus9Oxygen_22.E.13_GLO_0130_2111112104/patch/amazone2/GLO/OnePlus9Oxygen/OnePlus9Oxygen_22.E.13_GLO_0130_2111112104/OnePlus9Oxygen_22.E.13_OTA_0130_all_2111112104_f4acbf.zip) | f13ff35a3ad91899bf41c3aff3d98900 |
| 11.2.10.10.LE25DA India | [OTA Update](https://otafsg-cost-az.coloros.com/OnePlus9_IND/OnePlus9Oxygen_22.I.13_GLO_0130_2111112106/patch/amazone2/GLO/OnePlus9Oxygen/OnePlus9Oxygen_22.I.13_GLO_0130_2111112106/OnePlus9Oxygen_22.I.13_OTA_0130_all_2111112106_b924739.zip) | 3049f05bf059ad36ca09279e396a7596 |

* Follow installation steps below

### OnePlus 9 Pro "lemonadep"
* Unlock the bootloader using `fastboot flashing unlock`
* Install stock Android 11, choose the correct version for your variant / region

<!-- https://forums.oneplus.com/threads/oxygenos-11-2-10-10-for-the-oneplus-9-and-oneplus-9-pro.1521570/ and https://forum.xda-developers.com/t/oneplus-9-pro-rom-ota-oxygen-os-repo-of-oxygen-os-builds.4254587/ -->

| Version and variant / region | Link | MD5 checksum |
| ------- | ---- | --------------- |
| 11.2.10.10.LE15AA North America / Global | [OTA Update](https://android.googleapis.com/packages/ota-api/package/a074a7205a681509f1b84d6a2e0f75ddc2c6ab9b.zip) | 2d832840fc5530fd1108aab656366664 |
| 11.2.10.10.LE15BA Europe | [OTA Update](https://otafsg-cost-az.coloros.com/OnePlus9Pro_EEA/OnePlus9ProOxygen_22.E.13_GLO_0130_2111112110/patch/amazone2/GLO/OnePlus9ProOxygen/OnePlus9ProOxygen_22.E.13_GLO_0130_2111112110/OnePlus9ProOxygen_22.E.13_OTA_0130_all_2111112110_a28e911b11ec5.zip) | dff15aeeb0a26315d7b734e4773273a1 |
| 11.2.10.10.LE15DA India | [OTA Update](https://otafsg-cost-az.coloros.com/OnePlus9Pro_IND/OnePlus9ProOxygen_22.I.13_GLO_0130_2111112104/patch/amazone2/GLO/OnePlus9ProOxygen/OnePlus9ProOxygen_22.I.13_GLO_0130_2111112104/OnePlus9ProOxygen_22.I.13_OTA_0130_all_2111112104_4f909a76.zip) | 09c31b70fc4e9fe534f31650d9f571e1 |

* Follow installation steps below

## CalyxOS Installation

* For now installation has to be performed manually, by downloading, unzipping, and then running either `flash-all.bat` on Windows, or `flash-all.sh` on Linux or MacOS. The latest version of `fastboot` needs to be installed
* Re-lock the bootloader using `fastboot flashing lock`
* **DO NOT** lock critical **DO NOT**

## Notes
* We're currently using proprietary parts from Android 11 for OnePlus given that they are yet to release Android 12 kernel source code.
