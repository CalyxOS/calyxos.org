---
title: February 2024 Security update
date: 2024-02-08
---

* CalyxOS 5.4.0
* Pixel 4a and newer, Moto G32, G42, G52, FP4
* 
## Matrix channel

* If you're having trouble trying to post messages to the [#CalyxOS](https://app.element.io/#/room/#CalyxOS:matrix.org) matrix channel, try to leave the channel if possible, and then try writing `/join #CalyxOS:matrix.org` in any chat in Matrix. That should re-connect you to the channel.

## Pixel 4a and newer, Moto G32, G42, G52, FP4

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 7 February, Wednesday | |
| Beta | 8 February, Thursday | |
| Stable | 12 February, Monday | |

### Changelog
* CalyxOS 5.4.0
* February 2024 Security update
* Chromium: 121.0.6167.143
* Work Profiles: Fix "Manage App & Content access"

### FP4
* Update to FP4.TP25.C.095.20231219

### Pixel 4a
* Linux 4.14.336

## Pixel 4, 4 XL, SHIFT6mq

* There will be one last Android 13 build for these devices
* We have decided to release Android 14 for these devices in February
* For the Pixel 4 and 4 XL, Face unlock will be missing.
* For the SHIFT6mq, fingerprint may be missing, although we're trying to figure out a workaround.
* We feel that having the latest version of Android available will be good, even with this one limitation.
* Also, given most of our devices are on Android 14, it'll be far easier for us to manage one version of Android.

## Pixel 3, 3 XL, 3a, 3a XL

* We ran into an issue with the Android 14 port for these devices, where it doesn't boot
* Still looking into the root cause, we're trying to figure out a fix and release a new version as soon as possible.

## FP5

* Android 14 Work in progress, mostly done.
* Bootloader relocking testing next
* All hardware seems to be functional

## Note

{% include install/security_notes.html %}
