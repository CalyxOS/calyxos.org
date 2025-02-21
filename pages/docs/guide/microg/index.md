---
title: microG
nav_title: microG
description: 🧘 With CalyxOS, Google Services are not running in the background, continually uploading your data and location to the Google servers.
toc: true
redirect_from: /features/microg/
---

## How Android usually works

When you use an Android device, the operating system is open source, but many of the apps depend on something called Google Play Services. This software is proprietary and tightly controlled by Google. Over time, Google has moved more and more parts of the open operating system into the closed Play Services.

There are many problems with Google Play Services:

* Most popular apps do not work without Play Services installed.
* Google uses Play Services to gather data on how you are using your device, including location and advertisement tracking.
* Google tightly controls which vendors are allowed to install Play Services on new devices.

## microG to the rescue

[microG](https://microg.org) is a open source replacement for Google Play Services (and related software), but it only includes the useful parts. Unlike Play Services, microG does not have any advertising or location tracking, for example.

Although microG is not yet a mature replacement for Play Services, the early results with microG are impressive. Most apps are able to run fine with microG without any need for Play Services.

Features of microG:

* Reduces battery, memory, and CPU usage.
* Allows you to opt-in to specific Google Services if you want.
* Location: typically, an Android device will using WiFi and cell-towers data from Google to help determine precise location. microG does this without using Google, and without reporting your location to Google.
* Notification: most chat apps depend on Play Services to be alerted when a new message should be delivered to the user. microG allows your device to use this service from Google without the full Play Services installation.

You can check the microG wiki to see the current status of which [[ parts of Play Services have been implemented in microG => https://github.com/microg/android_packages_apps_GmsCore/wiki/Implementation-Status ]].

## Options for running microG in CalyxOS

With CalyxOS, you have four options:

#### 1. microG disabled

You can choose to disable microG when setting up the device for the first time.

This is the 100% de-Googled mode with no attempt to make apps work that expect Google services. You will receive no "push notification" using the Google infrastructure. Many apps refuse to run, however some apps such as Google Camera still work. Some apps will consume more battery without push notifications from Google. The presence of microG, even when disabled, will allow some apps to work that would not otherwise.

#### 2. microG enabled, no Google Account, push notifications disabled

In this mode, microG is used to implement some common functionality (such as maps inside some applications) to make many apps work, but in a way that does not send any information to Google. In some case (e.g. location),
privacy-respecting services are used in place of Google services.

#### 3. microG enabled, no Google Account, push notifications enabled (default)

This is the default and recommended option.

This is identical to the above option, with one minor change. Google services are used semi-anonymously (not tied to a user identity) to provide push notification functionality for many apps. This sends much less information to Google.

#### 4. microG enabled, with a Google Account

With [[microG]] enabled, you have the option to configure it with a Google account. This will allow some additional apps and services to work, such as Google Fi, but you are no longer semi-anonymous with respect to Google services.

## microG FAQ

### How does microG use mtalk.google.com?

The domain mtalk.google.com is used by microG to receive push notifications for the device. For example, Signal uses these push notifications to know when to fetch new messages from the Signal server. The alternative to using the push notification system from Google is for every app to continually check with the server for new events, which is slower and can lead to rapid battery drain.

Some apps, like Signal, are careful to never put any sensitive information in the push notification. In this case, the only information that is leaked to Google is the time when you received a message, but not whom the message was from or what the message contained. Other apps might put actual message content or metadata in the notification, potentially leaking this information to Google.

If you don't have a Google account configured in microG, then this connection is semi-anonymous (see [[identifiers]] for more information). If you have configured a Google account with microG, then your account information is associated with each push notification.

### Is using microG a privacy risk?

We think of the way we have implemented microG as a 'harm reduction' approach: it is not 100% perfect privacy, but it is very good and still affords a solid user experience.

* **microG disabled**: No information is sent to any server.
* **microG enabled**: Your IP address and device model information is sent to Google (see [[identifiers]]) when microG first registers itself with Google. Similar information may be sent for location services depending on your settings, (see [[location]]). Google's Advertising ID is completely disabled. Your device will receive push notifications from Google servers.
* **microG enabled, with a Google Account**: Your Google Account name is sent to Google when microG first register itself with Google services.

What is stock Android like in comparison? Everything is tracked. In one study, [stock Android phones sent location data to Google 340 times during a 24-hour period](https://digitalcontentnext.org/wp-content/uploads/2018/08/DCN-Google-Data-Collection-Paper.pdf). Another [study from University of Edinburgh](https://www.scss.tcd.ie/Doug.Leith/Android_privacy_report.pdf) showed that even right out of the box, a typical stock Android device sends a high degree of information to numerous data brokers.

### Is microG a security risk in CalyxOS because it requires signature spoofing?

The short answer: No.

The long answer: microG does indeed require something called 'signature spoofing'. This is the ability for one program to impersonate the code signature of another. This is needed by microG in order to impersonate Google Play Services (because most apps embed the part of Play Services in the app itself). The standard microG patch for Android to support signature spoofing simply allows it in a free-for-all style. We have instead severely controlled the scope so that it's only allowed for one signature, for one program, microG.

For more technical information, see [[microg-details]].
