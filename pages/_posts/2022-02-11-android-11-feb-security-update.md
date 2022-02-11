---
title: Android 11 February Security update for Pixel 2, Mi A2
date: 2022-02-11
---

CalyxOS 2.14.0 - Android 11, February 2022 Security update is now available for the Pixel 2, 2 XL and Mi A2.

We will no longer be providing updates for the Pixel 2, 2 XL.

## Details
### Pixel 2, 2 XL
This is the final CalyxOS update for this device. Google stopped updating the Pixel 2 after Dec 2020.
We provided extended support by patching the open source components, however Linux 4.4 has
stopped receiving updates. It is also not feasible to have Android 12 fully working on this device.
As such, we have decided to stop updating this device. Apps such as Chromium and microG will still continue getting updates.

### Mi A2
This is the final CalyxOS Android 11 build for this device. We're currently working on getting
Android 12 working, so far it looks quite promising. We'll keep posting updates on our website.
Do note that Xiaomi has stopped providing updates for this devices.
We've been keeping the open source components updated, and that's included in this build.
Additionally, the proprietary firmware componets are from September 2020,
since trying to upgrade to anything newer ends up factory reseting the device.

## Changelog
* CalyxOS 2.14.0 - Android 11
* February 2022 Security update (2022-02-05)
* Linux: 4.4.302, final update for Linux 4.4, long term support has ended
* Chromium: 98.0.4758.87
* microG: v0.2.24.214816
* F-Droid: 1.14
* Update all included apps

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The Pixels 2 and 2 XL are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The Xiaomi Mi A2 is no longer being updated by Xiaomi, so the CalyxOS releases for it only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates. Additionally, due to a Xiaomi bug wherein updating causes the device to get wiped, we have to ship the September 2020 firmware.</li>
</ul>
</div>
