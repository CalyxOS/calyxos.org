---
title: CalyxOS 8.0.4.50 - October 2026 Feature update, with new CalyxOS App Updater
date: 2026-10-30
---

* CalyxOS 8.0.4.50 available for all supported devices
* This release introduces CalyxOS App Updater, which allows system apps such as Chromium and microG to be updated without waiting for a full system update
* Compromised eMudhra certificate authorities (CAs) have been removed and added to the system blocklist

## Rollout

| Release channel  | Date |
| ---------------- | ---- |
| Beta | 30 October, Friday |
| Security express | 2 November, Monday |
| Stable | 2 November, Monday |

## CalyxOS App Updater

CalyxOS App Updater lets us deliver updates to system apps like Chromium and microG separately from system updates, so important fixes can reach you faster. It works in the background, and you'll get a notification when an app update has been installed.

## Changelog
* CalyxOS 8.0.4.50
* October 2026 Feature update
* CalyxOS App Updater
* Chromium: 156.0.8078.47
* Update translations

### Features and bug fixes
* Remove compromised eMudhra CAs and add them to the system blocklist
* Fix pure black theme setting not persisting
* Fix system alert dialogs not using the system font
* Follow Dark/Light theme for Safe Mode dialog
* Fix setting an emergency info photo when no image-cropping app is installed
* Enable desktop mode support on phones
* Hide desktop mode UI on internal displays on foldable devices
* Chromium: Disable "Ask Gemini" integration
* Chromium: Add compromised eMudhra intermediates to blocklist
* Camera: Support QHD video quality on devices that support it
* Keyboard: Tablet UI improvements
* Keyboard: Add split keyboard for tablets
* Keyboard: Update settings to Material 3 Expressive theme
* Messaging: Skip startup notifications when not the default SMS app
* Music: Update play bar with new design
* Settings: Don't show 6GHz option for hotspot if unsupported

### Device specific
#### Fairphone 6
* Fix fingerprint sensor setup reporting as a back sensor instead of a side sensor
* Fix display adaptive refresh rate
* Update kernel

#### moto g84 5G
* Update to V1TCS35H.88-16-9
* Include improvements for broken microphone in VOIP apps

#### moto g 5G - 2024
* Include improvements for broken microphone in VOIP apps

#### SHIFTphone 8
* Update to OTTER.SOS.6.8.G-RELEASE-20260914

## Note

{% include install/security_notes.html %}