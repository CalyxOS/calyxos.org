---
date: 2022-06-24
title: CalyxOS Status update - June
---

This is the first in a series of regular updates from the CalyxOS team.

It currently covers the things that we're currently working on, and what we plan to work in the near future.

All of this development can be followed on our [Gerrit instance](https://review.calyxos.org/)

### Known issues
* Work profile creation fails on 3.6.0
  * Fix almost ready for next update, update will be released as soon as this is done
* Chromium crashing when microG is disabled
  * Investigating
* Chromium native autofill (missing in 103, incognito crash)
  * Work in progress

### Chromium based on Bromite
* Latest stable is 103, available in the [GitLab testing F-Droid repo](https://gitlab.com/CalyxOS/calyx-fdroid-repo)
* Will continue looking at bringing over more features
* Reliable updates for Trichrome outside of OS updates work in progress

### SeedVault
* Testing a way to allow backing up more apps, see [#165](https://github.com/seedvault-app/seedvault/issues/165) [#407](https://github.com/seedvault-app/seedvault/pull/407)
  * We're hoping to release some test APKs soon to get more feedback and then decided how to
    best proceed with this

### Devices
#### Pixel 3, 3a
* Microphone low volume fix ready for next update

#### Fairphone 4
* Working on June update with latest firmware plus other fixes
* Stock Android 12 status still unknown, would be super nice to have it before Android 13

#### OnePlus 8T
* Working on June update
* Android 12 firmware update is pending

#### OnePlus 9, 9 Pro
* Working on June update
* Android 12 firmware update is work in progress

#### Other new devices
* Nothing planned soon as of yet, we'll keep posting updates

### Future planning
* More updates, especially for new features / bugfixes
* AOSP Security updates are already merged monthly
* Setting up a schedule for various merges (Translation, LineageOS, other apps, etc) to make sure they're always done in a timely manner rather than the current ad-hoc on demand system
* CI (integrated with Gerrit), likely using Jenkins.
* Android 13 rough plans, release is still months out


We're hoping to make this either a monthly or fortnightly thing. Let us know any suggestions about things you'd like to see specifically, or anything really! You can reach us at [[community]]
