---
title: Building the Linux kernel for CalyxOS
nav_title: Build kernel
redirect_from:
  - /contribute/build/kernel/
  - /development/build/kernel/
---

CalyxOS uses Google's Android Linux kernel with some additional modifications for certain features on top. It can be built separately using Google's build scripts for modern Pixel devices, or during the OS build process for our other supported devices.

## Kernel build
* This is the process used for official builds, since
  * The kernel is shared between Pixels of the same family. Which means 1 kernel build usually ends up covering multiple devices (e.g. Pixel 6, 7, 8, 9 families share the same kernel)
  * The kernel usually does not change that often, so it's beneficial to build it separately to avoid having to build the exact same source code every time.
  * Google uses the same model, in fact we're using their scripts and setup.

| Codename | Supported Devices | Kernel version |
|:---------|:------------------|:---------------|
| tegu     | Pixel 9a          | gs-6.1         |
| comet    | Pixel 9 Pro Fold  | gs-6.1         |
| caimito  | Pixel 9, 9 Pro, 9 Pro XL | gs-6.1         |
| akita    | Pixel 8a          | gs-6.1         |
| shusky   | Pixel 8, 8 Pro    | gs-6.1         |
| felix    | Pixel Fold        | gs-6.1         |
| tangorpro| Pixel Tablet      | gs-6.1         |
| lynx     | Pixel 7a          | gs-6.1         |
| pantah   | Pixel 7, 7 Pro    | gs-6.1         |
| bluejay  | Pixel 6a          | gs-6.1         |
| raviole  | Pixel 6, 6 Pro    | gs-6.1         |

### Download the source code

```shell
mkdir -p ~/calyxos/kernel.android16-qpr2/google/gs-6.1
cd ~/calyxos/kernel.android16-qpr2/google/gs-6.1
repo init --git-lfs -u https://gitlab.com/CalyxOS/kernel_google_gs-6.1_manifest -b android16-qpr2
repo sync -j8 # You may use a higher number here if you have a fast computer and fast internet
```

### Building

```shell
./build_kernel.sh akita # Replace akita (Pixel 8a) with your device codename
```

This will build the kernel, and it also copies it to the corect directory directly (`device/google/akita-kernels` for Pixel 8a).

Copy that to the OS source code for it to get included in the builds

```shell
cp -a ~/calyxos/kernel.android16-qpr2/google/gs-6.1/device/google/akita-kernels ~/calyxos/android16-qpr2/device/google/
```
