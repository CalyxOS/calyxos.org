---
title: Manual Installation
---

<div class="alert alert-info" markdown="0">
<b>NOTE:</b> In the USA there are two variants of the Google Pixel phones: The Google unlocked version, and the Verizon one. The Verizon one is unfortunately locked in such a way (boot loader locked) that you cannot install another operating system on it. The only way to tell is to attempt to unlock the bootloader of the phone. If you can enable "OEM unlocking" then it's an unlocked version. If "OEM unlocking" is greyed out and not toggle-able then you have the Verizon version.
</div>

<div class="alert alert-info" markdown="0">
<b>NOTE:</b>  The Pixel 4a 5G is not supported yet. Do not try to install the Pixel 4a (sunfish) image on a Pixel 4a 5G (bramble). It will not work, and may lead to a non-functional device
</div>

## Prerequisites

* You should have at least 2GB of free memory available on the PC.
* You need the unlocked variant of one of the supported devices, not a locked carrier specific variant.

It's best practice to update the stock OS on the device to make sure it's running the latest version before proceeding with these instructions. You can just connect the device to the internet, and let it auto update to the latest version available. You can check for updates by opening the Settings app, then near the bottom tapping System ➔ Advanced ➔ System Update.

## Obtaining fastboot

You need an updated copy of the `fastboot` tool and it needs to be included in your PATH environment variable.

You can download the official releases of platform-tools from Google. You can either obtain these as part of the standalone SDK or Android Studio. For one time usage, it's easiest to obtain the latest standalone platform-tools release, extract it and add it to your `PATH` in the current shell. For example:

### Download links

[Linux](https://dl.google.com/android/repository/platform-tools_r30.0.2-linux.zip)
[MacOS](https://dl.google.com/android/repository/platform-tools_r30.0.2-darwin.zip)
[Windows](https://dl.google.com/android/repository/platform-tools_r30.0.2-windows.zip)


``` shell
unzip platform-tools_r30.0.2-linux.zip
export PATH="$PWD/platform-tools:$PATH"
```

Sample output from `fastboot --version` afterwards:

```
fastboot version 30.0.2-6538114
Installed as /home/username/downloads/platform-tools/fastboot
```

Don't proceed with the installation process until this is set up properly in your current shell. Also, make sure the version matches the above or is newer/higher than this, as older versions are unsuitable for flashing.

## Enabling OEM unlocking

OEM unlocking needs to be enabled from within the operating system.
Enable the developer settings menu by going to Settings ➔ System ➔ About phone and tapping on the build number menu entry until developer mode is enabled.Next, go to Settings ➔ System ➔ Advanced ➔ Developer settings and toggle on the 'Enable OEM unlocking' setting. This may require internet access on some devices

## Unlocking the bootloader

First, reboot into the bootloader interface. You can do this by turning off the device and then turning it on by holding both the Volume Down and Power buttons.
Alternately, enable USB Debugging on the device and issue the following command:

``` shell
adb reboot bootloader
```

Verify the device is in fastboot mode and detected by your Computer:
``` shell
fastboot devices
```

The bootloader now needs to be unlocked to allow flashing new images:

```shell
fastboot flashing unlock
```

The command needs to be confirmed on the device, using the volume and power buttons.

## Flashing factory images

Reboot into the bootloader interface to begin the flashing procedure.
Next, extract the factory images and run the script to flash them. Note that the `fastboot` command run by the flashing script requires a fair bit of free space in a temporary directory, which defaults to `/tmp`:

``` shell
unzip crosshatch-factory-2019.06.23.05.zip
cd crosshatch-pq3a.190605.003
./flash-all.sh
```

Use a different temporary directory if your `/tmp` doesn't have enough space available:

``` shell
mkdir tmp
TMPDIR="$PWD/tmp" ./flash-all.sh
```

Wait for the flashing process to complete and for the device to boot up using the new operating system. You should now proceed to locking the bootloader before using the device as locking wipes the data again.

## Re-locking the bootloader

Re-locking the bootloader is important as it enables full verified boot. It also prevents using fastboot to flash, format or erase partitions. Verified boot will detect modifications to any of the OS partitions and it will prevent reading any modified / corrupted data.
In the bootloader interface, set it to locked:

```shell
fastboot flashing lock
```

The command needs to be confirmed on the device since it needs to perform a factory reset.
Unlocking the bootloader again will perform a factory reset.

## Disabling OEM unlocking

OEM unlocking can be disabled again in the developer settings menu within the operating system after booting it up again.

At this point, your device should be all setup and ready for usage with CalyxOS.

## Replacing CalyxOS with the stock OS

Installation of the stock OS via the stock factory images is the same process described above. However, before locking, there's an additional step to fully revert the device to a clean factory state on modern devices like the Pixel 2, Pixel 2 XL, Pixel 3, Pixel 3 XL, Pixel 3a and Pixel 3a XL.

This step needs to be performed by rebooting to the bootloader like before, and then running:

```shell
fastboot erase avb_custom_key
```