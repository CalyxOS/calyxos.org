---
title: android-one-devices
---
This documents aims to match Android One devices to CalyxOS requirements, which are:

* The cheaper the device, the better it is
* Treble support (so launched with Android 8.0, or even better, 8.1 or later)
* Bootloader unlocking (doh)
* Bootloader relocking with custom OS would be a big plus

TODO:
* Figure out whether mediatek + treble is a good choice
* Figure out which devices in addition to Mi A2 (Lite?) support bootloader re-locking at all, and/or with a custom OS (like Google devices)

Devices: (basically the 2018 list from https://en.wikipedia.org/wiki/Android_One)
Left out the Mediatek devices, any flagship level expensive devices, and also the Japan only Sharp devices.

| OEM | Model | Country | SoC | Price (in India, converted to USD) | Misc | Pie | Kernel Source |
|-----|-------|---------|-----|------------------------------------|----- | --- | ------------- |
| Xiaomi | Mi A2 | Worldwide* | Snapdragon 660 | $205 | - | YES | https://github.com/MiCode/Xiaomi_Kernel_OpenSource/tree/jasmine-p-oss |
| Xiaomi | Mi A2 Lite | Worldwide* | Snapdragon 625 | ~$155 (AliExpress) | - | YES | https://github.com/MiCode/Xiaomi_Kernel_OpenSource/tree/daisy-p-oss |
| Motorola | Motorola One Power | Worldwide* | Snapdragon 636 | $220 | - | Not yet | https://github.com/MotorolaMobilityLLC/kernel-msm/tree/oreo-8.1.0-release-cf |
| BQ | Aquaris X2 Pro | Europe | Snapdragon 660 | 389,90€ | Expensive | Not yet | https://github.com/bq/aquaris-X2-Pro |
| BQ | Aquaris X2 | Europe | Snapdragon 636 | 309,90€ | Expensive | Not yet | https://github.com/bq/aquaris-X2 |
| Nokia | 6.1 | Worldwide* | Snapdragon 630 | $180 | Bootloader unlock concerns | Yes | https://www.nokia.com/en_int/phones/opensource |
| Nokia | 6.1 plus | Worldwide* | Snapdragon 636 | $205 | Bootloader unlock concerns | Yes | Not available |
| Nokia | 7 plus | Worldwide* | Snapdragon 660 | $315 | Bootloader unlock concerns | Not yet | Not available |
| Nokia | 7.1 | Worldwide* | Snapdragon 636 | Unavailable | Bootloader unlock concerns | Not yet | Not available |

Note:
* Unless explicitly stated, the prices are for the lowest variant available, even if it has less RAM than higher variants


Bootloader unlock process:

Xiaomi:
* Simple, same as Pixels, fastboot flashing unlock, and then fastboot flashing lock after flashing a properly signed custom OS

Motorola:
* Need to get some data from the device via fastboot, put it on their website to see if device can be unlocked, and then unlock it using a key they provide.

Nokia: (might not work anymore)
* They have an app to check if your device is supported (not seeing a list of supported devices on their website)
* Device support seems to vary not just by model but also IMEI / carrier / etc
* An "unlock key" is emailed which needs to be flashed to the device (fastboot flash unlock unlock.key) and then you run fastboot oem unlock
