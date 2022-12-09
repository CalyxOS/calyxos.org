---
title: December QPR and Security update
date: 2022-12-09
---

CalyxOS 4.4.0 - December 2022 Quarterly Platform Release and Security update is now available for the Pixels 3 - 7, and the Fairphone 4

It is currently in the beta channel, and will be promoted to stable after further testing.

## Changelog
* CalyxOS 4.4.0
* December 2022 Quarterly Platform Release and Security update
* Clock: Fix alarms, remove PHONE permission. Our apologies for the inconvenience.
* Calendar (Etar): Fix crash when creating new event.
* Double tap to sleep is temporarily broken, will be available again in the next update
* Allow Chromium (and many other browsers) to use autofill
* Fix work profile apps occasionally missing in recents for profiles created going forward
* A fix for some of the existing work profiles with the same bug will be avaiable in the next update

## Clock app
* In the previous build (4.3.1/4.3.2), we merged some improvements to the AOSP Clock app, which led to it asking for the PHONE permission, and crashing when not given.
* This also resulted in alarms being broken for those who didn't open the app at all, or opened it and denied the permission. They worked fine for those who opened the app and gave the permission.
* For this build (4.4.0), we have reverted the changes entirely, thus taking away the PHONE permission. This should fix alarms.
* Going forward, we will take further care to make sure that something like this doesn't happen again. Both the permission, and alarms being broken.

### Background
* The AOSP Clock app, like most other AOSP apps, doesn't really receive any updates.
* LineageOS does a lot of improvements to this app, and thus we've been shipping with those to provide a better experience.
* The AOSP Clock app has always had the PHONE permission, however it was restricted to older Android versions.
* A recent update bumped the `targetSdk` of the Clock app to the latest, Android 13 / API 33. Part of this required making the PHONE permission required again.
* It was used to detect if a call is ongoing during an alarm, and if so, play a different, less loud tone. It wasn't used for anything else at all. That can be reviewed in it's removal below.
* If the permission was denied, the app crashed, thus making it unable to play the alarm
* Google's proprietary Clock app somehow detects phone calls without needing this permission, however we haven't been able to figure out how just yet.
* Going forward, we've decided to simply [remove the permission](https://review.lineageos.org/c/LineageOS/android_packages_apps_DeskClock/+/345534).

### Note

{% include install/security_notes.html %}
