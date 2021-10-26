---
title: Network Activity
description: Explanation of the network activity on a fresh CalyxOS install
toc: true
---

## Domains your device connects to

With CalyxOS, we have tried to reduce to as much as possible the number of network connections made by your phone. On this page, we document what domains your phone is connecting to and for what purpose.

### CalyxOS connections

These network connections are initiated by the operating system itself and cannot be changed.

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
  <td>connectivitycheck.gstatic.com</td>
  <td>CalyxOS connects to this Google service to determine if the device can connect to the internet over the current WiFi connection.</td>
</tr>
<tr>
  <td>time.android.com</td>
  <td>CalyxOS connects to this Google service to synchronize the device's internal clock.</td>
</tr>
<tr>
  <td>xtrapath1.izatcloud.net</td>
  <td>This is a service of Qualcomm to allow the baseband processor to more quickly achieve a lock on GPS satellites by downloading a list of the positions of known GPS satellites.</td>
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
  <td>f-droid.org</td>
  <td>[[F-Droid]]</td>
  <td>The app repository for F-Droid, the preferred and default app store for CalyxOS. There are also mirrors at ftp-push.lysator.liu.se, plug-mirror.rcac.purdue.edu, and mirror.f-droid.org</td>
</tr>
<tr>
  <td>fdroid-repo.calyxinstitute.org</td>
  <td>[[F-Droid]]</td>
  <td>On CalyxOS, F-Droid comes pre-configured with a special repository just for use with CalyxOS. This repository has highest priority and we use it to push out security fixes, necessary updates, and our own version of some apps that also exist in F-Droid.</td>
</tr>
<tr>
  <td>staticcdn.duckduckgo.com</td>
  <td>[[DuckDuckGo => duckduckgo-privacy-browser]]</td>
  <td>This domain is used to load images and other static content related to the DuckDuckGo search engine.</td>
</tr>
<tr>
  <td>mtalk.google.com</td>
  <td>[[microG]]</td>
  <td>If you have [[microG]] enabled, this service is used to receive push notifications (see below).</td>
</tr>
<tr>
  <td>goolag.store</td>
  <td>[[Aurora Store]]</td>
  <td>If you use Aurora Store with anonymous credentials, it uses this service to grab the credentials.</td>
</tr>
<tr>
  <td>gitlab.com</td>
  <td>[[Aurora Store]]</td>
  <td>Aurora Store will connect to gitlab.com to check if there is a new version of Aurora Store and to load the current Terms of Service and Privacy Policy.</td>
</tr>
<tr>
  <td>android.clients.google.com</td>
  <td>[[Aurora Store]]</td>
  <td>Aurora Store will connect to this Google service in order to obtain an access token needed to access the Google Play Store catalog of apps.</td>
</tr>
<tr>
  <td>play-lh.googleusercontent.com</td>
  <td>[[Aurora Store]]</td>
  <td>Aurora Store will connect to this Google service in order to load content from the Google Play Store.</td>
</tr>
</table>

## Further details

### How does Calyx Institute use the data collected by releases.calyxinstitute.org?

We retain per-request logs for a short period of time before these logs are aggregated and destroyed. The per-request logs may include IP address, country of origin, and device model. The aggregated long term data includes total counts of requests by country and by device model.

Per-request logs are kept strictly private without Calyx Institute.

### Why does CalyxOS still use servers run by Google?

We have considered replacing Google servers for updating the system time and for connectivity check but decided against it. Our position is that using Google servers provides better privacy in this situation by allowing CalyxOS users to hide among the crowd of every other Android device on earth. Imagine if every CalyxOS device was using non-standard servers for these core functions. If we did this, it would be trivially easy for a repressive state to instantly identify all the people running CalyxOS devices and potentially target them for scrutiny.

Additionally, in the case of connectivity check and time updates, Google does not get any meaningful information from your device.

In the future, we may allow these settings to be changed, although we still advise against doing so.

### What is Qualcomm doing?

We don't exactly know, because this is handled inside the baseband processor (a separate computer on your device that handles all the radios and wireless networking). The domain xtrapath1.izatcloud.net is used by the baseband to load a data file of GPS satellite positions. Unfortunately, this data is downloaded over plain text HTTP, and it's use and parsing is handled by the "black box" of the baseband, which runs proprietary software and which we have no visibility into what it is actually doing.

This is from the [Qualcomm privacy notice](https://www.qualcomm.com/site/privacy/services):

> The Qualcomm GNSS Assistance Service downloads to your device a data file from QTI containing the predicted orbits of the Global Navigation Satellite System (GNSS) satellites. The Qualcomm GNSS Assistance Service also uploads a small amount of data to us comprised of: a randomly generated unique software ID that is not associated to you or to other IDs, the chipset name and serial number, the Qualcomm GNSS Assistance Service software version, the mobile country code(s) and network code(s) (allowing identification of country and wireless operator), the type of operating system and version, device make and model, the date and time of connection to the server, the time since the last boot of the application processor and modem, and a list of QTI software on the device

In the future, we may choose to block this domain, causing longer initial location resolution when using GPS.
