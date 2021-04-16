---
title: microG Google Account Login fix, take two
date: 2021-04-16
---

CalyxOS includes [microG](https://microg.org/) by default, and you get [three choices](https://calyxos.org/features/microg/). You can either keep it enabled (the default), disable it, or login with a Google account.

The latter has been reported to have some issues. We tried to include a potential fix with the [April build]({% post_url 2021-04-08-big-april-update %}), but that didn't work for everyone.

We have been testing a bunch of fixes and finally have something that should hopefully work for everyone. It's based on code from Vanced microG, which from what we've heard seems to work for everyone.

It is now available for testing in our device-specific test F-Droid repos.

These F-Droid repositories get app updates as soon as they're available, you can add this if you want to help us test them out.

To add it and install the update, simply add the right URL for your device to F-Droid -> Settings -> Repositories -> Plus sign at the top right

You can then try to sign-in to microG by launching it and tapping "Add Account", and then choosing "Alt Sign in" - that will use this new method to login.

If you want to help, you can let us know what worked for you and what didn't, through [Reddit](https://www.reddit.com/r/CalyxOS/) or [Matrix](https://matrix.to/#/#CalyxOS:matrix.org). For more details, see [[Community => community]].

<br>
F-Droid test repos:
<table class="table table-striped download">
  <tr><th>Device</th><th>URL</th><th>QR Code</th></tr>
{% for device in site.data.downloads["stable"] %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="https://calyxos.gitlab.io/calyx-fdroid-repo-{{device.codename}}/fdroid/repo?fingerprint=C44D58B4547DE5096138CB0B34A1CC99DAB3B4274412ED753FCCBFC11DC1B7B6">https://calyxos.gitlab.io/calyx-fdroid-repo-{{device.codename}}/fdroid/repo</a></td>
    <td><a href="/assets/images/gitlab-calyx-fdroid-repo-{{device.codename}}-qrcode.png">Click to view</a></td>
  </tr>
{% endfor %}
</table>

<br>

Technical:

We enable device registration and cloud messaging for microG by default to make sure that notifications work out of the box.

The [fix](https://review.calyxos.org/c/CalyxOS/platform_external_microg_GmsCore/+/2905) included in the [April build]({% post_url 2021-04-08-big-april-update %} tried to disable those two before login, and then re-enable them after login. It seemed to work in some cases, not all.

At the same time, we had heard that [Vanced microG](https://github.com/YTVanced/VancedMicroG) had this Huawei login button which seemed to work for everyone. We had already looked at that code once, so we decided to try that approach.

At first, we [tried](https://review.calyxos.org/c/CalyxOS/platform_external_microg_GmsCore/+/3074) to spoof just the 'brand' reported. AOSP sets it to Android, Google sets it to Google. Didn't work.

Next, we thought it might be the fingerprint (which contains the build info). Both brand and fingerprint are usually spoofed on custom ROMs for Google Play compatiblity, so we thought that might be it. [Tried](https://review.calyxos.org/c/CalyxOS/platform_external_microg_GmsCore/+/3120), didn't work.

After that we decided [trying](https://review.calyxos.org/c/CalyxOS/platform_external_microg_GmsCore/+/3016) to spoof all of the device details like microG does, didn't work.

Finally, we settled on just [pulling in](https://review.calyxos.org/c/CalyxOS/platform_external_microg_GmsCore/+/3125) the full code from Vanced (something we wanted to do at first but decided to see if the other approaches worked.).
This is what is being shipped in the APK now.

Note: If you take a brief look at the code, it may seem like microG is sending a lot of details about your device to Google. However, if you look closer, it spoofs a lot of that (it doesn't even have access to things like the serial number), which means most of the data it sends to Google would match exactly with other devices, making it hard to pick you out.