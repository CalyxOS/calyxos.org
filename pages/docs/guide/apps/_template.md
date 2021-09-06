---
title: {{ name }}
description: {{ summary }}
icon: {{ iconUrl }}
autolink: true
---

<div class="button-bar" markdown="0">
{% unless webSite == '' -%}
<a class="btn" href="{{ webSite }}">Home Page</a>
{% endunless -%}
{% unless source == '' -%}
<a class="btn" href="{{ sourceCode }}">Source Code</a>
{% endunless -%}
{% unless donate == '' -%}
<a class="btn" href="{{ donate }}">Donate</a>
{% endunless -%}
{% unless tracker == '' -%}
<a class="btn" href="{{ issueTracker }}">Report a Bug</a>
{% endunless -%}
</div>

{{description}}
