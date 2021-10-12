---
title: Second-level checklist for API documentation
permalink: /docapis_metrics_second_level_checklist.html
course: "Documenting REST APIs"
weight: 13.3
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-02-15
---

*This section continues from the previous page, [First-level checklist for API documentation](docapis_metrics_second_level_checklist.html)*.

In the previous topic, I described a first-level checklist for API documentation that you can do without more familiarity with the docs. This section describes more characteristics to evaluate that will only be discernible when you have more familiarity with the docs.

* TOC
{:toc}  

{% include random_ad2.html %}

## Second-level documentation checklist

<style>
li.checkboxListType1 {
  list-style-type: none;
  margin-left: 25px;
  text-indent: -28px;
  margin-bottom: 20px;
  line-height: 24px;
}

input[type=checkbox] {
  margin-right: 10px;
}
</style>

{% assign cb1 = "<li class='checkboxListType1' markdown='span'><input type='checkbox'>" %}
{% assign cb-end = "</li>" %}

<div style="background-color: #eef; padding: 15px; margin-top: 30px; margin-bottom: 30px;" markdown="block">
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">Second-level API documentation quality checklist</div>

### Findability

<ul class="checkLists">
{% assign findabilityList = site.data.second_level_checklist.findability %}
{% for item in findabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Accuracy

<ul class="checkLists">
{% assign accuracyList = site.data.second_level_checklist.accuracy %}
{% for item in accuracyList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Relevance

<ul class="checkLists">
{% assign relevanceList = site.data.second_level_checklist.relevance %}
{% for item in relevanceList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Clarity

<ul class="checkLists">
{% assign clarityList = site.data.second_level_checklist.clarity %}
{% for item in clarityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Completeness

<ul class="checkLists">
{% assign completenessList = site.data.second_level_checklist.completeness %}
{% for item in completenessList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Readability

<ul class="checkLists">
{% assign readabilityList = site.data.second_level_checklist.readability %}
{% for item in readabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>
</div>

{% comment %}{% include random_ad3.html %}{% endcomment %}

## Is this list complete? No

Between the two checklists ([first-level](docapis_metrics_second_level_checklist) and second-level), there are about 75 different characteristics that I've described. Did I miss anything? Sure, you could probably expand this list with 100 more characteristics.

{% include random_ad4.html %}

Sometimes it's not clear what needs to be added until you see docs that are missing some key element or which violate some assumed principle. Feel free to let me know (in the comments below) what could/should be added, especially if it's a major omission.

{% include image_ad_right.html %}

However, there's also something to be said for a practical list of key points. The more criteria you add, the more laborious it becomes to evaluate docs. The most popular style guides (e.g., Strunk and White) are those that briefly cover the main points you need rather than providing an exhaustive list, especially if many guidelines are already followed.

{% include random_ad1.html %}

*Continue on to the next section, [Quantifying your progress](docapis_metrics_quantifying_progress.html).*
