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

Which device do you want to install CalyxOS on? If you don’t see your device here, check out the [[device-support]] page for complete information.

**Please note:** Pixel phones from mobile carrier Verizon in the United States are not able to install CalyxOS due to bootloader unlocking prohibitions. Read [[how to identify a Verizon phone => verizon]] to learn more.

<table class="table table-striped download">
<tr>
<th>Device</th>
<th>Codename</th>
<th>Latest CalyxOS version</th>
<th>Release date</th>
</tr>
{% for device in site.data.downloads["factory"] %}
<tr>
{% if site.data.devices[device.codename].link != nil %}
{%   assign link = site.data.devices[device.codename].link %}
{%   assign arb_link = site.data.devices[device.codename].link %}
{% else %}
{%   assign arb_link = site.data.downloads["antirollback_update_pending_link"] %}
{%   if device.antirollback_update_pending %}
{%     assign link = arb_link %}
{%   else %}
{%     capture link %}./devices/{{device.codename}}{% endcapture %}
{%   endif %}
{% endif %}
<td><a href="{{link}}">{{device.name}}</a></td>
<td><a href="{{link}}">{{device.codename}}</a></td>
{% if device.antirollback_update_pending %}
<td>unavailable</td>
<td>TBD</td>
{% else %}
<td><a href="{{link}}">{{device.version}}</a></td>
<td><a href="{{link}}">{{device.date}}</a></td>
{% endif %}
</tr>
{% endfor %}
</table>

## Security Notes

{% include install/security_notes.html %}
