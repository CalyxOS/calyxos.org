---
title: Download
---

The current CalyxOS release is version `{{ site.data.downloads.version }}`. Follow the download link for your device:

<table class="table table-striped">
  <tr><th>Device</th><th>SHA256</th></tr>
{% for device in site.data.downloads.devices %}
  <tr><td><a href="{{device.link}}">{{device.name}} ({{device.codename}})</a></td><td><a href="{{device.link}}">{{device.sha256}}</a></td></tr>
{% endfor %}
</table>

Further down the road, we are trying to get CalyxOS running on lower-cost phones in order to bring it within reach of many more people, since the Google Pixel phones are both fairly expensive and difficult to obtain in many countries.

If you want to try CalyxOS at this time the first thing you have to do is get one of our supported phones and then follow these installation directions

