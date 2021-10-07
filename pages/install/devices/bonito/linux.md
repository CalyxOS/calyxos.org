---
title: Install on Pixel 3a XL
description: From a Linux computer
toc: true
---

<strong>[[Install => install]]</strong> / <strong>[[Pixel 3a XL => bonito]]</strong> / <strong>Linux</strong>

## Terminology

* **Factory Image**: This is a zip file that contains the entire CalyxOS operating system to be installed on your device.
* **Flashing**: On Android devices, installing a new operating system is called "flashing," because it writes a new factory image to the device's flash memory.
* **Android Device**: The device that you are installing CalyxOS on to.
* **Host Computer**: The Linux computer used to send commands to the Android Device. You will connect this computer to the Android device and run device-flasher to install CalyxOS.
* **Fastboot**: A mode of the Android device needed to install a custom Operating System. At various stages, you will be asked to put your Android device in [[fastboot]] mode.

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

{% include install/linux_notes.md %}

{% include install/flasher.md os="linux" %}

### Download factory image

<a class="btn" href="https://release.calyxinstitute.org/bonito-factory-202109290.zip">Download CalyxOS Image</a>

Save this image in the same directory as device-flasher. This image will **only** work for **Pixel 3a XL (bonito)**. Any attempt to install this image on a different device model may brick (destroy) the Android device.

Do not extract or rename the zip, simply copy it as-is.

Once downloaded, the next step is to verify the image. This step is optional, but verification helps ensure that you downloaded the image correctly, and that you got the correct image.

#### Verify Digest

To verify the image, open a terminal window on the host computer where you saved the image and run the command:

{% assign image = "https://release.calyxinstitute.org/bonito-factory-202109290.zip" | split: "/" | last %}
{% include install/linux_image_digest.md filename=image %}

And ensure the result says `ccd36757395195c8dcccdbb811a40ba7f580dd021705baeb13e993421065205f`. This is the unique digest of the image file. If it doesn't match, then you have a corrupted or incorrect file.

#### Verify Signature

For the highest level of confidence, you can optionally <a href="https://release.calyxinstitute.org/bonito-factory-202109290.zip.minisig">download the signature file</a> and then [[verify image signature => verify]].

## Install CalyxOS

### Run device-flasher

Now you are ready to install. Ensure that both the CalyxOS image and device-flasher are in the same directory.

Step 1. Connect the USB cable between the computer and the Android device.

Step 2. Run device-flasher

{% include install/linux_run.md %}

### Unlock the bootloader

At some point in the installation process, it will ask you to unlock the bootloader.

NOTE: if the bootloader is already unlocked, you will not see the unlock bootloader menu and installation will proceed automatically without you needing to touch anything.

The bootloader unlock menu looks like this:

<img src="../../../unlock-bootloader.jpg">

Press a **volume key** to select **UNLOCK THE BOOTLOADER** option. Then press the **power key** to activate that option.

{% if site.data.install.bonito.unlock_notes %}
{% include {{site.data.install.bonito.unlock_notes}} %}
{% endif %}

### Success?

Once device-flasher is finished, you should now have a fully functional CalyxOS device. If not, please see our [[community]] page for where you can post your questions.

## Troubleshooting

#### Error running device-flasher

If you get a mysterious error when running device-flasher, or if device-flasher hangs, it may be a USB problem. Try connecting to a different USB port on your computer (yes, not all USB ports are created equal) or a different USB cable.

{% if site.data.install.pixel.troubleshooting %}
{% include {{site.data.install.pixel.troubleshooting}} %}
{% endif %}

## Back to Stock

If you would like to return to the default operating system, please see [[stock]].

## Security Notes

{% include install/security_notes.html %}