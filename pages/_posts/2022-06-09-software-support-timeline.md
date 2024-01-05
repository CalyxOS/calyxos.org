---
date: 2022-06-09
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
* Linux version 4.4 got its last update in February 2022.
* We're aware of other ROMs making Android 12 available for this device, however the above factors
  still stand and thus we had to drop this device.

## Mi A2

* Xiaomi's last update was in August 2021, Android 10.
* We provided Android 11 builds till February 2022.
* Linux version 4.4 got its last update in January 2022.
* There were some promising ports of Linux 4.19 to the A2 early 2022, which is why we thought we could provide Android 12. However, upon closer inspection, it was found out that to get this fully working we'd have to use some leaked proprietary files - which we didn't want.
* We're aware of other ROMs making Android 12 available for this device, however the above factors still stand and thus we had to drop this device.

## Pixel 3, 3 XL

* Google's last update was in Feb 2022, Android 12
* We're continuing to provide Android 12L builds till February 2023.
* Linux version 4.9 LTS is expected to end January 2023
* We will provide Android 12 builds till then at least. If we manage to port Android 13 before that, then we will provide builds for longer.

## Pixel 3a, 3a XL

* Google's last update is expected in May (or June/July) 2022, Android 12L
* We'll continue providing Android 12L builds till February 2023.
* Linux version 4.9 LTS is expected to end January 2023.
* We will provide Android 12 builds till then at least. If we manage to port Android 13 before that, then we will provide builds for longer.

## Pixel 4, 4XL, 4a

* Google will provide Android 13 for these devices.
* We'll continue providing Android 13 builds till February 2024 at least.
* Linux version 4.14 LTS is expected to end January 2024.
* We will provide Android 13 builds till then at least. If we manage to port Android 14 before that, then we will provide builds for longer.

## Pixel 5, 4a (5G), 5a

* Google will provide Android 14 for these devices.
* We'll continue providing Android 14 builds till January 2025 at least.
* Linux version 4.19 LTS is expected to end December 2024.
* We will provide Android 14 builds till then at least. If we manage to port Android 15 before that, then we will provide builds for longer.

## Pixel 6, 6 Pro

* Google will provide Android 15 for these devices.
* They have also promised to provide security updates for 2 more years after that, so we'll evaluate things when we're closer to that date.

## Fairphone 4

* FairphoneOS is still on Android 11, CalyxOS is on Android 12
* They have promised software support until the end of 2025, including Android 12 and 13
* We will have to see what it takes to port Android 13 to this device (hopefully FairphoneOS Android 12 is out by then to make the port easier), and will re-evaluate later in 2022.

## OnePlus
* OnePlus 8T, 9 and 9 Pro had to be dropped - please see [OnePlus Android 12 relock issue](https://calyxos.org/news/2022/07/06/oneplus-android-12-relock-issue/) for more details.

References:
* [Google Pixel support dates](https://support.google.com/nexus/answer/4457705#zippy=%2Cpixel-phones)
* [Fairphone](https://support.fairphone.com/hc/en-us/articles/4405858006545-FP4-Fairphone-OS-Android-11-)
* [OnePlus Software maintenance schedule](https://forums.oneplus.com/threads/update-to-the-oxygenos-codebase-and-software-maintenance-schedule.1462181/)
* [Linux kernel releases](https://www.kernel.org/category/releases.html)

<!--
* https://web.archive.org/web/20220516123404/https://support.google.com/nexus/answer/4457705#zippy=%2Cpixel-earlier%2Cpixel-a-a-xl-xl-a-a-g-a-g%2Cpixel-pixel-pro-phones
  https://archive.today/2022.05.16-124329/https://support.google.com/nexus/answer/4457705%23zippy=,pixel-earlier,pixel-a-a-xl-xl-a-a-g-a-g,pixel-pixel-pro-phones
* https://archive.today/2022.05.16-123350/https://support.fairphone.com/hc/en-us/articles/4405858006545-FP4-Fairphone-OS-Android-11-
* https://web.archive.org/web/20220516123314/https://forums.oneplus.com/threads/update-to-the-oxygenos-codebase-and-software-maintenance-schedule.1462181/
  https://archive.today/2022.05.16-124316/https://forums.oneplus.com/threads/update-to-the-oxygenos-codebase-and-software-maintenance-schedule.1462181/
* https://archive.today/2022.05.16-125400/https://www.kernel.org/category/releases.html
-->
