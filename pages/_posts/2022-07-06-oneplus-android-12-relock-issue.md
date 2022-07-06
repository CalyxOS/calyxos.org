---
date: 2022-07-06
nav_title:
title: OnePlus Android 12 firmware - relocking no longer works
---

CalyxOS test builds for the OnePlus 8T, 9 and 9 Pro have been shipping with the Android 11 firmware, since at the time the work to update custom ROMs to be based on that was still work in progress for some models, and for others full kernel source code was not available until recently.

However, now that full kernel source code is available, and a big chunk of the work needed is done, we started integrating those changes into the CalyxOS codebase and made some test builds.

Unfortunately, re-locking the bootloader with a custom ROM installed no longer works with the latest Android 12 firmware from OnePlus. :(

### What you need to do

* We will be looking at everything and make another post with findings with next steps.

* For now, we'll make updates with Android 11 firmware since we've already released test builds and would like to provide updates with at least the open source parts of the latest security patch and other general CalyxOS improvements.

* We have pulled the links to the existing builds till then while we figure this out.

### Technical details

With the Android 12 update, OnePlus [changed codebases](https://www.androidpolice.com/2021/09/20/oneplus-details-how-its-going-to-merge-oxygenos-and-oppos-coloros/) to be more closely based on [Oppo software](https://www.androidpolice.com/oxygenos-12-beta-handson-color-os-in-all-but-name/), and the unification is [going to continue](https://www.androidpolice.com/oneplus-calls-off-merger-between-oxygenos-and-coloros-but-theyll-still-share-a-codebase/).

This meant a lot of changes for custom ROMs all around - to the proprietary files, the kernel code, hardware code (such as fingerprint reader), and also the bootloader.

Sadly, based on our testing, it appears that re-locking the bootloader after installing a custom ROM (aka [AVB Yellow state](https://android.googlesource.com/platform/external/avb/#device-specific-notes)) is no longer working with OnePlus' Android 12 bootloader (and associated proprietary components).

It is possible that we might be missing some change to make it work with OnePlus' Android 12 bootloader, but we've tried a bunch of things without any luck.

We also tried reverting some components (mainly just the bootloader) to Android 11 while keeping the rest of the proprietary bits matching OnePlus Android 12, but that didn't help either.

Relocking worked fine with the Android 11 bootloader (and associated proprietary components).

### Our options

This means that we will not be able to merge the Android 12 changes into our codebase for now, given that an update with that included would lead to a non-functional device for anyone with a locked bootloader, which would have to be recovered with [MsmDownloadTool](https://www.xda-developers.com/oneplus-9-9-pro-9r-unbrick-msmdownloadtool/)

All of the possible ways have been listed below, while we evaulate them to decide on the future.

#### Best case scenario
* OnePlus re-adds this functionality, given that they've supported this on pretty much all of their [previous devices](https://hub.libranet.de/wiki/and-priv-sec/wiki/verified-boot#OnePlus)
* This would mean we can simply make an update with the fix included and it would be entirely seamless.

#### Future (Android 13)
* We'll keep trying all options, and keep posting updates here
* With all options there are some pretty significant cons making it hard to pick either

##### 1. Continue with Android 11 bootloader and other proprietary components
Pros:
* Locked bootloader

Cons:
* No security patches to any proprietary components.
* Diverging from other custom ROMs
* Becomes harder and harder to get newer Android versions running

##### 2. Update to Android 12 bootloader and other proprietary components
Pros:
* Security updates
* Same as other custom ROMs

Cons:
* Unlocked bootloader, all the benefits of Verified Boot are lost

##### 3. Get a combination of Android 11 + 12 components working
Pros:
* Locked bootloader (if it works)
* Partial proprietary security updates (the components that are on 12)

Cons:
* Fragile
* Would still miss some security updates (the components that are on 11)


<!-- https://web.archive.org/web/20220705174359/https://hub.libranet.de/wiki/and-priv-sec/wiki/verified-boot -->
