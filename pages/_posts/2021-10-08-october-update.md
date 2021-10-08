---
title: October Security update
date: 2021-10-08
---

The October Security update is here. It also contains some bugfixes and minor features that we had been working on.

It is currently in the beta channel, and will be bumped to the stable channel later after additional testing and feedback. Factory images will be available at that time as well.

We're also working on Android 12, for more details see <a href="{{ '/news/2021/10/05/android12/' | relative_url }}">Android 12 update plans</a>

Changelog:
* CalyxOS 2.10.0 - October 2021
* October Security update (2021-10-01)
* microG: Major push notification improvements. Should work much more reliably now
* microG: Don't log google account details
* Seedvault: 11-2.3
* Seedvault: Add expert settings with an option for unlimited quota
* Seedvault: Don't backup on metered networks
* Seedvault: Disable spell-checker on recovery code input
* Seedvault: Ask for system authentication before storing a new recovery code
* Seedvault: Prevent screenshots of recovery code
* Seedvault: Allow launching restore through a dialer code *#*#RESTORE#*#* aka *#*#7378673#*#*
* Fix navigation bar arrows setting
* Fix global cleartext restriction (developer options) not working for some apps
* Always allow editing all APNs
* Settings: Show separate firmware and kernel security patch levels - For older devices (Pixel 2, A2) we may not be able to update everything.
* Hide "Google Play services is unavailable" notification for certain apps when you choose to disable microG.
* Stop granting location to Browser app by default
* Launcher: Add explanatory dialog to pause apps
* Chromium: 94.0.4606.61

Pixels except 5a:
* Make some changes to allow installation of Google Camera directly from Aurora Store
* You may have to logout and login from Aurora Store for this to take effect
* Latest Google Camera should be available, version 8.2.400
* You can install <a href="{{ '/news/2021/09/30/gcam-photos-preview/' | relative_url }}">GCam Photos Preview</a> to preview photos directly from Google Camera (without having to install Google Photos)

Pixel 2:
* Linux 4.4.283

Mi A2:
* Enable fingerprint swipe gesture
* Linux 4.4.283

{% include install/security_notes.html %}