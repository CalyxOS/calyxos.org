---
title: CalyxOS Emulator Images
date: 2021-05-27
---

CalyxOS Emulator images are now available, which can be used with the Emulator present in Android Studio.

They're mostly meant for testing apps (especially system included apps such as Datura and Seedvault). They're *not* meant for general usage. 

URL: <https://release.calyxinstitute.org/sys-img.xml>

These images are `userdebug` which means you can use `adb root`.

Additionally, these aren't separately signed, which means all the apps are signed using publicly available AOSP "test-keys", meaning that you can easily test code changes to system apps.

`x86` and `x86_64` images are available currently. `arm64` images appear to be currently broken in AOSP, however we're trying to see if we can fix them. Those will be made available when ready.

### Steps

This emulator image is meant for use with [Android Studio](https://developer.android.com/studio)

1. Launch Android Studio, and open Tools -> SDK Manager
2. Click on "SDK Update Sites", and then tap the `+` plus icon on the left.
3. Type in the above url, i.e. <https://release.calyxinstitute.org/sys-img.xml> and under name enter "CalyxOS"
4. Make sure the checkbox to the left of "CalyxOS" is checked, and then hit Apply or OK.
5. You can now create an AVD with the CalyxOS image.
6. Open "Tools -> AVD Manager"
7. Click "Create Virtual Device" at the bottom, then select hardware.
8. Next, on the "System Image" selection page, click on "x86 Images".
9. You should see the CalyxOS Images, they will show up as Target: Android 11 (CalyxOS Android System Image).
10. Click "Download" to download the system image, and then hit next.
11. You can now launch the AVD to run CalyxOS.

These images will get updated every month as we tag and release new builds.

### sdkmanager installation

If you want to install these images using sdkmanager, the strings are:
* `"system-images;android-30;calyx;x86"`
* `"system-images;android-30;calyx;x86_64"`

### Docker images

F-Droid has CI images which have the Android SDK pre-configured with our repos.
They're included in the docker image: `registry.gitlab.com/fdroid/ci-images-client`
This means that this can be used to directly install the CalyxOS images and use it for testing / CI.

For more details see: <https://gitlab.com/fdroid/ci-images-client>

References:
* <https://review.calyxos.org/q/topic:emulator>
* <https://source.android.com/setup/create/avd#sharing_avd_system_images_for_others_to_use_with_android_studio>
* <https://developer.android.com/studio/intro/update#adding-sites>
* <https://developer.android.com/studio/run/managing-avds#createavd>
