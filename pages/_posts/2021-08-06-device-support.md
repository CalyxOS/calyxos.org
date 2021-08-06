---
title: Device support
date: 2021-08-06
toc: true
---

### Background

One of the most common questions we get is "Will CalyxOS run on my device"

We currently support Google Pixels 2 and above, and the Xiaomi Mi A2, and there is a very good reason for picking those devices.

Google provides all of the code needed to get AOSP running on the Pixels, which means we can just take all of that, and it will just work. We do make some changes, such as the handling of proprietary files [0], but in the grand scheme of things that's minor.

The Xiaomi Mi A2 is an Android One device, which meant that it received timely security updates - they would be later in the month than the Pixels, but it got a monthly update consistently for the most part.

Both the Pixels and the A2 also let you re-lock the bootloader after installing CalyxOS, which means <TODO>

We would like to support more devices, especially something that's cheap and widely available (Pixels are still expensive, and only available in a select few countries)

### Requirements

Our device support requirements are listed in our [FAQ](https://calyxos.org/about/faq/device-support/#requirements-for-supporting-a-new-device) - I will go through all of them and try to explain.

1. Android 11.0
2. Ability to unlock the bootloader
3. Ability to relock the bootloader with a custom OS installed
4. Timely security and version updates
5. Qualcomm SoC preferred (for non-Pixel devices)

### Pixel 6, Pixel 6 Pro
Unless Google fundamentally changes something about how they've supported the Pixels (and previously Nexus) devices in AOSP, we should be able to support this without issue.

They will be using their own new custom chipset, however for us that should mostly not be a factor since we rely on Google to provide all of the needed code anyway.

One thing to note is they will ship with Android 12, so we'll need to port CalyxOS to Android 12 first before we can start doing the work needed for the Pixel 6. We usually do that in collaboration with other developers working on similar AOSP based ROMs, as part of [AOSPAlliance](https://github.com/AOSPAlliance).

### Pixel 5a
This is just rumored at this point, but if (or when?) this launches, it would be the same, unless Google makes a big change we will be supported this device.

The thing to note here is that this might launch with Android 11, and if so there's not much time left before Android 12 arrives which means the timing will be tight, but we'll see what we can do!

### Potential devices
We've always been trying to see if there are any more devices we can support. There is a wiki [1] which lists other devices which can potentially relock the bootloader, however they may not still meet the other criterias. I'll list OEMs based on their update speed [2][3]

#### OnePlus
OnePlus devices are quite popular in the custom ROM community. A lot of their devices have been known to support bootloader re-locking, more details on wiki [1]

#### Sony

#### Samsung
Samsung has been really good with updates lately, sometimes even realising them before Google does!
However, as far as we know they do not support re-locking the bootloader. In fact, some of their models don't even let you unlock in the first place. And then on those you can unlock, 

#### Redmi

#### Xiaomi

#### Nokia

#### Motorola

#### All other OEMs
I listed 

[0]: https://github.com/AOSPAlliance/android-prepare-vendor
[1]: https://hub.libranet.de/wiki/and-priv-sec/wiki/verified-boot
[2]: https://www.androidpolice.com/2021/03/03/android-phone-security-update-tracker/
[3]: https://www.aosmark.com/