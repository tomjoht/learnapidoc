---
title: What's new
permalink: docapis_whats_new.html
sidebar: docapis
path1: docapis_introtoapis.html
weight: 1.02
last-modified: 2022-10-30
---

If you're looking to see what's new in the API doc site/course, you can browse new content in several ways.

* TOC
{:toc}

<h2>Most recent updates</h2>

The following are the most recent updates to the API documentation course.

## October 2022

* Updated the Stoplight tutorial: [Getting started tutorial: Using Stoplight Studio to create an OpenAPI specification document](pubapis_openapis_quickstart_stoplight.html). With many UI and other changes, this tutorial needed a lot of updates. It should now be aligned with the latest Stoplight UI and functionality.

## May 2022

* [Blobr: An API portal that arranges your API's use cases as individual products](pubapis_blobr.html). With Blobr, you can create an API store to launch and grow an API business with different monetization models.

## January 2022

* Revised the content in the [Metrics and Measurements](docapis_metrics_and_measurement.html) section as follows:
  * Consolidated the first-level checkliist and second-level checklist into a [single checklist](docapis_quality_checklist.html).
  * Removed the approach for quantifying each criteria into a score and weighting that score with the criteria's importance. This approach was something I experimented with but ultimately found that it didn't work in practice.
  * Added a [lightweight version of the checklist](docapis_quality_checklist.html#short_version) that includes only two criteria from each category.

## December 2021
* [PDF and eBook formats](docapis_formats.html). Created PDF, Kindle, and EPUB versions of the course that you can download.
* [Broadcasting your meeting notes to influence a wider audience](docapis_meeting_notes.html). Explains how to broadcast your meeting notes as a tool for influencing other groups.

## November 2021

* [The writing process](writing_process.html). A new section that covers the process for researching, drafting, writing, editing, and publishing documentation. Includes these topics:
  * [Overview of the writing process](docapis_writing_process_overview.html)
  * [1. Planning](docapis_planning.html)
  * [2. Information gathering](docapis_information_gathering.html)
  * [3. Writing](docapis_writing.html)
  * [4. Reviewing](docapis_reviewing.html)
  * [5. Publishing](docapis_publishing.html)

## October 2021

[Using Oxygen XML with docs-as-code workflows](pubapis_oxygenxml.html). Added a new article in the publishing tools section using Oxygen XML.
* [Other resources section in course overview](index.html#other-resources). Updated the Course overview with a list of additional resources (books, courses, etc.).

## August 2021

* [Ensuring documentation coverage with each software release](docapis_release_process.html). Covers best practices for ensuring that each new feature in a release has adequate documentation coverage.


## Auto-generated list of updated pages

{% include random_ad4.html %}

This list is auto-generated based on the last-modified timestamp on pages, scoped to the last 60 days. How does the script work? Every page has a "Last updated" line below the title. This script looks for any pages with a timestamp that appears within the last 60 days.

{% assign timeframe = 5184000 %}
{% assign count = 0 %}

{% for post in site.docs %}
  {% assign post_in_seconds = post.last-modified | date: "%s" | plus: 0 %}
  {% assign recent_posts = "now" | date: "%s" | minus: timeframe  %}

  {% if post_in_seconds > recent_posts %}
  {% assign count = count | plus:1 %}

* {{post.last-modified | date: "%b %d, %Y" }}: <a href="{{ post.permalink | remove: "/" }}">{{ post.title }}</a>
{% if count == 15 %}{% break %}{% endif %}
{% endif %}
{% endfor %}

{% comment %}
details about the script logic above: https://stackoverflow.com/questions/46672231/in-jekyll-how-to-show-posts-from-last-week
{% endcomment %}


## Seeing what content has been updated

To see what's been updated on the page, click the GitHub button next to the timestamp on the page:

<img class="small_medium" src="{{site.media}}/github_button_whats_new.png" alt="GitHub button" />

This takes you to the file in GitHub. In GitHub, click the History link:

<img class="small_medium" src="{{site.media}}/github_history_view.png" alt="GitHub History" />

Then click the commit IDs to browse file diffs for the commits that include the file:

<img class="small_medium" src="{{site.media}}/github_commit_ids.png" alt="GitHub commit IDs" />

You can see the [stream of commits in GitHub here](https://github.com/tomjoht/learnapidoc/commits/main).

{% include ads.html %}

## Recent blog posts about API doc site updates

On my blog, I often write announcement-style posts after adding new content on my API course. I tag these with "api-doc" &mdash; you can browse these [API doc site updates here](https://idratherbewriting.com/category-apidoc-site-updates/).

{% include random_ad2.html %}

{% include random_ad3.html %}
