---
title: microG push notification fixes for Android 12
date: 2022-03-03
---

We've seen the many reports of push notification delays, and experienced them ourselves as well.

We believe we've managed to fix the issue, and a test [APK](https://calyxos.gitlab.io/calyx-fdroid-repo/fdroid/repo/GmsCore.apk) is now available.

You can get it from our test F-Droid repo, <https://gitlab.com/CalyxOS/calyx-fdroid-repo>

To add it, simply add this URL to F-Droid -> Settings -> Repositories -> Plus sign at the top right: <https://calyxos.gitlab.io/calyx-fdroid-repo/fdroid/repo?fingerprint=C44D58B4547DE5096138CB0B34A1CC99DAB3B4274412ED753FCCBFC11DC1B7B6>

Alternatively, you can scan the below QR code:

![gitlab-calyx-fdroid-repo](/assets/images/gitlab-calyx-fdroid-repo-qrcode.png){:class="img-fluid"}

The changes included have all been sent to microG upstream for integration in the codebase so that everyone can benefit.

* <https://github.com/microg/GmsCore/pull/1681>

We will continue observing push notification behaviour, and update things as needed.

### Technical

With all the [push notification fixes](https://calyxos.org/news/2021/10/13/microg-push-notifications/) we've done previously, push notifications were indeed working fine - microG was getting the messages on time from Google.

However the way Signal sets up push notifications with Google Cloud Messaging / microG is quite smart - it does not send any data at all through Google, just the fact that there is a notification.

Literally, `AppData{key=notification, value=}` is what it gets.

On receiving that, Signal contacts their own servers to get the encrypted notification content directly, and then decrypts it on device.

However, Android is very restrictive of what apps can do in the background to improve battery life, and as such that last part wasn't working. microG does have the code to temporarily allow the app to do what's needed when it gets a notification, however it wasn't working on Android 12. The [patch](https://github.com/microg/GmsCore/pull/1681) fixes that by using a new, different API to perform that on 12, thus preventing notification delays once again
