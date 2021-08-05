---
title: August Security update
date: 2021-08-05
---

The August update is here. It's mostly identical to the Special Pixel 4a release (2.7.1), with the only addition being the security updates.

We're working on some features and another update will be released later this month.

Changelog:
* CalyxOS 2.8.0 - Android 11
* August Security update (2021-08-05)
* Prevent hotspot devices from bypassing VPN when "Allow clients to use VPNs" is enabled
* Default to round icons, previous default was "Rounded Rectangle"
* Default to rounded corners
* Allow turning off microphone and camera status bar icons from Settings -> Status bar -> System icons
* Chromium: 91.0.4472.164
* Contacts: Don't prompt to add Google Account when creating a contact for the first time
* microG: New icon for Settings -> System integration
* SeedVault: Restore: Always use F-Droid to install Nextcloud
* SetupWizard: Add button to setup eSIM on missing SIM page
* SetupWizard: Fix icons on app install page
* SetupWizard: Turn off OEM unlocking during initial setup if bootloader is locked
* Drop Conversations as a default included app.
* Updates for all other included apps.
* Updated translations for all apps, and the OS.

Pixel 2:
* Update Linux kernel to 4.4.276

Note:
The A2 proprietary firmware components are from September 2020 since trying to upgrade to anything newer ends up factory reseting the device.

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The Pixels 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, 5, 4a (5G) contain the full security patch, as they are still being updated by Google.</li>
<li>The Pixels 2 and 2 XL are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The Xiaomi Mi A2 is still getting security updates, but those are Android 10 and usually released towards the end of the month, whereas CalyxOS is Android 11 and releases the updates right as they're available. This means that the A2 lags behind slightly, by a month or two, in getting security updates for proprietary components.</li>
</ul>
</div>