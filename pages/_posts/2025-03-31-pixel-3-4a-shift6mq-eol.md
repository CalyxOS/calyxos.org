---
title: Android 14, Final CalyxOS update for Pixel 3 - 4a and SHIFT6MQ
date: 2025-03-31
redirect_from: /pixel34eol/
---

* CalyxOS 5.17.1 - Android 14, March 2025 Security update (2025-05-01)
* End of CalyxOS support for Pixel 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, and SHIFT6MQ
* Pixel 4a (5G), 5 and 5a, and other newer Pixels are still supported.

### Rollout:

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 31 March, Monday |  |
| Beta | 31 March, Monday |  |
| Stable | 2 April, Wednesday |  |

### **Important update: end of CalyxOS support for Pixel 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, and SHIFT6MQ**

With this release (5.17.1), CalyxOS has stopped providing official software updates for the Pixel 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, and SHIFT6MQ. This means these devices will no longer receive security patches, new features, and bug fixes. As of the time of this update, March 2025, the Pixel 4a (5G), 5 and 5a, and other newer Pixels are still supported.

We strive to extend our support as long as possible after a device reaches manufacturer's end of support. However, our team can only provide fixes to the open source components, such as the OS code and the Linux kernel. As the manufacturer terminates updates for these devices, proprietary components such as the bootloader, modem firmware, and camera firmware will get no more updates.

As devices age, the amount of work to keep devices up to date against latest vulnerabilities grows at an exponential rate while trying to provide timely support for new devices. At this moment, we cannot guarantee the same level of protection for the following phone models despite our best effort to extend the life of devices that our users have trusted for years.

* Pixel 4a sunfish
* Pixel 4 XL coral
* Pixel 4 flame
* Pixel 3a XL bonito
* Pixel 3a sargo
* Pixel 3 XL crosshatch
* Pixel 3 blueline
* SHIFT6MQ axolotl

To ensure transparency, we are sending a reminder to these devices. If you have one of these devices, you will see an end-of-CalyxOS-support notification at each boot. You can disable this notification by going to Settings > Apps. Click "Show system" on the top right corner of the page. Then from the list of apps, select CalyxOS Update Client > Notifications and toggle "End of CalyxOS Support" off.

It is important to mantain your digital security and privacy. To ensure you can continue receiving updates, please consider shifting to [[a device that is still supported by us => device-support]] or the manufacturer.

Thanks for trusting CalyxOS to keep your device secure.

### Changelog
* CalyxOS 5.17.1 - Final update
* March 2025 Security update (2025-03-01)
* Also includes security updates from previous months
* Implement charging control - allow setting a limit for charging, under Settings -> Battery
* Seedvault: Update to 14-5.3
* Seedvault: Added support for user CA certificates
* Seedvault: Fixed issue where many Go server implementations of WebDAV did not work with the WebDAV client in Seedvault
* Seedvault: Bumped the app data quota from 1GB to 3GB
* Seedvault: Nextcloud app is no longer allowed for backup (Use built-in WebDAV Cloud support!)
* Seedvault: Improved handling of metered networks, if disallowed, the backup process will be aborted
* Seedvault: Fixed backup errors with USB when file and app backup are both on
* Seedvault: Fixed overdue backups not automatically starting when USB drives are plugged in
* Chromium: 134.0.6998.135
* Update kernel
* Update all included apps
* Update translations

### Note

{% include install/security_notes.html %}
