---
title: Install CalyxOS
nav_title: Install
description: 🥳 You're amazing! Follow the instructions below to install CalyxOS!
redirect_from:
  - /get/install
  - /install/devices
---

## Choose your device model

Which device do you want to install CalyxOS on? If you don't see your device here, see [[device-support]] for more information.

**Please note:** Pixel phones from Verizon (US mobile carrier) are not able to install CalyxOS. See [[how to identify a Verizon phone => verizon]] for more information.

<table class="table table-striped download">
<tr>
<th>Device</th>
<th>Codename</th>
<th>Latest CalyxOS version</th>
<th>Release date</th>
</tr>
{% for device in site.data.downloads["factory"] %}
<tr>
<td><a href="./devices/{{device.codename}}">{{device.name}}</a></td>
<td><a href="./devices/{{device.codename}}">{{device.codename}}</a></td>
{% if device.version == "0.0.0" %}
<td>Temporarily removed</td>
{% else %}
<td><a href="./devices/{{device.codename}}">{{device.version}}</a></td>
{% endif %}
<td><a href="./devices/{{device.codename}}">{{device.date}}</a></td>
</tr>
{% endfor %}
</table>

## Security Notes

{% include install/security_notes.html %}
