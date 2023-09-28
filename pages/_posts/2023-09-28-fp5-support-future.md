---
title: Fairphone 5 will be supported
date: 2023-09-28
---

CalyxOS will support the Fairphone 5

We already support the FP4 [since April 2022]({% post_url 2022-04-01-fairphone4-oneplus8t-oneplus9-test-builds %}), and have Android 13 available [since October 2022]({% post_url 2022-10-20-pixel-7-fp4-beta %})

### TL;DR

* FP5 will be supported. Android 13 at first, Android 14 later.
* Android 14 general release will keep us busy for a bit, so FP5 support will take some time.
* Track [FP5 progress on GitLab](https://gitlab.com/CalyxOS/calyxos/-/issues/1817), and contribute [via GitHub](https://github.com/WeAreFairphone)

### Status
We don't have any builds for the Fairphone 5 just yet, the port is still a work in progress.

We were initially planning to directly release an installation image, but it turns out that it will take some more time to get that ready.

Android 14 is also expected next week, we'll be busy with that in general, porting CalyxOS changes to Android 14, as well as the Pixels.

Initial CalyxOS builds for the FP5 will be based on Android 13.

We'll look into porting Android 14 to the FP5 afterwards, and post updates as we figure things out.

[This linked post outlines our general Android 13 support and 14 port plans]({% post_url 2023-09-08-september-security-update-extended-support %})

You can follow [FP5 port progress on GitLab](https://gitlab.com/CalyxOS/calyxos/-/issues/1817).

### Development
We have pushed the initial source code that we're working with to the [WeAreFairphone GitHub org](https://github.com/WeAreFairphone)

This is based on some of the [FP4 code](https://github.com/WeAreFairphone/android_device_fairphone_FP5), and also the [public open source release](https://github.com/WeAreFairphone/android_kernel_fairphone_qcm6490) for FP5.

We intend to continue developing this in public, trying to collaborate with as many others we can.

We typically start working on new non-Pixel devices with LineageOS.

### Thanks
A big thanks to Fairphone for providing development FP5 devices to the CalyxOS team.

Thanks to all the people who offered devices as well!
