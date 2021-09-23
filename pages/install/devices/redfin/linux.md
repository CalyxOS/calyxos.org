---
title: Install on Pixel 5
description: From a Linux computer
toc: true
---

<strong>[[Install => install]]</strong> / <strong>[[Pixel 5 => redfin]]</strong> / <strong><a href="#">Linux</a></strong>

## Terminology

* **Firmware Image**: This is a zip file that contains the entire CalyxOS operating system to be installed on your device.
* **Flashing**: On Android devices, installing a new operating system is called "flashing," because it writes a new OS image to the device's flash memory.
* **Android Device**: The device that you are installing CalyxOS on to.
* **Host Computer**: The Linux computer used to send commands to the Android Device. You will connect this computer to the Android device and run device-flasher to install CalyxOS.
* **Fastboot**: An administrative mode of the Android device needed to write to the flash memory of the device. At various stages, you will be asked to put your Android device in [[fastboot]] mode.

## Prepare your Android device

There are a few things you must do to prepare your device to accept a new operating system:

#### Enable Developer Options

**Settings** &rarr; **About Phone** &rarr; tap **Build number** 7 times

#### Enable USB debugging

**Settings** &rarr; **System** &rarr; **Advanced** &rarr; **Developer Options** &rarr; **USB Debugging**

#### Enable OEM Unlocking

**Settings** &rarr; **System** &rarr; **Advanced** &rarr; **Developer Options** &rarr; **OEM unlocking**

This step might fail if there is no internet connection. In that case, connect to a WiFi network and remove SIM card, then try again.

## Prepare your host computer

{% include install/linux_drivers.md %}

{% include install/linux_flasher.md %}

### Download firmware image

<a class="btn" href="https://release.calyxinstitute.org/redfin-factory-202109290.zip">Download CalyxOS Image</a>

Save this image in the same directory as device-flasher. This image will **only** work for **Pixel 5 (redfin)**. Any attempt to install this image on a different device model my destroy the Android device.

Do not extract or rename the zip, simply copy it as-is.

Once downloaded, the next step is to verify the image. This step is optional, but verification helps ensure that you downloaded the image correctly, and that you got the correct image.

#### Verify Digest

To verify the image, open a terminal window on the host computer where you saved the image and run the command:

{% assign image = "https://release.calyxinstitute.org/redfin-factory-202109290.zip" | split: "/" | last %}
{% include install/linux_image_digest.md filename=image %}

And ensure the result says `8e324c79b82d8f3c730f94cdfe05b43ec9d625067ed2db9aaf26780f726f7638`. This is the unique digest of the image file. If it doesn't match, then you have a corrupted or incorrect file.

#### Verify Signature

For the highest level of confidence, you can optionally <a href="https://release.calyxinstitute.org/redfin-factory-202109290.zip.minisig">download the signature file</a> and then [[verify image signature => verify]].

## Install CalyxOS

### Run device-flasher

Now you are ready to install. Ensure that both the CalyxOS image and device-flasher are in the same directory.

Step 1. Enter [[fastboot]] mode.

Step 2. Connect the USB cable between the computer and the Android device.

{% include install/linux_run.md %}

### Unlock the bootloader

At some point in the installation process, it will ask you to unlock the bootloader.

NOTE: if the bootloader is already unlocked, you will not see the unlock bootloader menu and installation will proceed automatically without you needing to touch anything.

The bootloader unlock menu looks like this:

<img src="../../../unlock-bootloader.jpg">

Press a **volume key** to select **UNLOCK THE BOOTLOADER** option. Then press the **power key** to activate that option.

After this, the android device will reboot, but in normal mode in the prior OS. Then follow these steps:

1. Power down the Android device.
2. Disconnect the USB cable.
3. Boot into [[fastboot]] mode.
4. Reconnect the USB cable.
5. The installation will resume automatically.

## Troubleshooting

#### Error running device-flasher

If you get a mysterious error when running device-flasher, it may be a USB problem. Try connecting to a different USB port on your computer (yes, not all USB ports are created equal) or a different USB cable.

#### How do I tell if the booterloader is locked?

In [[fastboot]] "Device State: locked" means the bootloader is locked.

On the initial boot screen, you may also see this if the bootloader is unlocked:

    The bootloader is unlocked and software integrity cannot be guaranteed. Any data stored on the device may be available to attackers. Do not store sensitive data on the device.

## Security Notes

{% include install/security_notes.html %}