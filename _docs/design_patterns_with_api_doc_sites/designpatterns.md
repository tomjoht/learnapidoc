---
title: Design Patterns with API documentation sites
permalink: /designpatterns.html
sidebar: docapis
path1: /designpatterns.html
---

<ul class="onPageMinitoc">

<ul>
{% assign doclist = site.docs | where: "section", "designpatterns" | sort: "weight" %}
{% for page in doclist %}
<li class="level1"><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
