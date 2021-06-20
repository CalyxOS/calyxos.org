---
title: Get CalyxOS
description: 😎 Are you ready to install CalyxOS?
nav_title: Get CalyxOS
---

### NEW

<div class="alert alert-info" markdown="0">
    <p>ℹ️ In the USA there are two variants of the Google Pixel phones: The Google unlocked version, and the Verizon one. The Verizon one is unfortunately locked in such a way (boot loader locked) that you cannot install another operating system on it. The only way to tell is to attempt to unlock the bootloader of the phone. If you can enable "OEM unlocking" then it's an unlocked version. If "OEM unlocking" is greyed out and not toggle-able then you have the Verizon version.</p>
</div>

### Step 1: Download CalyxOS

To download the <strong>Calyx<span>OS</span></strong> firmware, follow the link for your device name.

[[CalyxOS updates => system-updates]] are delivered over-the-air automatically, without any manual intervention needed. However, if you'd like to manually update your CalyxOS install, see [[OTA => ota]]

Optional: To verify the *SHA256* digest, run the command `sha256sum FILENAME_OF_DOWNLOAD` and compare the result with the value in the table below.

<br />

{% for release in site.data.downloads.releases %}
<h2 class="mt-3">{{ release | capitalize }}</h2>
<table class="table table-striped download">
  <tr><th>Device</th><th>Link</th><th>SHA256</th></tr>
{% for device in site.data.downloads[release] %}
  <tr>
    <td>{{device.name}} ({{device.codename}})</td>
    <td><a href="{{device.factory_link}}">Download</a></td>
    <td class="hash">{{device.factory_sha256}}</td>
  </tr>
{% endfor %}
</table>
{% endfor %}

### Step 2: Download the Flasher

{% include cli-flasher.html %}

### Step 3: Install CalyxOS

{% include cli-install.html %}

### OLD

Next, see the [[installation instructions => install]].

<div class="alert alert-info" markdown="0">
<h4>Security update notes</h4>
<ul>
<li>The <b>Pixels 4a (5G), 5, 4a, 4 XL, 4, 3a XL, 3a, 3 XL, 3</b> contain the full security patch, as they are still being updated by Google.</li>
<li>The <b>Pixels 2 and 2 XL</b> are not being updated by Google anymore, so they only contain the fixes to the open source components, such as the OS code and the Linux kernel. Proprietary components such as the bootloader, modem firmware, and other firmware no longer get updates.</li>
<li>The <b>Xiaomi Mi A2</b> is still getting security updates, but those are Android 10 and usually released towards the end of the month, whereas CalyxOS is Android 11 and releases the updates right as they're available. This means that the A2 lags behind slightly, by a month or two, in getting security updates for proprietary components.</li>
</ul>
</div>