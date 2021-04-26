---
title: Building CalyxOS
nav_title: Build
---

CalyxOS is Android-based, and the usual procedure to build AOSP applies. If you're already familiar and setup to build Android, you can see the short version to get a quick idea. Otherwise, the long version goes into full detail to set it up from scratch.

## Short version
* This assumes you have an AOSP build environment already setup and have built with it before

Steps:
1. Initialize and sync the source code.
   * `repo init -u https://gitlab.com/CalyxOS/platform_manifest -b android11-qpr1`
   * `repo sync`
2. Obtain proprietary files for your device
   * `./vendor/calyx/scripts/setup-apv.sh $device_codename` (`sunfish` for Pixel 4a)
3. Build
   * `source build/envsetup.sh`
   * `lunch calyx_sunfish-user` (`sunfish` for Pixel 4a, `user` is used for release builds, you can use `userdebug` for development builds.)
   * `m`
4. Install
   * `fastboot flashall` (Run this in the same shell where you ran the build)

## Long version
* This will help you setup a build environment for CalyxOS from scratch

## Components built outside the OS
To keep the OS build simple and fast we build some components separately outside the AOSP build system, and copy them to a `prebuilts` repository. A list of those with links to build instructions:

* [Linux kernel](kernel)
* [Chromium](chromium)
* [microG](microg)

Additionally, we include some apps from F-Droid in the build process. These are the upstream binaries shipped as-is without any modifications.

## Releases

The official [production builds](../../get)