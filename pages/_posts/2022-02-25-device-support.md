---
title: Future device support
date: 2022-02-25
toc: true
---

### Background

One of the most common questions we get is: "Will CalyxOS run on my device?"

When choosing to support a device, we consider the following factors:
- How difficult is it for the latest major release of Android Open Source Project (AOSP) to run on the device?
- How difficult is it to unlock and re-lock the device?
- How long can we support the device?
- How affordable and globally available is the device?

We currently support Google Pixels 3 and above.

Pixel phones are the reference model that AOSP is designed around and Google provides all of the code needed to get AOSP running on the Pixels. This means that although we do make some changes, such as the handling of proprietary files, most of the work is already done by Google.

We also want to support devices for as long as possible. This reduces e-waste and makes CalyxOS more accessible to users who can't afford to replace their phone every few years. Therefore, we try to pick recently released devices because it takes a long time to get them fully working, and because supporting devices with a full feature set and security updates beome harder, and sometimes impossible, the older they get.

We would like to support more affordable and widely available devices than just the Pixels, which are expensive and only sold in a select few countries.

We supported the Xiaomi Mi A2 because it was an Android One device, which meant that it received timely security updates from it's release in July 2018 until manufacturer support ended in August 2021.

### Planned devices, short term

In the coming months, we intend to support the following devices:

#### Fairphone 4
* Fairphone graciously sent us a FP4 device to help with development. Thanks for that!
* We have worked in cooperation with other Free and Open Source Android based projects to get this working
* /e/ OS already had Android 11 running on this device, which helped serve as a known good working base to get LineageOS 18.1 running, in collaboration with some other developers already working on porting LineageOS.
* Based on that, we were also able to get LineageOS 19 booting.
* All of the above means that a lot of the work needed to get an open source non-manufacturer ROM running on the device has already been done, and we're able to utilize that as a base and work on top of that.
* We were able to install our build of CalyxOS 3 - Android 12 and re-lock the bootloader. It's quite functional too, with only a few minor bugs remaining to be fixed, which we are working on.

#### OnePlus 8T, 9
* These devices are officially supported by LineageOS, thus basically all of the hard work is already done.
* We experimented with this in late 2021 just before Android 12 was released, however we ran out of time to release a build. We were able to get CalyxOS running, and re-lock the bootloader.
* Now that we're done with the update to Android 12, we can revisit our OnePlus port.
* We'll also look into supporting the 9R, 9 Pro, and perhaps 9RT if there's demand for those.

### Other devices
* These are the devices we're initially focusing on, however they won't be the only ones we add support for this year!
* We'll support the new Pixels as they come out of course.
* We also want to support other devices, especially ones that are cheaper and globally available - however we will need to make some other changes for those based on our findings, stay tuned for more updates!

### Unlikely to be supported
* We're often asked about supporting the following OEMs / devices. Unfortunately, we're unlikely to to be able to for the reasons listed below.

#### Fairphone 3
* It's still on Android 10 officially, with old hardware not supported by Qualcomm any longer, and thus too old for us to support since we only support the latest Android release.

#### Samsung
* Samsung has been really good with updates lately, sometimes release them even before Google does!
* However, as far as we know they do not support re-locking the bootloader.
* In fact, some of their models don't even let you unlock the bootloader in the first place.
* Additionally, due to all of these factors, there's not much custom ROM development for these devices in general.
* All of this means we're unlikely to support any Samsung devices.

#### Nokia
* Nokia devices mostly run Android One and receive timely monthly security updates.
* Sadly they don't allow unlocking the bootloader at all on most of their phones which means you can't install any custom ROMs on them.

#### Others
* It's hard to make a blanket statement for all other devices, we will look at more devices in the next few months and post about them here.

### Builds
* We plan to release test builds for these new devices as we can.
* You can join our testers channel if you'd like to help test those!

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |
