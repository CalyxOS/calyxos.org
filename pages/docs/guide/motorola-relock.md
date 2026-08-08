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

That's due to the previous OS on your device having a higher anti-rollback index than CalyxOS.

Thus, as a precaution, we're not locking the bootloader as it will lead to a non-functioning device.

Contact us at [[community]] for more help.
