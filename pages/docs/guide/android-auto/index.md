---
title: Android Auto
description: Android Auto on CalyxOS
redirect_from: /android-auto/
---

CalyxOS 6.4.2 and newer include Android Auto. It has to be enabled from Settings -> Connected devices -> Connection preferences -> Enable/disable Android Auto first. After that, you can connect it to your car, and follow the steps indicated. You can download the required apps from Aurora Store.

CalyxOS allows the functionality to be enabled separately for the main profile, the work profile, and the private space profile (if configured). However, at least to get Wireless Android Auto to work, some restrictions apply.

### Enabling Wireless Android Auto

To enable wireless Android Auto, you need to enable "developer mode" in the Android Auto application. Go to Settings -> Connected devices -> Connection preferences -> Android Auto, scroll to the bottom and tap on the "Versions and Permission Info" (the row will expand to show installed applications that support Android Auto) then tap 10 times. A popup will ask if you want to enable developer settings.
Once enabled, you will find the developer preferences in the three-dot menu in the top right corner. Enter the developer preferences and find the toggle to enable Wireless Android Auto.

### Wireless Android Auto and Work Profile

Once enabled, the Android Auto app will check to see if some manufacturer-provided apps are installed while it attempts to connect (you will see an information screen upon connection if some of these apps are missing). These apps are available from the Aurora Store and work fine, but **they must be installed in the main profile** as they will not be detected if installed only in the work profile.
Also, the apps listed in the "Versions and Permission Info" section of Android Auto seem to come only from the main profile, so with the information currently available, it seems that Android Auto cannot work properly while "segregated" in the work profile (this has only been verified with Wireless Android Auto on CalyxOS 6.6.20 so far).


More details coming soon.

Feel free to contact us at [[community]] for any questions or concerns.
