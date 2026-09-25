---
title: Motorola bootloader relock
redirect_from:
   - /motorola-relock/
---

When you install CalyxOS on your Motorola, it is sometimes possible that you will see an error message like this during the installation process:

```
The Anti-Rollback protection has stopped the bootloader relocking of your <device>
CalyxOS has been fully installed. However, the flashed factory image has a lower Anti-Rollback index than the previous OS installed on this device:
  vbmeta_a: rollback index 25 vs 27
  vbmeta_system_a: rollback index 25 vs 27
Locking the bootloader now will prevent the device from booting. It will stay unlocked.
Do not try to lock the bootloader manually when you see this warning.
We recommend that you download and flash a newer factory image to be able to relock the bootloader for maximum security.
Visit https://calyxos.org/motorola-relock for more information.
```

This means that the operating system (OS) on your phone before this installation has a higher Anti-Rollback (ARB) index than the CalyxOS build you just installed. For example, the ARB index that comes with the previous OS build might have been 27 while it is 25 for this CalyxOS build. If your relock the device bootloader now, your device might not be able to start, which is commonly known as 'device bricking'.

When the device-flasher detects such ARB index issue with CalyxOS fully installed, it will leave the bootloader unlocked to avoid bricking the device. When this happens, please do not try to lock it manually. Doing so could prevent the phone from turning on and make recovery difficult or impossible.

Note that CalyxOS is designed to be used with a locked bootloader. Locking the bootloader protects your phone by only allowing trusted and unmodified software to run on your device. We do not recommend running CalyxOS with an unlocked bootloader.

To fix this, you can download a newer CalyxOS factory image for your device with the updated ARB index and run the CalyxOS device-flasher again. Once the image passes the ARB index check, the device-flasher will relock the bootloader for you to use CalyxOS with maximum security. We always keep the latest CalyxOS images available in [our Installation hub](https://calyxos.org/install/). If you are not able to find the latest image for your device or are not sure if it has the correct ARB index, contact us at [[community]] for more help.
