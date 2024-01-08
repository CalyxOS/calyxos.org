---
title: Building the Linux kernel for CalyxOS
nav_title: Build kernel
redirect_from:
  - /contribute/build/kernel/
  - /development/build/kernel/
---

CalyxOS uses Google's Android Linux kernel with some additional modifications for certain features on top. It can be built within the CalyxOS sources, either during the OS build process, or separately using Google's build scripts.

## Kernel build
* This is the process used for official builds, since
  * The kernel is shared between Pixels of the same family. Which means 1 kernel build usually ends up covering 2 devices (e.g. Pixel 6 and 6 Pro share the kernel)
  * The kernel usually does not change that often, so it's beneficial to build it separately to avoid having to build the exact same source code every time.
  * Google uses the same model, in fact we're using their scripts and setup.

### Download the source code

```shell
mkdir ~/calyxos/kernel.android14
cd ~/calyxos/kernel.android14
repo init -u https://gitlab.com/CalyxOS/kernel_manifest -b android14
repo sync -j8 # You may use a higher number here if you have a fast computer and fast internet
```

### Building


```shell
./build_kernel.sh bluejay # Replace bluejay (Pixel 6a) with your device codename
```

This will build the kernel, and it also copies it to the corect directory directly (`device/google/bluejay-kernel` for Pixel 6a).

Copy that to the OS source code for it to get included in the builds

```shell
cp -a ~/calyxos/kernel.android14/device/google/bluejay-kernel ~/calyxos/android14/device/google/
```
