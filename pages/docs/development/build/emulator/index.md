---
title: Building CalyxOS Emulator Images
nav_title: Emulator
redirect_from:
    - /contribute/build/emulator/
    - /development/build/emulator/
---

CalyxOS Emulator images are built in largely the same way as the OS, just with a different target name.

Assuming that you have setup a build environment or already built CalyxOS once as described in [[build]].

For the emulator, the steps are:

```shell
cd ~/calyxos/android5-qpr1
source build/envsetup.sh
breakfast sdk_phone_x86_64 # x86 for the 32-bit image.
m
```

You can now run `emulator` to directly launch the built image.
