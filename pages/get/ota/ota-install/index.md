---
title: Install OTA
---

{% include images_warning.html %}

These are instructions to install the OTA updates that are usually delivered directly to your device.

<div class="alert alert-info" markdown="0">
Note: If you're installing CalyxOS for the first time, you should [[get the factory image instead => get]] and follow the factory image [[installation instructions => install]].
</div>

Installation process:
1.  Download the build to a PC with `adb` available.
2.  Power off the device.
3.  On the Pixels, hold volume down + power to launch fastboot mode. On the Mi A2, hold volume up + power to directly go into recovery. Mi A2 users can skip the next step
4.  Use the volume buttons to scroll the fastboot menu, and select "Recovery mode". Use the power button to confirm.
5.  You will see an icon (like the one below) with the text "no command". This is completely **normal**.
6.  Hold power, and while keeping power held, press the volume up button and release it.
7.  This should bring you to a menu with multiple items, saying "Android Recovery" at the top.
8.  Use the volume button to scroll to "Apply update from ADB". It'll be the third or fourth item depending on the device. Select it using the power button
9.  This will bring you to a black screen with some text at the bottom, at which point the phone is waiting for commands from the PC.
10.  Connect your phone to the PC, and run
11.  `adb sideload the-ota-update-you-downloaded.zip`
12.  This will take a few minutes.
13.  When done, select reboot system and you will have it installed.

Step 5 image:

![android-recovery](/assets/images/android-recovery.png)
