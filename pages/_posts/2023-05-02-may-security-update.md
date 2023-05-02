---
title: May Security update - Security express
date: 2023-05-02
---

CalyxOS 4.9.0 and 4.9.1 - May 2023  Security update is now available for Pixels, Fairphone 4, and SHIFT6mq

This update will initially roll out in our new Security Express update channel, which can be summarized in four words: Fastest updates, possible breakage.

### Introducing Security Express
We first talked 
The Security Express channel allows us to achieve two major goals:
* Ship [AOSP's security updates](https://source.android.com/docs/security/bulletin/asb-overview#bulletins) faster,
  for users who want to receive security fixes as quickly as possible, even in the face of possible bugs.
* With your help, catch and fix more bugs that appear after merging security updates, before they reach the Stable channel.

#### Differences from Beta
Unlike the Beta channel, Security Express does not include large CalyxOS features or changes that are currently in testing,
although updates may include other smaller fixes and improvements. Most of the time, Beta users and Security Express users
will receive security updates at the same time; however, CalyxOS feature updates may occasionally require a longer testing period,
in which case Security Express users will receive such updates earlier.

#### Updating via Security Express

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

### Note

{% include install/security_notes.html %}
