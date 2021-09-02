---
title: {{name}}
description: {{summary}}
icon: {{ '/assets/images/apps/' | append: id | append: '.png'}}
---

<div class="button-bar" markdown="0">
{% unless web == '' -%}
<a class="btn" href="{{ web }}">Home Page</a>
{% endunless -%}
{% unless source == '' -%}
<a class="btn" href="{{ source }}">Source Code</a>
{% endunless -%}
{% unless donate == '' -%}
<a class="btn" href="{{ donate }}">Donate</a>
{% endunless -%}
{% unless tracker == '' -%}
<a class="btn" href="{{ tracker }}">Report a Bug</a>
{% endunless -%}
</div>

{{desc}}
