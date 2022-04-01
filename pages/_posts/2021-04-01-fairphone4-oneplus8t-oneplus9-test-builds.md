---
title: Fairphone 4, OnePlus 8T, OnePlus 9 test builds now available
date: 2022-04-01
---

CalyxOS 3.3.2 - Android 12L is now available for testing for the Fairphone 4, OnePlus 8T, OnePlus 9

These are test builds and intended for testers. Please report any issues to the testers channel.

We've tried to test everthing we possibly can, for the most part things should be fine.

Bootloader can be re-locked on all 3 devices, and OTA updates work. This should mean any other issues if found can be fixed via an OTA :)

Stable builds will be available at a later date, stay tuned!

## Testers channel

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |

## Downloads

| Name | Link | SHA256 checksum | [Signature](/install/verify) |
| ---- | ---- | --------------- | ---------------- |
| Fairphone 4 "FP4" | [Factory image](https://release.calyxinstitute.org/FP4-factory-22303020.zip) | 50200f4a8464c2903e8850cd993a9ffa3e39e64063c5d785dbf031ed5e970386 | [minisig](https://release.calyxinstitute.org/FP4-factory-22303020.zip.minsig) |
| OnePlus 8T "kebab" | [Factory image](https://release.calyxinstitute.org/kebab-factory-22303020.zip) | f408550c0877d688888e533c6dc217fd3a831fc1197320b6316b91261cba3452 | [minisig](https://release.calyxinstitute.org/kebab-factory-22303020.zip.minsig) |
| OnePlus 9 "lemonade" | [Factory image](https://release.calyxinstitute.org/lemonade-factory-22303020.zip) | ee2125aca85178ae5119bb8e507abd3a383f7ef166cbfe135747c8391563384d | [minisig](https://release.calyxinstitute.org/lemonade-factory-22303020.zip.minsig) |

## Installation

* For now installation has to be performed manually, by downloading, unzipping, and then running either `flash-all.bat` on Windows, or `flash-all.sh` on Linux or MacOS. The latest version of `fastboot` needs to be installed
* Device flasher support will come when stable builds are ready, to make installation as seamless as possible.
* We're currently using proprietary parts from Android 11 for OnePlus given that they are yet to release Android 12 kernel source code.
* In the future firmware will be included in our zips - we need to figure out a way to handle the 3 different variants / regions.

### Fairphone 4 "FP4"
* [Get code to enable unlocking from Fairphone, and follow their instructions](https://www.fairphone.com/en/bootloader-unlocking-code-for-fairphone-3/)
* Unlock the bootloader using `fastboot flashing unlock`
* Install CalyxOS
* Re-lock the bootloader using `fastboot flashing lock`

### OnePlus 8T "kebab"
* Unlock the bootloader using `fastboot flashing unlock`
* Install stock Android 11, choose the correct version for your variant / region.

<!-- https://forums.oneplus.com/threads/oxygenos-11-0-13-13-eu-glo-and-11-0-12-12-in-for-the-oneplus-8t.1547733/ and https://forum.xda-developers.com/t/oneplus-8t-rom-ota-oxygen-os-repo-of-oxygen-os-builds.4193183/ -->

| Version and variant / region | Link | MD5 checksum |
| ------- | ---- | --------------- |
| 11.0.13.13.KB05AA North America / Global | [Factory image](https://oxygenos.oneplus.net/OnePlus8TOxygen_15.O.31_OTA_0310_all_2202182359_ca105dab55fd44e6.zip) | 28244120aa8a505454e459e7dcf7499c |
| 11.0.13.13.KB05BA Europe | [Factory image](https://otafsg-cost-az.coloros.com/OnePlus8T_EEA/OnePlus8TOxygen_15.E.31_GLO_0310_2202182356/patch/amazone2/GLO/OnePlus8TOxygen/OnePlus8TOxygen_15.E.31_GLO_0310_2202182356/OnePlus8TOxygen_15.E.31_OTA_0310_all_2202182356_c7bd2.zip) | ecc4bccb555141973baf8cfb28a4ad04 |
| 11.0.12.12.KB05DA India | [Factory image](https://otafsg-cost-az.coloros.com/OnePlus8T_IND/OnePlus8TOxygen_15.I.29_GLO_0290_2202182359/patch/amazone2/GLO/OnePlus8TOxygen/OnePlus8TOxygen_15.I.29_GLO_0290_2202182359/OnePlus8TOxygen_15.I.29_OTA_0290_all_2202182359_e054f01fb15b914.zip) | 8bf8bcb47a8567f3681a69fec77232c6 |

* Install CalyxOS
* Re-lock the bootloader using `fastboot flashing lock`

### OnePlus 9 "lemonade"
* Unlock the bootloader using `fastboot flashing unlock`
* Install stock Android 11, choose the correct version for your variant / region

<!-- https://forums.oneplus.com/threads/oxygenos-11-2-10-10-for-the-oneplus-9-and-oneplus-9-pro.1521570/ and https://forum.xda-developers.com/t/oneplus-9-rom-ota-oxygen-os-repo-of-oxygen-os-builds.4254579/ -->

| Version and variant / region | Link | MD5 checksum |
| ------- | ---- | --------------- |
| 11.2.10.10.LE25AA North America / Global | [Factory image](https://android.googleapis.com/packages/ota-api/package/580d47a7dde5862a306c07ff939cc4fe1520860f.zip) | e42fedd14cdcaf0d25eef91c5f1b9088 |
| 11.2.10.10.LE25BA Europe | [Factory image](https://otafsg-cost-az.coloros.com/OnePlus9_EEA/OnePlus9Oxygen_22.E.13_GLO_0130_2111112104/patch/amazone2/GLO/OnePlus9Oxygen/OnePlus9Oxygen_22.E.13_GLO_0130_2111112104/OnePlus9Oxygen_22.E.13_OTA_0130_all_2111112104_f4acbf.zip) | f13ff35a3ad91899bf41c3aff3d98900 |
| 11.2.10.10.LE25DA India | [Factory image](https://otafsg-cost-az.coloros.com/OnePlus9_IND/OnePlus9Oxygen_22.I.13_GLO_0130_2111112106/patch/amazone2/GLO/OnePlus9Oxygen/OnePlus9Oxygen_22.I.13_GLO_0130_2111112106/OnePlus9Oxygen_22.I.13_OTA_0130_all_2111112106_b924739.zip) | 3049f05bf059ad36ca09279e396a7596 |

* Install CalyxOS
* Re-lock the bootloader using `fastboot flashing lock`

## Known issues

* If you don't lock the bootloader, SetupWizard will show a bootloader lock warning page. Currently the reboot button there doesn't work.
* Sometimes the firewall indicator icon in the status bar is seen even when not intended.

### Fairphone 4 "FP4"
* Bluetooth audio broken with some headets (SBC, AAC codec)

### OnePlus 8T "kebab"
* No known issues

### OnePlus 9 "lemonade"
* USB restrictions not fully working.
