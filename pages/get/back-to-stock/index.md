---
title: Back to Stock Android
---

If you would like to re-install stock Android, you can follow the below steps.

Google provides a web installer for the Pixels, which means that you can directly install the stock OS from a web browser (even from another phone!) without having to install anything. Simply click on the correct link for your device.

<br />

<h2 class="mt-3">Android Flash Tool</h2>
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th></tr>
{% for device in site.data.back-to-stock %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.flash_link}}">Flash</a></td>
  </tr>
{% endfor %}
</table>