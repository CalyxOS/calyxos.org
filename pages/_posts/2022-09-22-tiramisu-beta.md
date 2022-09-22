---
title: Tiramisu Beta - Android 13
date: 2022-09-21
---

CalyxOS 4.1 - Android 13 is now available as a beta release for some devices.

## Device status
### Available as beta now
* Pixel 4, 4 XL, 4a
* Pixel 5, 4a (5G), 5a
* Pixel 6, 6 Pro

### Pending
#### Pixel 6a
* Fingerprint not working on upgrades from 12. Fresh installs of 13 are ok.

#### Pixel 3, 3 XL, 3a, 3a XL
* LTE is broken. It is under investigation.

#### FP4
* Test builds pending, work in progress.

## Changelog
* CalyxOS 4.1 - Android 13 - Tiramisu
* September Security update (2022-09-05)
* Initial Android 13 release
* Google has brought lots of new features to Android in this release. Some of them are:
* Foreground Services (FGS) Task Manager - accessible from the status bar, to stop apps that have ongoing services.
* Share only the photos and videos you choose with certain apps; not your full library.
* To protect the information on your clipboard, you’ll get an alert when an app accesses it and your clipboard history will be cleared after a period of time to prevent unwanted access.
* Android 13 comes with a new media player that puts album artwork on full display and features a dancing playback bar.
* Assign different language settings to individual apps, so you can move fluidly between languages on your device, just like in real life.
* You're in control of which apps can send you notifications—helping you limit distractions.

## Known issues
* Network traffic monitor (in the status bar) is missing, will be available in an upcoming build
* Launcher All apps screen is slightly cut off at the top, work in progress.

## Steps
### OTA upgrades, from your existing CalyxOS install
1. Make sure your phone is running the latest stable CalyxOS 3.9.0. If you're on the previous test Tiramisu build, you can skip this step.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Settings -> System -> System update settings -> Release channel -> Beta
5. Then, tap the "Check for updates" button.

### Fresh installs, factory images
1. Download the factory images from the links below.
2. Please follow the installation instructions at [[install]], but use the latest factory image you just downloaded instead of the one linked on that page.

#### Downloads

<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th><a href="{{ '/get/verify' | relative_url }}">Signature</a></th><th>SHA256</th></tr>
{% for device in site.data.downloads["beta"] %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.factory_link}}">Download</a></td>
    <td><a href="{{device.factory_link | append: '.minisig' }}">Signature</a></td>
    <td class="hash">{{device.factory_sha256}}</td>
  </tr>
{% endfor %}
</table>
