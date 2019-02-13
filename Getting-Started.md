CalyxOS is a AOSP fork focused on privacy and security.

Table of Contents

## Introduction

We build for devices which support full verified boot with the bootloader locked for a custom OS.

Currently supported devices
* Pixel 2
* Mi A2 (work in progress)

The Pixel 1 and 3 can also be supported,

## Installing

Short version:
* Make sure you have a recent version of fastboot installed
* Unlock bootloader
* Unzip taimen-factory_img-2019.02.12.15.zip
* Run `flash-all.sh` on *nix or `flash-all.bat` on Windows
* Relock bootloader

Long version: See [Installing](Installing)

## Building

Short version:
* Setup your environment for building AOSP
* `repo init -u https://gitlab.com/calyxos/platform_manifest -b pie-qpr2-release; repo sync`
* `source envsetup.sh; lunch calyx_taimen-user; make -j16`
* Install the build, or optionally sign

Long version: See [Building](Building)

## Developing

See [Developing](Developing)

## Signing builds

Short version:
* Use `vendor/calyx/scripts/mkkeys.sh` to create the keys
* `make -j16 target-files-package`
* `vendor/calyx/scripts/release.sh taimen`

Long version: See [Signing](Signing)


## CalyxOS Additions / Changes to AOSP

Coming soon :tm:
