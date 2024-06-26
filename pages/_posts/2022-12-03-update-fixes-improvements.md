---
title: 4.3.2 - Bugfixes and improvements
date: 2022-12-03
---

CalyxOS 4.3.2 is now available for all supported Pixels, and the Fairphone 4.

Bumped to stable as of Dec 7, 2022.

### December update
* The December Security update is [work in progress](https://review.calyxos.org/q/topic:dec22).
* It's bigger than usual given that it's one of the Quarterly Platform Releases, and thus it will take some time to fully integrate.

## Changelog
* CalyxOS 4.3.2 - fixes random reboots that happened in the 4.3.1 beta
* New bootanimation, new default wallpaper!
* Old wallpaper, and one more new option is available.
* Launcher: Fix layout bug
* Camera: Potential fix for images disappearing
* SeedVault: Add a log option to "Expert Options" to help debug issues
* Calendar (Etar): Latest upstream update, bugfixes and improvements
* Gallery: Show correct location in image info
* Settings: Add System -> Other Options, to expose some commonly used Developer Options without needing it enabled.
* microG: Fix some cases where google account login with FIDO hardware key failed.
* Chromium: 108.0.5359.79 (latest stable)
* microG: v0.2.26.223616
* Work profile: Improve app layout, add some helpful text.
* microG: Remove entry from Settings -> System to avoid confusion. Launcher icon still present.
* Support creating a work profile on secondary users.
* Make status bar firewall icon (globe) more reliable
* General firewall / networking improvements
* Updates for all included apps
* Drop Tasks as an optionally included app (still available if you had it installed)
* Replace Weather (no longer being developed) with Geometric Weather as an optionally included app.
* Translation updates

### All Pixels
* Use stock charging animation when powered off

### Pixels 3a - 5, 6 - 6a (aka except 3, 3 XL, 5a, 7, 7 Pro):
* Fix SafetyNet attestation

### Pixels 3a, 4a:
* Allow configuring multiple vibration levels, for real this time.
* Settings -> Sound and vibration -> Vibration and haptics

### Pixels 3, 3a:
* Known issue: eSIM isn't working, being looked into

### FP4:
* Make wide-angle camera available to third party apps (OpenCamera, Google Camera, amongst others)

### Note

{% include install/security_notes.html %}
