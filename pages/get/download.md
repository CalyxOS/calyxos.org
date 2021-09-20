---
title: Download CalyxOS
date_from: _data/downloads.yml
---

Options for verifying these firmware images:

* **Skip it:** This is what most people do and there is no shame in that!
* **Verify Digest:** To verify the *SHA256* digest, run the command `sha256sum FILENAME_OF_DOWNLOAD` and compare the result with the value in the table below.
* **Verify Signature:** For highest level of confidence, you can [[verify the that the image is signed correctly => verify]].


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

Next, see the [[installation instructions => install]].

{% include_relative _security_notes.html %}
