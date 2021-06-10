---
title: June Security update and Feature drop
date: 2021-06-10
---

The June update is here, with even more features and bug fixes.

Changelog:
* CalyxOS 2.6.1 - Android 11
* June Security update and Feature drop (2021-06-05)
* Work profile v2: Big improvements to work profile creation, resolving issues with certain essential system apps not being enabled in the profile, not being able to see work profile apps in the recent screen, and work needed to support future work profile features.
* For the best experience, we would recommend deleting any profiles you created in the May build and starting over with a fresh new profile.
* Enable SeedVault backups for work profile, from Settings (in the main user) -> System -> Backup -> Work. Do note that USB is not available in work profiles due as Android does not support that.
* Handle microG better in work profile, enabling / disabling all of it's companion apps as needed.
* Firewall (Datura): Support work profile apps, improve icon and fix sorting of apps.
* AMOLED dark mode, aka pure black background for dark theme. Enable at Settings -> Display -> Dark theme -> Pure black
* Network traffic monitor feature, which shows network traffic indication in the status bar. Enable from Settings -> System -> Status bar -> Network traffic monitor
* Status bar icon configuration, allowing you to choose what to show. Configure in Settings -> System -> Status bar -> System icons
* Use rounded corners in the system where appropriate.
* Include a Maps app in the OS, Organic Maps. You can install it from F-Droid
* Bring in the Recorder app from LineageOS, allowing you to create sound recordings.
* F-Droid: Handle Trichrome updates better, fixing an issue with Trichrome Library updates where they would always show up as an update even after updating.
* Dialer: Use a restrictive WebView for Menu -> Helplines links, which clears it's history when you're done to avoid leaving any traces. Also add additional categories for the helplines.
* Panic trigger (Ripple): This will no longer show up as an update in Aurora Store
* Music (Eleven): Bug fixes and performance improvements
* You can also create screen recordings using the built-in recorder from the quick settings (what you see down the status bar)
* microG: Implement Font provider to support more applications, such as Google Fi
* microG: Update to v0.2.19.211515
* Chromium: Switch to 64-bit builds on all devices.
* Chromium: Update 91.0.4472.88
* Updates for all other included apps.
* Updated translations for all apps, and the OS.

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