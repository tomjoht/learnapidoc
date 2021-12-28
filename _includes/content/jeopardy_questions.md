This is a jeopardy game to test your learning. To play jeopardy, you're given an answer. You have to supply the question. For example, if the answer is "a device on your wall that shows the time," the question might be, "What is a clock?"

**Answers**

{% for item in site.data.jeopardy.list %}
<button type="button" class="btn btn-default" data-toggle="collapse" data-target="#q{{forloop.index}}">{{forloop.index}}</button>

<div id="q{{forloop.index}}" class="collapse">
<p>{{item.answer}}</p>
</div>
{% endfor %}

You can find the answer key [here](jeopardy_answer_key.html).
