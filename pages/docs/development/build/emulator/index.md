---
title: Building CalyxOS Emulator Images
nav_title: Emulator
redirect_from:
    - /contribute/build/emulator/
    - /development/build/emulator/
---

CalyxOS Emulator images are built in largely the same way as the OS, just with a different target name.

Assuming that you have setup a build envrionment or already built CalyxOS once as described in [[build]].

For the emulator, the steps are:

```shell
cd ~/calyxos/android13
source build/envsetup.sh
lunch calyx_sdk_phone_x86_64-userdebug # x86 for the 32-bit image.
m
```

You can now run `emulator` to directly launch the built image.
