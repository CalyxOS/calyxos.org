---
title: October Security update
date: 2023-10-04
---

CalyxOS 4.14.0 - October 2023 Security update (partial) is now available for all supported devices.

| Release channel  | Date   |
| ---------------- | ------ |
| Security express | 4 October, Wednesday |
| Beta | 4 October, Wednesday |
| Stable | 5 October, Thursday |

### Changelog
* CalyxOS 4.14.0
* October 2023 Security update (2023-10-06, Partial)
* Google has not released an Android 13 update this month. This month's full Security update will be included in Android 14 update for the Pixels, which we're working on.
* They did release security fixes for the Android 13 open source components, which we've updated in this build.
* Firewall: Work apps are managed in your personal profile’s Firewall app. Work apps have a briefcase icon on them.
* Firewall: Point out apps without internet permission (i.e. they cannot access the internet at all)
* Messaging: Fix crash on forwarding messages

### Android 14 plans

Google has released Android 14 today, October 4. The stock updates are available for the Pixel, and they're releasing the source code to AOSP as well.

The CalyxOS team is already working on it.

Once we're done integrating Android 14 changes, our plan is to begin rolling it out to the Pixels Google still supports. That way we can focus on porting our OS changes first, and not have to worry too much about getting it running on older devices at the same time.

Those devices are:
* Pixel Fold
* Pixel Tablet
* Pixel 7a
* Pixel 7, 7 Pro
* Pixel 6a
* Pixel 6, 6 Pro
* Pixel 5, 4a (5G), 5a

We'll try to follow our usual process of releasing builds for testing as soon as possible, and then releasing it to a wider audience as we get more feedback, and bugs are fixed.

The rest of the devices will stay on Android 13 for a start, for more details see [September Security Update and longer device support]({% post_url 2023-09-08-september-security-update-extended-support %})

#### Pixel 8, 8 Pro

CalyxOS will support the Pixel 8 and Pixel 8 Pro.

Our first priority is getting Android 14 ported for the devices listed above, after which we'll start working on supporting the Pixel 8 and 8 Pro.

We'll keep posting updates as things go.

### Note

{% include install/security_notes.html %}
