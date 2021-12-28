---
title: What's new
permalink: /docapis_whats_new.html
sidebar: docapis
path1: /docapis_introtoapis.html
weight: 1.02
last-modified: 2021-09-17
---

If you're looking to see what's new in the API doc site/course, you can browse new content in several ways.

* TOC
{:toc}

<h2>Most recent updates</h2>

The following are the most recent updates to the API documentation course.

<table>
  <col width="20%">
  <col width="30%">
  <col width="50%">
<thead>
<tr>
  <th>Last updated</th>
  <th>Page</th>
  <th>Description</th>
</tr>
</thead>
<tbody>
<tr>
  <td>December 2021</td>
  <td markdown="span">[Broadcasting your meeting notes to influence a wider audience](docapis_meeting_notes.html)</td>
  <td markdown="span">Added a new article about why you should broadcast your meeting notes as a tool for influencing other groups.</td>
</tr>
<tr>
  <td>November 2021</td>
  <td markdown="span">
  [Overview of the writing process](docapis_writing_process_overview.html)<br/>
  [1. Planning](docapis_planning.html)<br/>
  [2. Information gathering](docapis_information_gathering.html)<br/>
  [3. Writing](docapis_writing.html)<br/>
  [4. Reviewing](docapis_reviewing.html)<br/>
  [5. Publishing](docapis_publishing.html)
  </td>
  <td>A new section that covers the process for researching, drafting, writing, editing, and publishing documentation.</td>
</tr>
<tr>
  <td>October 2021</td>
  <td markdown="span">[Using Oxygen XML with docs-as-code workflows](pubapis_oxygenxml.html)</td>
  <td markdown="span">Added a new article in the publishing tools section using Oxygen XML.</td>
</tr>
<tr>
  <td>October 2021</td>
  <td markdown="span">[Other resources section](index.html#other-resources) in Course overview</td>
  <td markdown="span">Updated the Course overview with a list of additional resources (books, courses, etc.).</td>
</tr>
<tr>
  <td>August 2021</td>
  <td markdown="span">[Ensuring documentation coverage with each software release](docapis_release_process.html)</td>
  <td markdown="span">Covers best practices for ensuring that each new feature in a release has adequate documentation coverage.</td>
</tr>
</tbody>
</table>

## Auto-generated list of updated pages

{% include random_ad4.html %}

This list is auto-generated based on the last-modified timestamp on pages, scoped to the last 60 days. How does the script work? Every page has a "Last updated" line below the title. This script looks for any pages with a timestamp that appears within the last 60 days.

<table>
<col width="20%">
<col width="80%">
<tr>
<th>Last updated</th>
<th>Page</th>
</tr>

{% assign timeframe = 5184000 %}
{% assign count = 0 %}

{% for post in site.docs %}
  {% assign post_in_seconds = post.last-modified | date: "%s" | plus: 0 %}
  {% assign recent_posts = "now" | date: "%s" | minus: timeframe  %}

  {% if post_in_seconds > recent_posts %}
  {% assign count = count | plus:1 %}

<tr>
<td>{{post.last-modified | date: "%b %d, %Y" }}</td>
<td><a href="{{ post.permalink | remove: "/" }}">{{ post.title }}</a> </td>
</tr>
{% if count == 15 %}{% break %}{% endif %}
{% endif %}
{% endfor %}
</table>

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

{% include random_ad1.html %}

You can see the [stream of commits in GitHub here](https://github.com/tomjoht/learnapidoc/commits/main).

## Recent blog posts about API doc site updates

On my blog, I often write announcement-style posts after adding new content on my API course. I tag these with "api-doc" &mdash; you can browse these [API doc site updates here](https://idratherbewriting.com/category-apidoc-site-updates/).

{% include random_ad2.html %}

{% comment %}{% include random_ad3.html %}{% endcomment %}
