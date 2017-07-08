---
title: Using an API like a developer
permalink: /likeadeveloper.html
sidebar: docapis
path1: /likeadeveloper.html
---

<ul class="onPageMinitoc">
{% assign doclist = site.docs | where: "section", "likeadeveloper" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
