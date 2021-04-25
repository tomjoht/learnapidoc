---
title: What's new
permalink: /docapis_whats_new.html
sidebar: docapis
path1: /docapis_introtoapis.html
weight: 1.02
last-modified: 2021-04-21
---

If you're looking to see what's new in the API doc site/course, you can browse new content in several ways.

{% include random_ad4.html %}

## Most recent updates

The following are the most recent updates to the API documentation course.

<table>
<col width="20%">
<col width="80%">
<tr>
<th>Last updated</th>
<th>Page</th>
</tr>
<tr>
  <td markdown="span">[API getting started tutorial](docapis_doc_getting_started_section.html)</td>
  <td markdown="span">Added section on minimalism's influence. Also updated Run in Postman button section to switch from static buttons to forked workspaces.</td>
</tr>
<tr>
  <td markdown="span">[Getting started tutorial: Using Stoplight Studio to create an OpenAPI specification document](pubapis_openapis_quickstart_stoplight.html)</td>
  <td markdown="span">Updated this tutorial to align with the many enhancements and changes to Stoplight over the past two years. (See [Updated Stoplight tutorial](/blog/updated-stoplight-tutorial/) for more details.</td>
</tr>
<tr>
  <td markdown="span">[API glossary](docapis_glossary_section.html)</td>
  <td markdown="span">Expanded the content with technical examples about how to single source glossary content from a single YAML file. Also added examples for integrating tooltips and popovers as well, added more discussion, analysis, additional reading, and other updates overall. (See [Updated glossary article with technical examples](/blog/updated-glossary-article/) for more details.)</td>
</tr>
</table>

## Auto-generated list of updated pages

This list is auto-generated based on the last-modified timestamp on pages. Every page has a "Last updated" line below the title. This indicates the last time I updated content on the page (in a significant way).

## Auto-generated list of updated pages

This list is auto-generated based on the last-modified timestamp on pages. Every page has a "Last updated" line below the title. This indicates the last time I updated content on the page (in a significant way).

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
<td><a href="{{ post.permalink | prepend: "/learnapidoc" }}">{{ post.title }}</a> </td>
</tr>
{% if count == 15 %}{% break %}{% endif %}
{% endif %}
{% endfor %}
</table>

To see what's been updated on the page, click the GitHub button next to the timestamp on the page:

<img style="max-width: 500px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/github_button_whats_new.png" alt="GitHub button" />

This takes you to the file in GitHub. In GitHub, click the History link:

<img style="max-width: 500px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/github_history_view.png" alt="GitHub History" />

Then click the commit IDs to browse file diffs for the commits that include the file:

<img style="max-width: 500px" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/github_commit_ids.png" alt="GitHub commit IDs" />

{% include random_ad1.html %}

{% comment %}
https://stackoverflow.com/questions/46672231/in-jekyll-how-to-show-posts-from-last-week
{% endcomment %}

## Recent blog posts about API doc site updates

On my blog, I often write announcement-style posts after adding new content on my API course. I tag these with "api-doc" &mdash; you can browse these [API doc site updates here](/category-apidoc-site-updates/).

{% include random_ad2.html %}

## Recent commits in GitHub

You can see the [stream of commits in GitHub here](https://github.com/tomjoht/learnapidoc/commits/main). This lets you view more granular updates about the various commits. To see the commit for a specific page, click the small GitHub icon <i class="fa fa-github fa-lg"></i> after the "Last updated" tag. Then click the **History** link in GitHub.

{% include random_ad3.html %}
