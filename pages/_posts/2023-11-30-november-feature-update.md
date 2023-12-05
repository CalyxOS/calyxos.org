---
title: November Feature update
date: 2023-11-30
---

CalyxOS 5.1.2 - Android 14 and CalyxOS 4.15.1 - Android 13 is now available

## Pixel 4a, 4a (5G), 5, 5a, 6, 6 Pro, 6a, 7, 7 Pro, 7a, Tablet, Fold

| Release channel  | Date   |
| ---------------- | ------ |
| Beta | 30 November, Thursday |
| Security express | 2 December, Saturday |
| Stable | 5 December, Tuesday |

### Changelog
* CalyxOS 5.1.2 - Android 14
* November 2023 Feature update
* Switch to F-Droid Basic for new installs, and new users and work profiles for existing installs.
* microG: v0.3.0.233515
* microG: Fix WebAuthn on Android 14
* Chromium: 119.0.6045.193
* Screenshot fixes
* Status bar Network traffic now has an automatic units option
* Keyboard, Contacts, Messaging: Major improvements, Material You
* Calendar (Etar): Upstream updates
* Settings: Link to Firewall app in lieu of duplicated toggles
* Allow using Mulch WebView and Google WebView
* Updates to all included apps
* Update some of our apps to targetSdk 34

#### Pixel 4a
* Initial Android 14 release

#### Pixel 6, 6a, 7, 7a, Fold
* Fix status bar padding

#### Pixel Tablet
* Enable Ambient Display
* Fix status bar padding

## Pixel 8, 8 Pro

* We will directly release the December update for these devices next week.
* This is because Google has the devices using a separate codebase which greatly increases the amount of work for us.
* They're expected to unify them in December (they always do), which should help.

## Pixel 4, 4 XL, Moto G32, G42, G52

| Release channel  | Date   |
| ---------------- | ------ |
| Beta | 29 November, Wednesday |
| Security express | 2 December, Saturday |
| Stable | 5 December, Tuesday |

### Changelog
* CalyxOS 4.15.1 - Android 13
* November 2023 update
* Bump SPL to 2023-11-05 (The previous update had the security patches already, we just missed updating the level)
* Chromium 119.0.6045.163 (latest stable)

#### Pixel 4
* Update kernel

#### Moto
* Set default ringtone
* update kernel

## Pixel 3, 3 XL, 3a, 3a XL, FP4, SHIFT6MQ

* No update for these devices today.

## Android 14 port status
### Pixel 4,
* Face unlock is broken. Working on it, will get updates on 13 till then.

### FP4
* Work in progress.

### Moto G32, G42, G52
* Work in progress.

### Pixel 3, 3a, SHIFT6MQ
* Looking into it.

## Note

{% include install/security_notes.html %}
