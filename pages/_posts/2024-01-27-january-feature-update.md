---
title: January 2024 Feature update - CalyxOS 5.3.2
date: 2024-01-27
---

## Highlights

* CalyxOS will have a stand at [FOSDEM](https://fosdem.org), Brussels, 3 & 4 February, 2024.
* SeedVault Backup can now backup even more apps, even when they don't allow backup.

## Matrix channel

* If you're having trouble trying to post messages to the [#CalyxOS]() matrix channel, try to leave the channel if possible, and then try writing `/join #CalyxOS:matrix.org` in any chat in Matrix. That should re-connect you to the channel

## Pixel 4a and newer, Moto G32, G42, G52, FP4

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Beta | 27 January, Saturday | |
| Security express | 29 January, Monday | |
| Stable | 30 January, Tuesday | |

### Changelog

* CalyxOS 5.3.2
* January 2024 Feature update
* Chromium: 121.0.6167.101 (latest stable)
* SeedVault Backup: Add experimental support for forcing "D2D" transfer backups
* SeedVault Backup: Pretend to be a device-to-device transfer to allow backing up many apps which prevent backup
* SeedVault Backup: Stop backing up excluded app APKs
* SeedVault Backup: Show size of app backups in Backup Status screen
* Some fixes for USB restriction functionality
* Work Profile: Fix "App & Content access" screen, more fixes will be done in the next build
* Panic: Fix occasional crash
* Suggest the app Onionshare for new installs

### Moto G32, G42, G52
* USB fixes

## Pixel 4, 4 XL, SHIFT6mq

* We have decided to release Android 14 for these devices in February
* For the Pixel 4 and 4 XL, Face unlock will be missing.
* For the SHIFT6mq, fingerprint may be missing, although we're trying to figure out a workaround.
* We feel that having the latest version of Android available will be 
* Given most of our devices are on Android 14, it'll be far easier for us to manage one version of Android.

## Pixel 3, 3 XL, 3a, 3a XL

* We ran into an issue with the Android 14 port for these devices, where it doesn't boot
* Still looking into the root cause, we're trying to figure out a fix and release a new version as soon as possible.

## FP5

* Android 14 Work in progress, mostly done
* All hardware seems to be functional

## Note

{% include install/security_notes.html %}
