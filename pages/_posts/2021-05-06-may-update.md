---
title: May Security update
date: 2021-05-06
---

With May comes another security update packed to the brim with new features.

Changelog:
* May Security update (2021-05-05)
* Built-in Work profile support - create a new work profile directly from Settings without having to install any third party apps.
* Create a work profile from Settings -> System -> Multiple users -> Add user or profile -> Work profile
* You can select which apps to include in the profile, and also turn it on and off as you want. More to come in future updates!
* Integration of Aurora Services for Aurora Store - Supports installing updates in the background seamlessly. New installs still need confirmation.
* Enable from: Aurora Store -> Settings -> Installation -> Installation method -> "Aurora Services"
* Prevent certain apps from bypassing the firewall when network access is completely disabled for them (i.e. the main toggle next to each app in Datura)
* VoLTE and Wi-Fi Calling support fixes, should now work on all carriers supported on stock
* microG: Include 'Alt sign in' option to fix account login issues
* Include option to prevent toggling quick settings when on a secure lockscreen (i.e. PIN / Password / Pattern set) - prevents using them completely
* Settings -> Security -> "Gear icon" next to Screen lock -> Quick settings - default is allow toggling from lockscreen
* Seedvault: Backup and restore Datura Firewall settings
* Seedvault: Backup and restore additional settings added to CalyxOS
* Seedvault: Call log backup speed improvements, should be a lot faster for those with a long history of calls.
* Dialer: Allow disabling calling account selection dialog (Signal / WhatsApp calling option), from Dialer -> menu (top right) -> Settings -> Display options
* Allow disabling Presidential alerts, from Settings -> Apps and notifications -> Advanced -> Wireless emergency alerts
* Active Edge Gesture: Fix settings being reset
* Enable Doze for improved battery life when using microG
* Datura Firewall: Fix sorting bug
* Music (Eleven): Upstream updates and bugfixes
* Calendar (Etar): Upstream updates and bugfixes
* Chromium: 90.0.4430.91
* Updates for all other included apps.

A2:
* Qualcomm code updates.

Note:
A2 Firmware is from September 2020 since upgrading to versions after that
requires a factory reset.

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The Pixels 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, 5, 4a (5G) contain the full security patch, as they are still being updated by Google.</li>
<li>The Pixels 2 and 2 XL are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The Xiaomi Mi A2 is still getting security updates, but those are Android 10 and usually released towards the end of the month, whereas CalyxOS is Android 11 and releases the updates right as they're available. This means that the A2 lags behind slightly, by a month or two, in getting security updates for proprietary components.</li>
</ul>
</div>