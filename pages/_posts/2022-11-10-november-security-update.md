---
title: November 2022 Security update
date: 2022-11-10
---

CalyxOS 4.3.0 - Android 13 is now available for the Pixels 3 - 7, and the Fairphone 4

## Changelog
* CalyxOS 4.3.0 - Android 13 - Tiramisu
* November 2022 Security update (2022-11-05)
* Chromium 107.0.5304.91 (107.0.5304.105 available in the GitLab F-Droid repo)
* microG: Fix Google sign-in
* microG: Display correct version
* Translation updates

### All Pixels
* Allow configuring multiple vibration levels
* Settings -> Sound and vibration -> Vibration and haptics

### Pixel 6, 6a
* Fix random reboots / certain display related crashes

### Pixel 4
* Fix squeeze functionality (Active Edge)

### Pixel 3, 3a
* Fix SecureUI crashes
* Fix squeeze functionality (Active Edge)

### Lock Screen bypass
* This update includes Google's fix for the [reported Lock Screen Bypass](https://bugs.xdavidhu.me/google/2022/11/10/accidental-70k-google-pixel-lock-screen-bypass/)
* It was not an encryption bypass and you still have to enter your PIN after rebooting.
* Patches like this are why it's important to provide some updates to devices when the vendor stops.
  * Google did not provide the November update for the Pixel 4. While they may provide one more update, it's not available now
  * The Pixels 3 and 3a have stopped getting updates from Google completed, so they remain unpatched. We cannot update the proprietary components, but at least we can provide patches for issues like this.

### Note

{% include install/security_notes.html %}
