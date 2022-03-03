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
