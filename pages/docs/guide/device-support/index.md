---
title: Device Support
description: 🙋 Check out device support timelines and preferences below!
toc: true
redirect_from:
   - /faq/device-support/
   - /about/faq/device-support/
---

CalyxOS utilizes [Verified Boot](https://source.android.com/security/verifiedboot) (including bootloader re-locking) to keep the Android security model intact.

### Support length

* \*Note that these are the current estimated dates. We try to support devices as long as possible, but it's hard to determine feasibility years in advance, so we'll keep updating these the closer we get to the dates.
* [Google Pixel support dates](https://support.google.com/nexus/answer/4457705#zippy=%2Cpixel-phones)
* [Google Pixel Tablet support date](https://support.google.com/googlepixeltablet/answer/13555449?hl=en-GB#zippy=%2Cwhats-the-os-update-policy-for-the-pixel-tablet)
* [Fairphone](https://support.fairphone.com/hc/en-us/articles/9979180437393-Fairphone-OS)
* [Motorola](https://en-us.support.motorola.com/app/software-security-update)

#### Upcoming devices
<table class="table table-striped download">
<tr><th> Device(s) </th><th> OS upgrades </th><th> Security updates </th></tr>
<tr><td> SHIFTphone 8 </td><td> August 2026* </td><td> August 2026* </td></tr>
</table>

#### Modern devices
<table class="table table-striped download">
<tr><th> Device(s) </th><th> OS upgrades </th><th> Security updates </th></tr>
<tr><td> Fairphone 5 </td><td> August 2026* </td><td> September 2031* </td></tr>
<tr><td> Fairphone 4 </td><td> August 2024* </td><td> December 2026* </td></tr>
<tr><td> Motorola moto g 5G - 2024 </td><td> August 2026* </td><td> March 2027* </td></tr>
<tr><td> Motorola moto g84 5G </td><td> August 2026* </td><td> September 2026* </td></tr>
<tr><td> Motorola moto g34 5G </td><td> August 2026* </td><td> January 2027* </td></tr>
<tr><td> Motorola moto g52 </td><td> August 2024* </td><td> August 2025* </td></tr>
<tr><td> Motorola moto g42 </td><td> August 2024* </td><td> August 2025* </td></tr>
<tr><td> Motorola moto g32 </td><td> August 2024* </td><td> August 2025* </td></tr>
<tr><td> Pixel 9, 9 Pro, 9 Pro XL, 9 Pro Fold </td><td> August 2031 </td><td> August 2031 </td></tr>
<tr><td> Pixel 8a </td><td> May 2031 </td><td> May 2031 </td></tr>
<tr><td> Pixel 8, 8 Pro </td><td> October 2030 </td><td> October 2030 </td></tr>
<tr><td> Pixel Fold </td><td> June 2028 </td><td> June 2028 </td></tr>
<tr><td> Pixel Tablet </td><td> June 2026 </td><td> June 2028 </td></tr>
<tr><td> Pixel 7a </td><td> May 2028 </td><td> May 2028 </td></tr>
<tr><td> Pixel 7, 7 Pro </td><td> October 2027 </td><td> October 2027 </td></tr>
<tr><td> Pixel 6a </td><td> July 2027 </td><td> July 2027 </td></tr>
<tr><td> Pixel 6, 6 Pro </td><td> October 2026 </td><td> October 2026 </td></tr>
</table>

#### Extended support
<table class="table table-striped download">
<tr><th> Device(s) </th><th> OS upgrades </th><th> Security updates </th></tr>
<tr><td> Pixel 5a (5G) </td><td> August 2024* </td><td> August 2025* </td></tr>
<tr><td> Pixel 4a (5G) </td><td> August 2024* </td><td> August 2025* </td></tr>
<tr><td> Pixel 5 </td><td> August 2024* </td><td> August 2025* </td></tr>
</table>

#### No longer supported
<table class="table table-striped download">
<tr><th> Device(s) </th><th> OS upgrades </th><th> Security updates </th></tr>
<tr><td> OnePlus 8T, 9, 9 Pro Beta </td><td> May 2022 </td><td> May 2022 </td></tr>
<tr><td> Pixel 4a </td><td> August 2024 </td><td> March 2025 </td></tr>
<tr><td> Pixel 4, 4 XL </td><td> August 2024 </td><td> March 2025 </td></tr>
<tr><td> Pixel 3a, 3a XL </td><td> August 2024 </td><td> March 2025 </td></tr>
<tr><td> Pixel 3, 3 XL </td><td> August 2024 </td><td> March 2025 </td></tr>
<tr><td> Pixel 2, 2 XL </td><td> February 2022 </td><td> February 2022 </td></tr>
<tr><td> SHIFT SHIFT6mq </td><td> August 2024 </td><td> March 2025 </td></tr>
<tr><td> Xiaomi Mi A2 </td><td> February 2022 </td><td> February 2022 </td></tr>
</table>

### Update timeframe
* We generally intend to get monthly security updates out as soon as possible after their release. The process takes some time since we don't get early access but generally the goal is to get them out to the stable channel in the same week as AOSP release.
* Major version updates (such as the next Android 16 release) take longer because we have to port all of our changes to the new version, which can be a lot of work.

### Preferences for supporting a new device
1. Android 15.0, available now, or eventually:
   <br>
   CalyxOS targets the latest Android version, currently 15.0. It takes a lot of work to port a newer Android version to a device, and so devices running the latest Android version are preferred.
2. Ability to unlock the bootloader:
   <br>
   You cannot install any custom OS if you are not able to unlock the device's bootloader in the first place. Some phone makers or mobile carriers do not allow all or some of their devices to unlock the bootloader. On these devices, you cannot enable '[OEM unlocking](https://source.android.com/docs/core/architecture/bootloader/locking_unlocking#unlocking-bootloader)' to install custom OSes. Unlocking bootloader is different from carrier unlocking. The latter means you can unlock a carrier-locked phone to use SIM cards provided by other carriers on the device.
3. Ability to relock the bootloader with a custom OS installed:
   <br>
   CalyxOS is meant to be run with a locked bootloader after installation, which makes sure that the OS cannot be tampered without your knowledge.
   Additionally, this has to be implemented properly to not boot any other OS once a CalyxOS build signed with our own private keys is installed - whether it be another set of private keys, or the publicly available AOSP test keys.
4. Timely security and version updates:
   <br>
   CalyxOS pulls in Google's monthly security update as soon as they are available, however that is only the open source part. The proprietary bits need to be updated by the device vendor (Google for Pixels, Fairphone for the FP5, etc), to ensure that the device is fully up-to-date on the security patches. Timely monthly/bimonthly updates are thus essential, and so are Android version updates.
5. Qualcomm SoC preferred (for non-Pixel devices)
   <br>
   In our experience, working on a custom OS for a device using a Qualcomm SoC is usually much easier than the alternatives, given their wide usage, and release of open source device support code through CodeLinaro.

These are the 5 main factors we consider when adding support for a new device to CalyxOS.

If you know of a device that meets the above criteria, let us know! You can reach us through any of the channels listed at: [[Community => community]]
