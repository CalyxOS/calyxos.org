---
title: Location Privacy
description: How location works with CalyxOS
toc: true
---

NOTE: This page is a work in progress.

Your mobile device is designed to track your location at all times. Because our location and the pattern of our movements can reveal a considerable amount of personal information about us, mobile devices have dramatically eroded our right to privacy.

This guide will help you develop a mental model of how cell phone location tracking works, and various steps you can take to reduce or eliminate this tracking.

How your phone gathers location information
---------------------------------------------------

### Global Positioning System (GPS)

GPS is a network of satellites maintained by the US government. By reading signals from multiple GPS satellites, your device is able to calculate it's global position with a high degree of accuracy.

These satellites do not record anything about your device, so GPS itself has a high degree of privacy. It is what your device then does with the GPS information that can be a problem.

### Network Signals

Because GPS can be a drain on the battery or unavailable, especially when indoors, stock Android device use Google servers to estimate your location using other methods.

This include:

* Carrier Networks: what cell phone tower you are connected to and the signal strength of other cell phone towers nearby.
* WiFi Networks: the unique identifiers of WiFi networks near by.
* Bluetooth Beacons: the unique identifier of bluetooth devices near by.

The way it works is this: your device submits to Google your IP address, the nearbye bluetooth and Wi-Fi network information, and cell phone tower signal strength. Google then returns with an estimate of where it thinks you probably are.

### Google Servers

A stock Android device uses Google services for a variety of location functionality:

* Google Location History: Keep a history of your location, possible forever.
* Google Location Accuracy: Use methods other than GPS to estimate your location.
* WiFi and Bluetooth Scanning: Use WiFi and Bluetooth information for Google Location Accuracy even when WiFi or Bluetooth are turned off.

All of these can be disabled, although it can be confusing to do so and many apps insist on these being turned on (for example, Google Maps will not work without Google Location Accuracy enabled).

Even in airplane mode, your device will still record location using whatever methods are available and then upload this history to Google when you are next back online.

In CalyxOS, location services are handled by alternative providers instead of Google, even if you have a Google account configured with microG.

### Mozilla Location Service (MLS)

[Mozilla Location Service](https://location.services.mozilla.com/) is an alternative to Google Location Accuracy and is enabled by default in CalyxOS. Mozilla gathers and stores your IP Address, cell phone tower information, and WiFi network information. Unlike when using Google location services, Mozilla does not get any perminant identifiers or information tied to your identity.

### Déjà Vu Location Service

To be written.

Strategies for increasing location privacy
--------------------------------------------------

See [Mobile Phones: Location Tracking](https://ssd.eff.org/en/playlist/privacy-breakdown-mobile-phones#mobile-phones-location-tracking) for more information.

### Airplane Mode

Airplane mode will turn off most radios in your device (carrier signal, Bluetooth, Wi-Fi) but not NFC or GPS..

There are a few limitations with airplane mode.

#### Baseband processor

There is a small mini computer inside your device that is called the baseband processor that manages all the radios. Unfortunately, the operating system for this baseband processor is proprietary and is something of a black box. Even with CalyxOS, we don't know exactly what the baseband processor is doing.

There are some reports that some devices will continue to report the IMSI and IMEI identifiers to carrier towers even when the device is in airplane mode. This is specific to the hardware, and not something that CalyxOS can modify. We have not yet done testing on the various devices that CalyxOS supports to identify the specific behavior of each model.

#### GPS

Even when in Airplane Mode, your device will still **receive** signals from the GPS sattelites unless "Location" is specifically turned off.

An app on your device might then keep track of your fine grain movements and then upload this history once you are back online. This is what stock Android does if location history is enabled. If you want location privacy, you should both turn on "Airplane Mode" and turn off "Location".

#### NFC

Your phone includes NFC (Near-field Communication) in order to facilitate things like contactless payments. The range of NFC is very short, intended to be less than 4 cm.

However, it is theoretically possible to build a door that can read unique NFC information when you pass through it, although there are no known products like this yet. You are probably safe leaving NFC on, but for full location privacy, you might consider also disabling NFC.

### Fake Traveler

There is an app in F-droid called [Fake Traveler](https://f-droid.org/packages/cl.coders.faketraveler/). This allows you to set an arbitrary location for testing purposes.

Unfortunately, apps are able to detect that this location is not real, and many applications will ignore the mocked location.

### Wi-Fi hotspot

Wi-Fi hotspots in CalyxOS use non-stable randomized BSSIDs, meaning their MAC address. However, their SSIDs, meaning their name, uses a stable randomized name, and may be replaced with your device name if you set it to something else.
This name will usually be `AndroidAP_` followed by random characters. Therefore, it may be possible to track your location long-term using its SSID. It is recommended to not add personally identifiable info to your hotspot name, as well as use a secure password and protocol.


