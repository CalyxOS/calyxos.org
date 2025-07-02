---
title: Install on Fairphone 4
description: From a MacOS computer
toc: true
---

<strong>[[Install => install]]</strong> / <strong><a href="/install/devices/FP4/">Fairphone 4</a></strong>


## Downloads temporarily removed
Downloads for this device have been temporarily removed <a href="/install/antirollback-update-pending">pending an antirollback update</a>.


## Terminology

* **Factory Image**: This is a zip file that contains the entire CalyxOS operating system to be installed on your device.
* **Flashing**: On Android devices, installing a new operating system is called "flashing," because it writes a new factory image to the device's flash memory.
* **Android Device**: The device that you are installing CalyxOS on to.
* **Host Computer**: The MacOS computer used to send commands to the Android Device. You will connect this computer to the Android device and run device-flasher to install CalyxOS.
* **Fastboot**: A mode of the Android device needed to install a custom Operating System. At various stages, you will be asked to put your Android device in [[fastboot]] mode.

## Prepare your Android device

There are a few things you must do to prepare your device to accept a new operating system:

#### Remove SIM card

On brand new devices, especially those obtained from a carrier, it's better to remove the SIM card from the device before starting it for the first time, to help with the "OEM Unlocking" step below.

#### Enable Developer Options

**Settings** &rarr; **About Phone** &rarr; tap **Build number** 7 times

#### Enable OEM Unlocking

**Settings** &rarr; **System** &rarr; **Developer Options** &rarr; **OEM unlocking**

This step might fail if there is no internet connection. In that case, connect to a WiFi network and then try again.

{% if site.data.install.fairphone.pre_unlock_notes %}
{% include {{site.data.install.fairphone.pre_unlock_notes}} %}
{% endif %}

## Prepare your host computer

{% include install/mac_notes.md %}

{% include install/flasher.md os="mac" %}

### Download factory image


<a class="btn" href="/install/antirollback-update-pending">Downloads temporarily removed</a>

## Install CalyxOS

### Run device-flasher

Now you are ready to install. Ensure that both the CalyxOS image and device-flasher are in the same directory.

Run device-flasher per the below instructions and then follow the steps shown on the computer screen.

{% include install/mac_run.md %}

### Unlock the bootloader

At some point in the installation process, it will ask you to unlock the bootloader.

NOTE: if the bootloader is already unlocked, you will not see the unlock bootloader menu and installation will proceed automatically without you needing to touch anything.

The bootloader unlock menu looks like this:

<img src="../../../unlock-bootloader.jpg">

Press a **volume key** to select **UNLOCK THE BOOTLOADER** option. Then press the **power key** to activate that option.

{% if site.data.install.FP4.unlock_notes %}
{% include {{site.data.install.FP4.unlock_notes}} %}
{% endif %}

### Success?

Once device-flasher is finished, you should now have a fully functional CalyxOS device. If not, please see our [[community]] page for where you can post your questions.

## Troubleshooting

#### Error running device-flasher

If you get a mysterious error when running device-flasher, or if device-flasher hangs, it may be a USB problem. Try connecting to a different USB port on your computer (yes, not all USB ports are created equal) or a different USB cable.

{% if site.data.install.fairphone.troubleshooting %}
{% include {{site.data.install.fairphone.troubleshooting}} %}
{% endif %}

## Back to Stock

If you would like to return to the default operating system, please see [[stock]].

## Security Notes

{% include install/security_notes.html %}

<!-- Auto generated. DO NOT EDIT -->
