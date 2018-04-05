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
path1: /likeadeveloper.html
---

Enough with the abstract concepts. Let's start using an actual REST API to get more familiar with how they work. In the upcoming sections, you'll explore some weather APIs in the context of a specific use case: retrieving a weather forecast. By first playing the role of a developer using an API, you'll gain a greater understanding of how your audience will use APIs, the type of information they'll need, and what they might do with the information.

* TOC
{:toc}

## Sample scenario: How windy is it?

Let's say that you're a web developer and you want to add a weather conditions feature to your site. Your site is for bicyclists. You want to allow users who come to your site to see what the wind and temperature conditions are for biking. You want something like this:

{% if site.format == "pdf" or site.format == "kindle" %}
<img class="small" src="images/restapi_windycall.png" alt="Wind meter conditions for website" />
{% elsif site.format == "web" %}
<img class="small" src="images/restapi_windycall.svg" alt="Wind meter conditions for website" />
{% endif %}

You don't have your own meteorological service, so you'll need to make some calls out to a weather service to get this information. Then you will present that information to users.

## Get an idea of the end goal {#endgoal}

To give you an idea of the end goal, here's a sample: [wind-weatherbit.html](http://idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html). It's not necessarily styled the same as the mockup, but it answers the question, "What's the wind and temperature?"

Click the button to see wind and temperature details. When you request this data, an API goes out to the [OpenWeatherMap API service](https://openweathermap.org/api), retrieves the information, and displays it to you.

<a target="\_blank" href="http://idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html" class="noExtIcon"><img src="images/checkwindconditions.png" class="medium" /></a>

The above example is extremely simple. You could also build an attractive interface like this:

<a class="noCrossRef" href="https://weather.yahoo.com/united-states/california/santa-clara-2488836/" class="noExtIcon"><img class="medium" src="images/attractiveinterfaceweather.png" alt="Sample weather interface" /></a>

The concept and general techniques are more or less the same.

## Explore the OpenWeatherMap API

Let's find a simple weather API that we can use for some exercises. There are [many good weather API options for developers](https://superdevresources.com/weather-forecast-api-for-developing-apps/). Let's use [OpenWeatherMap](https://www.weatherbit.io/api), because their service is easy to use, free, and stable.

{% include random_ad.html %}

{% include activity.html %}

Explore the information available on OpenWeatherMap:

1.  Go to [https://openweathermap.org](https://openweathermap.org) and click **API**.
2.  Explore the information available in the [Current Weather Data](https://openweathermap.org/current) by clicking **API Doc** in that section.

    As you explore the site, get a sense of the variety and services that API provides. The API calls provide developers with ways to pull information into their applications. In other words, the APIs will provide the data plumbing for the applications that developers build.

3. As you explore the Current Weather Data API, see if it contains information about temperature and wind conditions relevant to our coding scenario.

## Explore the Aeris Weather API

Now let's look at another weather API for contrast. In contrast to the OpenWeatherMap API, the [Aeris Weather API](http://www.aerisweather.com/) is a bit more robust and extensive. Explore the Aeris Weather API by doing the following:

1. Go to [www.aerisweather.com](http://www.aerisweather.com).
2. Click **Developer** on the top navigation.  
3. Under **Aeris Weather API**, click **Documentation**.
3. Under **Reference** in the left sidebar, click **Endpoints**.

	<a class="noCrossRef" href="http://www.aerisweather.com/support/docs/api/reference/endpoints/" class="noExtIcon"><img class="medium" src="images/aerisendpoints.png" alt="Aeris Endpoints" /></a>

4. In the list of endpoints, click **[observations](https://www.aerisweather.com/support/docs/api/reference/endpoints/observations/)**.
5. Browse the type of information that is available through this endpoint.

Here's the Aeris weather forecast API in action making mostly the same calls as I showed earlier with OpenWeatherMap: <a href="http://idratherbewriting.com/learnapidoc/assets/files/wind-aeris.html" alt="Aeris example">/learnapidoc/assets/files/wind-aeris.html</a>.

## More weather APIs

APIs differ considerably in their design, presentation, responses, and other detail. For more comparison, check out some of the following weather APIs:

* [Dark Sky API](https://darksky.net/dev)
* [Accuweather API](https://developer.accuweather.com/)
* [Weather Underground API](https://www.wunderground.com/weather/api/)
* [Weatherbit API](https://www.weatherbit.io/api)

Each weather API has a totally different approach to documentation. As you'll see going through this course, the variety and uniqueness of each API doc site (even when approaching the same topic &mdash; a weather forecast) presents a lot of challenges to tech writing teams. Not only do presentations vary, terminology with APIs varies as well.

As I mentioned in [REST is a style, not a standard](docapis_what_is_a_rest_api.html#rest-is-a-style-not-a-standard), REST APIs are an architectural style following common characteristics and principles; they don't all follow the same standard or specification. You really have to read the documentation to understand how to use the APIs.

## Answer some questions about the APIs

{% include activity.html %}

Spend a little time exploring the features and information that these weather APIs provide. Try to answer these basic questions:

* What does each API do?
* How many endpoints does each API have?
* What information do the endpoints provide?
* What kind of parameters does each endpoint take?
* What kind of response does the endpoint provide?

{: .tip}
Sometimes people use the term \"API\" to refer to a whole collection of endpoints, functions, or classes. Other times they use API to refer to a single endpoint. For example, a developer might say, \"We need you to document a new API.\" They mean they added a new endpoint or class to the API, not that they launched an entirely new API service.
