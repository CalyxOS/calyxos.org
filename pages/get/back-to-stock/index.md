---
title: Back to Stock Android
---

If you would like to re-install stock Android, you can follow the below steps.

There are two options:
1. Use the [web installer](#web-installer), only for Pixels.
2. Flash the [factory image](#factory-images) manually, works for both Pixels and A2

<br />

## Web Installer

Google provides a [web installer](https://source.android.com/setup/contribute/flash) for the Pixels, which means that you can directly install the stock OS from a web browser (even from another phone!) without having to install anything. Simply click on the correct link for your device.
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th></tr>
{% for device in site.data.back-to-stock %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.flash_link}}">Flash</a></td>
  </tr>
{% endfor %}
  <tr>
    <td>Xiaomi Mi A2 (jasmine_sprout)</td>
    <td>Unavailable</td>
  </tr>
</table>

<br />

## Factory images

These are the latest stock factory images for your device. You can download and install them [manually](https://developers.google.com/android/images#instructions).
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.back-to-stock %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.factory_link}}">Download</a></td>
    <td class="hash">{{device.factory_sha256}}</td>
  </tr>
{% endfor %}
  <tr>
    <td>Xiaomi Mi A2 (jasmine_sprout)</td>
    <td><a href="https://bigota.d.miui.com/V11.0.26.0.QDIMIXM/jasmine_global_images_V11.0.26.0.QDIMIXM_20210519.0000.00_10.0_fb2e24b6d2.tgz">Download</a></td>
    <td class="hash">870c78d40a94849ac8d4cf903bcf3e4491b35d11d85ee69c808970f544f9ade8</td>
  </tr>
</table>

These links are for the latest stock version. For previous versions and installation instructions, you can visit <https://developers.google.com/android/images>

<!-- For A2: https://xiaomifirmwareupdater.com/archive/miui/jasmine/ -->