---
title: Building CalyxOS Emulator Images
nav_title: Emulator
---

CalyxOS Emulator images are built in largely the same way as the OS, just with a different target name.

Assuming that you have setup a build envrionment or already built CalyxOS once as described in [[build]].

For the emulator, the steps are:

```
cd ~/calyxos/android11-qpr1
source build/envsetup.sh
lunch calyx_sdk_phone_x86_64-userdebug # x86 for the 32-bit image.
m sdk sdk_repo
```

You can now run `emulator` to directly launch the built image.

Alternatively, you want take the below files,
* `out/host/linux-x86/sdk/calyx_sdk_phone_x86_64/calyxos-emulator-system-images-x86_64-calyxos-eng.$USERNAME.zip`
* `out/host/linux-x86/sdk/calyx_sdk_phone_x86_64/repo-sys-img.xml`

Copy them to a webserver (`python -m http.server` is a great local webserver!) and then you can add them to Android Studio.