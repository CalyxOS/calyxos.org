---
title: Feature update
date: 2023-06-02
---

CalyxOS 4.9.4 - Feature update is now available for the Pixels, Fairphone 4, and SHIFT6mq

Released to Stable on Monday, June 5.

### Status of June Security update

* Security updates are generally released by Google on the first Monday of every month, around 1200 Pacific Time (1900 UTC). It also then takes a few hours for them to release all of the updated source code.
* As Monday, June 5, 1700 UTC (time of writing this update), Google is yet to release the securtiy update. We're waiting for them to release it, and as soon as it's out we'll start working on it.
* We usually aim to release "Feature updates" around the middle of the month but this one got delayed.

### Changelog
* CalyxOS 4.9.4
* Feature update
* Restrict USB improvements
* AGPS: Allow controlling XTRA / PSDS location info download through the existing "Assisted GPS" toggle in Settings
* Camera app: Bugfixes and improvements
* Clock app: Redesign digital clock widget
* Work profile: Improve creation flow for new work profile
* Chromium: 113.0.5672.131 (114 coming soon)

#### Pixel 6 - 7a
* GPS: Big performance improvements by adding configuration for PSDS servers, can disable through the existing "Assisted GPS" toggle in Settings.

#### Pixel 3 - 5, FP4, SHIFT6MQ
* Prevent qualcomm's xtra-daemon from accessing the serial number

### Note

{% include install/security_notes.html %}
