---
title: Android 15, December 2024 Quarterly Platform Release & Security update
date: 2024-12-13
---

* CalyxOS 6.2.1 - Android 15 for Pixel 6 - 9
* The full December 2024 Security update (2024-12-05)

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 13 December, Friday | Rollout Halted after 12 hours due to issue |
| Security express | 17 December, Tuesday | Rolling it out again |
| Beta | 17 December, Tuesday | Rolling it out again |
| Stable | 24 December, Tuesday | Minus the "microG Google apps" fix. |

### The issue
* We initially released this to security express on 13 December Friday. At that time, one of our test devices failed to boot, which we thought was a device-specific issue and thus we skipped that device while investigating, but released for the rest
* However, the next day, we got reports that the update won't install correctly for some users, so we halted the rollout, and started trying to figure out what the issue
* Unfortunately we haven't been able to reproduce and thus determine the exact cause yet.
* Thus, we decided to release it to at least beta and security express.

### What happens
* The update should install fine. After reboot, if things are ok, you're good to go.
* However, after reboot, if the device does not boot, it will continue trying to boot into this update at least 5 times.
* After that, if it still can't boot, it'll switch to the pre-update state and boot into that.
* You can continue using the device now, and see the below steps to remedy to avoid a repeat.

### Testers channel

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |

#### Steps to remedy
1. If you'd like to help us figure out this issue, please contact us in the testers channel:
2. Go to Settings -> System -> System updates. Tap "Release channel", and select "Stable"
3. Since this troublesome update hasn't been released to "Stable", your device won't try to download the update again.
4. If it's already downloading, you can either let it reboot, or just skip the reboot.

### Changelog
* CalyxOS 6.2.1
* Android 15, December 2024 Quarterly Platform Release Security update (2024-12-05), Full
* ~~microG: Fix some google apps not working after recent updates~~
* Keyboard: Fix landscape mode
* Chromium: 131.0.6778.135
* Update all included apps

## Note

{% include install/security_notes.html %}
