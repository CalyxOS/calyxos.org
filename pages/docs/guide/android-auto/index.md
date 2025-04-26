---
title: Android Auto
description: Android Auto on CalyxOS
redirect_from: /android-auto/
---

CalyxOS 6.4.2 and newer include Android Auto. To use it, you need to enable it first and install a few apps that it depends on.

### Initial Android Auto setup
#### 1. Enable Android Auto
Go to Settings -> Connected devices -> Connection preferences and tap "Enable/disable Android Auto" the toggle it on.

#### 2. Installed required apps
Android Auto checks for the following apps and won't work properly without them:
- Google
- Google Maps
- Google Recognition & Synthesis

You have two options for installing these apps:
- Official apps: Download them from the Aurora Store, which lets you install official Google apps without signing in to a Google account.
- Stubs: A stub is a minimal placeholder app that uses the same package name as the real app but has little to no actual functionality. It's only job is to meet Android Auto's checks that the app is installed. Some folks prefer stubs because they don't want to install Google apps on their phones or to save storage space. Note that the CalyxOS team doesn't provide these stubs and that while Android Auto will start, some of its functionality might not work as expected if you use stubs instead of official apps.

CalyxOS allows the functionality to be enabled separately for the main profile, the work profile, and the private space profile (if configured). However, these apps **must be installed in your main profile**. Android Auto will not detect them if they're installed only in the work profile. When tested, apps listed in the "Versions and Permission Info" section of Android Auto seem to come only from the main profile, so with the information currently available, it seems that Android Auto cannot work properly while "segregated" in the work profile (this has only been verified with Wireless Android Auto on CalyxOS 6.6.20 so far).

#### 3. Update Android Auto
After installing the required apps, update the Android Auto app from the Aurora Store.

#### 4. Connect to your car
Connect your phone to your car for Android Auto with a high quality cable and follow the on screen setup. To use Android Auto wirelesly, follow the steps below.

### Enabling Wireless Android Auto
1. Go to Settings -> Connected devices -> Connection preferences -> Android Auto.
2. Scroll to the bottom and tap on the "Versions and Permission Info". The row will expand to show teh installed apps that support Android Auto.
3. Tap the Version section 10 times. A popup will ask you if you want to enable developer settings. Tap "OK".
4. Tap the three dot menu in the top right corner and select Developer settings.
5. Turn on the Wireless Android Auto toggle.
   
Feel free to contact us at [[community]] for any questions or concerns.
