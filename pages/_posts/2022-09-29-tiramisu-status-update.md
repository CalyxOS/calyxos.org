---
title: Android 13 - Tiramisu status update
date: 2022-09-29
---

CalyxOS 4.1 - Android 13 has been available for testing and then later beta (for some devices) since September 15

## Current status
### General
* All features from Android 12 have been ported, and are mostly work well
* There are some UI bugs as the Launcher All apps page, but otherwise it's all there

### Next steps
* We hope to release it as stable soon as possible for most devices.
* For the devices having issues, we're working on figuring out fixes for them, and will make new builds available for those ASAP.

### Device Specific
#### Pixel 6a - 4.1.6
* Testing, given that the fingerprint reader is broken on upgrades. Fresh installs are fine, and thus factory images are available.

#### Pixel 6, 6 Pro - 4.1.6
* Beta, everything is fine for the most part
* There's a UWB crashing on the Pixel 6 Pro under investigation

#### Pixel 5, 4a (5G), 5a - 4.1.6
* Beta, everything is fine for the most part

#### Pixel 4a - 4.1.8
* Beta, everything is fine for the most part

#### Pixel 4, 4 XL - 4.1.6
* Beta, everything is fine for the most part

#### Pixel 3, 3 XL, 3a, 3a XL - 4.1.3
* Testing, LTE is broken, fine otherwise.

#### FP4 - 4.1.7
* Testing, everything is fine for the most part
* Some users are unable to boot the device after upgrading to 13. In that case it just falls back to Android 12 with your data kept intact. Investigating, but it's a bit hard to debug since it doesn't happen for everyone, only some.

## Steps
### Beta: OTA upgrades, from your existing CalyxOS install
1. Make sure your phone is running the latest stable CalyxOS 3.9.0. If you're on the previous test Tiramisu build, you can skip this step.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Settings -> System -> System update settings -> Release channel -> Beta
5. Then, tap the "Check for updates" button.

### Testing: OTA upgrades, from your existing CalyxOS install
1. Make sure your phone is running the latest stable CalyxOS 3.9.0 - Factory images will be available later. If you're on the previous test Tiramisu build, you can skip this step.
2. Go through the Known issues list above, and make sure you're ok with that
3. Backup your data - you can use SeedVault, the included Backup app.
4. Enable USB Debugging on your phone.
5. From your computer: `adb shell setprop sys.update.channel thirteen`
6. Then, on your phone: Settings -> System -> System update settings -> Check for updates

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
