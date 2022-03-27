---
title: Quality checklist for API documentation
permalink: docapis_quality_checklist.html
course: "Documenting REST APIs"
weight: 13.3
sidebar: docapis
section: metrics
path1: docapis_metrics_and_measurement.html
last-modified: 2022-02-07
redirect_from:
- /learnapidoc/docapis_metrics_second_level_checklist
- /learnapidoc/docapis_metrics_first_level_checklist
---

*This section continues from the previous page, [Different approaches for assessing information quality](docapis_metrics_assessing_information_quality.html).*

As indicated earlier, my goal is to create a practical guide for measuring quality. Instead of looking at docs against a list of general, abstract criteria, I recommend another approach: assessing docs against a list of characteristics that, if fulfilled, should lead to a hiqh-quality user experience automatically. Each of the characteristics must be specific, actionable, and unambiguous in how it would be implemented in your docs. In this section, I'll present a comprehensive quality checklist for API docs and developer portals.

* TOC
{:toc}  

## API documentation quality checklist {#comprehensive_version}

The following checklist is a checklist that involves a deep look at your docs. The checklist's criteria are in no particular order Also, the list shouldn't be seen as definitive or as a foolproof recipe for perfect documentation. Some points might apply more than others, depending on your product, domain, and audience. But overall, these are criteria/characteristics that will likely lead to a better experience with developer docs.

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
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">API documentation quality checklist (comprehensive version)</div>

### Findability

<ul class="checkLists">
{% assign findabilityList = site.data.quality_checklist.findability %}
{% for item in findabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endfor %}
</ul>

### Accuracy

<ul class="checkLists">
{% assign accuracyList = site.data.quality_checklist.accuracy %}
{% for item in accuracyList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endfor %}
</ul>

### Relevance

<ul class="checkLists">
{% assign relevanceList = site.data.quality_checklist.relevance %}
{% for item in relevanceList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endfor %}
</ul>

### Clarity

<ul class="checkLists">
{% assign clarityList = site.data.quality_checklist.clarity %}
{% for item in clarityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endfor %}
</ul>

### Completeness

<ul class="checkLists">
{% assign completenessList = site.data.quality_checklist.completeness %}
{% for item in completenessList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endfor %}
</ul>

### Readability

<ul class="checkLists">
{% assign readabilityList = site.data.quality_checklist.readability %}
{% for item in readabilityList %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endfor %}
</ul>

</div>

For a version of this checklist that is easy to copy and paste, see [Quality checklist for API docs (simplified html) -- comprehensive version](docapis_quality_checklist_html.html). This output strips away most formatting and just list the various criteria in a basic HTML file. Copy and paste the content into Google Docs or Microsoft Word. Then as you go through the content, make your notes in the "Assessment" area.

{% include ads.html %}

## Is this list complete? No

The checklist has about 75 different characteristics that I've described. Did I miss anything? Sure, you could probably expand this list with 100 more characteristics.

{% include image_ad_right.html %}

However, there's also something to be said for a practical list of key points. The more criteria you add, the more laborious it becomes to evaluate docs. The most popular style guides (e.g., Strunk and White) are those that briefly cover the main points you need rather than providing an exhaustive list, especially if many guidelines are already followed.

{% include random_ad3.html %}

## Considerations as you evaluate your docs

As you evaluate your docs, consider the following:

* **Doc scope**:  If you're working on a developer portal, chances are you don't own the entire portal. You might just own one little section of the portal. That's okay. You can limit your review to just the scope that you own. Granted, the user journeys might extend beyond this scope, but start with your stewardship first. The last thing you want to do is start a war with other authors by identifying all kinds of issues with their content (at least not before you address your own issues first).
* **Levels of assessment**: Another consideration is just how much you can assess without more familiarity with docs. You can't know if the steps are accurate unless you go through the steps. You can't know if the docs are consistent unless you've read all the documentation. You can't know if the code works unless you can run it in a test environment. It might take more than a year working with the docs to be able to make these kinds of assessments. So pick and choose the criteria that are appropriate for your level of familiarity with the docs.
* **Good docs can't fix bad design**: Poor API design will make even good docs problematic, no matter how well-written your content is. If the API has inconsistent naming, incomplete parameters, doesn’t map to user journeys, and is cumbersome to use, then documentation also becomes more cumbersome to follow and implement. Good docs can't fix bad API design, though docs can try to salvage the user experience.

{% include random_ad4.html %}

## Short version of the API documentation quality checklist {#short_version}

Feedback I've received about the checklist is that it's too long &mdash; isn't there a lightweight version? Based on this feedback, I selected what I think are the highest priority criteria in each section. But again, as I've said elsewhere, my selections here are somewhat arbitrary and might depend on your particular product, user, and domain.

<div style="background-color: #eef; padding: 15px; margin-top: 30px; margin-bottom: 30px;" markdown="block">
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">API documentation quality checklist (short version)</div>

### Findability

<ul class="checkLists">
{% assign findabilityList = site.data.quality_checklist.findability %}
{% for item in findabilityList %}
{% if item.priority == "high" %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endif %}
{% endfor %}
</ul>

### Accuracy

<ul class="checkLists">
{% assign accuracyList = site.data.quality_checklist.accuracy %}
{% for item in accuracyList %}
{% if item.priority == "high" %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endif %}
{% endfor %}
</ul>

### Relevance

<ul class="checkLists">
{% assign relevanceList = site.data.quality_checklist.relevance %}
{% for item in relevanceList %}
{% if item.priority == "high" %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endif %}
{% endfor %}
</ul>

### Clarity

<ul class="checkLists">
{% assign clarityList = site.data.quality_checklist.clarity %}
{% for item in clarityList %}
{% if item.priority == "high" %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endif %}
{% endfor %}
</ul>

### Completeness

<ul class="checkLists">
{% assign completenessList = site.data.quality_checklist.completeness %}
{% for item in completenessList %}
{% if item.priority == "high" %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endif %}
{% endfor %}
</ul>

### Readability

<ul class="checkLists">
{% assign readabilityList = site.data.quality_checklist.readability %}
{% for item in readabilityList %}
{% if item.priority == "high" %}
{{cb1}}<b>{{item.title}}.</b> {{item.description}} {{cb-end}}
{% endif %}
{% endfor %}
</ul>

</div>

For the copy/paste version of this checklist, see [Quality checklist for API docs (simplified html) --- short version](docapis_quality_checklist_html_short.html). Similar to the simplified form of the comprehensive version, this output strips away most formatting and just list the various criteria in a basic HTML file.

{% include random_ad2.html %}
