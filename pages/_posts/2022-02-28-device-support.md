---
title: Future device support
date: 2022-02-28
toc: true
---

### Background

One of the most common questions we get is "Will CalyxOS run on my device"

We currently support Google Pixels 3 and above, and the Xiaomi Mi A2, and there is a very good reason for picking those devices.

Google provides all of the code needed to get AOSP running on the Pixels, which means we can just take all of that, and it will just work. We do make some changes, such as the handling of proprietary files, but in the grand scheme of things that's minor.

The Xiaomi Mi A2 is an Android One device, which meant that it received timely security updates - they would be later in the month than the Pixels, but it got a monthly update consistently for the most part, till 2021.

We would like to support more devices, especially something that's cheap and widely available (Pixels are still expensive, and only available in a select few countries)

The Calyx Institute's mission

### Planned devices, short term

In the near future, we intend to support the following additional devices.
* Recent devices, still receiving updates from the manufacturer, and will continue doing so for a while.
* They're all either on Android 12 already, or an update is pending / promised.
* There's good custom ROM support in general for thse making our lives easier.
* Bootloader relocking is supported! That's the big one, not easily found on other devices.

#### Fairphone 4
* Fairphone graciously sent us a device to help with development. Thanks for that!
* /e/ OS already had Android 11 running on this device, which helped serve as a known good working base to get LineageOS 18.1 running, in collaboration with some other developers already working on LineageOS.
* Based on that, we were also able to get LineageOS 19 booting.
* We've got CalyxOS Android 12 mostly running on it with some minor bugs, that we're working on addressing.

#### OnePlus 8T, 9
* These devices are officially supported by LineageOS, thus basically all of the hard work is already done.
* We experimented with this in late 2020 just before Android 12 released, however we ran out of time to release a build.
* Now that we're done with 12 we can get back to this.
* We'll also look into supporting the 9R, 9 Pro, and perhaps 9RT if there's demand for those.

### Other devices
* These are the devices we're initially focusing on, however they won't be the only ones we add support for this year.
* We'll support the new Pixels as they come out of course.
* We also want to support other devices, especially ones that are cheaper and globally available - however we will need to make some other changes for those based on our findings, stay tuned for more updates!

### Unlikely to be supported
* Unfortunately, we're unlikely to support the below OEMs / devices due to various reasons listed below them.
* There might be some exceptions (never say never!), however in general there's not much hope for these.

#### Fairphone 3
* It's still on Android 10 officially, and thus too old for us to support since we only support the latest Android release.

#### Samsung
* Samsung has been really good with updates lately, sometimes release them even before Google does!
* However, as far as we know they do not support re-locking the bootloader.
* In fact, some of their models don't even let you unlock in the first place.
* Additionally, due to all of these factors, there's not much custom ROM development for these devices in general.
* All of this means we're unlikely to support any Samsung devices.

#### Nokia
* Nokia devices mostly run Android One and receive timely monthly security updates.
* Sadly they don't allow unlocking the bootloader at all on most of their phones which means you can't install any custom ROMs at all.


### Builds
* We plan to release test builds for new devices as we can.
* You can join our testers channel if you'd like to help test those!

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |
