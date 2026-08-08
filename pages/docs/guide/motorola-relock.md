---
title: Motorola bootloader relock
redirect_from:
   - /motorola-relock/
---

If you see the below message when installing CalyxOS on your Motorola:

```
Anti-rollback downgrade detected, not locking bootloader of <device>
The flashed factory image has a lower AVB rollback index than the OS previously on the device:
  vbmeta_a: rollback index 25 vs 27
  vbmeta_system_a: rollback index 25 vs 27
Locking the bootloader now will prevent the device from booting, so it has been left unlocked.
Flash a newer factory image to be able to relock the bootloader.
You can visit https://calyxos.org/motorola-relock for more information.
```

The operating system previously installed on your phone before CalyxOS, has a higher anti-rollback (ARB) index than the CalyxOS software being installed. 

For exmaple, the previous operating system might have used rollback index 27 while this CalyxOS operating system uses 25. If your phone bootloader was locked in this situtation with CalyxOS on a lower index, your phone might refuse to start.

To avoid leaving you in this situation, the installer has left the bootlader unlocked. Do not try to lock it manually while this warning is displayed. Doing so could prevent the phone from turning on and make recovery difficult or impossible.

Note that CalyxOS is designed to be used with a locked bootloader; a locked bootloader protects your phone by only allowing trusted and unmodified software to start and run on your device. We do not recommend running CalyxOS with an unlocked bootloader.

To fix this, download a newer CalyxOS image for your device with an updated ARB index and run the CalyxOS device-flasher again. The installer will relock once it confirms that it is safe to do so.

Contact us at [[community]] for more help.
