---
title: Bootloader locking
nav_title: Bootloader Lock
description: Details about bootloader re-locking
redirect_from: /lock/
---

You may have gotten a warning message that brings you to this page (**calyxos.org/lock**).

CalyxOS implements AVB (Android Verified Boot) for higher security against Evil Maid attacks. The means the OS is signed, and your device verifies while booting that components are correct and properly signed with the correct key.

However, at the moment (if you were redirected here), it appears your bootloader is unlocked and anyone *can modify the OS*, where it is possible to **steal encryption keys**, passwords, or any other types of malicious changes, and you *won't* be able to detect it.

The lock/unlock process wipes your data, because of this, the safest way to lock your bootloader is to [retry installation](/install), as it guarantees the signed OS components are re-flashed and prevents bricks.

The installation process should ask you to re-lock your bootloader at the end of it, if it doesn't, feel free to contact us at our channels, you can find them in the [Community](/community) tab. 
