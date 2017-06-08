---
title: Scenario for using a weather API
permalink: /docapis_scenario_for_using_weather_api.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.0
sidebar: docapis
section: likeadeveloper
---

Enough with the abstract concepts. Let's start using an actual REST API to get more familiar with how they work.

In the upcoming sections, you'll use two different APIs in the context of a specific use case: retrieving a weather forecast. By first playing the role of a developer using an API, you'll gain a greater understanding of how your audience will use APIs, the type of information they'll need, and what they might do with the information.

Let's say that you're a web developer and you want to add a weather forecast feature to your site. Your site is for bicyclists. You want to allow users who come to your site to see what the wind conditions are for biking. You want something like this:

{% if site.target == "print" %}
<img class="small" src="images/restapi_windycall.png" alt="Wind meter conditions for website" />
{% elsif site.target == "web" %}
<img class="small" src="images/restapi_windycall.svg" alt="Wind meter conditions for website" />
{% endif %}

You don't have your own meteorological service, so you'll need to make some calls out to a weather service to get this information. Then you will present that information to users.

## Get an idea of the end goal

To give you an idea of the end goal, here's a sample. It's not necessarily styled the same as the mockup, but it answers the question, "How windy is it?"

Go to this URL: [http://idratherbewriting.com/files/restapicourse/wind-mashape.html](http://idratherbewriting.com/files/restapicourse/wind-mashape.html).

Click the button to see wind details. When you request this data, an API goes out to a weather service, retrieves the information, and displays it to you.

The above example is extremely simple. You could also build an attractive interface like this:

<a class="noCrossRef" href="https://weather.yahoo.com/united-states/california/santa-clara-2488836/"><img class="medium" src="images/attractiveinterfaceweather.png" alt="Sample weather interface" /></a>

## Find the Weather API by fyhao on Mashape

The Mashape Marketplace is a directory where publishers can publish their APIs, and where consumers can consume the APIs. Mashape manages the interaction between publishers and consumers by providing an interactive marketplace for APIs.

The APIs on Mashape tend to be rather simple compared to some other APIs, but this simplicity will work well to illustrate the various aspects of an API without getting too mired in other details.

{% include random_ad.html %}

<a class="noCrossRef" href="https://market.mashape.com/"><img class="medium" src="images/mashape_explore_apis.png" alt="Explore APIs at Mashape" /></a>

You're a consumer of an API, but which one do you need to pull in weather forecasts?

Explore the APIs available on Mashape and find the weather forecast API:

1. Go to [Mashape Marketplace](https://market.mashape.com/) and click **Explore APIs**.
2. Try to find an API that will allow you to retrieve the weather forecast.

    As you explore the various APIs, get a sense of the variety and services that APIs provide. These APIs aren't applications themselves. They provide developers with ways to pipe information into their applications. In other words, the APIs will provide the data plumbing for the applications that developers build.

3. Search for an API called "Weather," by fyhao at <a href="https://market.mashape.com/fyhao/weather-13">https://market.mashape.com/fyhao/weather-13</a>. Although there are many weather APIs, this one seems to have a lot of reviews and is free.

    <a class="noCrossRef" href="https://market.mashape.com/fyhao/weather-13"><img class="medium" src="images/weatherapi_mashape.png" alt="Weather API on Mashape" /></a>

## Find the Aeris Weather API

Now let's look at another weather API (this one not on Mashape). In contrast to the simple API on Mashape, the [Aeris Weather API](http://www.aerisweather.com/) is much more robust and extensive. You can see that the Aeris Weather API is a professional grade, information-rich API that could empower an entire meteorology service.

1. Go to [www.aerisweather.com](http://www.aerisweather.com).
2. Click **Developer** on the top navigation.  
3. Under **Aeris Weather API**, click **Documentation**.
3. Under **Reference** in the left sidebar, click **Endpoints**.

	<a  class="noCrossRef" href="http://www.aerisweather.com/support/docs/api/reference/endpoints/"><img class="medium" src="images/aerisendpoints.png" alt="Aeris Endpoints" /></a>

4. In the list of endpoints, click **forecasts**.
5. Browse the type of information that is available through this API.

Here's the Aeris weather forecast API in action making the same call as I showed earlier with Mashape: <a href="http://idratherbewriting.com/files/restapicourse/wind-aeris.html" alt="Aeris example">http://idratherbewriting.com/files/restapicourse/wind-aeris.html</a>.

As you can see, both APIs contain this same information about wind, but the units differ.

## Answer some questions about the APIs

Spend a little time exploring the features and information that these weather APIs provide. Try to answer these basic questions:

* What does each API do?
* How many endpoints does each API have?
* What information do the endpoints provide?
* What kind of parameters does each endpoint take?
* What kind of response does the endpoint provide?

These are common questions developers want to know about an API.

Can you see how APIs can differ significantly? As I mentioned previously, REST APIs are an architectural style, not a specific standard that everyone follows. You really have to read the documentation to understand how to use them.

{: .tip}
Sometimes people use the term \"API\" to refer to a whole collection of endpoints, functions, or classes. Other times they use API to refer to a single endpoint. For example, a developer might say, \"We need you to document a new API.\" They mean they added a new endpoint or class to the API, not that they launched an entirely new API service.
