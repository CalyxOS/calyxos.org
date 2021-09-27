---
title: microG
nav_title: microG
description: 🧘 With CalyxOS, Google Services are not running in the background, continually uploading your data and location to the Google servers.
toc: true
redirect_from: /features/microg/
---

## How Android Usually Works

When you use an Android device, the operating system is open source, but many of the applications depend on something called Google Play Services (GMS). This software is proprietary and tightly controlled by Google. Over time, Google has moved more and more parts of the open operating system into the closed GMS.

There are many problems with Google Play Services (GMS):

* Most popular apps do not work without GMS installed.
* Google uses GMS to gather data on how you are using your device, including location and advertisement tracking.
* Google tightly controls which vendors are allowed to install GMS on new devices.

## microG to The Rescue

[microG](https://microg.org) is a open source replacement for Google Play Services (and related software), but it only includes the useful parts. Unlike GMS, microG does not have any advertising or location tracking, for example.

Although microG is not yet a mature replacement for GMS, the early results with microG are impressive. Most apps are able to run fine with microG without any need for GMS.

Features of microG:

* Reduces battery, memory, and CPU usage.
* Allows you to opt-in to specific Google services if you want.
* Location: typically, an Android device will using WiFi and cell-towers data from Google to help determine precise location. microG does this without using Google, and without reporting your location to Google (CalyxOS is configured to use [[location information from Mozilla -> https://github.com/microg/IchnaeaNlpBackend ]]).
* Notification: most chat apps depend on GMS to be alerted when a new message should be delivered to the user. microG allows your device to use this service from Google without the full GMS installation.

You can check the microG wiki to see the current status of which [[ parts of GMS have been implemented in microG => https://github.com/microg/android_packages_apps_GmsCore/wiki/Implementation-Status ]].

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
