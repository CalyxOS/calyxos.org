---
title: November Security update
date: 2021-11-08
---

The Android 11 November Security update is finally here.

It is currently in the beta channel, and will be bumped to the stable channel later after additional testing and feedback. Factory images will be available at that time as well.

For users who can't select the beta channel, that bug has been fixed in this update, and you'll be able to select it again going forward.

Android 12:
We're working on the port. You can follow the progress on [GitLab](https://gitlab.com/groups/CalyxOS/-/epics/28) and [Gerrit](https://review.calyxos.org/q/branch:android12). We will continue posting more updates as the port progresses.
Pixel 3 and above will get the update at launch. For the Pixel 2 and Mi A2, we're still looking into the feasiblity of porting Android 12 to them.

Pixel 6, 6 Pro:
We will be supporting it, but not all of our developers have the device in hand, and we're also working on the Android 12 port in general before we begin work specifically on the Pixel 6.

Changelog:
* CalyxOS 2.11.0 - November 2021
* November Security update (2021-11-01)
* Updater: Fix beta channel
* microG: More push notification improvements, after extensive testing
* Chromium: 94.0.4606.85
* F-Droid: Remove opt-in push requests feature entirely
* Update all included apps

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The Pixels 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, 5, 4a (5G), 5a are now on Android 12, which means we need to port that before we get the full security update, to the proprietary components. For this build, we have updated the open source OS code (AOSP), and the Linux kernel. This is indicated in the Security patch level in Settings.</li>
<li>The Pixels 2 and 2 XL are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The Xiaomi Mi A2 is no longer being updated by Xiaomi, so the CalyxOS releases for it only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates. Additionally, due to a Xiaomi bug wherein updating causes the device to get wiped, we have to ship the September 2020 firmware.</li>
</ul>
</div>