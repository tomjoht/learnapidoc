---
title: Quality checklist for API documentation
permalink: docapis_quality_checklist.html
course: "Documenting REST APIs"
weight: 13.3
sidebar: docapis
section: metrics
path1: docapis_metrics_and_measurement.html
last-modified: 2022-01-31
redirect_from:
- /learnapidoc/docapis_metrics_second_level_checklist.html
- /learnapidoc/docapis_metrics_first_level_checklist.html
---

*This section continues from the previous page, [Assessing information quality](docapis_metrics_assessing_information_quality.html).*

As indicated earlier, my goal is to create a practical guide for measuring quality. Instead of looking at docs against a list of general, abstract criteria, I encourage creating a list of characteristics that, if fulfilled, should lead to all the more high-level categories of the rubric (clarity, accuracy, findability, etc.) automatically. Each of the characteristics must be specific, actionable, and unambiguous in how it would be implemented in your docs. In this section, I'll present a comprehensive quality checklist for API docs and developer portals.

* TOC
{:toc}  

## Doc scope

Before jumping into the criteria, consider the scope. If you're working on a developer portal, chances are you don't own the entire portal. You might just own one little section of the portal. That's okay. You can limit your review to just the scope that you own.

{% include random_ad4.html %}

Granted, the user journeys might extend beyond this scope, but start with your stewardship first. The last thing you want to do is start a war with other authors by identifying all kinds of issues with their content (at least not before you address your own issues first).

{% comment %}{% include random_ad3.html %}{% endcomment %}

## Levels of assessment

Another consideration is just how much you can assess without more familiarity with docs. You can't know if the steps are accurate unless you go through the steps. You can't know if the docs are consistent unless you've read all the documentation. You can't know if the code works unless you can run it in a test environment.

It might take more than a year working with the docs to be able to make these kinds of assessments. So pick and choose the criteria that are appropriate for your level of familiarity with the docs.

{% include random_ad2.html %}

## API documentation quality checklist

The following checklist is a checklist that involves a deep look at your docs. The checklist's criteria are in no particular order Also, the list shouldn't be seen as definitive or as a foolproof recipe for perfect documentation. And some points might apply more than others, depending on your product, domain, and audience. Overall, these are criteria/characteristics that will likely lead to a better experience with developer docs.

<style>
li.checkboxListType1 {
  list-style-type: none;
  margin-left: 25px;
  text-indent: -28px;
  margin-bottom: 20px;
  line-height: 150%;
}
</style>

{% assign cb1 = "<li class='checkboxListType1' markdown='span'><i class='fa fa-check-square-o' aria-hidden='true'></i>" %}
{% assign cb-end = "</li>" %}

<div style="background-color: #eef; padding: 15px; margin-top: 30px; margin-bottom: 30px;" markdown="block">
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">First-level API documentation quality checklist</div>

### Findability

<ul class="checkLists">
{% assign findabilityList = site.data.quality_checklist.findability %}
{% for item in findabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Accuracy

<ul class="checkLists">
{% assign accuracyList = site.data.quality_checklist.accuracy %}
{% for item in accuracyList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Relevance

<ul class="checkLists">
{% assign relevanceList = site.data.quality_checklist.relevance %}
{% for item in relevanceList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Clarity

<ul class="checkLists">
{% assign clarityList = site.data.quality_checklist.clarity %}
{% for item in clarityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Completeness

<ul class="checkLists">
{% assign completenessList = site.data.quality_checklist.completeness %}
{% for item in completenessList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

### Readability

<ul class="checkLists">
{% assign readabilityList = site.data.quality_checklist.readability %}
{% for item in readabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} <i>weight: {{item.weight}}</i> {{cb-end}}
{% endfor %}
</ul>

</div>

{% include random_ad1.html %}

## Is this list complete? No

The checklist has about 75 different characteristics that I've described. Did I miss anything? Sure, you could probably expand this list with 100 more characteristics.

{% include image_ad_right.html %}

However, there's also something to be said for a practical list of key points. The more criteria you add, the more laborious it becomes to evaluate docs. The most popular style guides (e.g., Strunk and White) are those that briefly cover the main points you need rather than providing an exhaustive list, especially if many guidelines are already followed.

## Template for easy copy/paste

If you want a version of this checklist that is easy to copy and paste, see [Quality checklist for API docs (simplified html)](docapis_quality_checklist_html.html).

This output strips away most formatting and just list the various criteria in a basic HTML file. Copy and paste the content into Google Docs or Microsoft Word. Then as you go through the content, make your notes in the "Assessment" area.
