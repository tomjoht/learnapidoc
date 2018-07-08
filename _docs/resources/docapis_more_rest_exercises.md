---
title:  More REST API exercises
permalink: /docapis_more_rest_exercises.html
keywords:
course: "Documenting REST APIs"
weight: 13.1
sidebar: docapis
section: resources
path1: /resources.html
---

To get more practice working with various APIs, I provide several examples in this Resources section. Working through these exercises will give you more exposure to different REST APIs, how they're organized, the complexities and interdependency of endpoints, and more.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Available exercises

There are several examples with different APIs. A challenge is listed for each exercise. First, try to solve the challenge on your own. Then follow along in the sections below to see how I approached it.

{% include random_ad2.html %}

In these examples, I usually printed the code to a web page to visualize the response. The following exercises are available:

* [Get event information using the EventBrite API](docapis_eventbrite_example.html)
* [Flickr example: Retrieve a Flickr gallery](docapis_flickr_example.html)
* [Get wind speed using the Aeris Weather API](docapis_aerisweather_example.html)

## Shortcuts for API keys

{% include random_ad.html %}

Each API requires you to use an API key, token, or some other form of authentication. You can register for your own API keys, or you can [use my keys here](http://idratherbewriting.com/learnapidoc/assets/files/apikeys.txt).

## Swap out APIKEY in code samples

I never insert API keys in code samples for a few reasons:

* API keys expire
* API keys posted online get abused
* Customizing the code sample is a good thing

When you see `APIKEY` in a code sample, remember to swap in an API key there. For example, if the API key was `123`, you would delete `APIKEY` and use `123`.
