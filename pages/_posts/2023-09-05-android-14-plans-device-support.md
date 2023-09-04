---
title: Android 14 plans and longer device support
date: 2023-08-05
---

Hello,

Google has released Android 14 to AOSP today (September 5, Tuesday), and stock builds for the Pixel 5 and above are now avialable.

The CalyxOS team is already working on it, we're going through the source code and will start migrating our changes to 14 soon.

You can follow progress at [Gerrit](https://review.calyxos.org/q/branch:android14) or [GitLab](https://gitlab.com/groups/CalyxOS/-/epics/37) - and we'll keep posting updates here.

### Android 14 rollout

We'll start by rolling out Android 14 to the Pixels Google releases it for first. That way we can focus on porting our OS changes first, and not have to worry too much about getting it running on older devices at the same time.

Those devices are:
* Pixel Fold
* Pixel Tablet
* Pixel 7a
* Pixel 7, 7 Pro
* Pixel 6a
* Pixel 6, 6 Pro
* Pixel 5, 4a (5G), 5a

We'll try to follow our usual process of releasing builds for testing as soon as possible, and then releasing it to a wider audience as we get more feedback, and bugs are fixed.

### Android 13

We're planning to support the two most recent Android versions at the same time, going forward. This decision was made given our extended device roster, to make maintenance easier, by not having to worry about porting older devices to the latest version day one.

That means, until August 2024, we'll support both Android 13 and Android 14 for CalyxOS.

#### Pixel 4, 4 XL, 4a, and Fairphone 4

* We'll try to port Android 14 to these devices. Till then, it will keep getting the Android 13 updates.

#### Pixel 3, 3 XL, 3a, 3a XL, and SHIFT6MQ

* These will continue to be supported on Android 13 for another year, till August 2024.
* Security updates will be provided based on AOSP patches.
* We will try to apply security patches to the kernel as and when possible.
* Proprietary components unfortunately cannot be updated.
