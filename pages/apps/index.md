---
title: Apps
---

<p class="emoji">💬</p>
<h2 id="communications">Communications</h2>

{% assign show_list = "org.thoughtcrime.securesms org.briarproject.briar.android com.fsck.k9 eu.siacs.conversations" | split: " " %}
{% for app_id in show_list %}
{% assign app = site.data.apps[app_id] %}
<div class="mb-4">
<img src="/assets/images/apps/{{app.icon}}"/>
<h3>{{app.name}}</h3>
<p><b>{{app.summary}}</b></p>
<a class="more" href="{{app.web}}">Read More</a>
</div>
{% endfor %}

<p class="emoji">🌍</p>
<h2 id="internet">Internet</h2>

{% assign show_list = "org.torproject.torbrowser com.duckduckgo.mobile.android org.calyxinstitute.vpn se.leap.riseupvpn org.openobservatory.ooniprobe org.torproject.android" | split: " " %}
{% for app_id in show_list %}
{% assign app = site.data.apps[app_id] %}
<div class="mb-4">
<img src="/assets/images/apps/{{app.icon}}"/>
<h3>{{app.name}}</h3>
<p><b>{{app.summary}}</b></p>
<a class="more" href="{{app.web}}">Read More</a>
</div>
{% endfor %}

<p class="emoji">🗂</p>
<h2 id="productivity">Productivity</h2>

{% assign show_list = "com.aurora.store at.bitfire.davdroid org.dmfs.tasks com.artifex.mupdf.viewer.app org.secuso.privacyfriendlyweather com.jarsilio.android.scrambledeggsif info.guardianproject.locationprivacy" | split: " " %}
{% for app_id in show_list %}
{% assign app = site.data.apps[app_id] %}
<div class="mb-4">
<img src="/assets/images/apps/{{app.icon}}"/>
<h3>{{app.name}}</h3>
<p><b>{{app.summary}}</b></p>
<a class="more" href="{{app.web}}">Read More</a>
</div>
{% endfor %}

<p class="emoji">🔐</p>
<h2 id="security">Security</h2>

{% assign show_list = "com.yubico.yubioath org.sufficientlysecure.keychain" | split: " " %}
{% for app_id in show_list %}
{% assign app = site.data.apps[app_id] %}
<div class="mb-4">
<img src="/assets/images/apps/{{app.icon}}"/>
<h3>{{app.name}}</h3>
<p><b>{{app.summary}}</b></p>
<a class="more" href="{{app.web}}">Read More</a>
</div>
{% endfor %}