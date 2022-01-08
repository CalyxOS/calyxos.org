---
title: SeedVault
description: Secure Backups for CalyxOS
icon: /assets/images/osapps/seedvault.png
---

# **SeedVault Backup/Recovery with Nextcloud Integration**

**Note:** A Backup process is required for *all* profiles on CalyxOS devices. This means a user's personal and other work/non-work profiles must have their own recovery words generated when using SeedVault.

***

## **Backup**

1. Select the Backup app on your device. Record/save the 12-word recovery prompt in a safe place (e.g. password manager - where you reference security information for accounts.)

   Without this 12-word recovery input, you will be unable to recover the saved backup. Please ensure you copy the words correctly and attribute their placement in the prompted order.
2. Select your backup location. Choosing Nextcloud will prompt app installation if not previously completed. Once configured, the Backup app will begin the Initialization of the selected backup location. Your Nextcloud server should be on the same network or configured in a manner that you can point your device to your Nextcloud service via URL.

   Configuring a Nextcloud instance is beyond the scope of this guide. Nextcloud should be previously set up in order to continue with SeedVault backup.

   If you do not have a Nextcloud server, it is recommended to use SeedVault with the [USB method](URL Link here).
3. Once the backup location has been selected and configured, you will be redirected to the Backup app's setting landing page. Select all the backup options you wish to configure.

   'Expert settings' are available in the upper-righthand corner inside the vertical ellipses; 'Expert settings' is where Unlimited app quota can be toggled. This means application data eligible for backup has no size limitations imposed.
4. Once backup configs have been established, initiate the backup process by selecting the vertical ellipses in the upper-righthand corner of the device and selecting 'Backup Now'.
5. Verification of the Backup process initialization can be confirmed by swiping into the notification screen and observing the SeedVault Notification reporting the backup process currently underway.

## **Recovery**

**Note:** It is recommended to only initiate a SeedVault backup on a device with a factory install or factory reset of CalyxOS.

An experimental recovery process is available but results are not guaranteed. 'Insert hyperlink to github?'

1. A prior backup up with a SeedVault recovery file should be configured and saved on an established Nextcloud instance in your personal network environment.
2. Complete the CalyxOS flashing process or factory reset for the device being recovered.
3. Bootup process into Initial CalyxOS setup.
4. Respond to the next several prompts by hitting **Next**; when asked to install various apps ensure to select Nextcloud for installation.
5. At the Restore apps and data screen, select **Restore from Backup** and tap Nextcloud.
6. Direct your CalyxOS device to your Nextcloud instance via URL.
7. Once connected to your server, select Nextcloud service again and input your previously saved 12-word recovery code.
