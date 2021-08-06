---
title: Future device support
date: 2022-02-28
toc: true
---

### Background

One of the most common questions we get is "Will CalyxOS run on my device"

We currently support Google Pixels 3 and above, and the Xiaomi Mi A2, and there is a very good reason for picking those devices.

Google provides all of the code needed to get AOSP running on the Pixels, which means we can just take all of that, and it will just work. We do make some changes, such as the handling of proprietary files, but in the grand scheme of things that's minor.

The Xiaomi Mi A2 is an Android One device, which meant that it received timely security updates - they would be later in the month than the Pixels, but it got a monthly update consistently for the most part, till 2021

We would like to support more devices, especially something that's cheap and widely available (Pixels are still expensive, and only available in a select few countries)

The Calyx Institute's mission

### Requirements

Our device support requirements are listed in our [FAQ](https://calyxos.org/about/faq/device-support/#requirements-for-supporting-a-new-device) - I will go through all of them and try to explain.

1. Android 11.0
2. Ability to unlock the bootloader
3. Ability to relock the bootloader with a custom OS installed
4. Timely security and version updates
5. Qualcomm SoC preferred (for non-Pixel devices)

### Potential devices
We've always been trying to see if there are any more devices we can support. [The verified boot page at the Android Privacy and Security project wiki](https://hub.libranet.de/wiki/and-priv-sec/wiki/verified-boot) lists other devices which can potentially relock the bootloader, however they may not still meet the other criterias. I'll list OEMs based on their update speed [2][3]

#### OEM / Device Template
1. Android version: 
2. Unlock bootloader:
3. Relock bootloader:
4. Update Record:
    
##### Fairphone 4
1. Android version: 11.0
2. Unlock bootloader: Yes
3. Relock bootloader: Yes
4. Last update:
5. Official LineageOS support: Work in progress

#### Motorola

#### OnePlus
OnePlus devices are quite popular in the custom ROM community. A lot of their devices have been known to support bootloader re-locking, more details on wiki [1]

##### OnePlus Nord CE 5G
1. Android version: 11.0
2. Unlock bootloader: Yes
3. Relock bootloader: Potentially, based on previous devices
4. Last update:
5. Official LineageOS support: No

##### OnePlus 8T
1. Android version: 11.0
2. Unlock bootloader: Yes
3. Relock bootloader: Yes
4. Last update:
5. Official LineageOS support: Yes

##### OnePlus 9
1. Android version: 12.0
2. Unlock bootloader: Yes
3. Relock bootloader: Yes
4. Last update:
5. Official LineageOS support: Yes

#### Sony

#### Samsung
Samsung has been really good with updates lately, sometimes release them even before Google does!
However, as far as we know they do not support re-locking the bootloader.

In fact, some of their models don't even let you unlock in the first place. And then on those you can unlock, it burns some fuses so there's always a record of it being unlock, and you lose out on some functionality on the stock OS (KNOX)

Additionally, due to all of these factors, there's not much custom ROM development for these devices in general.

#### Redmi

#### Xiaomi

#### Nokia
Nokia devices mostly run Android One and receive timely monthly security updates. Sadly they don't allow unlocking the bootloader at all on most of their phones which means you can't install any custom ROMs.

#### All other OEMs
We tried to list every popular OEM we tried to look at. There are a lot of other OEMs making Android devices, however at the time we have limited resources and can only support so many devices.

[1]: https://hub.libranet.de/wiki/and-priv-sec/wiki/verified-boot
[2]: https://www.androidpolice.com/2021/03/03/android-phone-security-update-tracker/
[3]: https://www.aosmark.com/
