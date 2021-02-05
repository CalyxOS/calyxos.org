---
title: mi-a2
---
# Install CalyxOS

**Attention, this procedure will wipe all user data. Make a backup before and proceed on your own risk.**

1. Boot into fastboot mode:
    * Turn device off
    * Hold Volume Down and Power button until fastboot logo appears
    * Connect to USB and type `fastboot devices` to verify that it worked
1. Grab the Android platform tools from:
dl.google.com/android/repository/platform-tools_r29.0.6-windows.zip ( for Windows )
dl.google.com/android/repository/platform-tools_r29.0.6-linux.zip ( for Linux )
dl.google.com/android/repository/platform-tools_r29.0.6-darwin.zip ( for Mac OSX )

1. Unlock bootloader: `fastboot flashing unlock` and to also unlock critical partitions `fastboot flashing unlock_critical`
1. Download this old [Stock Oreo ROM](https://bigota.d.miui.com/V9.6.17.0.ODIMIFE/jasmine_global_images_V9.6.17.0.ODIMIFE_20181108.0000.00_8.1_1c60295d1c.tgz). (sha256 ba83419887dac341b5518ebd11f35be6028112ed4789c11da42a5560ebc0174a)
1. Extract archive (`tar -xvzf jasmine_*.tgz`), change into extracted folder and run `./flash-all.sh` to flash it on the device.
1. Boot stock Oreo once, complete the SetupWizard quickly and get to the Home Screen just to make sure things are working.
1. Download the current CalyxOS build, e.g.
    * [`https://release.calyxinstitute.org/jasmine_sprout-factory-2020.08.04.12.zip`](https://release.calyxinstitute.org/jasmine_sprout-factory-2020.08.04.12.zip) (sha256 1aa4d3e7371f5ef31705e44116a646526ccec191cd3f0af612053501a79d4345)
1. Boot to fastboot mode again, extract the zip file (`unzip jasmine_sprout-*.zip`), change into extracted folder and run `./flash-all.sh` there.
    * If you get an error with `No space left on device`, set the `TMPDIR` variable to a location with sufficient free disk space.
1. The device should boot into CalyxOS. Don't set it up yet, reboot to fastboot mode again and then run `fastboot flashing lock` to lock the bootloader. Then confirm that the "unlocked" warning are gone.
1. Now boot normally and set up your device.
1. Be sure to set a PIN in the setup wizard since it is required for data encryption.
1. Once the setup wizard is complete, setup the data encryption in _Settings -> Security & location -> Encryption & credentials -> Encrypt phone_, 

# Technical Info (No longer current)

* Didn't have that much info here either way

General info on the Mi A2

Launch version: Oreo 8.1

Current version: Pie 9.0

A/B: Yes

Treble: Yes

AVB 2.0: NO (vbmeta present, avb_custom_key partition present as well), but unused.

Unlock bootloader: fastboot flashing unlock; fastboot flashing unlock_critical

Recovery: https://androidfilehost.com/?fid=11410932744536984291 (can fastboot boot twrp.img)

Stock OTAs: https://forum.xda-developers.com/mi-a2/how-to/ota-v9-6-5-0-odimife-t3823445
vbmeta not present in stock OTAs, as it's not used at all

Note:
* To build a fully working signed build for these, one needs to enable verity (but not avb), and also build a disabled vbmeta image (like you would for a gsi - `BOARD_BUILD_DISABLED_VBMETAIMAGE := true`) - This seems optional