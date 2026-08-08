---
title: Fairphone bootloader relock
redirect_from:
   - /docs/guide/fp4/
   - /fairphone-relock/
   - /fp4/
   - /FP4/
   - /fp5/
   - /FP5/
---

If you see the below message when installing CalyxOS on your Fairphone:

```
Not locking bootloader of <device>
fastboot flashing get_unlock_ability returned 0
Please try running device-flasher again.
You can visit https://calyxos.org/fairphone-relock for more information.
```

That's due to a bug with the Fairphone bootloader, which may lead to a non-functioning device.

Thus, as a precaution, we're not locking the bootloader.

You can try running the device-flasher again as suggested. If that does not work, you can contact us at [[community]] for more help.
