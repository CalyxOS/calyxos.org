---
title: Getting-Started
---
CalyxOS is a AOSP fork focused on privacy and security.

Table of Contents

## Introduction

We build for devices which support full verified boot with the bootloader locked for a custom OS.

Currently supported devices
* Google Pixel 2 and Pixel 2 XL
* Google Pixel 3 and Pixel 3 XL
* Google Pixel 3a and Pixel 3a XL
* Xiaomi Mi A2 (work in progress)

## Installing

Short version:
* Make sure you have a recent version of fastboot installed
* Unlock bootloader
* Unzip taimen-factory_img-2019.02.12.15.zip
* Run `flash-all.sh` on *nix or `flash-all.bat` on Windows
* Relock bootloader

Long version: See [Installing](../Installing)

## Building

Short version:
* Setup your environment for building AOSP
* `repo init -u https://gitlab.com/calyxos/platform_manifest.git/ -b pie`
* `repo sync`
* `vendor/android-prepare-vendor/execute-all.sh -d $device -b $buildid -o /some/dir`
  * For Pixel 2 XL March update: `device=taimen buildid=pq2a.190305.002`
* `mv /some/dir/$device/$buildid/vendor/google_devices vendor/`
* `source envsetup.sh`
* `lunch calyx_taimen-user` (use `-userdebug` instead of `-user` when developing
* `make -j16` (replace `16` by the number of your CPU's threads)
* Install the build, or optionally sign

Long version: See [Building](../Building)

## Developing

See [Developing](../Developing)
* [How to import the sources to Android Studio](https://wiki.lineageos.org/import-android-studio-howto.html)

## Signing builds

Short version:
* Use `vendor/calyx/scripts/mkkeys.sh` to create the keys
* `make -j16 target-files-package`
* `vendor/calyx/scripts/release.sh taimen`

Long version: See [Signing](../Signing)


## CalyxOS Additions / Changes to AOSP

Coming soon :tm:
