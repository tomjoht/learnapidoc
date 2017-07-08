---
title: API documentation survey
permalink: /survey.html
sidebar: docapis
path1: /survey.html
---

<ul class="onPageMinitoc">
{% assign doclist = site.docs | where: "section", "survey" | sort: "weight" %}
{% for page in doclist %}
<li class="level1"><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
