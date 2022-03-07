---
title: Pixel 6 Dirty Pipe Vulnerability fix
date: 2022-03-07
---

CalyxOS 3.2.2 - Pixel 6, and 6 Pro is now available directly in the stable channel. Beta also has the same build if you want to stay on that.

### The Dirty Pipe Vulnerability

A vulnerability was found and patched in the Linux kernel.

This build includes the fix for the Dirty Pipe vulnerability.

There are no other changes, compared to [3.2.1](https://calyxos.org/news/2022/02/20/android-12-pixel-6-update/)

More details: <https://dirtypipe.cm4all.com/>

### Affected devices

This vulnerability only affects Linux kernel version 5.8 and higher.

Pixel 6 and 6 Pro use Linux kernel 5.10, hence they were affected and updated.

All other older Pixels use an older Linux kernel version, hence they are not affected by this vulnerability

### Timeline

All times in IST (Indian Standard Time, GMT +5:30), 7 March 2022.

| ----- | ---- |
| Time  | Task |
| 18:21 | Vulnerability link posted in our internal development chat |
| 18:29 | Figured out Pixel 6 was vulnerable, decided to release an update right away |
| 18:56 | Quick kernel build test done, boots |
| 19:00 | Kernel [tagged](https://gitlab.com/CalyxOS/kernel_manifest/-/commits/3.2.2-kernel) and pushed |
| 20:02 | Production kernel built, tested and merged |
| 20:14 | Fired off production OS build after local testing |
| 21:00 | Dinner while it builds, and gets signed |
| 21:30 | Install previous build (3.2.1) on test device, to test an OTA update to this build |
| 23:30 | Builds ready and signed, OTA update installing |
| 23:50 | Installation successful |
| 00:21 | Final checks complete, build deployed |

### Process

We push the code to [[gerrit]]. In this case, not many changes, <https://review.calyxos.org/q/topic:dirtypipe>

The release process is tracked on [GitLab](https://gitlab.com/CalyxOS/calyxos/-/issues/918) - we use checklists to make sure no step is missed.

Also, no matter what, every single build is tested once before release to ensure a stable experience.

### 12L

We're aware that Android 12L was just released, and are working on it. It may take some time given that it's a larger than usual release. We'll continue posting updates here.
