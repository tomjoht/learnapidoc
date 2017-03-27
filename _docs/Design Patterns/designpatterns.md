---
title: Design Patterns overview
permalink: /designpatterns.html
sidebar: docapis
---

**In this section:**

{% assign doclist = site.docs | where: "section", "designpatterns" | sort: "weight" %}
{% for page in doclist %}
* [{{page.title}}]({{page.permalink | remove: "/" }})
{% endfor %}
