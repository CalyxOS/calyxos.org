---
date: 2022-05-09
title: CalyxOS software support timeline
---

CalyxOS currently supports 12 Pixels (3 and newer), and we've got test builds available for 1 Fairphone and 3 OnePlus devices. That's a total of 16 devices.

We're also planning to add support for even more devices in the future, always trying to find more devices to which we can port CalyxOS.

We intend to provide high quality OS releases, where every single build is tested before release. This is not easy to scale, and takes a lot of time and effort. As such, sometimes we have to drop certain devices, especially when they've stopped receiving security updates given that we can only do so much.

Previously we've supported the Pixel 2, 2 XL and Mi A2. The last update for those was in February 2022.

## General

We aim to support devices for as long as feasible, and provide monthly security updates

We will continue providing updates:
1. While we're on the same Android version.
2. At least until the matching Linux Kernel LTS version is supported.
3. If we manage to port a newer Android version in time, we will continue supporting that device while we're still maintaing that version for other devices.

Examples
1. Pixel 3 is still getting updates from us (including 12L), Google's last update was February 2022.
2. Pixel 2 got dropped in February 2022, that's when Linux 4.4 stopped getting updates.
3. Mi A2, CalyxOS was on Android 11, Xiaomi only provided Android 10 for it.

## Device specific

## Pixel 2, 2 XL

* Google's last update was in Dec 2020, Android 11.
* We provided Android 11 builds till February 2022.
* Linux version 4.4 got it's last update in February 2022.
* We're aware of other ROMs making Android 12 available for this device, however the above factors
  still stand and thus we had to drop this device.

## Mi A2

* Xiaomi's last update was in August 2021, Android 10.
* We provided Android 11 builds till February 2022.
* Linux version 4.4 got it's last update in February 2022.
* There were some promising ports of Linux 4.19 to the A2 early 2022, which is why we thought we could provide Android 12. However, upon closer inspection, it was found out that to get this fully working we'd have to use some leaked proprietary files - which we didn't want.
* We're aware of other ROMs making Android 12 available for this device, however the above factors still stand and thus we had to drop this device.

## Pixel 3, 3 XL

* Google's last update was in Feb 2022, Android 12
* We're continuing to provide Android 12L builds
* Linux version 4.9 LTS is expected to end January 2023
* We will provide Android 12 builds till then at least. If we manage to port Android 13 before that, then we will provide builds for longer.

12 till Feb 2023
Maybe 13? If so, till August 2023 at least

## Pixel 3a, 3a XL

* Google's last update is expected in May (or June/July) 2022, Android 12L
* We'll continue providing Android 12L builds
* Linux version 4.9 LTS is expected to end January 2023
* We will provide Android 12 builds till then at least. If we manage to port Android 13 before that, then we will provide builds for longer.

## Pixel 4, 4XL, 4a

13 till Feb 2024
Maybe 14? If so, till August 2024 at least

## Pixel 5, 4a (5G), 5a

14 till Feb 2025
Maybe 15?

## Pixel 6, 6 Pro

?

## Fairphone 4

?

## OnePlus 8T

## OnePlus 9, 9 Pro

References:
* [Google Pixel support dates](https://support.google.com/nexus/answer/4457705#zippy=%2Cpixel-phones)
* [Fairphone](https://support.fairphone.com/hc/en-us/articles/4405858006545-FP4-Fairphone-OS-Android-11-)
* [OnePlus Software maintenance schedule](https://forums.oneplus.com/threads/update-to-the-oxygenos-codebase-and-software-maintenance-schedule.1462181/)

<!--
* https://web.archive.org/web/20220516123404/https://support.google.com/nexus/answer/4457705#zippy=%2Cpixel-earlier%2Cpixel-a-a-xl-xl-a-a-g-a-g%2Cpixel-pixel-pro-phones
  http://archive.today/2022.05.16-124329/https://support.google.com/nexus/answer/4457705%23zippy=,pixel-earlier,pixel-a-a-xl-xl-a-a-g-a-g,pixel-pixel-pro-phones
* http://archive.today/2022.05.16-123350/https://support.fairphone.com/hc/en-us/articles/4405858006545-FP4-Fairphone-OS-Android-11-
* https://web.archive.org/web/20220516123314/https://forums.oneplus.com/threads/update-to-the-oxygenos-codebase-and-software-maintenance-schedule.1462181/
  http://archive.today/2022.05.16-124316/https://forums.oneplus.com/threads/update-to-the-oxygenos-codebase-and-software-maintenance-schedule.1462181/
-->
