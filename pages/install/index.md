---
title: Install CalyxOS
nav_title: Install
description: 🥳 You're amazing! Follow the instructions below to install CalyxOS!
redirect_from:
  - /get
  - /get/install
  - /install/devices
---

## Install with the Web Installer

The [CalyxOS Web Installer](https://install.calyxos.org) guides you through the entire installation process in simple clicks. If you are using Pixel phones (Pixel 6 + later models) or certain Motorola phones, we highly recommend that you use the Web Installer to ease your installation process. You can find your device in the following table. If the Web Installer is available for your device, you will have the option to use it directly. 

**⚠️ Note:** Web Installer is a browser installation tool and requires WebUSB access. To ensure successful installation, avoid browsers that do not allow WebUSB access, such as Firefox and Safari.

## Choose your device model

Which device do you want to install CalyxOS on? If you don’t see your device here, check out the [[device-support]] page for complete information.

**⚠️ Note:** Pixel phones from mobile carrier Verizon in the United States are not able to install CalyxOS due to bootloader unlocking prohibitions. Read [[how to identify a Verizon phone => verizon]] to learn more.

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
<td>{{device.codename}}</td>
<td>{{device.version}}</td>
{% if device.antirollback_update_pending %}
<td>TBD</td>
{% else %}
<td>{{device.date}}</td>
{% endif %}
</tr>
{% endfor %}
</table>

## Security Notes

{% include install/security_notes.html %}
