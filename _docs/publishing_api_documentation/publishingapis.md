---
title: Publishing APIs
permalink: publishingapis.html
sidebar: docapis
path1: /publishingapis.html
---

<ul class="onPageMinitoc">
{% assign doclist = site.docs | where: "section", "publishingapis" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
