---
title: Building the Linux kernel for CalyxOS
nav_title: Build kernel
redirect_from:
  - /contribute/build/kernel/
  - /development/build/kernel/
---

CalyxOS uses Google's Android Linux kernel with some additional modifications for certain features on top. It can be built separately using Google's build scripts for Pixel devices, or during the OS build process for our other supported devices.

## Kernel build
* This is the process used for official builds, since
  * The kernel is shared between Pixels of the same family. Which means 1 kernel build usually ends up covering multiple devices (e.g. Pixel 5, 4a (5G), 5a share the same kernel)
  * The kernel usually does not change that often, so it's beneficial to build it separately to avoid having to build the exact same source code every time.
  * Google uses the same model, in fact we're using their scripts and setup.

| Codename | Supported Devices |
|:---------|:------------------|
| raviole  | Pixel 6, 6 Pro    |
| bluejay  | Pixel 6a          |
| pantah   | Pixel 7, 7 Pro    |
| lynx     | Pixel 7a          |
| tangorpro| Pixel Tablet      |
| felix    | Pixel Fold        |
| shusky   | Pixel 8, 8 Pro    |
| akita    | Pixel 8a          |
| caimito  | Pixel 9, 9 Pro, 9 Pro XL |
| comet    | Pixel 9 Pro Fold  |
| tegu     | Pixel 9a          |

### Download the source code

```shell
mkdir ~/calyxos/kernel.android16
cd ~/calyxos/kernel.android16
repo init -u https://gitlab.com/CalyxOS/kernel_manifest -b staging/android16
repo sync -j8 # You may use a higher number here if you have a fast computer and fast internet
```

### Building

```shell
./build_kernel.sh akita # Replace akita (Pixel 8a) with your device codename
```

This will build the kernel, and it also copies it to the corect directory directly (`device/google/akita-kernels` for Pixel 8a).

Copy that to the OS source code for it to get included in the builds

```shell
cp -a ~/calyxos/kernel.android16/device/google/akita-kernels ~/calyxos/android16/device/google/
```

### Legacy device kernel build

Older devices such as the Pixel 5 series use an older kernel build setup.

| Codename | Supported Devices |
|:---------|:------------------|
| redbull  | Pixel 5, 4a (5G), 5a |

### Download the source code

```shell
mkdir ~/calyxos/kernel.android13
cd ~/calyxos/kernel.android13
repo init -u https://gitlab.com/CalyxOS/kernel_manifest -b android13
repo sync -j8 # You may use a higher number here if you have a fast computer and fast internet
```

### Building

```shell
./build_kernel.sh redbull # Replace redbull (Pixel 5, 4a (5G), 5a) with your device codename
```

This will build the kernel, and it also copies it to the corect directory directly (`device/google/redbull-kernel` for Pixel 5, 4a (5G), 5a).

Copy that to the OS source code for it to get included in the builds

```shell
cp -a ~/calyxos/kernel.android13/device/google/redbull-kernel ~/calyxos/android15-qpr2/device/google/
```
