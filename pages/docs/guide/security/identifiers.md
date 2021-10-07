---
title: Unique Identifiers
description: Notes on how your phone gets uniquely identified
toc: true
---

Your Android device has many identifiers that are unique, creating many opportunities for applications and services to track your activity.

This page attempts to document all the important identifiers, how CalyxOS handles each one, and how this differs from commercial Android distributions.

This page is a work in progress!

Permanent Identifiers
----------------------------------------

These identifiers cannot be changed, and thus pose the greatest potential privacy impact. Fortunately, the permanent identifiers are only available to a certain apps:

* Operating System
* Dialer
* eSIM Apps
* Carrier Apps
* Enterprise Managed Profiles

To read these permanent identifiers, an application requires the `READ_PRIVILEGED_PHONE_STATE` permission, which is not available to a normal app (only carrier apps and system apps may have this permission). This is true of both CalyxOS and Stock Android.

Most commercial Android distributions come with carrier apps pre-installed for all the major carriers in the region where the phone is sold. These carrier apps then get automatically activated when a SIM card for that carrier is detected. This give the mobile phone carrier [special access to certain phone functions](https://source.android.com/devices/tech/config/uicc), such as configuring WiFi calling. It also gives them access to the permanent identifiers. Additionally, these carrier apps can be installed automatically by the Google Play Store.

With CalyxOS, there are no included carrier apps and carrier apps cannot be installed automatically.

### Serial Number

Serial number of your device, determined by the manufacturer. Unlike the IMEI, this does not have to be globally unique. This number may be required when getting a warranty repair or replacement.

To view Serial Number:

* Via the dialer: enter `*#06#`
* Via settings: **Settings** &rarr; **About Phone** &rarr; **Model** &rarr; **Serial number**

### IMEI / MEID

THe IMEI (GSM networks) or the MEID (CDMA networks) is a number that is globally unique for the device. It identifies the **hardware** of the device, unlike the SIM card which can be swapped out. It is used to connect to the carrier network, and carriers will block IMEIs that have been reported stolen.

Law enforcement and intelligence services can use the IMEI to track a device, even if the SIM card changes.

The IMEI or MEID is sometimes called the "Device ID" in internal Android documentation.

To view IMEI:

* Via the dialer: enter `*#06#`
* Via settings: **Settings** &rarr; **About phone** &rarr; **IMEI**

### SIM Serial (ICCID)

SIM cards have unique serial numbers called ICCID, which are engraved on the chip and usually printed on the outside as well. The ICCID represents the physical SIM card, where the IMSI represents the mobile customer record.

The ICCID is transmitted to the mobile network tower, and is logged by the carrier.

To view ICCID: **Settings** &rarr; **About Phone** &rarr; **SIM status** &rarr; **ICCID**

### Subscriber ID (IMSI)

In addition to the ICCID, every SIM card stores a subscriber ID called IMSI (International Mobile Subscriber Identity). This number is used to identify and authenticate a paying customer to the carrier network.

The IMSI is transmitted to the mobile network tower, and is logged by the carrier.

Temporary Identifiers
-------------------------------

### Android Advertising ID (AAID)

The advertising ID is an unique identifier shared among all the apps on your phone to identify you for advertising purposes. This potentially allows advertising networks to correlate all your activity across different apps on your device.

Advertisers are strongly encouraged by Google to only use this identifier for ad tracking, although there is nothing that technically prevents them from using other information, such as your IP address, or other information that you provide the app with (such as your email address).

In stock Android:

* The user may manually reset this advertising ID.
* Since Android 12, when the user turns off ad personalization, then all apps receive zeros for the advertising ID.

In CalyxOS:

* Any app that tries to get an advertising ID simply gets a random number each time.
* There is no ability to set this to zero or reset it.

### Firebase Installation ID (FID)

The FID is an unique ID per app that is used by an app to access certain Google Play Services. Is reset when the app data is cleared.

TODO: how does migroG handle this.

### Google Play Services Registration ID

In order to use Google Play Services, an Android device must first register itself with the Google servers. This registration process happens once, and includes lots of information about the user's Google account and device. The unique registration ID is created by Google servers, not locally on the device.

In CalyxOS:

* If microG is enabled and "Google device registration" is on (the default), your device will register once with the Google services, supplying random information to Google. This registration number is called "Android ID" in the microG settings interface. This is needed for things like push notifications in most apps to work.
* If microG is additionally configured with a Google account, then the device registration will include the account username.
* Currently, the only way to reset the "Android ID" is to clear the application data for microG. Doing so may cause problems with any apps that rely on microG implementation of Google Play Services (for example, you will no longer receive Signal message notifications until you also reset Signal's app data).

### MAC Address

Every Android device has a unique identifier called a MAC address that is used for routing on the local network. Unlike an IP address, when your device contacts a remote server, the MAC address is not communicated over the internet.

However, observers on the local network can, and sometimes do, use a MAC address to identify you and track you. For example, if you walk into a store with an open WiFi, your device might communicate the MAC address to the WiFi access point that in turn correlates this data with an external database to track your location.

Historically, the MAC address has been unchangeable. Since Android 10, the default WiFi setting is for the MAC address to be generated anew for each different network. There is still a single unchangeable "Device MAC Address", but each WiFi network is given a persistent, randomized fake MAC address.

Internal to the device, access to the MAC address is restricted to system applications.

To change the settings for a specific WiFi network go to **Settings** &rarr; **Network & Internet* &rarr; **Wi-Fi** &rarr; **Gear Icon** &rarr; **Advanced** &rarr; **Privacy** &rarr; **Use Randomized MAC**.

Links
-------------------------------

* [Non-resettable device IDs](https://developer.android.com/about/versions/10/privacy/changes#non-resettable-device-ids)

* [Best practices for unique identifier](https://developer.android.com/training/articles/user-data-ids)

* [Gotta Catch 'Em All: Understanding how IMSI-Catchers Exploit Cell Networks](https://www.eff.org/wp/gotta-catch-em-all-understanding-how-imsi-catchers-exploit-cell-networks)

