---
title: Android 15, December 2024 Security update, Partial
date: 2024-12-05
---

* CalyxOS 6.2.0 - Android 15 for Pixel 6 - 9
* Contains security fixes for open source components, hence partial
* Will release 6.2.1 will the full security update as well ASAP.

### Explanation
* Google typically releases the monthly (security) updates for Pixels on the first Monday of each month.
* However, from time to time they're delayed, and it's unknown when they'll be released.
* All we can do is just wait.
* A LineageOS contributor fixed Wi-Fi calling on these devices, which we were waiting for.
* So we decided to make a build with that, and include whatever we can in that.
* Thus the generic open source parts, which were released on Monday, were included in this build.
* After we had already prepared for the build, Google released the full December update for the Pixels
* By the time the source code was released, our builds were ready as well.
* While we integrate that, here's an update with Wi-Fi calling fixed, some other minor changes, and the aforementioned security patches
* We'll release another update for these devices as soon as Google's Pixel specific source code is integrated into CalyxOS.

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 5 December, Thursday | |
| Beta | 5 December, Thursday | |
| Stable | 9 December, Monday | |

### Changelog
* CalyxOS 6.2.0
* Android 15, December 2024 Security update (2024-12-01), Partial
* This includes the generic open source components of the December Security update
* The full update containing the device-specific and proprietary components will be released later
* Fix Wi-Fi calling in airplane mode [#2813](https://gitlab.com/CalyxOS/calyxos/-/issues/2813)
* Chromium: 131.0.6778.104
* Fix Global VPN being turned off upon app uninstallation [#2761](https://gitlab.com/CalyxOS/calyxos/-/issues/2761)
* Update all included apps

## Note

{% include install/security_notes.html %}
