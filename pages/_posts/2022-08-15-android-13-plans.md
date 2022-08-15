---
title: Android 13 plans and important information
date: 2022-08-15
---

Hello,

Google has released Android 13 to AOSP today, and stock builds for the Pixel 4 and above are now available.

The CalyxOS team is already working on it, we're going through the source code and will start migrating our changes to 13 soon.

You can follow progress at [https://gitlab.com/groups/CalyxOS/-/epics/33](https://gitlab.com/groups/CalyxOS/-/epics/33) - and we'll keep posting updates here.

## IMPORTANT

Google has posted a warning on their factory image, stating:

>**Warning:** The Android 13 update for Pixel 6, Pixel 6 Pro, and the Pixel 6a contains a bootloader update that increments the anti-roll back version. After flashing an Android 13 build on these devices you will not be able to flash older Android 12 builds.

Please keep this in mind if you have a Pixel 6, 6 Pro or 6a. We will update this post if we find out more, but till then if you update to 13 at all, you should stick to it and avoid trying to downgrade.