---
title: Scenario for using a weather API
permalink: /docapis_scenario_for_using_weather_api.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.01
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
last-modified: 2020-05-15
---

Let's start using an actual REST API to get more familiar with how they work. In the upcoming sections, you'll explore some weather APIs in the context of a specific use case: retrieving a weather forecast. By first playing the role of a developer using an API, you'll gain a greater understanding of how your audience will use APIs, the type of information they'll need, and what they might do with the information.

* TOC
{:toc}

## Sample scenario: How windy is it?

Let's say that you're a web developer and you want to add weather information to your site. Your site is for cyclists. You want to allow users who come to your site to see the current wind and temperature conditions. You want something like this:

{% if site.format == "pdf" or site.format == "kindle" %}
<img class="small" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/restapi_windycall.png" alt="Wind meter conditions for website" />
{% elsif site.format == "web" %}
<img class="small" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/restapi_windycall.svg" alt="Wind meter conditions for website" />
{% endif %}

You don't have your own meteorological service, so you'll need to make some calls out to a weather service to get this information. Then you will present that information to users.

## Get an idea of the end goal {#endgoal}

To give you an idea of the end goal, here's a sample: [idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html](https://idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html). It's not necessarily styled the same as the mockup, but it answers the question, "What's the current wind and temperature?"

Click the **Check wind conditions** button to see wind and temperature details. When you request this data, a call is made to the [OpenWeatherMap API](https://openweathermap.org/api). The API retrieves the information, and some JavaScript code prints the information on the page.

<a target="\_blank" href="https://idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html" class="noExtIcon"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/checkwindconditions.png" class="medium" /></a>

The above example is extremely simple. You could also build an attractive interface like this:

<a class="noCrossRef" href="https://weather.yahoo.com/united-states/california/santa-clara-2488836/" class="noExtIcon"><img class="medium" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/attractiveinterfaceweather.png" alt="Sample weather interface" /></a>

The concept and general techniques are more or less the same. Behind the scenes, the code makes requests to a weather service API and then displays the returned information in a stylized user interface.

## Explore the OpenWeatherMap API

Although there are [many good weather API options for developers](https://superdevresources.com/weather-forecast-api-for-developing-apps/), I decided to use the [OpenWeatherMap API](https://openweathermap.org) in this course because the service is easy to use, free, and stable.

{% include random_ad2.html %}

{% include content/activities/explore_openweathermap_api.md %}

## Explore the Aeris Weather API {#aeris}

Before diving too far down in the OpenWeatherMap API, let's look at another weather API for contrast. In contrast to the OpenWeatherMap API, the [Aeris Weather API](http://www.aerisweather.com/) is a bit more robust and extensive. Explore the Aeris Weather API by doing the following:

1. Go to [www.aerisweather.com](http://www.aerisweather.com).
2. Click **Documentation** on the top navigation bar.  
3. Click the **Weather Data API** section, and then click **Data Endpoints**.
3. Click **Reference** (in the sidebar) and then click **Endpoints**. (Or go [here](https://www.aerisweather.com/support/docs/api/reference/endpoints/) directly.)

	<a class="noCrossRef" href="http://www.aerisweather.com/support/docs/api/reference/endpoints/" class="noExtIcon"><img class="medium" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/aerisendpoints.png" alt="Aeris Endpoints" /></a>

4. In the list of endpoints, click **[observations](https://www.aerisweather.com/support/docs/api/reference/endpoints/observations/)**.
5. Browse the type of information that is available through this endpoint. Does this endpoint provide information about wind and temperature that would work for our sample development scenario?

{: .tip}
Here's the Aeris weather forecast API in action making mostly the same calls as I showed earlier with OpenWeatherMap: <a href="https://idratherbewriting.com/learnapidoc/assets/files/wind-aeris.html" alt="Aeris example">idratherbewriting.com/learnapidoc/assets/files/wind-aeris.html</a>.

For our development scenario (showing weather on a website), there are dozens of different weather APIs we could use. As you create your API documentation, think about how your users might have to make the same decisions in choosing APIs. Are there several APIs that provide similar information? What will make your API stand out more? Although you probably can't pick and choose what information your API returns, you might at least argue that the docs for your API will be superior!

## <i class="fa fa-user-circle"></i> More weather APIs

{% include image_ad_right.html %}

APIs differ considerably in their design, presentation, responses, and other detail. For more comparison, check out some of the following weather APIs:

* [Accuweather API](https://developer.accuweather.com/)
* [Weatherbit API](https://www.weatherbit.io/api)
* [ClimaCell's Weather API](https://www.climacell.co/weather-api/)

Each weather API has an entirely different approach to documentation. As you'll see going through this course, the variety and uniqueness of each API doc site (even when approaching the same topic &mdash; a weather forecast) presents a lot of challenges to tech writing teams. Not only do website styles vary but also API terminology and other vocabulary to describe similar concepts.

{% include random_ad4.html %}

As I mentioned earlier, REST APIs are an architectural style that follows common characteristics and principles; they don't all follow the same standard or specification. Users have to read the documentation to understand how to use the API. (See ["REST is a style, not a standard."](docapis_what_is_a_rest_api.html#rest-is-a-style-not-a-standard))

{% include random_ad1.html %}

Spend a little time exploring the features and information that these weather APIs provide. Try to answer these basic questions:

* What does each API do?
* How many endpoints does each API have?
* What information do the endpoints provide?
* What kind of parameters does each endpoint take?
* What kind of response does the endpoint provide?

{: .tip}
Sometimes people use the term \"API\" to refer to a whole collection of endpoints, functions, or classes. Other times they use API to refer to a single endpoint. For example, a developer might say, \"We need you to document a new API.\" They mean they added a new endpoint or class to the API, not that they launched an entirely new API service.

{% include random_ad3.html %}
