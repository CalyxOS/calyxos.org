---
title: Last OTA update before the new CalyxOS release
date: 2025-08-27
---

* This is the last over-the-air (OTA) update to all current and supported CalyxOS devices, before CalyxOS resumes development from its current hiatus.
* The OTA update warns people of the risk of running the current, unmaintained version of CalyxOS.
* It also includes a patch to enable Moto and Fairphone users to install CalyxOS while the project is on pause in response to emerging public requests.

### What's included

As mentioned in our letter to the [CalyxOS community](/news/2025/08/01/a-letter-to-our-community/), this project has been on a hiatus for the last two months. However, we are concerned with the many existing CalyxOS users who may have not been made aware of this important change. To reach as many active CalyxOS users as we can, our team decided collectively to push one last OTA update to inform all people currently running CalyxOS about the hiatus and its impact.

Therefore, rather than a typical monthly update, this OTA update alerts people through a system notification that their current version of CalyxOS will no longer receive updates from our team and a link to our community letter. Once the project comes out of the hiatus, you will be alerted with an additional notification, and reinstalling CalyxOS will be required to receive updates going forward.

In addition, Moto and Fairphone devices will receive a patch to fix [the issue related to the anti-rollback protection (ARB) feature](/install/antirollback-update-pending/) we discovered earlier. We hope this can provide a temporary solution to people who are seeking to run CalyxOS on these devices before they can establish a long-term plan. Note that since there will be no more updates to the existing version of CalyxOS installed on your device, future releases from the manufacturer to increment the ARB index are likely to cause the same issue mentioned above.

We understand that some people will continue running CalyxOS until our next release, so alongside this notification, we have included the latest open source security updates for Android 15 (although this is not a full CalyxOS security update).  This OTA update, however, is not related to our Android 16 port or the AOSP QPR1 update. We are closely monitoring the AOSP QPR1 release and working hard on bringing up Android 16 with all feature updates and security patches along with our current need to overhaul the project.

### Rollout

| Release channel  | Date   | Notes |
| ---------------- | ------ | ------ |
| Security express | 2 September, Tuesday |  |
| Beta | 2 September, Tuesday |  |
| Stable | 3 September, Wednesday | |

### Changelog
* CalyxOS 6.10.10 / 6.10.20
* Android 15
* August 2025 Security update (2025-08-01) with platform patches only.
* Critical notice that maintenance of all current installations have been paused.
