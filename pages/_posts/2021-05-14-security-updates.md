---
title: Security updates
date: 2021-05-14
---

Monthly security updates are an important tool to keep users safe and protect their devices. CalyxOS provides timely monthly updates for all supported devices. Let's walk through how the process works.

TL;DR: CalyxOS integrates monthly updates ASAP. If you have a Pixel 3 or newer, you get the full security update. If you have a Pixel 2 or Mi A2, we are unable to update some proprietary components, but all of the open source parts are kept up to date.

### AOSP

Android Open Source Project - the base for CalyxOS.

Google usually releases the security update on the first Monday of each month, which means it was May 3rd this month. This is available in two parts, one are the new builds for all support Pixel devices (Pixel 3 and newer currently), and the other is source code updates to AOSP.

That is where it starts for CalyxOS - we wait for the source code to be released to AOSP, and then get started on merging the changes into CalyxOS.

### Proprietary bits

All current devices need a good sprinkling of proprietary code to even boot and have full hardware functionality. We cannot make any changes ourselves to these files, and thus we have to rely on the manufacturer to provide updates.
Google provides monthly updates for all supported devices, which currently means the Pixel 3 and newer devices.

The [proprietary bits](https://en.wikipedia.org/wiki/Proprietary_device_driver) can be divided into two parts:

#### 1. Blobs

The various proprietary drivers needed for the device to work. This includes the parts needed to make the camera work, eSIM, graphics, amongst other things.

#### 2. Firmware / Bootloader

The other part of the proprietary components, responsible for booting the device and also controlling the various components such as the modem.

### Device status

CalyxOS currently supports 12 devices, and some of them have their own device-specific quirks.

#### Pixels 4a (5G), 5, 4a, 4 XL, 4, 3a XL, 3a, 3 XL, 3

These devices are still supported by Google, meaning they get timely monthly security updates, and thus we are able to include all the various security fixes in our builds. All components, both proprietary and open source are kept up to date by Google and hence we're able provide all of that in our releases.

#### Pixels 2 XL, 2

Google stopped updating this device late 2020, which means that it no longer gets any updates for the proprietary components.

What we can update:
* The OS code, as it common for all.
* The kernel, since it's open source.

What we cannot update further:
* The proprietary bits, both the blobs and firmware / bootloader are stuck on the October 2020 version.

#### Xiaomi Mi A2

The A2 being an Android One device was a big part of why we chose to support it, since it's still getting monthly updates. However, the monthly updates aren't always on time, usually they're released towards the end of the month, so it lags behind a bit compared to the rest.

What we can update:
* The OS code, common for all.
* The kernel, since it's open source.

Delayed updates:
* Proprietary blobs

We update them as soon as the update is available, but this means that it lags behind by a month or two. i.e. The May update for the A2 is still using the proprietary blobs from March 2021 since Xiaomi's April build was delayed / pulled due to an issue, and thus we didn't have the updates available in time.

Complicated situation:
* Proprietary firmware / bootloader.

You might have read something about needing to install Stock Oreo 8.1 before installing CalyxOS on the Mi A2 - this was needed because newer versions wouldn't let you relock the bootloader. We worked around this in April 2021, by including just the Oreo bootloader but newer firmware into our builds. However, the newer firmware had to be from September 2020, since due to a Xiaomi bug updating to any newer (October 2020 or March 2021, doesn't matter) results in a factory reset. This happens with the stock OS too, if you update from September to October (or newer) it asks you to factory reset.

<br>

This covers the security update situation for all supported devices. If you have any questions, feel free to ask them on one of our [chat channels](/community).