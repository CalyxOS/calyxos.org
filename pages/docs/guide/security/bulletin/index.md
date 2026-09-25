---
title: Android Security Bulletins
nav_title: Security Bulletins
description: How CalyxOS keeps up with Android Security Bulletins
redirect_from: /security/bulletin/
---

### Security patch level

Google releases monthly security updates for Android, which contain important fixes.

CalyxOS takes those and integrates them into the OS, and releases new builds.

Each monthly bulletin defines two security patch levels, written `YYYY-MM-01` and `YYYY-MM-05`. The `01` and `05` mark the level. Your device shows its level in Settings → About phone → Android Version → Android security update

* `YYYY-MM-01` contains the Android platform fixes. It is a partial security update.
* `YYYY-MM-05` contains the `-01` fixes plus the kernel and vendor fixes. It is the complete security update.

### Components

The fixes go into multiple parts, and CalyxOS updates each of them separately.

| Component | Type | Patch level |
|-----------|------|-------------|
| Platform: AOSP, the open source components that CalyxOS builds on | Open source | `YYYY-MM-01` |
| Kernel: Android's fork of the Linux kernel | Open source | `YYYY-MM-05` |
| Vendor: the proprietary components needed to make a device work | Proprietary | `YYYY-MM-05` |
| Firmware / bootloader: more of the above | Proprietary | `YYYY-MM-05` |

{% include install/security_notes.html %}
