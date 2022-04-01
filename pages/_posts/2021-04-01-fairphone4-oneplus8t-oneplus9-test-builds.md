---
title: Fairphone 4, OnePlus 8T, OnePlus 9 test builds now available
date: 2022-04-01
---

CalyxOS 3.3.2 - Android 12L is now available for testing for the Fairphone 4, OnePlus 8T, OnePlus 9

These are test builds and intended for testers. Please report any issues to the testers channel.

Beta and stable builds will be available after testing, stay tuned!

## Testers channel

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |

## Downloads

| Name | Link | SHA256 | [Minisig signature] |
| ---- | ---- | ------ | ------------------- |
| Fairphone 4 "FP4" | | |
| OnePlus 8T "kebab" | | | 
| OnePlus 9 "lemonade" | | |

## Installation

* For now installation has to be performed manually, by downloading, unzipping, and then running either `flash-all.bat` on Windows, or `flash-all.sh` on Linux or MacOS. The latest version of `fastboot` needs to be installed
* Device flasher support will come when beta / stable builds are ready.

### Fairphone 4 "FP4"
* [Get code to unlock bootloader from Fairphone](https://www.fairphone.com/en/bootloader-unlocking-code-for-fairphone-3/)
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
