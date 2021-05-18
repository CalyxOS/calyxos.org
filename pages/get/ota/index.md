---
title: CalyxOS OTA updates
---

These are the OTA updates that are usually delivered directly to your device.

If you're installing CalyxOS for the first time, you should [[get the factory image instead => get]]

Optional: To verify the *SHA256* digest, run the command `sha256sum FILENAME_OF_DOWNLOAD` and compare the result with the value in the table below.

<br />

## Full OTA updates

{% for release in site.data.downloads.releases %}
<h3 class="mt-3">{{ release | capitalize }}</h3>
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.downloads[release] %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.ota_link}}">Download</a></td>
    <td class="hash">{{device.ota_sha256}}</td>
  </tr>
{% endfor %}
</table>
{% endfor %}

## Incremental OTA updates

{% for release in site.data.downloads.releases %}
<h3 class="mt-3">{{ release | capitalize }}</h3>
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.downloads[release] %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.incremental_link}}">Download</a></td>
    <td class="hash">{{device.incremental_sha256}}</td>
  </tr>
{% endfor %}
</table>
{% endfor %}

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The <b>Pixels 4a (5G), 5, 4a, 4 XL, 4, 3a XL, 3a, 3 XL, 3</b> contain the full security patch, as they are still being updated by Google.</li>
<li>The <b>Pixels 2 and 2 XL</b> are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The <b>Xiaomi Mi A2</b> is still getting security updates, but those are Android 10 and usually released towards the end of the month, whereas CalyxOS is Android 11 and releases the updates right as they're available. This means that the A2 lags behind slightly, by a month or two, in getting security updates for proprietary components.</li>
</ul>
</div>