---
title: Introduction to REST APIs
permalink: /introtoapis.html
sidebar: docapis
path1: /introtoapis.html
---

<ul class="onPageMinitoc">
<li><a href="index.html">Course overview</a></li>
{% assign doclist = site.docs | where: "section", "introtoapis" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
