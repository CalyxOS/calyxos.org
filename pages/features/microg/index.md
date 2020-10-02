---
title: Goodbye, Google
---

With CalyxOS, Google is not running in the background, continually uploading all your data and location to the the Google servers.

## How Android Usually Works

When you use an Android device, the operating system is open source, but many of the applications depend on something called Google Play Services (GPS). This software is proprietary and tightly controlled by Google. Over time, Google has moved more and more parts of the open operating system into the closed GPS.

There are many problems with Google Play Services (GPS):

* Most popular apps do not work without GPS installed.
* Google uses GPS to gather data on how you are using your device, including location and advertisement tracking.
* Google tightly controls which vendors are allowed to install GPS on new devices.

## microG to The Rescue

microG is a open source replacement for Google Play Services (and related software), but it only includes the useful parts. Unlike GPS, microG does not have any advertising or location tracking, for example.

Although microG is not yet a mature replacement for GPS, the early results with microG are impressive. Most apps are able to run fine with microG without any need for GPS.

Features of microG:

* Reduces battery, memory, and CPU usage.
* Allows you to opt-in to specific Google services if you want.
* Location: typically, an Android device will using WiFi and cell-towers data from Google to help determine precise location. microG does this without using Google, and without reporting your location to Google (CalyxOS is configured to use [[location information from Mozilla -> https://github.com/microg/IchnaeaNlpBackend ]]).
* Notification: most chat apps depend on GPS to be alerted when a new message should be delivered to the user. microG allows your device to use this service from Google without the full GPS installation.

You can check the microG wiki to see the current status of which [[ parts of GPS have been implemented in microG => https://github.com/microg/android_packages_apps_GmsCore/wiki/Implementation-Status ]].

## Options for running microG in CalyxOS

With CalyxOS, you have three options:

#### 1. No microG

You can choose to not install microG at all. You will receive no "push notification" using the Google infrastructure. Many apps refuse to run.

#### 2. microG installed, no Google Account

With microG installed, many more applications will work. You will receive push notifications from Google servers.

#### 3. microG installed, with a Google Account

If you choose to configure a Google Account, even more apps will run correctly. Navigation will work in Google Maps. Users on the Google Fi network can get network connectivity.
