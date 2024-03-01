---
title: Android 14 for everyone
date: 2024-03-01
---

* Android 14 for all supported devices
* Test release today, beta and stable next week if all goes well!

## Matrix channel

* If you're having trouble trying to post messages to the [#CalyxOS](https://app.element.io/#/room/#CalyxOS:matrix.org) matrix channel, try to leave the channel if possible, and then try writing `/join #CalyxOS:matrix.org` in any chat in Matrix. That should re-connect you to the channel.

## Pixel 4a and newer, Moto G32, G42, G52, FP4

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 1 March, Friday | |
| Beta | 4 March, Monday | |
| Stable | 6 March, Wednesday | |

### Changelog
* CalyxOS 5.4.1
* Feature update
* Chromium: 122.0.6261.90 (latest stable)
* Work profile work hours feature - Set working hours for your work profile
* Settings -> Accounts -> Work -> Work profile settings
* usb: Show charging notification only if power brick is disconnected
* Fix unknown sources app install confirmation
* Fix uninstall for all users
* Fix headline font in various places, avoid inconsistencies
* Quick settings: Allow long-pressing on mobile network
* Various updates for included apps
* Updated translations for all apps, and the OS

### FP4
* Update to TP29.C.0101.20240121

### Pixel 4a (5G), 5
* Update to UP1A.231105.001.B2

### Moto G32
* Update to T2SNS33.73-22-3-3

### Moto G42
* Update to T2SES33.73-23-2-4

### Moto G52
* Update to T2SRS33.72-22-4-2

## Pixel 4, 4 XL, SHIFT6mq
* For the Pixel 4 and 4 XL, Face unlock will be missing.
* Pixel 4 XL build is unavailable today, but will be available next week.
* See instructions below to try Android 14 on Pixel 4 and SHIFT6MQ

## Pixel 3, 3 XL, 3a, 3a XL
* For some reason, only incremental OTA updates are working on these phones on Android 14, the full OTA updates fail to install correctly.
* Figuring this out is what caused the delay in releasing an update for these devices.
* However, we've decided to simply rely on incremental updates for the next months till these devices are supported, to avoid people waiting any longer.
* See instructions below to try Android 14

### Steps to try Android 14 on Pixel 3, 3 XL, 3a, 3a XL, 4, SHIFT6mq
#### OTA updates for existing CalyxOS users
1. Make sure your phone is running the latest available CalyxOS version 4.15.0 (3, 3a) or 4.18.0 (4, SHIFT6mq)
1. Backup your data - you can use SeedVault, the included Backup app.
1. Enable USB Debugging on your phone.
1. From your computer: `adb shell setprop sys.update.channel fourteen`
1. Then, on your phone: Settings -> System -> System update settings -> Check for updates

## FP5
* At the finalization stage
* Making release builds, will do final testing and release very soon

## Note

{% include install/security_notes.html %}
