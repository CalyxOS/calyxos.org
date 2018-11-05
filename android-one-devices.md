This documents aims to match Android One devices to CalyxOS requirements, which are:

* The cheaper the device, the better it is
* Treble support (so launched with Android 8.0, or even better, 8.1 or later)
* Bootloader unlocking (doh)
* Bootloader relocking with custom OS would be a big plus

TODO:
* Figure out whether mediatek + treble is a good choice
* Figure out which devices support bootloader re-locking at all, and/or with a custom OS (like Google devices)

Devices: (basically the 2018 list from https://en.wikipedia.org/wiki/Android_One)
Left out the Mediatek devices, any flagship level expensive devices, and also the Japan only Sharp devices.

| OEM | Model | Country | SoC | Price (Indian, converted to USD) | Details | Pie |
|-----|-------|---------|-----|----------------------------------|---------| --- |
| Xiaomi | Mi A2 | Worldwide* | Snapdragon 660 | $205 | - | Not yet |
| Xiaomi | Mi A2 Lite | Worldwide* | Snapdragon 625 | Unavailable | - | Not yet |
| Motorola | Motorola One Power | Worldwide* | Snapdragon 636 | $220 | - | Not yet |
| BQ | Aquaris X2 Pro | Europe | Snapdragon 660 | - | Expensive | Not yet |
| BQ | Aquaris X2 | Europe | Snapdragon 636 | - | Expensive | Not yet |
| Nokia | 6.1 | Worldwide* | Snapdragon 630 | $180 | Bootloader unlock concerns | Yes |
| Nokia | 6.1 plus | Worldwide* | Snapdragon 636 | $205 | Bootloader unlock concerns | Yes |
| Nokia | 7 plus | Worldwide* | Snapdragon 660 | $315 | Bootloader unlock concerns | Not yet |
| Nokia | 7.1 | Worldwide* | Snapdragon 636 | Unavailable | Bootloader unlock concerns | Not yet |


Bootloader unlock process:

Xiaomi:
* Simple, same as Pixels, fastboot flashing unlock

Motorola:
* Need to get some data from the device via fastboot, put it on their website to see if device can be unlocked, and then unlock it using a key they provide.

Nokia:
* They have an app to check if your device is supported (not seeing a list of supported devices on their website)
* Device support seems to vary not just by model but also IMEI / carrier / etc
* An "unlock key" is emailed which needs to be flashed to the device (fastboot flash unlock unlock.key) and then you run fastboot oem unlock
