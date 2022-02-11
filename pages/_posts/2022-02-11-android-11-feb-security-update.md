---
title: Android 11 February Security update for Pixel 2, Mi A2
date: 2022-02-11
---

CalyxOS 2.14.0 - Android 11, February 2022 Security update is now available for the Pixel 2, 2 XL and Mi A2.

It is currently in the beta channel, and will be bumped to the stable channel later after additional testing and feedback. Factory images will be available at that time as well.

Sadly, we will no longer be able to provide OS updates for the Pixel 2, and Pixel 2 XL.  The Xiaomi Mi A2 should get Android 12 at a later date, if everything goes well.

## Details
### Pixel 2, Pixel 2 XL
This is the final CalyxOS update for these devices. Google stopped updating the Pixel 2 series as of December 2020.

Up till now, we extended these phones useful lifetimes by patching the open source components: AOSP and the Linux kernel. Linux kernel 4.4 was a long-term support kernel, but has stopped receiving updates this month. ( see <https://en.wikipedia.org/wiki/Linux_kernel_version_history> )

Unfortunately due to the kernel dependency, it is also not feasible to have Android 12 fully working on these devices. There are various community efforts, but there's no fully working port as far we know.

As such, we have decided to stop updating these devices. Applications such as Chromium and microG will still continue recieving updates.

### Xiaomi Mi A2
This will be the final CalyxOS Android 11 build for this device. We're currently working on getting CalyxOS Android 12 working, so far it looks quite promising. We'll keep posting updates on our website.

Please note that Xiaomi has stopped providing updates for this devices.
We've been keeping the open source components updated, and that's included in this build.

Additionally, the proprietary firmware componets are from September 2020,
since trying to upgrade to anything newer ends up factory resetting the device.

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
