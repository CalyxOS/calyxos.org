---
title: Android 12, Pixel 6
date: 2022-01-08
---

CalyxOS 3.0.0 - Android 12 is finally here, for Pixel 3 and above.

Pixel 6 and 6 Pro builds are available as well.

Thank you for your patience!

They're in testing now, stable release will follow next week if there are no major issues reported.

## Testers channel

We created a new testers channel for those who're interested in helping us test out the builds early.

| Name | Matrix (Primary) | Telegram (Bridge) |
| ---- | ------ | -------- |
| CalyxOS Testers | [#calyxos-testers:matrix.org](https://app.element.io/#/room/#calyxos-testers:matrix.org) | [CalyxOSTesters](https://t.me/CalyxOSTesters) |

## Pixel 3, 3 XL, 3a, 3a XL, 4, 4 XL, 4a, 5, 4a (5g), 5a (5g)

* The builds are now available for testing.
* After receiving feedback from the tests, we will bump them to beta, and then finally, stable.
* Once they're in beta they can be installed from the phone directly.

### Steps
* Backup data on your phone using Seedvault Backup, as a precautionary measure.
* All of your data will be kept intact, but better be safe than sorry.
* From a computer with `adb` setup, run:
  `adb shell setprop sys.update.channel twelve`
* Then, on the phone, go to Settings -> System -> System update settings
  and tap on "Check for updates"
* The update should begin downloading and installing.
* Kindly report any issues on the new Testers channel mentioned above.

## Pixel 6, 6 Pro (Beta)

* Follow the below links for an install guide.
* Kindly report any issues on the new Testers channel mentioned above.

<table class="table table-striped download">
<tr>
<th>Device</th>
<th>Codename</th>
<th>Beta CalyxOS Release</th>
</tr>
{% for device in site.data.downloads["twelve"] %}
<tr>
<td><a href="{{ '/install/devices/' | append: device.codename | relative_url }}">{{device.name}}</a></td>
<td><a href="{{ '/install/devices/' | append: device.codename | relative_url }}">{{device.codename}}</a></td>
<td><a href="{{ '/install/devices/' | append: device.codename | relative_url }}">{{device.date}}</a></td>
</tr>
{% endfor %}
</table>

## More info

These builds are currently on the December security patch, however we're already working on the January patch
and will have it out shortly, likely by the time the builds are ready for stable.

We're still looking into trying to port 12 to the Pixel 2 and Mi A2.
We will be releasing the January Android 11 security update for them soon either way.

We will also be starting to look at potentially support other devices this month - we've always
wanted to support more and more devices, stay tuned for updates!
