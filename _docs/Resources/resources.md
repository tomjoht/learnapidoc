---
title: Resources
permalink: /resources.html
sidebar: docapis
---

**In this section:**

{% assign doclist = site.docs | where: "section", "resources" | sort: "weight" %}
{% for page in doclist %}
* [{{page.title}}]({{page.permalink | remove: "/" }})
{% endfor %}
