---
title: Getting a job in API documentation
permalink: /jobapis.html
sidebar: docapis
path1: /jobapis.html
---

<ul class="onPageMinitoc">
{% assign doclist = site.docs | where: "section", "otherapis" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
