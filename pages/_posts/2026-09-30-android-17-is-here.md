---
title: CalyxOS 8.0.0.0 - Android 17 rollout begins, with more devices to follow
date: 2026-10-01
---

* CalyxOS 8.0.0.0 running Android 17 is now available for all supported Pixels, except the Pixel 5a (5G)
* This release includes the first official build for Pixel 10a, made available once 8.0.0.0 is in Stable
* Our device-flasher tool update has made installation from macOS available again and added safeguards against device bricking triggered by Anti-Rollback Protection issues

Devices have been tested internally, although there may be minor bugs. If you run into any problems, please [report an issue](https://gitlab.com/CalyxOS/calyxos/-/work_items?sort=created_date&state=opened&first_page_size=20).

This release has been rolled out to both the Beta and Security express channels because it includes significant security patches for multiple devices and apps, most notably microG. Rollout dates are listed below. Please note: the Pixel 10a build will be available when this update rolls out to Stable. We are working on bringing Android 17 to the Pixel 5a (5G) and our supported Fairphone, SHIFTphone and Motorola devices. These devices require additional device-specific work and will be released separately.

Users of CalyxOS devices that are not yet receiving the 8.0.0.0 update can install the latest microG update manually using our signed microG APKs and the instructions below. These instructions use CalyxOS Chromium as the example browser.

>  1. Open CalyxOS Chromium and download both of the latest signed microG APKs:
    * [microG GmsCore](https://release.calyxos.org/app/microg/v0.3.17.252432/GmsCore.apk)
     * [microG GsfProxy](https://release.calyxos.org/app/microg/v0.3.17.252432/GsfProxy.apk)
  2. Check that both downloaded files end in `.apk`. If either file ends in `.apk.jar`, rename it so that it ends in `.apk` only. For example, rename `GmsCore.apk.jar` to `GmsCore.apk`.
  3. When the downloads finish, tap “Open” in the download notification for one of the APKs. You can also find the files by opening Chromium’s three-dot menu and selecting “Downloads”.
  4. Tap the downloaded APK. The first time you do this, Chromium will show a “Permission required” prompt. Tap “Settings”.
  5. On the “Install unknown apps” settings page for Chromium, enable “Allow from this source”.
  6. Return to the APK installer. When the “Update this app?” prompt appears, tap “Update”.
  7. After the first APK has finished installing, return to Chromium’s “Downloads” list and tap the second APK.
  8. When the “Update this app?” prompt appears, tap “Update” and wait for the installation to complete.
  7. Restart the device after both APKs have been installed.

In addition, we are also releasing an big update to our device-flasher install tool. Major changes include: 1) ability to install from macOS is back, and 2) a new guardrail to prevent accidental device bricking triggered by Anti-Rollback Protection issues.

### Rollout

| Release channel  | Date |
| ---------------- | ---- |
| Beta | 1 October, Thursday |
| Security express | 1 October, Thursday |
| Stable | 5 October, Monday |

### Changelog
* CalyxOS 8.0.0.0
* Android 17
* Chromium: 155.0.8059.16
* microG: v0.3.17.252432
* Calendar (Etar): v1.0.57
* Update included apps
* Update translations
* Update kernel

### Features and bug fixes
* Update to Android 17
* Android Auto setup: Fix launching browser when clicking "Tap to read more"
* Dialer: Promote in call notification to chip
* Files: Enable Material Design 3 theme
* Messaging: Fix white background revealed by conversation list swipe in dark theme
* Messaging: Fix white background in contact search/recipient picker in dark theme
* Messaging: Enable elegant text height for arabic script rendering
* Seedvault: Show preference in Accounts and Backup settings
* Seedvault: Exclude SMS provider from backup on non-main users
* Seedvault: Warn when Backup now has nothing selected to back up
* Settings: Make the Settings search bar style consistent
* Theme Picker: Update available color bundles from Pixel 10 stock OS

### Pixel 6+
* Update to CP2A.260705.006
* Update kernel to android14-6.1-2025-12_r30

### Pixel 8+
* Update to CP2A.260805.005
* Update kernel to android14-6.1-2025-12_r30

### Pixel 10a
* Initial official build

### Pixel Tablet
* Enable desktop windowing mode on internal displays

## Note

{% include install/security_notes.html %}
