---
title: Private Browsing
---

{% assign show_list = "org.calyxinstitute.vpn com.duckduckgo.mobile.android se.leap.riseupvpn org.torproject.torbrowser" | split: " " %}
{% for app_id in show_list %}
{% assign app = site.data.apps[app_id] %}
<div class="mb-4">
<h2>{{app.name}}</h2>
<p><b>{{app.summary}}</b></p>
{{app.desc}}
<a class="more" href="{{app.web}}">Read More</a>
</div>
{% endfor %}
