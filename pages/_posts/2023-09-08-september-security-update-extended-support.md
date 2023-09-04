---
title: September Security Update and longer device support
date: 2023-09-08
---

CalyxOS 4.13.0 - September 2023 Security update (partial) is now available for all supported devices.

| Release channel  | Date   |
| ---------------- | ------ |
| Beta | 7 September, Thursday |
| Security express | 8 September, Friday |
| Stable | Pending |

### Changelog
* CalyxOS 4.13.0
* September 2023 Security update (Partial)
* Google did not release an update for the Pixels this month, like it usually does. As such, we're unable to update the proprietary components.
* They did release the open source components, which we've updated in this build.
* Chromium: 116.0.5845.172
* microG: Update to latest upstream

#### Pixel Tablet
* microG: Fix crash

All of the changes from [the previous update (4.12.2)]({% post_url 2023-09-02-feature-update %}) are also included in this

### Extended support for devices

We're planning to support the two most recent Android versions at the same time, going forward. This decision was made given our extended device roster, to make maintenance easier, by not having to worry about porting older devices to the newest version day one.

That means, until August 2024, we'll support both Android 13 and Android 14 for CalyxOS.

#### Pixel 4, 4 XL, 4a, and Fairphone 4

* We'll try to port Android 14 to these devices. Till then, they will keep getting the Android 13 updates.
* This is because we have to do some work (or quite a lot, depending on the device) to get the newer version of Android running on it, and fully working. It's hard to figure out how much time that'll take, but we'll keep posting updates as we work on those.
* Security updates will be provided based on AOSP patches.
* We will try to apply security patches to the kernel as and when possible.
* Proprietary components unfortunately cannot be updated by us.

#### Pixel 3, 3 XL, 3a, 3a XL, and SHIFT6MQ

* These will continue to be supported on Android 13 for another year, till August 2024.
* Security updates will be provided based on AOSP patches.
* We will try to apply security patches to the kernel as and when possible.
* Proprietary components unfortunately cannot be updated by us.
* We don't mention an Android 14 port for these, since they're quite old by now, and it becomes harder and harder to port newer versions to older devices, and get it fully working.

### Android 14 plans

Google is yet to release stable Android 14, neither to AOSP nor for the Pixels. We'll get started working on it as soon as they release it.

Once we're done integrating Android 14 changes, our plan is to begin rolling it out to the Pixels Google still supports. That way we can focus on porting our OS changes first, and not have to worry too much about getting it running on older devices at the same time.

Those devices are:
* Pixel Fold
* Pixel Tablet
* Pixel 7a
* Pixel 7, 7 Pro
* Pixel 6a
* Pixel 6, 6 Pro
* Pixel 5, 4a (5G), 5a

We'll try to follow our usual process of releasing builds for testing as soon as possible, and then releasing it to a wider audience as we get more feedback, and bugs are fixed.

### Note

{% include install/security_notes.html %}
