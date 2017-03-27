---
title: Documenting endpoints
permalink: /docendpoints.html
sidebar: docapis
---

**In this section:**

{% assign doclist = site.docs | where: "section", "docendpoints" | sort: "weight" %}
{% for page in doclist %}
* [{{page.title}}]({{page.permalink | remove: "/" }})
{% endfor %}
