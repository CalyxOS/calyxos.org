---
title: Download Firmware
nav_title: Download
---

To download the CalyxOS firmware, follow the link for your device name. Unless you are absolutely certain you know what you are doing, choose the **stable** release version. Next, see the [[installation instructions => install]].

Optional: To verify the *SHA256* digest, run the command `sha256sum FILENAME_OF_DOWNLOAD` and compare the result with the value in the table below.

{% for release in site.data.downloads.releases %}
<h3>{{ release | capitalize }}</h3>
<table class="table table-striped">
  <tr><th>Device</th><th>Release Date</th><th>SHA256</th></tr>
{% for device in site.data.downloads[release] %}
  <tr>
    <td><a href="{{device.link}}">{{device.name}} ({{device.codename}})</a></td>
    <td><a href="{{device.link}}">{{device.date}}</a></td>
    <td><a href="{{device.link}}">{{device.sha256}}</a></td>
  </tr>
{% endfor %}
</table>
{% endfor %}

