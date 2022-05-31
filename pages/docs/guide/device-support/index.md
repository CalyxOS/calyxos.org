---
title: Device Support
description: 🙋 Check out device support timelines and requirements below!
toc: true
redirect_from:
   - /faq/device-support/
   - /about/faq/device-support/
---

CalyxOS utilizes [Verified Boot](https://source.android.com/security/verifiedboot) (including bootloader re-locking) to keep the Android security model intact.

### Support length
<table class="table table-striped download">
<tr><th> Device(s) </th><th> Manufacturer support date </th><th> CalyxOS support date </th></tr>
<tr><td> Pixel 6, 6 Pro </td><td> October 2026 </td><td> October 2026* </td></tr>
<tr><td> Pixel 5a (5G) </td><td> August 2024 </td><td> August 2024* </td></tr>
<tr><td> Pixel 4a (5G) </td><td> November 2023 </td><td> August 2024* </td></tr>
<tr><td> Pixel 5 </td><td> October 2023 </td><td> August 2024* </td></tr>
<tr><td> Pixel 4a </td><td> August 2023 </td><td> August 2023* </td></tr>
<tr><td> Pixels 4, 4 XL </td><td> October 2022 </td><td> August 2023* </td></tr>
<tr><td> Pixels 3a, 3a XL </td><td> May 2022 </td><td> August 2022* </td></tr>
<tr><td> Pixels 3, 3 XL </td><td> October 2021 </td><td> August 2022* </td></tr>
<tr><td> Pixels 2, 2 XL </td><td> October 2020 </td><td> February 2022 </td></tr>
<tr><td> Xiaomi Mi A2 </td><td> August 2021 </td><td> February 2022* </td></tr>
<tr><td> Fairphone 4 </td><td> December 2025* </td><td> TBD* </td></tr>
<tr><td> OnePlus 8T </td><td> December 2024* </td><td> TBD* </td></tr>
<tr><td> OnePlus 9, 9 Pro</td><td> December 2024* </td><td> TBD* </td></tr>
</table>

* \*Note that these are the current estimated dates. We try to support devices as long as possible, but it's hard to determine feasibility years in advance, so we'll keep updating these the closer we get to the dates.
* [Google Pixel support dates](https://support.google.com/nexus/answer/4457705#zippy=%2Cpixel-phones)
* [Fairphone](https://support.fairphone.com/hc/en-us/articles/4405858006545-FP4-Fairphone-OS-Android-11-)
* [OnePlus Software maintenance schedule](https://forums.oneplus.com/threads/update-to-the-oxygenos-codebase-and-software-maintenance-schedule.1462181/)

### Update timeframe
* We generally intend to get monthly security updates out as soon as possible after their release. The process takes some time since we don't get early access but generally the goal is to get them out to the stable channel in the same week as AOSP release.
* Major version updates (such as the next Android 13 (T) release) take longer because we have to port all of our changes to the new version, which can be a lot of work.

### Requirements for supporting a new device
1. Android 12.0, available now, or eventually:
   <br>
   CalyxOS targets the latest Android version, currently 12.0 (S). It takes a lot of work to port a newer Android version to a device, and so devices running the latest Android version are preferred.
2. Ability to unlock the bootloader:
   <br>
   You can't install any custom OS if you can't unlock the bootloader in the first place. Some devices don't support it all, whereas on others some variants may not support unlocking the bootloader. Note that this is very different from carrier locking, which simply means that you can only use a particular SIM card with your device.
3. Ability to relock the bootloader with a custom OS installed:
   <br>
   CalyxOS is meant to be run with a locked bootloader after installation, which makes sure that the OS cannot be tampered without your knowledge.
   Additionally, this has to be implemented properly to not boot any other OS once a CalyxOS build signed with our own private keys is installed - whether it be another set of private keys, or the publicly available AOSP test keys.
4. Timely security and version updates:
   <br>
   CalyxOS pulls in Google's monthly security update as soon as they are available, however that is only the open source part. The proprietary bits need to be updated by the device vendor (Google for Pixels, Xiaomi for the A2, etc), to ensure that the device is fully up-to-date on the security patches. Timely monthly updates are thus essential, and so are Android version updates.
5. Qualcomm SoC preferred (for non-Pixel devices)
   <br>
   In our experience, working on a custom OS for a device using a Qualcomm SoC is usually much easier than the alternatives, given their wide usage, and release of open source device support code through Code Aurora Forum.

These are the 5 main factors we consider when adding support for a new device to CalyxOS.

If you know of a device that meets the above criteria, let us know! You can reach us through any of the channels listed at: [[Community => community]]
