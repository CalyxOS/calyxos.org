---
title: Pixel 4, SHIFT6MQ - February 2024 Security update
date: 2024-02-15
redirect_from: /pixel4-faceunlock/
---

* CalyxOS 4.18.0 for Pixel 4, 4 XL and SHIFT6MQ
* Last Android 13 build, next will be Android 14

## Face unlock news - Pixel 4, 4 XL

* CalyxOS 5 - Android 14 builds for the Pixel 4 and 4 XL will be missing the Face unlock feature.
* Google changed the face unlock code in AOSP, in a way that's incompatible with the proprietary implementation on the Pixel 4. Since they're no longer updating the device, it won't receive the necessary changes
* We haven't been able to get it to work yet.
* We feel that having the latest version of Android available will be good, even with this one limitation.
* Also, given most of our devices are on Android 14, it'll be far easier for us to manage one version of Android.
* Thus, CalyxOS 5.5.0 and newer will be available for the Pixel 4 and 4 XL, but it'll miss face unlock


## Matrix channel

* If you're having trouble trying to post messages to the [#CalyxOS](https://app.element.io/#/room/#CalyxOS:matrix.org) matrix channel, try to leave the channel if possible, and then try writing `/join #CalyxOS:matrix.org` in any chat in Matrix. That should re-connect you to the channel.


## Pixel 4, 4 XL, SHIFT6MQ

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 15 February, Thursday | |
| Beta | 16 February, Friday | |
| Stable | 19 February, Monday | |

## Changelog

* CalyxOS 4.18.0
* February 2024 Security update
* Last Android 13 update, next release will be Android 14!
* Chromium: 121.0.6167.178 (latest stable)
* Update translations for the OS and some of the included apps

## Pixel 4, 4a
* However, face unlock will not be available on Android 14

## Pixel 3, 3 XL, 3a, 3a XL

* We ran into an issue with the Android 14 port for these devices, where it doesn't boot
* Still looking into the root cause, we're trying to figure out a fix and release a new version as soon as possible.

## FP5

* Android 14 Work in progress, mostly done.
* Bootloader relocking testing next
* All hardware seems to be functional

## Note

{% include install/security_notes.html %}
