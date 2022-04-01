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

### Fairphone 4 "FP4"
* [Get code to enable unlocking from Fairphone, and follow their instructions](https://www.fairphone.com/en/bootloader-unlocking-code-for-fairphone-3/)
* Unlock the bootloader using `fastboot flashing unlock`
* Install CalyxOS
* Re-lock the bootloader using `fastboot flashing lock`

### OnePlus 8T "kebab"
* Unlock the bootloader using `fastboot flashing unlock`
* Install stock Android 11, choose the correct version for your region / variant.
* Install CalyxOS
* Re-lock the bootloader using `fastboot flashing lock`

### OnePlus 9 "lemonade"
* Unlock the bootloader using `fastboot flashing unlock`
* Install stock Android 11, choose the correct version for your region / variant.
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
