---
title: Install CalyxOS
nav_title: Install
description: 🥳 You're amazing! Follow the instructions below to install CalyxOS!
redirect_from:
  - /get/install
  - /install/devices
---

## Try the new Web Installer

The new [CalyxOS Web Installer](https://install.calyxos.org) is here! This tool walks you through the entire installation process in simple clicks. If you are using Pixel 6 or later models of Pixels, we highly recommend that you use the Web Installer to ease your installation process.

**Please note:** Web Installer is a browser installation tool and requires WebUSB access. To ensure successful installation, avoid browsers that do not allow WebUSB access, such as Firefox and Safari.

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
<td></td>
{% else %}
<td><a href="./devices/{{device.codename}}">{{device.version}}</a></td>
<td><a href="./devices/{{device.codename}}">{{device.date}}</a></td>
{% endif %}
</tr>
{% endfor %}
</table>

## Security Notes

{% include install/security_notes.html %}
