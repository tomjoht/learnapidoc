---
title: API jeopardy answer key
permalink: /jeopardy_answer_key.html
course: "Documenting REST APIs"
weight: 14.6
sidebar: docapis
section: resources
path1: /resources.html
last-modified: 2019-03-31
---

The API Jeopardy questions are in the [Conclusion section of Workshop Activities](workshop.html#conclusion).

### Questions (jeopardy answer key)

{% for item in site.data.jeopardy.list %}
<button type="button" class="btn btn-danger" data-toggle="collapse" data-target="#q{{forloop.index}}">{{forloop.index}}</button>

<div id="q{{forloop.index}}" class="collapse">
<p>{{item.question}}</p>
</div>
{% endfor %}
