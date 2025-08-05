---
title: SeedVault
description: Secure Backups for CalyxOS
icon: /assets/images/osapps/seedvault.png
---

## Seedvault overview  

[Seedvault](https://github.com/seedvault-app/seedvault?tab=readme-ov-file#seedvault) is a backup application included in many custom Android-based operating systems like CalyxOS. You can use it to restore your apps and data to another device that runs a compatible operating system, or to the same device.  

You can learn more about Seedvault by checking out its [Frequently Asked Questions (FAQ)](https://github.com/seedvault-app/seedvault/wiki/FAQ).  

## Compatibility  

At least Seedvault version 15-5.0 or 14-5.0 are needed to restore a backup made on latest CalyxOS. This means that version 15-5.1, 15-5.2, etc. also will work.  

## Common starting questions

**Q: Is my data being backed up by default?**

A: Seedvault does not back up your data by default. You need to configure it to do so in the **Setup Wizard** or later in the settings. To find out, open Seedvault and check its settings.

**Q: Where can I find Seedvault? How do I get it?**

A: In most operating systems, Seedvault can be found under **Settings > System > Backup**. In CalyxOS, it can also be found as an app named **Backup** in your apps list.  

**Q: Where does my data go?**

A: You are in control of where your backups are stored. You can store your backups on a USB device like a flash drive, a networked service like Nextcloud that supports [WebDAV](https://en.wikipedia.org/wiki/WebDAV), a third-party storage provider app like Round Sync, or on-device storage that you synchronize using a means of your choice. Neither Seedvault nor Calyx provide backup storage for you, but there are other providers who do.  

**Q: Can anyone see my data?**

A: Your data is encrypted. Even if someone can see your backup files, they need your recovery code to be able to access your data. This means you can store your backups on a flash drive or on a cloud server without having to worry that anyone can read the contents, because your original unencrypted data cannot be seen.  
For more information, check out the [Seedvault project page](https://github.com/seedvault-app/seedvault).   

**Q: This is a lot to read...**

A: Yes. We aim to have a more visual guide in the future, in addition to a simpler backup and restore process. Other unofficial guides do exist, although they may not include everything you need to know, particularly when it comes to what gets backed up and what doesn't, and how to change that. Still, if you prefer visuals, they could be a useful place to start.  

## What is included in a backup  

A Seedvault backup may include apps and their data, along with files (a beta feature). Here is an overview of what's included in a Seedvault backup.

### Apps and data  

Seedvault backs up apps along with the actual content and preferences stored by an app in its own private storage. For example, the notes you write in a note-taking app are typically part of its app data.  

Backup of app data can be turned on after setting up Seedvault, and it is referred to as "**Backup my apps**" on the main settings screen.  

You can exclude particular apps from being backed up by clicking "**Backup status**" on the main settings screen. When you land on this page, tap the **three-dot menu, then click "Exclude apps**." Uncheck the box next to any app you would like to exclude. After you are done, you may view Backup status again by tapping the three-dot menu and unchecking "**Exclude apps**."  

Please review the [What's not included?](#what-is-not-included) section for more information.  

### Files (beta)  

These are the files you can see in the **Files** app, such as downloads and photos. Seedvault allows you to choose which categories of files you would like to include in backups. You can also include specific folders. Please note, backing up files is a beta feature at the moment. It may not work as expected. It is therefore recommended to make a copy of your files via another means, such as by [connecting to a PC](https://support.google.com/android/answer/9064445?hl=en#zippy=%2Cwindows-computer).  

Backup of files can be turned on after setting up Seedvault, and it is referred to as "**Backup my files**" on the main settings screen. 

You can choose the categories and folders you want to back up by tapping on "**Included files and folders**", switching the toggles on for particular categories. You can add folders by pressing the "**+**" button.   

### System data

*   Most system settings (e.g. Screen timeout)
*   Local contacts (non-cloud)
    *   Emergency contacts
*   Emergency information, such as Medications
    *   _Except:_ Owner name
*   Saved Wi-Fi networks
*   Custom wallpaper
*   Home screen layout
    *   _Except:_ Some widgets may not function properly after restore.
    *   _Except:_ Work Profile shortcuts and widgets, which are not restored.

## ![Anchor](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw== "Anchor")What is not included  

### Certain app data  

Android allows an app to decide what data it wants to include or leave out of a backup. It depends on the specific apps if they will provide usable backup data for Seedvault to be able to perform backups for them.    

What's more, some apps, such as Signal, [implement their own handling for backups](#apps-whose-data-isnt-backed-up-out-of-the-box).

### App permissions and notifications

The ability for permissions to be backed up and automatically restored by Seedvault is a planned feature in our development roadmap. See [this CalyxOS issue](https://gitlab.com/CalyxOS/calyxos/-/issues/2928) and the [upstream Seedvault issue](https://github.com/seedvault-app/seedvault/issues/773).  

Until then, you will need to manually customize app permission and notficiation settings, or consider reviewing and updating your app permission and notification settings.  

### Certain system data  

An operating system's Setup Wizard may show some settings pages _after_ the restore is complete. For cases like this, the settings selected in the Setup Wizard will overrule whatever was contained in the backup. As an example, in LineageOS, the **Location settings** page appears after the restore process. Both of the location options presented are checked by default, regardless of any location settings from your backup. If you had such location options turned off before, and you would like for it to stay that way, be sure to manually toggle them off again.  

Some system data is either not intended to leave the device or is otherwise not included in a backup. A partial list of such data is as follows:  

*   Starred contacts (the state of being starred or favorited)  
    
*   Offline calendars
*   Emergency information's Owner name  
    
*   Priority conversations  
    
*   Screen lock PIN/password  
    
*   Biometric data (e.g. Fingerprint unlock)  
    
*   Some OS-specific settings (e.g. Restrict USB, Bluetooth timeout, Panic settings)  
    
*   Certain home screen items   
    
*   Anything overridden by the Setup Wizard, as described at the top of this section

### Seedvault settings  

Seedvault does not currently backup/restore all of its own settings, so after a restore, you will need to customize its settings again. It is highly recommended to either remember, take screenshots, or otherwise notate your settings:  

*   Main settings page
*   **Backup scheduling** page
*   **Backup status** > **three-dot menu** > **Exclude apps** page
*   **Included files and folders** page (under **File backup**)

## What about a Work Profile, Private Space, or secondary user?  

Seedvault must be set up individually for any user or profile that you would like to back up. It is up to you whether you want or need to back up anything other than your primary user (typically Owner). For Work Profile, Private Space, or any secondary user, Seedvault must be set up separately.  

Please note that, unfortunately, not all operating systems provide access to Seedvault in a Work Profile or Private Space. This may make it difficult or impossible to restore your data into such a profile. In such cases, you can use Seedvault to back up data from your Work Profile or Private Space, create a secondary user for your new operating system, and restore data into that user profile.  

To restore data into a new user profile, you must finish initial device setup first. Restoring a user or profile requires creating it first. You can either use the **Restore** page as part of the Setup Wizard or launch Seedvault within that user or profile and follow the prompts.  

It is possible to back up all users or profiles to the same storage location. Seedvault will compartmentalize your data into different folders for each one. Please note, however, that each profile will have a different recovery code. Wherever you store these codes, be sure to notate which code corresponds with which profile (Owner, Work Profile, Private Space, etc.), to reduce the risk restoring the wrong data to the wrong profile. However, when restoring with Seedvault, backups have titles like "Google Pixel 4a (5G) - Work Profile" to provide you with a decent clue.  

## Setting up backups

For Seedvault to actually perform backups, it needs to be set up first. This section explains how.

### What you need  

Before you get started, you'll need the following:  

*   A secure place to keep your recovery code, a series of 12 common English words. Recommendations:
    *   Password manager (preferred).
    *   Something to write on, and a safe place to store the written code.
*   A storage location, which is any one of:
    *   USB drive and relevant USB adapters.  
        
    *   WebDAV-compatible storage location such as Nextcloud; you will need the web address, username, and password.
    *   Alternative compatible third-party app such as [Round Sync](https://roundsync.com/). This app must be installed before it can be used by Seedvault, i.e. before starting the first-time setup process.  
        
*   Privacy to prevent your recovery code from being seen by others.  
    
*   An understanding of what is backed up and what is not.   
    

Accessibility note: Unfortunately, the recovery code page are not yet optimized for screen readers and may take extra time or effort to complete. We hope to address this soon.  

### First-time setup  

1.  Open the Seedvault app.  
    
2.  Choose "**Start new**" when asked if you want to restore your device.  
    
3.  Store or write your recovery code, and prepare to enter it later to confirm.  
    
4.  Enter your recovery code in the series of 12 boxes. As you type, an autocompletion dropdown will appear for each word, as the set of possible words is limited.  
    
5.  Choose your storage location. If you are backing up to a USB drive, plug it in for it to show up in the list. If you are using WebDAV, have your credentials ready.
    *   If you are using Nextcloud with WebDAV, you may want or need to create an [app password](https://docs.nextcloud.com/server/latest/user_manual/en/session_management.html#device-specific-passwords-and-password-changes) for use here. Other Nextcloud-related setup is beyond the scope of this guide.  
        
6.  To include apps in your backups, turn on "Backup my apps".
    *   If disk space or server space is a concern, after turning on app backups, you can turn off the backup of app installation files via the **three-dot menu** > **Expert settings** > **APK backups** toggle.  
        
7.  To include files in your backups:
    1.  Turn on "**Backup my files**". You may see a notice that this is a Beta feature. Please read the notice. If you would like to continue, tap "**Enable anyway**".  
        
    2.  Tap "**Included files and folders**" and turn on categories you like.  
        
    3.  To ensure a specific folder and all of its contents are backed up, tap the "**+**" button, enter the folder, and tap "**Use this folder**", followed by "**Allow**".  
        
8.  Note: many apps _do not_ have in-app data ready for Seedvault to back up, such as Signal. Some of them provide their own backup mechanisms. Make sure you follow instructions from these apps. For more details, visit the "[Apps whose data isn't backed up out of the box](#apps-whose-data-is-not-backed-up-out-of-the-box)".  
    
9.  Keep track of items from the "[What is not included](#what-is-not-included)" section so you will not lose them when you need to restore your device.   
    

## Performing a backup  

To perform your first backup, open Seedvault, tap the **three-dot menu**, and tap "**Backup now**". Note that when you choose a flash drive in your first-time setup, the first backup will start automatically without this step from your side.  

Seedvault will keep you informed of its backup progress via notifications. These notifications are silent, but you can view them in your notification tray.   

When a backup is running, the "**Backup running**" notification appears. You can expand the notification to see which app or component is presently being backed up.

When the backup has completed, the "**Backup finished**" notification appears. This is your indicator of success, and it lets you know how many apps were backed up. You can tap on it to open Seedvault, and from there, tap on "**Backup status**" to learn more.   

## Verifying your backup  

Check the result of the backup via the "**Backup status**" page accessible from the main Seedvault settings screen. Scroll through to make sure that all of your expected apps were included in the backup.

Some apps may have been excluded [if they were not launched recently](https://github.com/seedvault-app/seedvault/wiki/FAQ#why-do-apps-not-get-backed-up-when-not-recently-used). To include such apps in the next backup, simply launch them once and try running the backup again. You can use the **Launch** button on the **Backup status** page as a shortcut.  

### Trial restore  

Unless you will be restoring to a separate device, it is recommended to perform a trial restoration on the same device in a secondary user.  

Android supports [multiple users](https://support.google.com/android/answer/2865483?hl=en). To use this feature, visit **Settings** > **System** > **Users**. From there, turn on "**Allow user switch**", and you can add a new user, and proceed to restore your backup as if you were working with a new device. See the "[Restoring](#restoring)" section for more information.  

This is a good time to verify that all app data was restored as expected and to find apps that may provide an internal backup mechanism or otherwise require manual backup.  

## Before moving forward...

Reinstalling or switching operating systems can be a complex task. Although this guide attempts to prepare you for known pitfalls, unforeseen issues can always arise. Here are some steps you can take to mitigate some of the risk.  

1.  **Have another device available, if possible.** For many people, a phone is a critical communication device. If possible, rather than changing operating systems on your current device right away, consider restoring your data to a different device. This way, if something goes wrong, your device will remain in the same known-working state. Alternatively, if available, prepare some other device as much as you can for meeting your needs, at least temporarily, in the event that something goes wrong with your current device. This can be whatever works for you. Depending on your usage and requirements, this could be another phone running another operating system with a manual replica or sync of your crucial apps and data, or it could even be a computer with the desktop version of Signal and with your photos or other relevant data copied/exported/synchronized to it.  
    
2.  **Consider your communication needs.** Consider arranging an alternate contact method with your friends and family members or other contacts, if you do not already have one. This should be a contact method you can use either without a device or with some other device. If this is not possible, it may at least be worth informing some of your contacts that you might be unreachable for a certain period of time.  
    
3.  **Consider your privacy, security, and usability needs.** Not all operating systems are a perfect match for all people. Out of the box, most stock operating systems share some of your data with Google or other third parties. Some operating systems target more advanced users and may take extra reading and research to install or use effectively. Some may not have a Google Play services compatibility layer available, limiting the apps that can be used.  
    
4.  **Get help if needed.** If you do not feel comfortable making such a large change yourself, there may be others in your circle who can help. You may also be able to find assistance via the [CalyxOS community](https://calyxos.org/community/).  
    
5.  **It's okay to change your mind.** You might try an operating system and discover it doesn't meet your needs. Look into alternatives, even if that means returning to stock for a while.  
    

## ![Anchor](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw== "Anchor")Restoring  

### What you need  

Before you get started, you'll need the following:

*   Privacy to prevent your recovery code from being seen by others, or your device from being accessed during the restore process.  
    
*   Your recovery code itself.
*   Access to your backup storage location.
    *   Note: If you use a third-party app for your storage location as opposed to a USB drive or WebDAV, the restoration needs to happen after you finish the Setup Wizard and with the required third-party app installed.  
        

### Notes on restoring during the Setup Wizard  

Depending on the target operating system, you may not be prompted to create a screen lock PIN until _after_ the restoration process. This leaves your device and data vulnerable to being accessed without any unlock required, until such a point that you _can_ create a screen lock.  

As a result, you may prefer to complete Setup Wizard and open Seedvault afterwards. However, be aware that this option is not as well-tested, so it is recommended to perform a restore within the Setup Wizard if possible.   

### Performing a restore  

1.  Proceed to the Restore step of the Setup Wizard, or if you have completed the Setup Wizard, open Seedvault and choose "**Restore backup**".
2.  Select your storage location. If you are backing up to a USB drive, plug it in, and it should show up in the list to select. If you are using WebDAV, select that option, and enter your credentials, and proceed.  
    
3.  Enter your recovery code.
4.  Restore apps:
    1.  Choose an app data backup to restore, if any, and make sure its title and date match what you expect. For example, the title should include "Work Profile" or similar if you are restoring a work profile, as opposed to "Owner" or some other name that should be shown if you are not.
    2.  Select the items you'd like to restore, and proceed.  
        
    3.  The "Restoring backup" phase may result in some failed restorations. See the "Apps that fail to restore" section if this happens to you.  
        
    4.  Once apps are installed, proceed to continue with restoring their data.  
        
    5.  Similarly, it is possible for there to be errors during restore. Note these for further inspection, if they are not addressed in the "[Apps that fail to restore](#apps-that-fail-to-restore)" section.  
        
    6.  Once data is restored, proceed.  
        
5.  Restore files:
    1.  Choose a file backup to restore, if any.
        *   Because you already selected an app backup snapshot earlier, this may seem like a redundant step; however, Seedvault stores and tracks file backups separately from app backups, so you will need to separately select your files backup. This will likely show roughly the same date as the app backup snapshot you chose earlier.
    2.  You'll be asked to review the files you wish to restore. Adjust this as you'd like. Once everything looks good to you, proceed by tapping the "**Restore selected files**" button.
    3.  Restoration of files will happen in the background as you proceed.

### Reusing a backup  

As part of the app data restore process, Seedvault will ask you if you'd like to reuse your backup.  

If you are doing a trial restore, always choose "**Create new**"; you won't be performing a backup with this option, anyway.

Otherwise, this option is up to you. Generally speaking, if you are restoring to a device that will become your primary device, it makes sense to choose "**Reuse backup**". However, if your source device is one that you will continue to back up, and you consider that device to be your primary device, you may wish to choose "**Create new backup**" instead. Regardless, this choice should only affect the amount of data used and time taken for the next backup, rather than more serious consequences.  

Be aware that regardless of which option you choose, Seedvault backup will not be turned on until you follow the steps in "[Turn backup on again](#turn-backup-on-again)".  

### ![Anchor](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw== "Anchor")Apps that fail to restore  

Some apps may fail to restore, especially to a different operating system. Here are some CalyxOS apps whose failure to restore on a different OS is to be expected and can be ignored:  

*   Android Auto toggle
*   Calendar
*   CalyxOS App Installer
*   CalyxOS Update Client
*   Camera
*   eSpeak
*   microG Services

For other apps whose restoration fails, a closer look at the situation may be required. It could be that the app is too old to be installed anew on a modern version of Android, or there could be some other complication involved. After the restoration process has completed, try installing the app another way.  

### Manual review and adjustments  

#### microG / Compatibility with Google Play services  

If your operating system does not include microG or Google Play services, you may want to install it if possible. Details of doing so depend on the operating system.  

For LineageOS, you can [obtain microG from its GitHub releases page](https://github.com/microg/GmsCore/releases) and install it. You'll likely want to download and install the .apk files beginning with com.google.android.gms / com.android.vending, and not ending with -hw.  

Once installed, you'll want to launch the microG Settings app and turn on the pieces you need. With CalyxOS, by default, these are Google device registration, Cloud Messaging, and most toggles under Location, with the exception of "**Request from Hotspot**".  

Additionally, if microG is not available as a system app, its data may not have been restored, and it may not be properly restorable. You can try restoring it manually by opening **Seedvault** > **three-dot menu** > **Restore backup**, selecting a backup, and deselecting everything except microG services, but it may not successfully restore your microG configuration; you can open microG Settings to verify yourself. 

The next step is to test apps that use push notifications. Some apps that use push notifications via microG / Google Play services may have trouble working properly after being restored. Test your apps, and if you have problems, consider wiping the app's data, reinstalling the app, or looking for support options for that app.  

#### ![Anchor](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw== "Anchor")Critical functionality  

It is highly recommended to run through trials of some of your most important activities to be sure everything works as expected. Here are some common things to verify are working the way you expect:  

*   Placing a call  
    
*   Receiving / being notified of a call (especially with the screen locked); ask a friend  
    
*   Sending a message  
    
*   Receiving / being notified of a message (especially with the screen locked); ask a friend  
    
*   Alarms  
    
*   Emergency contacts  
    
*   Security settings, such as Restrict USB  
    
*   Anything else you can think of that you depend on, whether regularly or rarely  
    

### ![Anchor](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw== "Anchor")Turn backup on again  

Seedvault backup is off by default, even after a restore. Unless you are doing a trial restore, be sure to re-enable the options you had before. Use the "Additional recommended steps > Notate or screenshot your backup settings" as a reference for the settings you may want to review.  

### Restoring a Work Profile  

If you are restoring to an operating system other than CalyxOS, the Work Profile app that it provides is not available. To restore data that was kept in such a work profile, you can attempt to do so using an app like Insular or Shelter. This is currently out of the scope of this guide. However, it _might_ be possible to do so via **Settings** > **System** > **Backup**, depending on the operating system.

To restore work profile data in CalyxOS or similarly compatible operating systems, simply open the Work Profile app to create a new work profile, and restore its data as part of the Work Profile Setup Wizard. Alternatively, use the Backup app in the apps list, or visit **Settings** > **System** > **Backup** and choose the newly-created work profile.  

### Restoring a Private Space  

Unfortunately, it is not easily possible to restore a Seedvault backup in a Private Space in most operating systems. In CalyxOS, however, Seedvault appears as the Backup app in the apps list.  

## ![Anchor](data:image/gif;base64,R0lGODlhAQABAPABAP///wAAACH5BAEKAAAALAAAAAABAAEAAAICRAEAOw== "Anchor")Apps whose data isn't backed up out of the box  

Here are some common apps whose data is not backed up out of the box with Seedvault, but which offer other mechanisms for backup. In some cases, as with Signal, their backup data can be added to Seedvault's **File backup** manually, which means their backup files are available for manual restore after a Seedvault restore. This is not an exhaustive list.  

### CalyxOS Chromium

CalyxOS Chromium (the '**Chromium**' app that comes with CalyxOS) data and settings are not automatically backed up. Some but not all of this data can be exported manually, and passwords may only be exported in plaintext; they may not be imported back into Chromium.

#### Bookmarks  

**Three-dot menu** > **Bookmarks** > **Export**. These bookmarks can be imported into any browser that supports importing HTML bookmarks, such as Cromite.  

#### Passwords

Although passwords can be exported from Chromium, they cannot be imported. If you have any passwords only saved in Chromium, this may be a good opportunity to update these passwords and store them in a standalone password manager instead. You can either do this manually, or export them in CSV files and import them into a solution that has CSV file import options, such as [KeePass](https://keepass.info/).

Finding a password manager is outside the topics this guide covers. Research is needed to ensure the security of the chosen password manager solution before you migrate passwords.  

Given that the passwords are in plaintext, they should be exported to a safe location on your device that other apps cannot readily access, and deleted immediately after they are imported elsewhere. You may wish to use an app like [Anemo](https://f-droid.org/en/packages/exe.bbllw8.anemo/) to be provided with such a storage area.  

To export your passwords, use the **three-dot menu** > **Settings** > **Password Manager** > **three-dot menu again** > **Export passwords**, and choose a safe place to export them.

### Signal  

#### Backup  

To back up Signal, you first need to turn on chat backups. Doing so will involve a dedicated backup passphrase, which the Signal app will provide to you. Prepare to store this phrase in a password manager or to write it down and store it securely.  

Signal's website includes [instructions for enabling chat backups](https://support.signal.org/hc/en-us/articles/360007059752-Backup-and-Restore-Messages#h_01HFAC67F3A1EXM2PRBTZ9HHW1). These instructions are replicated below, with additional notes included as "Guide notes" where needed:

1.  Tap on the profile icon to access **[Signal Settings](https://support.signal.org/hc/articles/360009091591)** > **Chats** > **Chat backups** > **Turn on**.  
    
2.  For Android OS version 9 or earlier, go to step 3.  
    For Android OS version 10 or later, select **Choose folder** and choose where to save the backup file.
    *   _Guide notes:_ This guide assumes you will create a new folder named Signal at the top of your device storage.
        *   The folder screen should show something like "Files on Fairphone 5 5G" with a notice that says "Can't use this folder", along with a "Create new folder" button.  
            
        *   Tap the button to create a new folder, and name it Signal or anything you can identify later.
        *   Then, tap "Use this folder".  
            
3.  Copy the 30-digit passphrase from left to right, top to bottom. You will need this passphrase in order to restore a backup. Keep it in a safe place.   
    
4.  Confirm that you have written down the passphrase.  
    
5.  Select **Enable backups**.  
    
6.  Tap **Create backup**. You can verify whether or not a backup has completed successfully by checking the time of the last backup.
7.  Signal displays where you can find the backup under the title **Backup folder**. Go to that folder.
8.  Move or save a copy of the backup on a device that is not your phone.
    *   A common method is to use a cable to plug your phone into your computer. Some phone's require you to use a cable that was provided with your phone in order to transfer data.  
        

#### Including in Seedvault  

1.  Open the Seedvault main settings page, and tap "Included files and folders".
2.  Tap the "**+**" button.
3.  Select the Signal folder, and tap "**Use this folder**".
4.  Tap **Allow**.
5.  Signal will now be included in your next backup.

#### Restore  

After you have completed overall Seedvault restoration and left the Setup Wizard, when Seedvault is done restoring files, it is time to restore your Signal chats. You must do this before you start using Signal again on this device! Make sure you have your backup passphrase available, and follow these steps to restore your Signal chats.  

1.  Open Signal.  
    
2.  Tap the "**Transfer or restore account**" button.
3.  Select "**Restore local backup**" and tap **Next**.  
    
4.  Tap the "**Choose backup**" button.
5.  Tap the menu button at the top left, and select your device name at the bottom of the "**Open from**" list (for example, Fairphone 5 5G).  
    
6.  You should see a list of device folders, often starting with "Alarms" and "Android", and including the "Signal" folder you included in backup previously. Tap the Signal folder.
    *   On some variants of Android, you may not see any folders initially. If so, try pulling down on the list to refresh. If you continue not to see any folders, use the back button to the folder selector and start again from the "Choose backup" step.  
        
7.  In the Signal folder, you may see multiple files. When sorted by name (the default), the most recent backup should be the last file in the list. Tap the most recent backup to restore it.
8.  Tap the "**Restore backup**" button.  
    
9.  Enter your backup passphrase, and tap **Restore**.  
    
10.  Continue with the process. As prompted, enter your phone number, Signal PIN, and information it may need to complete requested verifications. (If you do not have a PIN, or do not know it, you can **Skip** when prompted.)  
    
11.  If you are using an operating system that does not include Google Play services or microG, you may receive multiple dialogs warning you of this during this process. Feel free to dismiss them, but after the setup process, be sure to follow through with the recommended "Optimize for missing Play Services" action and allow Signal to run in the background so that you receive message notifications.
12.  Proceed with "**Re-establishing chat backups**" to ensure your chats remain backed up.  
    

#### Re-establishing chat backups

Chat backups are turned off after a restore and need to be set up again to continue backing up your messages going forward. This process generates a new backup passphrase as well. Prepare to store a new, different chat backup code in a secure location, and proceed with these instructions.  

1.  On Signal's main screen, if you see a "Can't back up chats" notice on the main screen, tap "Back up chats" and follow its instructions, which includes granting Signal the "Allow setting alarms and reminders" permission. You may find that it is already granted and unchangeable, in which case you may leave the permissions page. When done, go Back a couple times to return to Signal's main screen.
2.  Tap the **three-dot menu** in Signal > **Settings** > **Chats** > **Chat backups**.
3.  Tap "**Turn on**", and tap "**Choose folder**".  
    
4.  The Signal folder from which you restored your Signal backup should already be selected. If not, navigate to it. Then, tap "**Use this folder**", and tap "**Allow**".  
    
5.  Proceed with the rest of the chat backup establishment process, storing the new backup passphrase securely.
6.  Tap "**Verify backup passphrase**" and enter the passphrase you stored to be sure it is correct. If it is not correct, turn off chat backups and re-start this process.  
    
