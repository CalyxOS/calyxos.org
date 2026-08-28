---
title: August 2026 Feature update
date: 2026-08-28
---

* CalyxOS 7.2.4.50 - Android 16 - available for all supported devices
* August feature update

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Beta | 28 August, Friday | |
| Security express | 31 August, Monday | |
| Stable | 31 August, Monday | |

### Changelog
* Chromium: 151.0.7922.173
* Update included apps
* Update translations
* Update kernel
* Patch CVE-2026-28668 & CVE-2026-43499 (GhostLock)
* Remove Advanced Factory Reset Protection, restore Android 15 behaviour for Factory Reset Protection
* Dialer: Only show RTT button when enabled in accessibility settings
* Launcher: Fix padding above All Apps search bar
* Bluetooth: Include compatibility patch for LibrePods
* Location: Use GPS when microG is not available

### Device specific
#### Fairphone 6
* Initial official build

#### Fairphone 5
* Update to FP5.VT31.C.114.20260804
* Bootloader: Updated anti-rollback protection (ARB) handling to ensure compatibility with CalyxOS and prevent unnecessary version increment requirement for new installs to reduce the risk of failed or bricked installations due to ARB

#### moto g84 5G
* Update to V1TCS35H.88-16-8

## Note

{% include install/security_notes.html %}
