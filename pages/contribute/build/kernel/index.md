---
title: Building the Linux kernel for CalyxOS
nav_title: Build kernel
---

CalyxOS uses Google's Android Linux kernel with some additional modifications for certain features on top. It can be built within the CalyxOS sources, either during the OS build process, or separately using Google's build scripts.

## Building it during the OS build
* This assumes you're following the steps to [Build CalyxOS](../)

Simply run:
* `export INLINE_KERNEL_BUILDING=true` before running `m` and it will build the kernel while building the OS.

## Building it separately
* This is the process used for official builds, since
  * The kernel is shared between Pixels of the same family. Which means 1 kernel build usually ends up covering 2 devices (e.g. Pixel 2 and 2 XL share the kernel)
  * The kernel usually does not change that often, so it's beneficial to build it separately to avoid having to build the exact same source code every time.

In your source code directory (i.e. `~/calyxos/android11-qpr`)

```
cd kernel
./build_kernel.sh sunfish # Replace sunfish (Pixel 4a) with your device codename
```

This will build the kernel, and it also copies it to the corect directory directly (`device/google/sunfish-kernel` for Pixel 4a), and it will get picked up by the OS build directly.