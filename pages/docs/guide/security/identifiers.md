---
title: Unique Identifiers
description: Notes on how your phone gets uniquely identified
toc: true
---

Your Android device has many identifiers that are unique, creating many opportunities for applications and services to track your activity.

This page attempts to document all the important identifiers, how CalyxOS handles each one, and how this differs from stock Android distributions.

This page is a work in progress!

Permanent Device Identifiers
----------------------------------------

The device identifiers cannot be changed, and thus pose the greatest potential privacy impact. Fortunately, these identifiers are only available to certain apps:

* Operating System
* Dialer
* eSIM Apps
* Carrier Apps
* Enterprise Managed Profiles

Additionally, most of these device identifiers are transmitted to the mobile carrier.

To read these permanent identifiers, an app requires the `READ_PRIVILEGED_PHONE_STATE` permission, which is not available to a normal app. Since Android 10, only carrier apps and system apps may have this permission. This is true of both CalyxOS and stock Android.

Most commercial Android distributions come with carrier apps pre-installed for all the major carriers in the region where the phone is sold. These carrier apps then get automatically activated when a SIM card for that carrier is detected. This give the mobile phone carrier [special access to certain phone functions](https://source.android.com/devices/tech/config/uicc), such as configuring WiFi calling. It also gives them access to the permanent device identifiers. Additionally, these carrier apps can be installed automatically by the Google Play Store.

With CalyxOS, there are no included carrier apps and carrier apps cannot be installed automatically.

### Serial Number

* Scope: per-device

Serial number of your device, determined by the manufacturer. Unlike the IMEI, this does not have to be globally unique. This number may be required when getting a warranty repair or replacement.

To view Serial Number:

* **Settings** &rarr; **About Phone** &rarr; **Model** &rarr; **Serial number**

### IMEI / MEID

Scope: per-device

The IMEI (GSM networks) or the MEID (CDMA networks) is a number that is globally unique for the device. It identifies the **hardware** of the device, unlike the SIM card which can be swapped out. It is used to connect to the carrier network, and carriers will block IMEIs that have been reported stolen.

Your device will have one IMEI for each usable SIM card (physical or eSIM).

Law enforcement and intelligence services can use the IMEI to track a device, even if the SIM card changes or if you have no SIM card at all (and even if the phone is always in airplane mode).

The IMEI or MEID is sometimes called the "Device ID" in internal Android documentation.

To view IMEI:

* Via the dialer: enter `*#06#`
* Via settings: **Settings** &rarr; **About phone** &rarr; **IMEI**

### SIM Serial (ICCID)

Scope: per-device

SIM cards have unique serial numbers called ICCID, which are engraved on the chip and usually printed on the outside as well. The ICCID represents the physical SIM card, where the IMSI represents the mobile customer record.

The ICCID is transmitted to the mobile network tower, and is logged by the carrier.

To view ICCID: **Settings** &rarr; **About Phone** &rarr; **SIM status** &rarr; **ICCID**

### Subscriber ID (IMSI)

Scope: per-device

In addition to the ICCID, every SIM card stores a globally unique subscriber ID called IMSI (International Mobile Subscriber Identity). This number is used to identify and authenticate a paying customer to the carrier network.

The IMSI is transmitted to the mobile network tower, and is logged by the carrier.

To view IMSI:

* Via the dialer: enter `*#*#4636#*#*` and then choose **Phone info**.

Software Identifiers
-------------------------------

### Android Advertising ID (AAID)

Scope: per-device

The Advertising ID is an unique identifier created by Google Play Services and shared among all the apps on your phone to identify you for advertising purposes. This potentially allows advertising networks to correlate all your activity across different apps on your device.

Advertisers are [required by Google policy](https://support.google.com/googleplay/android-developer/answer/6048248) to use AAID as the only device identifier used for advertising purposes (Facebook identifier is still allowed, because it is tied to your account and not your device). Enforcement of this policy is lax and there is little to prevent apps from using other device information, such as your IP address, or Android ID.

According to [one study from 2021](https://arxiv.org/pdf/2109.13722.pdf) of Android, 61.7% of apps directly use AAID for advertising through AdMob (owned by Google), and 87.3% of apps use Play Services and can track using AAID.

In stock Android:

* The user may manually reset this Advertising ID.
* Since Android 12, when the user turns off ad personalization, then all apps receive zeros for the advertising ID. In all prior Android versions, the app will still have access to the Advertising ID.

In CalyxOS:

* Any app that tries to get an Advertising ID simply gets a random number each time.
* There is no ability to set this to zero or reset it.

### Android ID

Scope: per-publisher

An [Android ID (or SSAID)](https://developer.android.com/reference/android/provider/Settings.Secure#ANDROID_ID), is an identifier that is unique for a given device, user (or profile), and app publisher (whomever signed the app). This means that all the apps from the same publisher on the same device will have the same SSAID.

There is no way to change the SSAID. Uninstalling an app or clearing the data will keep the same SSAID the next time the app is installed and run. However, if you create a separate user or work profile, the SSAID will be different for that profile or user.

No special permissions are needed for an app to obtain this ID. A full factory reset of the device may change the SSAID for an app (but is not guaranteed to).

{% comment %}
val id = Secure.getString(
  getApplicationContext().getContentResolver(),
  Secure.ANDROID_ID
);
{% endcomment %}

### Firebase Installation ID (FID)

Scope: per-app

The FID is an unique ID per app that is used by an app to access certain Google Play Services. It is reset when the app data or cache is cleared, or after [270 days of inactivity](https://firebase.google.com/docs/projects/manage-installations#monitor-id-lifecycle). Google advises app developers against using FID as a unique identifier, because the app cache can be often cleared.

TODO: how does microG handle this.

### Google Services Framework ID (GSF ID)

Scope: per-device

In order to use Google Play Services, an Android device must first register itself with the Google servers. This registration process happens once, and includes lots of information about the user's Google account and device. The unique GSF ID is created by Google servers, not locally on the device.

Once your device registers with Google Play Services, Google stores a profile that links your user account and the hardware capabilities for your device.

This GSF ID is not available to apps and cannot be changed.

In CalyxOS:

* If microG is enabled and "Google device registration" is on (the default), your device will register once with the Google services, supplying random information to Google (it still submits device model information). This registration number is called "Android ID" in the microG settings interface. This is needed for things like push notifications in most apps to work.
* If microG is additionally configured with a Google account, then the device registration will include the account username.
* Currently, the only way to reset the GSF ID is to clear the application data for microG. Doing so may cause problems with any apps that rely on microG implementation of Google Play Services (for example, you will no longer receive Signal message notifications until you also reset Signal's app data).

### Wi-Fi MAC Address

Scope: per-network

Every Android device has a unique identifier called a MAC address that is used for routing on the local network. Unlike an IP address, when your device contacts a remote server, the MAC address is not communicated over the internet.

However, observers on the local network can, and sometimes do, use a MAC address to identify you and track you. The MAC address is communicated to a network before encryption is established, meaning anyone on the network can see your unique MAC address. For example, if you walk into a store with an open WiFi, your device might communicate the MAC address to the WiFi access point, and to everyone on the network, that in turn correlates this data with an external database to track your location.

Historically, the MAC address has been unchangeable and based on hardware. Since Android 10, the default WiFi setting is for the MAC address to be generated anew for each different network. There is still a single unchangeable "Device MAC Address", but each WiFi network is given a persistent, randomized fake MAC address.

Since Android 12, Android will [sometimes re-randomize](https://source.android.com/devices/tech/connect/wifi-mac-randomization-behavior) the MAC address each time it connects to a network, in certain conditions.

Internal to the device, access to the MAC address is restricted to system applications.

To change the settings for a specific WiFi network go to **Settings** &rarr; **Network & Internet** &rarr; **Wi-Fi** &rarr; **Gear Icon** &rarr; **Advanced** &rarr; **Privacy** &rarr; **Use Randomized MAC**.

### Bluetooth Address

Scope: per-hour

Like Wi-Fi, your device has a globally unique Bluetooth address. Since Android 6, [this address is unavailable to normal apps](https://developer.android.com/about/versions/marshmallow/android-6.0-changes.html#behavior-hardware-id).

When Bluetooth is enabled, there is something called Bluetooth Low Energy (BLE) where an unencrypted presence announcement is broadcast frequently to all nearby Bluetooth devices. Fortunately, when this happens [the Bluetooth address of your device is randomized](https://www.bluetooth.com/blog/bluetooth-technology-protecting-your-privacy/) (every 15-45 minutes in Android) to prevent it from being possible to track your device by these announcements (this does not happen in all Bluetooth implementations, but should for any device supported by CalyxOS).

However, [researchers have found a way to correlate these randomized announcements over time](https://nakedsecurity.sophos.com/2019/07/16/bluetooth-les-anti-tracking-technology-beaten/), thus enabling tracking via Bluetooth address. Their approach only works against Windows, Mac, and iOS, but not for tracking Android devices.

Additional privacy considerations with Bluetooth:

* **Location**: When an app has access to scan for nearby Bluetooth devices, the [Android OS considers this to be the same as granting fine-grained location permission](https://developer.android.com/guide/topics/connectivity/bluetooth/permissions), because the set of Bluetooth devices in range can be used to lookup your exact location in a database (such as the database Google keeps on the location on known Bluetooth devices). There is a mode where an app can scan for Bluetooth devices, but receive only a partial list if the app does not also have location permission.
* **Pairing**: When you pair a Bluetooth device with your phone, that device has access to your unique and static Bluetooth address.
* **Updates**: Bluetooth is a complicated protocol that is notoriously [prone to vulnerabilities](https://www.securityweek.com/critical-bluetooth-vulnerability-exposes-android-devices-attacks) that can compromise the security of your device. This is one of the many reasons that it is important to choose an operating system, like CalyxOS, that receives regular [[security updates => updates]].

Links
-------------------------------

* [Are iPhones Really Better for Privacy? Comparative Study of iOS and Android Apps](https://arxiv.org/pdf/2109.13722.pdf) ([article about the paper](https://www.tomsguide.com/news/ios-android-app-privacy-parity))
* [Android Mobile OS Snooping By Samsung, Xiaomi, Huawei and Realme Handsets](https://www.scss.tcd.ie/Doug.Leith/Android_privacy_report.pdf) ([article about the paper](https://www.bleepingcomputer.com/news/security/study-reveals-android-phones-constantly-snoop-on-their-users/))
* [Non-resettable device IDs](https://developer.android.com/about/versions/10/privacy/changes#non-resettable-device-ids)
* [Best practices for unique identifier](https://developer.android.com/training/articles/user-data-ids)
* [Gotta Catch 'Em All: Understanding how IMSI-Catchers Exploit Cell Networks](https://www.eff.org/wp/gotta-catch-em-all-understanding-how-imsi-catchers-exploit-cell-networks)
* [What exactly is a GSF ID?](https://raccoon.onyxbits.de/blog/what-exactly-is-a-gsf-id-where-do-i-get-it-from-and-why-should-i-care-2-12/)