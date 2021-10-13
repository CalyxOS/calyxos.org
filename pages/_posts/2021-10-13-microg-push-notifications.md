---
title: microG push notification fixes
date: 2021-10-14
---

The October update included some push notification fixes, however it turned out that they didn't work as well as expected for everyone.

We've done some more fixes, and a test [APK](https://calyxos.gitlab.io/calyx-fdroid-repo/fdroid/repo/GmsCore.apk) is now available.

You need to be running the <a href="{{ '/news/2021/10/08/october-update/' | relative_url }}">October build, CalyxOS 2.10.0</a> to be able to install this. 

You can get it from our test F-Droid repo, <https://gitlab.com/CalyxOS/calyx-fdroid-repo>

To add it, simply add this URL to F-Droid -> Settings -> Repositories -> Plus sign at the top right: <https://calyxos.gitlab.io/calyx-fdroid-repo/fdroid/repo?fingerprint=C44D58B4547DE5096138CB0B34A1CC99DAB3B4274412ED753FCCBFC11DC1B7B6>

Alternatively, you can scan the below QR code:

![gitlab-calyx-fdroid-repo](/assets/images/gitlab-calyx-fdroid-repo-qrcode.png){:class="img-fluid"}

The changes included have all been sent to microG upstream for integration in the codebase so that everyone can benefit.

* <https://github.com/microg/GmsCore/pull/1483>
* <https://github.com/microg/GmsCore/pull/1582>

This F-Droid repo also includes the <a href="{{ '/news/2021/09/30/gcam-photos-preview/' | relative_url }}">GCam Photos Preview</a> app to preview photos directly from Google Camera (without having to install Google Photos)

Note:

We're in the middle of revamping our F-Droid repository setup, and this will change.
In the future, we will be able to push out updates directly to the device without you having to add any custom repos