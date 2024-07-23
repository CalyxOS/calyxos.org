---
title: March 2024 Quarterly Platform Release & Security update
date: 2024-03-08
---

* Pixel 5a and newer pixels
* Also coming soon for Pixel 4a (5G), 5, Fairphone and Motorola
* Pixel 3, 3a, 4, 4a work in progress

## Changelog
* CalyxOS 5.5.0
* March 2024 Quarterly Platform Release & Security update
* Chromium: 122.0.6261.105 (latest stable)

### Known issues
* Icon, font and shape customization is missing. Existing customizations should stay applied
* Separate Wi-Fi and Mobile data tiles have been removed, use the unified Internet tile for both

#### Pixel Tablet, Fold
* Taskbar toggle is missing
* Fingerprint sensor touch to unlock setting is not working, it'll always be on

## Pixel 5a, 6, 6 Pro, 6a, 7, 7 Pro, 7a, 8, 8 Pro, Tablet, Fold

* These are the fastest to update for us because Google supports them and handles everything
* We only had to make some minor changes to get them working

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 8 March, Friday | |
| Beta | 11 March, Monday | |
| Stable | 13 March, Wednesday | |

## Pixel 4a (5G), 5, FP5, FP4, Moto G32, G42, G52, FP4

* Google no longer supports Pixel 4a (5G) and 5, but they share code with the Pixel 5a, which got updates that needed to be tweaked.
* Since we maintain the code for these devices, we had to do the device-specific changes and make sure everything was fine
* Work in progress, tentative schedule below, if all goes well.

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 11 March, Monday | |
| Beta | 12 March, Tuesday | |
| Stable | 13 March, Wednesday | |

## Pixel 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, SHIFT6MQ
* Android 14 has been in beta for these devices, except 4a for which it is stable
* Google made a lot of changes in this update, which breaks telephony on these devices entirely
* We're looking into it and still figuring out what to do
* We'll keep posting updates here as we try things out and know

## Trunk based development
* This was a big update, and Google is switching to a new development model for Android, called trunk-based development
* This is why the build ID now starts with "AP1A".
* Instead of working on features for months and then releasing it all at once, they'll constantly keep iterating on the code and avoid having one major release with too many big changes.
* Previously, some new and upcoming features may not be present at all in the code releases.
* Now, more of those upcoming features will be present in the code, just turned off via configuration flags. This makes it far easier to work on and manage those changes.
* This development model is followed by many companies, including Google themselves for most of their other projects, and now Android is following it as well.
* Hopefully for us this means that future releases don't have too much turmoil, resulting in less work for updates. We'll see how that pans out later in the year.

## Note

{% include install/security_notes.html %}

## Matrix channel

* If you're having trouble trying to post messages to the [#CalyxOS](https://matrix.to/#/#CalyxOS:matrix.org) matrix channel, try to leave the channel if possible, and then try writing `/join #CalyxOS:matrix.org` in any chat in Matrix. That should re-connect you to the channel.
