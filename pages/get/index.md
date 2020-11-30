---
title: Get CalyxOS
---

To download the <strong>Calyx<span>OS</span></strong> firmware, follow the link for your device name. Unless you are absolutely certain you know what you are doing, choose the **stable** release version. Next, see the [[installation instructions => install]].

Optional: To verify the *SHA256* digest, run the command `sha256sum FILENAME_OF_DOWNLOAD` and compare the result with the value in the table below.

{% for release in site.data.downloads.releases %}
<h2 class="mt-3">{{ release | capitalize }}</h2>
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.downloads[release] %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.link}}">{{device.link}}</a></td>
    <td class="hash">{{device.sha256}}</td>
  </tr>
{% endfor %}
</table>
{% endfor %}

