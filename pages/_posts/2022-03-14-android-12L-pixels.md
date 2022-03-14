---
title: Android 12L for Pixels
date: 2022-03-14
---

CalyxOS 3.3.0 - Android 12L is now available for all supported Pixels, i.e. Pixel 3 - Pixel 6

It is currently in the beta channel, and will be bumped to the stable channel later after additional testing and feedback. Factory images will be available at that time as well.

Along with all the improvements Google did for 12L (open sourcing the [Monet theme engine](https://www.xda-developers.com/material-you-monet-theme-engine/), finally), this update also contains some features we've been working on in the past few months, as well as bug fixes for report issues.

## Changelog
* CalyxOS 3.3.0 - Android 12L
* March 2022 Security update (2022-03-05)
* Dynamic colour: Change your wallpaper and your entire Android experience changes to match.
* Using advanced colour extraction algorithms you can easily personalise the look and feel of your entire phone, including notifications, settings, widgets and even select apps.
* Fix USB issues - including detection of USB accessories such as flash drives, as well as detection by computers for file transfer.
* Chromium: 99.0.4844.58
* Improve Google camera performance on certain devices.
* microG: Push notification fixes, especially for apps such as Signal and Telegram.
* Add long press power for torch. Settings -> System -> Buttons -> Long press for torch
* Add double tap status bar (or lockscreen) to sleep gesture. Settings -> Display -> Tap to sleep
* Add quick settings pull down with one finger. Settings -> System -> Status bar -> Quick pulldown
* Allow enabling cross profile sharing. Settings -> Passwords & accounts -> Work -> Work profile settings -> Cross-profile sharing
* Firewall: Restore Android 11 VPN toggle behavior, aka you can keep Wi-Fi and mobile data toggles off for an app and only leave VPN on - and it will still work, and only use the VPN.
* Hotspot "Allow clients to use VPN": Always use the VPN running the main user, and not the work profile VPN.
* Add AudioFX app from LineageOS - Equalizer
* Avoid showing location indicator for microG and UnifiedNLP.
* Disable cross profile contact search and calendar by default.
* Firewall: Background network access fixes.
* Hide app feature - Temporarily hide an app, preserving all app data. Needs developer options enabled.
* Hide app by long pressing app and then tapping App info, or Settings -> Apps -> App name -> "Hide / Unhide".
* Re-add Global cleartext restriction developer option.
* Developer options: Turn off location indicator entirely, "Status bar location indicator"
* Users: SetupWizard improvements - microG setup, Seedvault restore.
* Update all included apps.
* Update translations for all apps, and the OS.

### Known issues

#### All devices
* Custom icon shape and fonts get reset on wallpaper change / reboot - will be fixed in next build.
* Home screen layout gets reset on upgrade when using a custom grid size - looking into it.

#### Pixel 6, 6 Pro
* SIM Manager crashing - looking into it.

### Mi A2
* We're still going to be looking into trying to provide Android 12 builds for the A2.

### Fairphone 4, OnePlus 8T, 9
* We've been working on this, it got sidetracked due to 12L, however with that out of the way we're back on it.
