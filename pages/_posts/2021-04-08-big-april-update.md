---
title: The Big April update
date: 2021-04-08
---

April is amongst us, and with it comes a security update, but wait, there's more.

This update contains a lot of new features and bug fixes that we've been hard at work over the last few months. There's even more coming in the upcoming builds, stay tuned!

Changelog:
* April Security update (2021-04-05)
* VoLTE and Wi-Fi Calling support for a lot more carriers
* microG: Potential fix for google account login issue
* Introducing Datura Firewall - our new Firewall app
* Makes the existing Wi-Fi / Mobile / VPN / Background data toggle easily accessible. More features to come!
* Add a Global cleartext network traffic restriction toggle to prevent all non-TLS traffic from leaving the device (including the OS, system apps and installed apps) Settings -> System -> Developer Options -> Restrict cleartext network traffic
* Include a Sensitive Phone Numbers list, hiding them from the call log.
* Dialer also gets a new helpline contact list based on the above. (Dialer -> Menu -> Helpline) for easy access. Thanks [LineageOS](https://lineageos.org/Changelog-25/)!
* Add feature to optionally scramble the lockscreen PIN. Settings -> Security -> Screen lock -> Scramble layout
* The "Background data" toggle is now able to restrict background network access completely (even when using Wi-Fi) and as such has been renamed
* Wi-Fi timeout feature - like our bluetooth timeout feature, now CalyxOS users have similar functionality to automatically turn off Wi-Fi after a certain time. Settings -> Network & Internet -> Wi-Fi -> Wi-Fi preferences -> Turn off Wi-Fi automatically
* microG: v0.2.18.204714
* Chromium: 89.0.4389.105
* Seedvault: Allow verifying and re-generating the 12 word recovery code
* Ability to install Chromium (Trichrome) updates via F-Droid
* Add caffeine, heads up, Sync, AmbientDisplay, USB Tether and AOD QS Tiles from LineageOS
* Fix TTS Engine crash
* Use Cloudflare DNS as the fallback in more places
* Updates for all other included apps.

A2:
* Merge Xiaomi's March 2021 Security update
* Update Kernel to 4.4.261
* Include 10.0 Firmware (September 2020)

Note: A2 Firmware is from September since upgrading to versions after that
requires a factory reset.

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The Pixels 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, 5, 4a (5G) contain the full security patch, as they are still being updated by Google.</li>
<li>The Pixels 2 and 2 XL are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The Xiaomi Mi A2 is still getting security updates, but those are Android 10 and usually released towards the end of the month, whereas CalyxOS is Android 11 and releases the updates right as they're available. This means that the A2 lags behind slightly, by a month or two, in getting security updates for proprietary components.</li>
</ul>
</div>