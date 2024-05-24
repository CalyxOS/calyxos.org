---
title: May 2024 Feature update
date: 2024-05-24
---

* CalyxOS 5.7.2 for all supported devices except Pixel 8a
* SeedVault, microG, Chromium updates and more

## Pixel 8a
* The current version of CalyxOS available for the Pixel 8a `akita` is 5.7.1
* Google is using an older version of their codebase for this device, and as such so are we
* We're hoping they start using the same version of the codebase for all the Pixels next month (June) to make our work easier.

## Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Beta | 24 May, Friday |  |
| Security express | 27 May, Monday | |
| Stable | 29 May, Wednesday | |

## Changelog
* CalyxOS 5.7.2
* May Feature update
* Bluetooth: Fix file sharing and connection to certain devices such as Pebble.
* SeedVault: Add a built-in WebDAV plugin to directly backup to Nextcloud and more.
* SeedVault: Show backup size
* SeedVault: Various bugfixes and improvements all around
* Chromium: 125.0.6422.71 (latest stable)
* microG: v0.3.2.240913
* Fix "No service" being displayed for certain carriers even when everything was working
* Chromium: Fix crash when following certain links
* Chromium: Support saving crash reports
* microG: Improve support for sign-in to Google account in various apps and Games. 
* microG: Fix push notification sent_time delivery. Will help apps such as Telegram.
* microG: Fix dynamic links with React Native. Will help with certain apps.
* microG: Fix map in Signal location sharing.
* microG: Fix location updates not being reported properly
* Status bar: Allow toggling VPN icon
* Gallery: Fix editing crash
* Launcher: Fix "Turn off work apps" not working sometimes
* Updated translations for the OS and apps
* Update all included apps

### Pixel Tablet
* Enable aspect ratio setting for apps

### FP5
* Set default peak refresh rate to 60
* Added double tap to wake setting
* Don't try to play many-channel audio as is
* Updated to stock TT4D
* Added audio amplifier HAL, should improve speaker protection in high volume
* Enabled WiFi RTT/AWARE
* Removed serial number access from GPS XTRA data
* Enabled call recording support
* Fixed manual network scanning
* Updated CarrierConfig from TT4D
* Enabled new auto selection network UI
* Updated auto brightness tuning from stock OS
* Added color profiles in display settings
* Enabled AOD support

### FP4
* Don't try to play many-channel audio as is
* Add 5G RAT for e-SIM
* Make wfc Roaming preference available globally
* Update CarrierConfig from TP2D
* Disable fluence, improves incall mic issues
* Correct battery capacity in power profile, corrects what 3rd party apps report
* Added color profiles in display settings

### Pixel 3a, 3a XL
* Fix existing eSIM / dual SIM usage
* eSIM enrollment (i.e. adding a new eSIM) is still broken unfortunately

## Note

{% include install/security_notes.html %}

## Matrix channel

* If you're having trouble trying to post messages to the [#CalyxOS](https://app.element.io/#/room/#CalyxOS:matrix.org) matrix channel, try to leave the channel if possible, and then try writing `/join #CalyxOS:matrix.org` in any chat in Matrix. That should re-connect you to the channel.

