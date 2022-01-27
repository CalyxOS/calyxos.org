---
title: Android 12 January Security update
date: 2022-01-16
---

CalyxOS 3.1.0 - Android 12, January 2022 Security update is now available for Pixel 3 and above.

CalyxOS 3.1.1 is now available for Pixel 6 and 6 Pro.

Thank you to everyone who tested and reported bugs, we've been able to fix most of them.

They're in testing now, stable release will follow later this week if there are no major issues reported.

## Testers channel

We created a new testers channel for those who're interested in helping us test out the builds early.

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |

## Pixel 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, 5, 4a (5g), 5a (5g)

* The builds are now available for testing.
* After receiving feedback from the tests, we will bump them to beta, and then finally, stable.
* Once they're in beta they can be installed from the phone directly.

### Steps
* Backup data on your phone using Seedvault Backup, as a precautionary measure.
* All of your data will be kept intact, but better be safe than sorry.
* From a computer with `adb` setup, run:
  `adb shell setprop sys.update.channel twelve`
* Then, on the phone, go to Settings -> System -> System update settings
  and tap on "Check for updates"
* The update should begin downloading and installing.
* Kindly report any issues on the new Testers channel mentioned above.

## Pixel 6, 6 Pro

* Mostly bug fixes, issues mentioned below
* Enable Smooth Display setting

### Steps
* From a computer with `adb` setup, run:
  `adb shell setprop sys.update.channel twelve`
* Then, on the phone, go to Settings -> System -> System update settings
  and tap on "Check for updates"
* The update should begin downloading and installing.
* Kindly report any issues on the new Testers channel mentioned above.

## Changelog
* Mostly bug fixes, issues mentioned below
* F-Droid: Fix installation for some apps (e.g. Signal)
* Don't allow network access unintentionally when updating apps. Please verify from the Firewall app.
* Grey out networking toggles for apps without the Internet permission, as they can't use it anyway.
* Seedvault: Support DAVx5's WebDAV backend as a backup location
* Fix spellcheck when multiple languages are enabled
* Launcher: Fix colors of Personal/Work profile tab

## Issues

* We have tried to fix most of the bugs reported in testing of 3.0.0
* We will continue fixing the rest

| Issue | Status |
| ----- | ------ |
| Pixel 5a Mobile data not working | [Fixed](https://review.calyxos.org/c/CalyxOS/scripts/+/7906) |
| Intent Filter Verification Service crash | [Workaround included](https://review.calyxos.org/c/CalyxOS/vendor_calyx/+/7976) |
| [Wi-Fi timeout turns Wi-Fi off unexpectedly](https://gitlab.com/CalyxOS/calyxos/-/issues/825) | [Fixed](https://review.calyxos.org/q/topic:wifi-timeout) |
| [Bluetooth timeout not working as expected](https://gitlab.com/CalyxOS/calyxos/-/issues/830) | [Fixed](https://review.calyxos.org/q/topic:bluetooth-timeout) |
| [Secondary user networking toggles crash](https://gitlab.com/CalyxOS/calyxos/-/issues/823) | [Fixed](https://review.calyxos.org/c/CalyxOS/platform_packages_modules_Connectivity/+/7907) |
| [Secondary user VPN fails](https://gitlab.com/CalyxOS/calyxos/-/issues/833) | [Fixed](https://review.calyxos.org/q/topic:global-vpn) |
| [Pixel 6 Pro Settings -> Connected devices crash](https://gitlab.com/CalyxOS/calyxos/-/issues/827) | [Fixed](https://review.calyxos.org/q/topic:uwb) |
| Pixel 6, 6 Pro: Google Camera not working | [Fixed](https://review.calyxos.org/q/topic:gcam) |
| Location indicator shows UnifiedNlp providers frequently | Investigating |
| Pixel 6, 6 Pro: IMS shows up as accessing location frequently | AOSP behaviour, investigating |
| IMS Service Entitlment registers with cloud messaging | AOSP change, investigating |
| [Some theming inconsistences](https://gitlab.com/CalyxOS/calyxos/-/issues/824) | [Work in progress](https://review.calyxos.org/c/CalyxOS/vendor_calyx/+/7893) |
| [Google Camera crash (Pixel 4a only?)](https://gitlab.com/CalyxOS/calyxos/-/issues/822) | Investigating, re-installing latest version from Aurora Store works |
| No Material You / Dynamic theming | Will be included once open source in 12L |
| [Can't change icon shape / accent color / font](https://gitlab.com/CalyxOS/calyxos/-/issues/821) | Removed by Google in 12 |
| [Settings illustrations not present](https://gitlab.com/CalyxOS/calyxos/-/issues/828) | Sadly these aren't open source |
