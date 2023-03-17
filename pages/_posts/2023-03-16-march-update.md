---
title: March update
date: 2023-03-16
---

CalyxOS 4.7.0 (and 4.7.1) - March 2023 Quarterly Platform Release and Security update is now available for the Pixels 3, 3a, 5 - 7, and the Fairphone 4

4.7.0 has been released to stable on 17 March, Friday.

4.7.1 for Pixel 6, 6 Pro and 6a is still on beta because of the known issue mentioned below.

## Changelog
* CalyxOS 4.7.0
* March 2023 Quarterly Platform Release and Security update
* Add assisted GPS toggle in Settings -> Location
* Remove sensitive info from SUPL requests
* Chromium: 111.0.5563.57
* Add detailed battery usage stats. Settings -> System -> Other options -> Battery stats.
* Recovery: Show CalyxOS version

### Pixel 6, 6 Pro, 6a
* CalyxOS 4.7.1
* Google hasn't released the March update for this device yet
* We're using the February beta proprietary files

#### Known issues:
* Video decoding / playback is broken across most apps.
* We're working on fixing it, till then you can follow this [temporary workaround](https://gitlab.com/CalyxOS/calyxos/-/issues/1541#note_1318355294).

### Fairphone 4
* Set rollback index to match latest stock.
* This should make new installs easier.

### Pixel 4, 4 XL
* A bug in Google's March update has delayed this, working on fixing it.
* We will release a build with the fix as soon as it's ready

### Note

{% include install/security_notes.html %}
