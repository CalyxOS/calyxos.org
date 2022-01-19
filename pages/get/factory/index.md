---
title: CalyxOS factory images
---

{% for release in site.data.downloads.releases %}
<h3>{{ release | capitalize }}</h3>
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th><a href="{{ '/get/verify' | relative_url }}">Signature</a></th><th>SHA256</th></tr>
{% for device in site.data.downloads[release] %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.factory_link}}">Download</a></td>
    <td><a href="{{device.factory_link | append: '.minisig' }}">Signature</a></td>
    <td class="hash">{{device.factory_sha256}}</td>
  </tr>
{% endfor %}
</table>
{% endfor %}
