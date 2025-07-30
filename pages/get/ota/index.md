---
title: CalyxOS OTA updates
---
{% if true %}
OTA updates are currently unavailable.
{% else %}
These are the OTA updates that are usually delivered directly to your device.

<div class="alert alert-info" markdown="0">
Note: If you're installing CalyxOS for the first time, you should [[get the factory image instead => get]] and follow the factory image [[installation instructions => install]].
</div>

If you're running the "Previous build" mentioned in the table below, you can choose the [incremental OTA](#incremental-ota-updates), it is a much smaller file containing only the difference between that previous build and the latest.

Otherwise, you should choose the [full OTA update](#full-ota-updates), that can be used to update from any build.

Next, see the [[OTA installation instructions => ota-install]].

Optional: To verify the *SHA256* digest, run the command `sha256sum FILENAME_OF_DOWNLOAD` and compare the result with the value in the table below.

## Full OTA updates

{% for release in site.data.downloads.releases %}
{% if release != "factory" %}
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
{% endif %}
{% endfor %}

Next, see the [[OTA installation instructions => ota-install]].

## Incremental OTA updates

<h3 class="mt-3">Stable</h3>
<table class="table table-striped download">
  <tr><th>Device</th><th>Previous build</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.downloads["stable"] %}
{% if device.incremental_link and device.incremental_link != "" and device.incremental_link != nil %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td>{{device.incremental_old_build}}</td>
    <td><a href="{{device.incremental_link}}">Download</a></td>
    <td class="hash">{{device.incremental_sha256}}</td>
  </tr>
{% endif %}
{% endfor %}
</table>

Next, see the [[OTA installation instructions => ota-install]].

{% include install/security_notes.html %}
{% endif %}
