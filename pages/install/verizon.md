---
title: Verizon Pixels
description: How to tell if you have a Pixel locked by Verizon
---

In the USA there are two variants of the Google Pixel phones: The normal unlocked version, and the Verizon one.

The Verizon one is unfortunately locked in such a way (boot loader locked) that you cannot install another operating system on it. The only way to tell which device you have is to attempt to unlock the bootloader of the phone:

* **Step 1. Enable Developer Options**<br>
**Settings** &rarr; **About Phone** &rarr; tap **Build number** 7 times
* **Step 2. Enable OEM Unlocking**<br>
**Settings** &rarr; **System** &rarr; **Advanced** &rarr; **Developer Options** &rarr; **OEM unlocking**

The last step might fail if there is no internet connection. In that case, connect to a WiFi network and remove SIM card, then try again.

If you can enable "OEM unlocking" then it's an unlocked version and you can install CalyxOS. If "OEM unlocking" is greyed out and not toggle-able then you have the Verizon version.
