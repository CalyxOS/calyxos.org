---
title: Feature update
date: 2021-09-02
---

The promised feature update is here. It will be last big update for Android 11, we will not be developing any more features and instead focusing on making an Android 11 build available for the [Pixel 5a](https://twitter.com/CalyxOS/status/1433469816720044041), and also preparing for Android 12.

This update is currently in the beta channel, and will be bumped to the stable channel later after additional testing and feedback. Factory images will be available at that time as well.

There was an issue with 2.8.1 (which was only released to the beta channel) that left cause lags or restarts on some devices. It has been fixed in 2.8.2, which is currently in the beta channel.

Changelog:
* CalyxOS 2.8.2 - Android 11
* August Security patch (2021-08-05)
* Datura firewall: Network access toggle (the main toggle next to the app name) now prevents apps being able to bypass network isolation through DNS requests
* Global VPN feature: Ability to use one VPN device-wide - in the main user, work profile as well as other users
* To enable, go to Settings -> Network & internet -> VPN -> Your VPN app -> Global VPN; in the main user
* Auto reboot feature: Configurable time interval after which the device will get automatically rebooted. Returns phone to BFU state. Settings -> Security -> Auto reboot
* Pause apps feature: Long press an app in the Launcher and tap "Pause app" (the hourglass icon) to pause an app. A paused app will not be able to start, its notifications will be hidden.
* Navigation bar arrows feature: Enable from Settings -> System -> Languages & input -> Show arrow keys while typing; to show left and right cursor keys when typing
* Increase maximum password length from 16 to 64
* Developer option: Airplane mode radios - Configure which radio to toggle when toggling Airplane Mode: Settings -> System -> Developer options -> Airplane mode radios
* Dialer: Add an option to enable Do-not-disturb during calls
* Dialer: Add options for in-call vibration
* Dialer: Fix bug where the WhatsApp call option would be shown even when it wasn't installed
* Messaging: Allow selecting text inside a message
* Messaging: Hide quick reply options in notifications
* Enable permission auto-revoke for work profile apps
* Enable Setup Wizard for newly created work profiles, allowing enabling / disabling of microG depending on user preference
* Fix network traffic monitor preference showing incorrect values
* Disable bluetooth by default on new installs
* microG: v0.2.22.212658
* Chromium: 92.0.4515.15
* F-Droid: 1.13.1
* Etar: Merge upstream code changes
* Recorder: Upstream improvements
* Updates for all other included apps
* Updated translations for all apps, and the OS

Note:
The Xiaomi Mi A2 proprietary firmware components are from September 2020, since trying to upgrade to anything newer ends up factory resetting the device.

Pixel 2:
* Update Linux kernel to 4.4.278
* Merge security patches
* Note:
Google has stopped updating this device. This means that
they will not provide any more updates to the closed-source components,
such as the bootloader, modem firmware, and other firmware.
However, updates to the open source OS code and the Linux kernel
can still be merged by us, and are included in this build.

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The Pixels 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, 5, 4a (5G) contain the full security patch, as they are still being updated by Google.</li>
<li>The Pixels 2 and 2 XL are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The Xiaomi Mi A2 is still getting security updates, but those are Android 10 and usually released towards the end of the month, whereas CalyxOS is Android 11 and releases the updates right as they're available. This means that the A2 lags behind slightly, by a month or two, in getting security updates for proprietary components.</li>
</ul>
</div>