---
title: Design Patterns overview
permalink: /designpatterns.html
sidebar: docapis
---

**In this section:**

<ul>
{% assign doclist = site.docs | where: "section", "designpatterns" | sort: "weight" %}
{% for page in doclist %}
<li class="level1"><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
