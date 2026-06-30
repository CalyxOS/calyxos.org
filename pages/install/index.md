---
title: Install CalyxOS
nav_title: Install
description: 🥳 You're amazing! Follow the instructions below to install CalyxOS!
redirect_from:
  - /get
  - /get/install
  - /install/devices
---

### Read before you install

* If you want to use the CalyxOS Web Installer, please note it is a browser installation tool and requires WebUSB access. Supported browsers for the Web Installer include Microsoft Edge, Chrome, Brave, and other Chromium-based browsers.
* CalyxOS is meant to be run with a locked bootloader after installation, which makes sure that the OS cannot be tampered without your knowledge. Please ensure you relock your bootloader after installation.
* Pixel phones from mobile carrier Verizon in the United States are not able to install CalyxOS due to bootloader unlocking prohibitions, please ensure your device is not from Verizon if purchased secondhand. Read [[how to identify a Verizon phone => verizon]] to learn more.
* Device flasher tool is not currently supported on MacOS - please use the Web Installer or another operating system to install CalyxOS on your device.
* Google's Factory reset protection (FRP): FRP must be disabled before flashing, i.e. you must not be signed into a Google account on your old OS before flashing 7.2.1.0. If FRP is enabled when you flash and relock your bootloader, you will not be able to turn OEM unlocking back on.


## Choose your device below

If you don’t see your device here, check out the [[device-support]] page for more information.

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
