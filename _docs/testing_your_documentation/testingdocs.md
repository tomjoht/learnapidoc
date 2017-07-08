---
title: Testing your API docs
permalink: /testingdocs.html
sidebar: docapis
path1: /testingdocs.html
---

<ul class="onPageMinitoc">
{% assign doclist = site.docs | where: "section", "testingdocs" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>
