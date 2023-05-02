---
title: May Security update - Security express
date: 2023-05-02
---

CalyxOS 4.9.0 and 4.9.1 - May 2023 Security update is now available for Pixels, Fairphone 4, and SHIFT6mq

This update will initially roll out in our new Security express update channel, which can be summarized in four words: Fastest updates, possible breakage.

### Introducing Security express
The Security express channel allows us to achieve two major goals:
* Ship [AOSP's security updates](https://source.android.com/docs/security/bulletin/asb-overview#bulletins) faster,
  for users who want to receive security fixes as quickly as possible, even in the face of possible bugs.
* With your help, catch and fix bugs that appear after merging security updates, before they reach the Stable channel.

### Promotion to Beta and Stable
* Most of the time, Beta will get the update in a few hours after Security express. Sometime it may be delayed if there's major issues, however.
* Builds are bumped to stable after ample feedback from Beta and Security express, usually in a day or two.

#### Updating via Security express

1. Open the Settings app on the phone
2. Scroll down and tap System, then System update settings
3. Tap Release channel, and select "Security express"
4. You can tap "Check for updates"
5. If it doesn't do anything, make sure to check the "Permitted networks" setting

### Changelog
* CalyxOS 4.9.0 an 4.9.1
* May 2023 Security update
* Chromium: 113.0.5672.61
* Fix certain VPN apps not working correctly, such as AdAway
* microG: Fix some free apps not launching, such as PC Optimum
* F-Droid: 1.16.3
* Don't allow using Bromite System WebView, fallback to Android System WebView

### Known issues
* Aurora Store search isn't working. For more details and a workaround please see <https://t.me/AuroraSupport/322523>
* Mullvad VPN with "local network sharing" doesn't work. Will be fixed in the next build, for now you can turn it off.

### Note

{% include install/security_notes.html %}
