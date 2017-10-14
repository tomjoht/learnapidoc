---
title: Design patterns with API doc sites
permalink: /designpatterns.html
sidebar: docapis
path1: /designpatterns.html
---


{% comment %}
{% if site.format == "pdf" %}
<div id="navig">
<ul id="docnavsidebar" class="docnav">
{% else %}
<ul class="onPageMinitoc">
  {% endif %}
{% assign doclist = site.docs | where: "section", "designpatterns" | sort: "weight" %}
{% for page in doclist %}
<li class="level1"><a href="{{page.permalink | remove: "/" }}">{{page.title}}</a></li>
{% endfor %}
</ul>

{% endcomment %}

{% include minitoc.html %}
