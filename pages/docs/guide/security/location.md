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

The way it works is this: your device submits to Google your IP address, the nearby bluetooth and Wi-Fi network information, and cell phone tower signal strength. Google then returns with an estimate of where it thinks you probably are.

### Google Servers

A stock Android device uses Google services for a variety of location functionality:

* Google Location History: Keep a history of your location, possible forever.
* Google Location Accuracy: Use methods other than GPS to estimate your location.
* WiFi and Bluetooth Scanning: Use WiFi and Bluetooth information for Google Location Accuracy even when WiFi or Bluetooth are turned off.

All of these can be disabled, although it can be confusing to do so and many apps insist on these being turned on (for example, Google Maps will not work without Google Location Accuracy enabled).

Even in airplane mode, your device will still record location using whatever methods are available and then upload this history to Google when you are next back online.

In CalyxOS, location services are handled by alternative providers instead of Google, even if you have a Google account configured with microG.

### Positon

Positon is one of the online location services available for use in CalyxOS. It provides commercial levels of quality, therefore has higher availability and accuracy, but isn't an open database. Their privacy policy can be found [here.](https://positon.xyz/docs/privacy/)

### BeaconDB

BeaconDB is one of the online location services available for use in CalyxOS. It doesn't yet have [as much data](https://beacondb.net/map) as Positon, but is an open database. It is possible to contribute to BeaconDB, for more details and their privacy policy, check their [website.](https://beacondb.net/)

### microG Remember from GPS

microG's Remember from GPS option builds a local database of known APs and their location, this is used for obtaining a location when GPS isn't available, like when there isn't a line of sight to the sky. All data stays in your device.

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

Even when in Airplane Mode, your device will still **receive** signals from the GPS satellites unless "Location" is specifically turned off.

An app on your device might then keep track of your fine grain movements and then upload this history once you are back online. This is what stock Android does if location history is enabled. If you want location privacy, you should both turn on "Airplane Mode" and turn off "Location".

#### NFC

Your phone includes NFC (Near-field Communication) in order to facilitate things like contactless payments. The range of NFC is very short, intended to be less than 4 cm.

However, it is theoretically possible to build a door that can read unique NFC information when you pass through it, although there are no known products like this yet. You are probably safe leaving NFC on, but for full location privacy, you might consider also disabling NFC.

### Exif metadata

Your photos and videos contain metadata in the form of [Exif tags](https://en.wikipedia.org/wiki/Exif), composed of info such as device model, the date and time the media was captured, and more. Depending on your settings, this metadata may also include location information.

In most Android-based operating systems, when you allow the camera app to add location tags, apps with access to media are capable of recreating your location history from the media available. To remedy this, users must either be selective about which apps can access media or turn off location tagging entirely. When location tagging has been used, it's particularly important to use tools like Scrambled Exif to remove this metadata when sharing media.

In CalyxOS, location metadata is redacted by default, unless the involved apps are granted special permissions.

#### Strict location redaction

CalyxOS broadens Android's existing media location redaction endeavors considerably to prevent unexpected leaks.
Before third-party apps can access this data in CalyxOS, they must be granted permission to manage media or to manage all of the device's files. These special permissions can be managed in Settings > Apps > Special app access.

Although this strict system-wide location redaction is the default behavior, it is optional, and in some situations, you may want to turn it off. For example, if you regularly share photos and would like the location data to be visible to others, you may prefer to turn this off and use a tool like Scrambled Exif when you need it, instead. (Please note that we are working to [improve this use case](https://gitlab.com/CalyxOS/calyxos/-/issues/2522).) It's also possible that your preferred media gallery app was not designed to support the required special permissions, in which case you would need to turn this feature off in order to view location data in media.

You can control this feature using the toggle in Settings > Security & privacy > More security & privacy > Redact location data when sharing media.

### Wi-Fi hotspot

Wi-Fi hotspots in Android usually advertise non-stable randomized BSSIDs (MAC addresses). However, their SSIDs (their name) use a *stable* randomized name, therefore, someone who knows your hotspot name may be able to identify your location long-term.

This name will usually be `AndroidAP_` followed by 4 random numbers. You may want to change it every once in a while. It is recommended to not add personally identifiable info to your hotspot name, as well as use a secure password and protocol.

Location services may or not collect/store your hotspot's network, these networks move, and as such are not actually useful to the purpose of location services, and they can be detected via SSID, as "AndroidAP", "iPhone", "Galaxy" are easy to exclude. Appending `_nomap` to the SSID may help explicitly exclude them, if the location service/collecting devices respect that, but would also make your network stand out.

Note: changing your device name in Settings > About this device may overwrite the hotspot name to it, potentially leaking personally identifiable info.