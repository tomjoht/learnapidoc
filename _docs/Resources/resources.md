---
title: Resources
permalink: /resources.html
sidebar: docapis
---

<ul class="onPageMinitoc">

{% assign doclist = site.docs | where: "section", "resources" | sort: "weight" %}
{% for page in doclist %}
<li><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
