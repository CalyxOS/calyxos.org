---
title: Factory image archive
date: 2025-08-05
---

{% include images_warning.html %}

## Factory image links

### Google Pixel devices
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.downloads["factory"] %}
{% if device.brand == "pixel" %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.factory_link}}">Download</a></td>
    <td class="hash">{{device.factory_sha256}}</td>
  </tr>
{% endif %}
{% endfor %}
</table>

### Fairphone and Motorola devices

{% include arb_warning.html %}

<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.downloads["factory"] %}
{% if device.brand != "pixel" %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.factory_link}}">Download</a> ⚠️</td>
    <td class="hash">{{device.factory_sha256}}</td>
  </tr>
{% endif %}
{% endfor %}
</table>
