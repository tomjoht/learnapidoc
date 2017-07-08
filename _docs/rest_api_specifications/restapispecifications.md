---
title: REST API specifications
permalink: restapispecifications.html
sidebar: docapis
path1: /restapispecifications.html
---

<ul class="onPageMinitoc">
{% assign doclist = site.docs | where: "section", "restapispecifications" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
