---
title: Installing
---
The full process of going from a new device running stock to getting CalyxOS on it.

# Troubleshooting

## Bootloader version mismatch

When flashing you might get a message like:

```
Device version-bootloader is 'TMZ30h'.
Update requires 'TMZ30k'.

fastboot: error: requirements not met!
```

To solve this, [get a factory image](https://developers.google.com/android/images) and run *only* `flash-base.sh` to update the bootloader.