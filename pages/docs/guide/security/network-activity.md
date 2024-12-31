---
title: Network Activity
description: Explanation of the network activity on a fresh CalyxOS install
toc: true
---

## Domains your device connects to

With CalyxOS, we have tried to reduce to as much as possible the number of network connections made by your phone. On this page, we document what domains your phone is connecting to and for what purpose.

### CalyxOS connections

These network connections are initiated by the operating system itself (or microG).

<table class="table" markdown="0">
<tr>
  <th>Domain</th>
  <th>Purpose</th>
</tr>
<tr>
  <td>release.calyxinstitute.org</td>
  <td>Used to check for [[Over-The-Air => OTA]] CalyxOS system updates.</td>
</tr>
<tr>
  <td>www.bromite.org</td>
  <td>To update the anti-tracking filters built into the OS.</td>
</tr>
<tr>
  <td>api.positon.xyz</td>
  <td>Used by microG as an online location service. Only used if you selected it, you can disable or modify it in microG settings.</td>
</tr>
<tr>
  <td>api.beacondb.net</td>
  <td>Used by microG as an online location service. Only used if you selected it, you can disable or modify it in microG settings.</td>
</tr>
<tr>
  <td>xtrapath1.izatcloud.net</td>
  <td>This is a service of Qualcomm to allow the baseband processor to more quickly achieve a lock on GPS satellites by downloading a list of the positions of known GPS satellites.</td>
</tr>
</table>

### Google connections

CalyxOS uses Google servers in a way that is designed to protect your privacy as much as possible while still giving you a good user experience. In some cases, use of Google servers is required in order to support important functionality. In other cases, alternatives do exist, such as for updating the internal clock, but we feel that using Google servers anonymously still protects users' privacy.

We continue to research and implement ways to give the user greater control over the use of Google services.

<table class="table" markdown="0">
<tr>
  <th>Domain</th>
  <th>Purpose</th>
</tr>
<tr>
  <td>connectivitycheck.gstatic.com</td>
  <td>CalyxOS connects to this Google service to determine if the device can connect to the internet. If that domain is unreachable, it may also try www.google.com, play.googleapis.com, or (in China only) www.googleapis.cn. This can be turned off from Settings -> Network & internet -> Connectivity check</td>
</tr>
<tr>
  <td>time.android.com</td>
  <td>CalyxOS connects to this Google service to synchronize the device's internal clock.</td>
</tr>
<tr>
  <td>android.clients.google.com</td>
  <td>Used by microG to register the device with Google in order to obtain an identifier that is needed for push notification. As much as possible, microG sends little identifiable information to Google in this process (although it does submit device model, and your Google username if you have chosen to configure microG with your actual Google account).</td>
</tr>
<tr>
  <td>supl.google.com</td>
  <td>SUPL is an optional assistive GPS (A-GPS) service that allows the device to much more quickly get a GPS lock. When A-GPS is turned on, the request for GPS satellite information that CalyxOS makes to Google servers utilizes TLS and does not include the device's IMSI or phone number unless an emergency call is made.</td>
</tr>
<tr>
  <td>remoteprovisioning.googleapis.com</td>
  <td>Used for Remote Key Provisioning, a feature of Android's key attestation system. See below for more details.</td>
</tr>
</table>


### App connections

These connections are made by apps in the default CalyxOS configuration. You can prevent these connections by removing or disabling the app.

<table class="table" markdown="0">
<tr>
  <th>Domain</th>
  <th>App</th>
  <th>Purpose</th>
</tr>
<tr>
  <td class="nowrap">f-droid.org</td>
  <td>[[F-Droid Basic]]</td>
  <td>The app repository for F-Droid, the preferred and default app store for CalyxOS. There are also mirrors at ftp-push.lysator.liu.se, plug-mirror.rcac.purdue.edu, and mirror.f-droid.org</td>
</tr>
<tr>
  <td class="nowrap">fdroid-repo.calyxinstitute.org</td>
  <td>[[F-Droid Basic]]</td>
  <td>On CalyxOS, F-Droid comes pre-configured with a special repository just for use with CalyxOS. This repository has highest priority and we use it to push out security fixes, necessary updates, and our own version of some apps that also exist in F-Droid.</td>
</tr>
<tr>
  <td class="nowrap">mtalk.google.com</td>
  <td>[[microG]]</td>
  <td>If you have [[microG]] enabled, this service is used to receive push notifications (see below).</td>
</tr>
<tr>
  <td class="nowrap">goolag.store</td>
  <td class="nowrap">[[Aurora Store]]</td>
  <td>If you use Aurora Store with anonymous credentials, it uses this service to grab the credentials.</td>
</tr>
<tr>
  <td class="nowrap">gitlab.com</td>
  <td class="nowrap">[[Aurora Store]]</td>
  <td>Aurora Store will connect to gitlab.com to check if there is a new version of Aurora Store and to load the current Terms of Service and Privacy Policy.</td>
</tr>
<tr>
  <td class="nowrap">android.clients.google.com</td>
  <td class="nowrap">[[Aurora Store]]</td>
  <td>Aurora Store will connect to this Google service in order to obtain an access token needed to access the Google Play Store catalog of apps.</td>
</tr>
<tr>
  <td class="nowrap">play-lh.googleusercontent.com</td>
  <td class="nowrap">[[Aurora Store]]</td>
  <td>Aurora Store will connect to this Google service in order to load content from the Google Play Store.</td>
</tr>
</table>

## Further details

### How does Calyx Institute use the data collected by releases.calyxinstitute.org?

We retain per-request logs for a short period of time before these logs are aggregated and destroyed. The per-request logs may include IP address, country of origin, and device model. The aggregated long term data includes total counts of requests by country and by device model.

Per-request logs are kept strictly private without Calyx Institute.

### Why does CalyxOS still use servers run by Google?

We have considered replacing Google servers for updating the system time and for connectivity check but decided against it. Our position is that using Google servers provides better privacy in this situation by allowing CalyxOS users to hide among the crowd of every other Android device on earth. Imagine if every CalyxOS device was using non-standard servers for these core functions. If we did this, it would be trivially easy for a repressive state to instantly identify all the people running CalyxOS devices and potentially target them for scrutiny.

Additionally, in the case of connectivity check and time updates, Google does not get any meaningful information from your device. It can be turned off from Settings -> Network & internet -> Connectivity check

In the future, we may allow further configuration of these settings, although we still advise against doing so.

CalyxOS is not currently designed to operate in a "stealth mode" where a network observer could not detect that a device was running CalyxOS. However, in order to keep that open as a possibility for the future, we don't want to make this harder by replacing all the standard servers with bespoke servers run by Calyx.

### What is Qualcomm doing?

We don't exactly know, because this is handled inside the baseband processor (a separate computer on your device that handles all the radios and wireless networking). The domain xtrapath1.izatcloud.net is used by the baseband to load a data file of GPS satellite positions. Unfortunately, this data is downloaded over plain text HTTP, and it's use and parsing is handled by the "black box" of the baseband, which runs proprietary software and which we have no visibility into what it is actually doing.

This is from the [Qualcomm privacy notice](https://www.qualcomm.com/site/privacy/services):

> The Qualcomm GNSS Assistance Service downloads to your device a data file from QTI containing the predicted orbits of the Global Navigation Satellite System (GNSS) satellites. The Qualcomm GNSS Assistance Service also uploads a small amount of data to us comprised of: a randomly generated unique software ID that is not associated to you or to other IDs, the chipset name and serial number, the Qualcomm GNSS Assistance Service software version, the mobile country code(s) and network code(s) (allowing identification of country and wireless operator), the type of operating system and version, device make and model, the date and time of connection to the server, the time since the last boot of the application processor and modem, and a list of QTI software on the device

In the future, we may choose to block this domain, causing longer initial location resolution when using GPS.

### What are Key Attestation and Remote Key Provisioning?

Key attestation is a system meant to "ensure the integrity of the device and apps running on the device" (source: [Google Security Blog](https://security.googleblog.com/2022/05/io-2022-android-13-security-and-privacy.html)). Remote Key Provisioning is a sub-feature which ensures that claims made by compromised OS versions are considered invalid, and also that devices are able to recover their genuine status when newer, uncompromised OS versions are installed. This feature depends on Google servers and is primarily useful in combination with microG and services like SafetyNet, Identity Credential, and Digital Car Key.

This system relies on Google, but is fairly [well designed](https://android-developers.googleblog.com/2022/03/upgrading-android-attestation-remote.html):

> The scheme is privacy preserving in that each application receives a different attestation key, and the keys themselves are rotated regularly. Additionally, Google backend servers are segmented such that the server which verifies the device’s public key does not see the attached attestation keys. This means it is not possible for Google to correlate attestation keys back to a particular device that requested them.

Recent research has highlighted that Android still communicates with Google as part of the Remote Key Provisioning system, even in the absence of microG or Google Play services. CalyxOS is currently looking into this issue and considering ways to address it.
