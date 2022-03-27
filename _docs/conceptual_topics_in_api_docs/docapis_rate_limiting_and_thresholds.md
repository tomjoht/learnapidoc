---
title: API rate limiting and thresholds
permalink: docapis_rate_limiting_and_thresholds.html
keywords:
course: "Documenting REST APIs"
weight: 7.5
sidebar: docapis
section: docconceptual
path1: docconceptual.html
last-modified: 2019-03-30
---

Rate limits determine how frequently you can call a particular endpoint. Usually, companies have different tiers (for example, free versus pro) and licenses (open-source, business, commercial) corresponding to different capabilities or rate limits with the API.

* TOC
{:toc}

## What to cover with rate limiting

Companies with APIs make money by charging for access to the API, but they usually distinguish between low usage and high usage, often making the low usage options free so that developers can explore and experiment with the API. With the sample [OpenWeatherMap Weather API](https://openweathermap.org/price) that we've been using in this course, you can see where the pricing tier begins:

<figure><a target="_blank" class="noExtIcon" href="https://openweathermap.org/price"><img class="docimage" src="{{site.media}}/openweathermapratelimits.png" alt="Pricing tier for OpenWeatherMap API" /></a><figcaption>Pricing tiers for OpenWeatherMap API. Each call is a request to the API. If your page makes just one call for weather, and you get more than 60 visitors per second, you'll need to move past the free tier.</figcaption></figure>

If your site has hundreds of thousands of visitors a day, and with each page reload calls an API endpoint, you want to be sure the API can support that kind of traffic.

{% include random_ad3.html %}

Pricing related to rate limiting is probably information that's within the marketing domain rather than documentation domain. However, developers will still want to know a few key behaviors around the rate-limiting thresholds. For example:

* When you exceed the threshold, do your calls get throttled with slower responses?
* Do you get overcharges for every extra call?
* If you exceed the limit, do the responses return a particular status code (if so, which one)?

Also, when developers implement the code into their applications, how are they handling situations where the API doesn't respond due to rate limit violations? Are there conditions and checks to handle these throttled scenarios? Does the widget (or whatever might be implementing the API) freeze or hang, display empty or crash?

<figure><img class="docimage medium border" src="{{site.media}}/{% if site.format == "kindle" %}nonref_ratelimiting.png{% else %}nonref_ratelimiting.svg{% endif %}" alt="Rate limiting affects development" /><figcaption>Rate limiting might seem like a marketing topic, but the rate limiting policies and how they affect API calls can have a significant impact on development.</figcaption></figure>

{% include ads.html %}

## Examples rate limiting sections

Here are a few examples of rate limiting sections in API documentation.

### GitHub

<figure><a target="_blank" class="noExtIcon" href="https://developer.github.com/v3/#rate-limiting"><img class="docimage" src="{{site.media}}/githubratelimiting.png" alt="GitHub rate limiting" /></a><figcaption>GitHub rate limiting</figcaption></figure>

GitHub's documentation explains rate limits for authenticated versus unauthenticated requests, the header returned, the meaning of the rate-limiting titles (`X-RateLimit-Limit`, `X-RateLimit-Remaining`, and `X-RateLimit-Reset`), how to check your current usage, how to increase rate limits for a specific application, what happens when rate limits are abused, and more.

{% include random_ad2.html %}

### Linkedin

<figure><a target="_blank" class="noExtIcon" href="https://developer.linkedin.com/docs/rest-api?u=0#"><img class="docimage" src="{{site.media}}/dropboxratelimiting.png" alt="Linkedin rate throttling section" /></a><figcaption>Linkedin rate throttling section</figcaption></figure>

Linkedin's rate limiting documentation explains that different API endpoints have different limits. There are three different types of throttling: Application throttling, User throttling, and Developer throttling. Their documentation also explains the time zone used to track the day's beginning and end.

### Bitly

<figure><a target="_blank" class="noExtIcon" href="http://dev.bitly.com/rate_limiting.html"><img class="docimage" src="{{site.media}}/bitlyratelimiting.png" alt="Bitly's rate limiting" /></a><figcaption>Bitly's rate limiting</figcaption></figure>

Bitly provides basic information on the page above but also links to [best practices for avoiding rate-limiting issues](http://dev.bitly.com/best_practices.html). These best practices include tips such as caching, security issues, long page loads, batch processing, high-volume requests, URL encoding, and more.

{% include image_ad_right.html %}

By looking at these examples, you can see that while rate limiting might seem like a straightforward topic, there are layers of depth and complexity to cover. The relevance of the topic depends on your API and the rate-limiting policies your company sets, but this information cannot be entirely offloaded to Marketing to handle. So much of the information around rate limiting directly affects development.

{% include random_ad4.html %}

## <i class="fa fa-user-circle"></i> Activity with rate limits

With the [open-source project you identified](docapis_find_open_source_project.html), identify the information about rate limits with the API. Answer the following questions:

1. Does the API have rate limits?
2. What happens if users exceed the rate limits?
3. What status codes are sent if rate limits are exceeded?
4. What kind of rate limits exist with the free (or development) tiers of the API?
