---
title: Using an API like a developer
permalink: /likeadeveloper.html
sidebar: docapis
---

**In this section:**

{% assign doclist = site.docs | where: "section", "likeadeveloper" | sort: "weight" %}
{% for page in doclist %}
* [{{page.title}}]({{page.permalink | remove: "/" }})
{% endfor %}
