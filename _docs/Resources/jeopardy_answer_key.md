---
title: API jeopardy answer key
permalink: /jeopardy_answer_key.html
course: "Documenting REST APIs"
weight: 13.6
sidebar: docapis
section: resources
path1: /resources.html
---

The API Jeopardy questions are in the [Conclusion section of Workshop Activities](docapis_workshop_activities.html#conclusion).

### Questions (jeopardy answer key)

{% for item in site.data.jeopardy.list %}
<button type="button" class="btn btn-danger" data-toggle="collapse" data-target="#q{{forloop.index}}">{{forloop.index}}</button>

<div id="q{{forloop.index}}" class="collapse">
<p>{{item.question}}</p>
</div>
{% endfor %}
