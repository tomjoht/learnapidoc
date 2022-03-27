---
title:  More REST API activities
permalink: docapis_more_rest_activities.html
course: "Documenting REST APIs"
weight: 14.1
sidebar: docapis
section: resources
path1: resources.html
last-modified: 2019-11-17
---

To get more practice working with various APIs, I provide several examples in this Resources section. Working through these activities will give you more exposure to different REST APIs, how they're organized, the complexities and interdependency of endpoints, and more.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Available activities

There are several activities with different APIs. A challenge is listed for each activities. First, try to solve the challenge on your own. Then follow along in the sections below to see how I approached it.

{% include random_ad2.html %}

In these examples, I usually just print the code to a web page to visualize the response. The following activities are available:

* [Get event information using the Eventbrite API](docapis_eventbrite_example.html)
* [Flickr example: Retrieve a Flickr gallery](docapis_flickr_example.html)
* [Get wind speed using the Aeris Weather API](docapis_aerisweather_example.html)

## Shortcuts for API keys

{% include ads.html %}

Each API requires you to use an API key, token, or some other form of authentication. Register for your own API keys.

{% include image_ad_right.html %}

## Swap out APIKEY in code samples

{% include random_ad4.html %}

I never insert API keys in code samples for a few reasons:

* API keys expire
* API keys posted online get abused
* Customizing the code sample is a good thing

When you see `APIKEY` in a code sample, remember to swap in an API key there. For example, if the API key were `123`, you would delete `APIKEY` and use `123`.

{% include random_ad3.html %}
