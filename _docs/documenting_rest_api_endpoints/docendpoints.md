---
title: Document endpoints
permalink: /docendpoints.html
sidebar: docapis
path1: /docendpoints.html
---

<ul class="onPageMinitoc">
{% assign doclist = site.docs | where: "section", "docendpoints" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
