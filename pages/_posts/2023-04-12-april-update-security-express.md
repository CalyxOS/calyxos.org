---
title: April Security update: Security Express
date: 2023-04-12
---

CalyxOS 4.8.0 - April 2023 Security update is now in testing for Pixels 4 - 7

This update is initially rolling out in our new Security Express update channel, which can be summarized in four words: Fastest updates, possible breakage.

### Introducing Security Express
The Security Express channel allows us to achieve two major goals:
- Ship [AOSP's security updates](https://source.android.com/docs/security/bulletin/asb-overview#bulletins) faster,
  for users who want to receive security fixes as quickly as possible, even in the face of possible bugs.
- With your help, catch and fix more bugs that appear after merging security updates, before they reach the Stable channel.

#### Differences from Beta
Unlike the Beta channel, Security Express does not include large CalyxOS features or changes that are currently in testing,
although updates may include other smaller fixes and improvements. Most of the time, Beta users and Security Express users
will receive security updates at the same time; however, CalyxOS feature updates may occasionally require a longer testing period,
in which case Security Express users will receive such updates earlier.

#### Updating via Security Express
Note: This channel selection is reset on reboot, but in the future, we plan for Security Express to be an option in our updater.

1. Make sure your phone is running the latest stable CalyxOS, 4.7.5 at time of writing.
2. Back up your data - you can use SeedVault, the included Backup app. This is optional, but it's always recommended.
3. Enable USB Debugging on your phone.
4. From your computer: `adb shell setprop sys.update.channel security-express`
5. Then, on your phone: Settings -> System -> System update settings -> Check for updates

### Devices on 4.7.x beta
This month, Beta users will receive the security update a little later so that their devices retain particular features
and fixes added in 4.7.6 / 4.7.7 which have not yet reached the Stable channel.

### Changelog
* CalyxOS 4.8.0
* April 2023 Security update
* Chromium: 112.0.5615.48 (latest stable)
* Restrict USB access at boot time when configured to only allow when unlocked
* Fix viewing app info dashboard of hidden work app
* Allow user to add/remove Quick Settings tiles with one click
* Paused work apps now remain paused after reboot (with fixes from beta)
* Messaging: Slight Material You design changes
* Update all included apps to latest
* SetupWizard: Don’t crash when you press next with no apps selected
* Keyboard: Fix spell check on sentence end
* F-Droid: 1.16.2

#### Pixel 7 series
* Fix VoWiFi (Wi-Fi Calling) for supported providers

### Note

{% include install/security_notes.html %}
