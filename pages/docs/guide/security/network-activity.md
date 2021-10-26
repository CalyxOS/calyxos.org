---
title: Network Activity
description: Explanation of the network activity on a fresh CalyxOS install
toc: true
---

### Domains your device connects to

With CalyxOS, we have tried to reduce to as much as possible the number of network connections made by your phone. On this page, we document what domains your phone is connecting to and for what purpose. This table does not include any network activity caused by an app you might install.

<table class="table" markdown="0">
<tr>
  <th>Domain</th>
  <th>Organization</th>
  <th>Purpose</th>
</tr>
<tr>
  <td>release.calyxinstitute.org</td>
  <td>CalyxOS</td>
  <td>Used to check for [[Over-The-Air => OTA]] system updates.</td>
</tr>
<tr>
  <td>staticcdn.duckduckgo.com</td>
  <td>DuckDuckGo</td>
  <td>This domain is used to load images and other static content related to the DuckDuckGo search engine.</td>
</tr>
<tr>
  <td>connectivitycheck.gstatic.com</td>
  <td>Google</td>
  <td>CalyxOS connects to this service to determine if the device can connect to the internet over the current WiFi connection.</td>
</tr>
<tr>
  <td>time.android.com</td>
  <td>Google</td>
  <td>CalyxOS connects to this service to synchronize the device's internal clock.</td>
</tr>
<tr>
  <td>mtalk.google.com</td>
  <td>Google</td>
  <td>If you have [[microG]] enabled, this service is used to receive push notifications.</td>
</tr>
<tr>
  <td>xtrapath1.izatcloud.net</td>
  <td>Qualcomm</td>
  <td>This is a service of Qualcomm to allow the baseband processor to more quickly achieve a lock on GPS satellites by downloading a list of the positions of known GPS satellites.</td>
</tr>
</table>

### How does Calyx Institute use the data collected by releases.calyxinstitute.org?

I have no idea.

### Why does CalyxOS still use servers run by Google?

We have considered replacing Google servers for updating the system time and for connectivity check but decided against it. Our position is that using Google servers provides better privacy in this situation by allowing CalyxOS users to hide among the crowd of every other Android device on earth. Imagine if every CalyxOS device was using non-standard servers for these core functions. If we did this, it would be trivially easy for a repressive state to instantly identify all the people running CalyxOS devices and potentially target them for scrutiny.

Additionally, in the case of connectivity check and time updates, Google does not get any meaningful information from your device.

In the future, we may allow these settings to be changed, although we still advise against doing so.

### How does microG use mtalk.google.com?

The domain mtalk.google.com is used by [[microG]] to receive push notifications for the device. For example, Signal uses these push notifications to know when to fetch new messages from the Signal server. The alternative to using the push notification system from Google is for every app to continually check with the server for new events, which is slower and can lead to rapid battery drain.

Some apps, like Signal, are careful to never put any sensitive information in the push notification. In this case, the only information that is leaked to Google is the time when you received a message, but not whom the message was from or what the message contained. Other apps might put actual message content or metadata in the notification, potentially leaking this information to Google.

If you don't have a Google account configured in [[microG]], then this connection is semi-anonymous (see [[identifiers]] for more information). If you have configured a Google account with microG, then your account information is associated with each push notification.

### What is Qualcomm doing?

We don't exactly know, because this is handled inside the baseband processor (a separate computer on your device that handles all the radios and wireless networking). The domain xtrapath1.izatcloud.net is used by the baseband to load a data file of GPS satellite positions. Unfortunately, this data is downloaded over plain text HTTP, and it's use and parsing is handled by the "black box" of the baseband, which runs proprietary software and which we have no visibility into what it is actually doing.

This is from the [Qualcomm privacy notice](https://www.qualcomm.com/site/privacy/services):

> The Qualcomm GNSS Assistance Service downloads to your device a data file from QTI containing the predicted orbits of the Global Navigation Satellite System (GNSS) satellites. The Qualcomm GNSS Assistance Service also uploads a small amount of data to us comprised of: a randomly generated unique software ID that is not associated to you or to other IDs, the chipset name and serial number, the Qualcomm GNSS Assistance Service software version, the mobile country code(s) and network code(s) (allowing identification of country and wireless operator), the type of operating system and version, device make and model, the date and time of connection to the server, the time since the last boot of the application processor and modem, and a list of QTI software on the device

In the future, we may choose to block this domain, causing longer initial location resolution when using GPS.
