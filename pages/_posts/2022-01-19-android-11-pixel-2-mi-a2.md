---
title: Android 11 January Security update for Pixel 2, Mi A2
date: 2021-01-09
---

Android 11 January Security update is now available for the Pixel 2, 2 XL and Mi A2.
It also includes the December Security update patches

## Android 12 status
### Pixel 2, 2 XL
* We're aware of various builds of other ROMs available for the Pixel 2.
* However, as far as we know, they aren't fully working due to missing BPF updates
  in the Linux kernel, needed for the networking features to work (traffic counting, firewall, etc)
* There is some work being done by other ROMs to port a newer kernel (4.14/4.19)
  to other devices with the same chipset, which should help.

### Mi A2
* We are available of some 12.0 builds available for the A2 with Linux kernel 4.19 - that looks
  very promising

## Changelog
* CalyxOS 2.13.0 - Android 11
* January 2022 Security update (2022-01-05)
* Also includes December 2021 Security update
* Fix spellcheck when multiple languages are enabled
* Linux: 4.4.296
* Chromium: 95.0.4638.50
* Update all included apps
* Updated translations for all apps, and the OS.

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The Pixels 2 and 2 XL are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The Xiaomi Mi A2 is no longer being updated by Xiaomi, so the CalyxOS releases for it only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates. Additionally, due to a Xiaomi bug wherein updating causes the device to get wiped, we have to ship the September 2020 firmware.</li>
</ul>
</div>
