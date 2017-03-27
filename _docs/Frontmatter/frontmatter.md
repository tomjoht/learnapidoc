---
title: Frontmatter
permalink: /frontmatter.html
sidebar: docapis
layout: kindle
---

**In this section:**

{% assign doclist = site.docs | where: "section", "frontmatter" | sort: "weight" %}
{% for page in doclist %}
* [{{page.title}}]({{page.permalink | remove: "/" }})
{% endfor %}
