---
title: First-level checklist for API documentation
permalink: /docapis_metrics_first_level_checklist.html
course: "Documenting REST APIs"
Weight: 13.2
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-02-15
---

*This section continues from the previous page, [Measuring progress against documentation quality goals](docapis_measuring_impact.html).*

As indicated earlier, my goal is to create a practical guide for measuring quality. Instead of looking at docs against a list of general, abstract criteria, I encourage creating a list of characteristics that, if fulfilled, should lead to all the more high-level categories of the rubric (clarity, accuracy, findability, etc.) automatically. Each of the characteristics must be specific, actionable, and unambiguous in how it would be implemented in your docs. This section gets into the nitty-gritty details of the characteristics.

* TOC
{:toc}  

## Doc scope

Before jumping into the criteria, consider the scope. If you're working on a developer portal, chances are you don't own the entire portal. You might just own one little section of the portal. That's okay. You can limit your review to just the scope that you own. Granted, the user journeys might extend beyond this scope, but start with your stewardship first. The last thing you want to do is start a war with other authors by identifying all kinds of issues with their content (at least not before you address your own issues first).

{% include random_ad3.html %}

## Two levels of assessment

Another consideration is just how much you can assess without more familiarity with docs. You can't know if the steps are accurate unless you go through the steps. You can't know if the docs are consistent unless you've read all the documentation. You can't know if the code works unless you can run it in a test environment. It might take more than a year working with the docs to be able to make these kinds of assessments. You shouldn't have to spend a year working with the docs before you can provide an initial assessment of some kind.

{% include image_ad_right.html %}

All too often, you might find yourself situated in a new group, with many pages of documentation before you. What if you're trying to measure your impact on the docs from day one? If you can't complete the assessment until a year into the work, after you'll have already contributed so much to the docs, you won't have a clear benchmark against which to assess your contributions and impact.

Because some criteria can be assessed quickly, while other criteria requires you to be much more familiar with the documentation, I provide two levels of assessment &mdash; a first-level checklist and a second-level checklist. The two lists are distinguished between quick assessments you can make without being familiar with the docs versus more in-depth assessments that require more familiarity.

{% include random_ad2.html %}

In this section, I'll present a first-level checklist, and in the next topic, I'll present a [second-level checklist](docapis_metrics_first_level_checklist).

## First-level documentation checklist

The following checklist is a first-level checklist that doesn't require much familiarity with the docs. The checklist's criteria are in no particular order except those that seem more important (hence have a greater weight) appear first. Also, the list shouldn't be seen as definitive or as a foolproof recipe for perfect documentation. And some points might apply more than others, depending on your product, domain, and audience. Overall, these are criteria/characteristics that will likely lead to a better experience with developer docs.

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
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">First-level API documentation quality checklist</div>

### Findability

<ul class="checkLists">
{% assign findabilityList = site.data.first_level_checklist.findability %}
{% for item in findabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Accuracy

<ul class="checkLists">
{% assign accuracyList = site.data.first_level_checklist.accuracy %}
{% for item in accuracyList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Relevance

<ul class="checkLists">
{% assign relevanceList = site.data.first_level_checklist.relevance %}
{% for item in relevanceList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Clarity

<ul class="checkLists">
{% assign clarityList = site.data.first_level_checklist.clarity %}
{% for item in clarityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Completeness

<ul class="checkLists">
{% assign completenessList = site.data.first_level_checklist.completeness %}
{% for item in completenessList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Readability

<ul class="checkLists">
{% assign readabilityList = site.data.first_level_checklist.readability %}
{% for item in readabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

</div>

{% include random_ad.html %}

*Continue on to the next section, [Second-level checklist for API documentation](docapis_metrics_second_level_checklist).*
