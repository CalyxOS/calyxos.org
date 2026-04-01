---
title: CalyxOS progress report - a detailed breakdown
date: 2026-04-01
---

* Responses to popular questions from our community, such as "What exactly happened with the signing process" and "What is still needed for CalyxOS to be back"
* Further breakdown of the impact of AOSP changes going forward
* What you can do to help us bridge development gaps

This update tries to clarify some of the ongoing confusions in the discourses across our community channels. We will continue our effort to address future questions in our regular posts and direct responses from our team members. If you have suggestions on how we can improve this effort, please feel free to reach out on [Matrix](https://calyxos.org/community/#main-channels) or [Reddit](https://calyxos.org/community/#reddit).

### On CalyxOS signing process

Following the completion of the *provisioning ceremony* in February, we have generated the needed release and component signing keys. More tests are still needed to ensure the keys will work as expected. So far, we have successfully signed some components (e.g. GCamPhotosPreview). We will be moving to signing the entire build when we have them ready.  

For those interested in downloading and testing GCamPhotosPreview with the new CalyxOS signing keys, you can download the APK file [here](https://gitlab.com/CalyxOS/calyx-fdroid-repo-apks/-/tree/main/GCamPhotosPreview).

### On CalyxOS release server

As reported in [our last progress update](https://calyxos.org/news/2026/02/24/calyxos-progress-update-2/), we have set up a new release server and Gerrit server for CalyxOS. There is ongoing work to make sure the new release server is up and running with regular backups and maintenance. From now on, CalyxOS installations will only be pinging the new domain, **https://release.calyxos.org**, to check for updates. We recommend **always running the most up-to-date version available** to ensure the CalyxOS on your device is getting updates without interference. The old domain of the past release server, https://release.calyxinstitute.org, will no longer be updated and eventually phase out as an archival site for old images. 

The old release server has been offline and due to the [ongoing travel risks across the United States](https://www.npr.org/2026/03/29/nx-s1-5765454/tsa-paychecks-ice-airports-tom-homan), the dev team hasn't been able to travel to the physical data center yet. While we are working on manual disk recovery, data on this server remains unreachable. If you have copies of past CalyxOS builds and would like to help us rebuild our release archive, please visit our dedicated GitLab issue: [Release files recovery](https://gitlab.com/CalyxOS/calyxos/-/work_items/3466). You can check which factory images and files are still missing and upload the missing files. We are grateful for your contribution.

### On CalyxOS code review

While planning to migrate our old Gerrit server to a new, faster one, we ran into some technical problems. With the shortage in IT staffing, this set the CalyxOS development back for a few weeks. But we have managed to set the new server up with fully recovered data and measures to prevent similar incidents from happening in the future.

The new Gerrit server is up on the same domain, [https://review.calyxos.org/](https://review.calyxos.org/). You can always review our work on Android 16 QPR2 in real time there. 

In this round of server upgrade, we had to sort through years of bulk data, including historical builds, change records, large binary files, and so forth on multiple platforms and locations. Migrating such size of data while creating new server structure has been intensely time-consuming despite our intention to bring back CalyxOS as soon as possible.

We wish we could move faster to bring CalyxOS back, but for a small team like us, cleaning up our development infrastructure for a fresh start while catching up with the fast-changing AOSP updating cycle could end up with many unexpected slowdowns. One thing we can be certain for sure, the team is committed to bringing CalyxOS back with a more efficient development environment. That is why we are working to make a test build with Android 16 available as soon as possible.

### On Android 16 QPR2 and the impact of AOSP release changes

Back in January, Google made an unexpected announcement that AOSP source code would [only be published in Q2 and Q4 instead of quarterly](https://web.archive.org/web/20260106233758/https://source.android.com/). This came after a series of significant changes in the previous year: [moving the entire AOSP development to behind closed doors](https://web.archive.org/web/20250327185406/https://source.android.com/docs/whatsnew/site-updates#aosp-changes), [terminating public sharing of device-specific source code for Pixels](https://calyxos.org/news/2025/06/11/android-16-plans/), and [reducing the frequency of the security patch release from quarterly to monthly](https://web.archive.org/web/20250913121908/https://www.androidauthority.com/android-risk-based-security-updates-3597466/). Effectively, QPR1 and QPR3 releases after January 2026 will be exclusive to Pixel devices on the stock OS and thus not accessible publicly. This change in release cadence means the proprietary blobs will always be newer than the available AOSP sources, which will often create conflicts. As a result, our ability to timely integrate any security updates from QPR1 and QPR3 Stock Pixel OS updates will be severely limited.

Not just CalyxOS, all AOSP-based OS development teams have been forced to spend an immense amount of extra time and resources to track and sync code changes before they can release any new builds. Restricting early or even timely access to source code is a major departure from the guiding principles of free and open-source software. Not only do these changes make it more difficult for custom ROM builders, they also harm the freedom to choose what to install on your devices or who you want to share your personal data with. 

Since June 2025, CalyxOS and LineageOS have been working on tooling that allows easier and faster updates of Pixel devices in a combined effort as the two projects share developers and resources. A lot of these tools are also beneficial for new device bringup. As always, our work is publicly available for community use and review:
* [proprietary files extract improvements](https://review.lineageos.org/q/project:LineageOS/android_tools_extract-utils+status:merged)
* [scripts to extract SEPolicy and RRO overlays from stock OS](https://review.lineageos.org/q/project:LineageOS/scripts+status:merged+(message:rro+OR+message:dev))

We have also been maintaining the base device trees together with LineageOS after the Pixel device tree source code was made publicly unavailable. You can find our latest updates on device support maintenance and Android 16 QPR2 bringup on [LineageOS code review](https://review.lineageos.org/q/owner:mkbestas@lineageos.org+status:merged). 

The majority of CalyxOS features have been ported to Android 16 QPR2. However, we have encountered a few broken changes that we are actively working to fix or reimplement. Depending on the complexity of the issue and the time needed to resolve it, some features may be temporarily unavailable in the first testing releases. Taking the CalyxOS Chromium browser for example, to ensure we can ship updates of the latest stable versions of Chromium in time, some features of CalyxOS Chromium may be excluded until we have more capacity in our team.

### What you can do to help

As mentioned above, here are a few things you can help us with to prevent further delay of the next CalyxOS release:
1. Test GCamPhotosPreview with the new CalyxOS signing keys. The APK file is available for download [here](https://gitlab.com/CalyxOS/calyx-fdroid-repo-apks/-/tree/main/GCamPhotosPreview).
2. Join our testers channel on Matrix. We would love to get the community's help in early beta testing on our upcoming release of CalyxOS. Shortly we will be reaching out directly in the [tester's channel](https://app.element.io/#/room/#calyxos-testers:matrix.org) with details on how to do so. Feel free to join this channel and share your thoughts so that we can polish the testing process.
3. Help us improve our communications. Please share your ideas on [our Matrix channel](https://calyxos.org/community/#main-channels) or [subreddit](https://calyxos.org/community/#reddit).
4. Upload old CalyxOS release files if you have any. You can check out our [Gitlab issue #3466](https://gitlab.com/CalyxOS/calyxos/-/work_items/3466) for details required and steps on how to get started.
