---
title: Scenario for using a weather API
permalink: docapis_scenario_for_using_weather_api.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.01
sidebar: docapis
section: likeadeveloper
path1: likeadeveloper.html
last-modified: 2021-12-13
---

Let's start using an actual REST API to get more familiar with how they work. In the upcoming sections, you'll explore some weather APIs in the context of a specific use case: retrieving a weather forecast. By first playing the role of a developer using an API, you'll gain a greater understanding of how your audience will use APIs, the type of information they'll need, and what they might do with the information.

* TOC
{:toc}

## Sample scenario: How windy is it?

Let's say that you're a web developer and you want to add weather information to your site. Your site is for cyclists. You want to allow users who come to your site to see the current wind and temperature conditions. You want something like this:

<figure><img class="docimage small" src="{{site.media}}/{% if site.format == "kindle" %}restapi_windycall.png{% else %}restapi_windycall.svg{% endif %}" alt="Wind meter conditions for website" /><figcaption>Wind meter conditions for website</figcaption></figure>

You don't have your own meteorological service, so you'll need to make some calls out to a weather service to get this information. Then you will present that information to users.

## Get an idea of the end goal {#endgoal}

To give you an idea of the end goal, here's a sample: [idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html](https://idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html). It's not necessarily styled the same as the mockup, but it answers the question, "What's the current wind and temperature?"

Click the **Check wind conditions** button to see wind and temperature details. When you request this data, a call is made to the [OpenWeatherMap API](https://openweathermap.org/api). The API retrieves the information, and some JavaScript code prints the information on the page.

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/docapis_scenario_for_using_weather_api.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<a target="_blank" href="https://idratherbewriting.com/learnapidoc/assets/files/wind-openweathermap.html" class="noExtIcon"><img src="{{site.media}}/checkwindconditions.png" class="medium" /></a>

{% endif %}

The above example is extremely simple. You could also build an attractive interface like this:

<a class="noCrossRef" href="https://weather.yahoo.com/united-states/california/santa-clara-2488836/" class="noExtIcon"><img class="medium" src="{{site.media}}/attractiveinterfaceweather.png" alt="Sample weather interface" /></a>

The concept and general techniques are more or less the same. Behind the scenes, the code makes requests to a weather service API and then displays the returned information in a stylized user interface.

##  <i class="fa fa-user-circle"></i> Activity: Explore the OpenWeatherMap API {#explore_openweathermap_api}

Although there are [many good weather API options for developers](https://superdevresources.com/weather-forecast-api-for-developing-apps/), I decided to use the [OpenWeatherMap API](https://openweathermap.org) in this course because the service is easy to use, free, and stable.

{% include random_ad2.html %}

Let's explore the basic sections in the [OpenWeatherMap API](https://openweathermap.org/api/):

1.  Go to the [openweathermap.org](https://openweathermap.org).
2.  Click **API** in the top navigation bar.
3.  In the **Current weather data** section, click the **API doc** button.
4.  Click some of the links in the **Examples of API calls** sections.

    Get a sense of the information this Current Weather Data API provides. The API calls provide developers with ways to pull information into their applications. In other words, the APIs will provide the data plumbing for the applications that developers build.

5.  Answer the following questions about the Current Weather Data API endpoint:

    * Does the API provide the information we need about temperature, wind speed, wind direction, and current conditions?
    * How many different ways can you specify the location for the weather information?
    * What does a sample request look like?
    * How many endpoints does the API have?
    * What authorization credentials are required to get a response?

## Explore the Aeris Weather API {#aeris}

Before diving too far down in the OpenWeatherMap API, let's look at another weather API for contrast. In contrast to the OpenWeatherMap API, the [Aeris Weather API](http://www.aerisweather.com/) is a bit more robust and extensive. Explore the Aeris Weather API by doing the following:

1. Go to [www.aerisweather.com](http://www.aerisweather.com).
2. Click **Documentation** on the top navigation bar. Then click **API Documentation**.
3. In the left sidebar, under Reference, click **Endpoints**. Select the **All** tab to show all endpoints, and then scroll down a bit and click **[observations](https://www.aerisweather.com/support/docs/api/reference/endpoints/observations/)**.

	<a class="noCrossRef" href="https://www.aerisweather.com/support/docs/api/reference/endpoints/observations/" class="noExtIcon"><img class="medium" src="{{site.media}}/aerisweather3.png" alt="Aeris Endpoints" /></a>

4. Browse the type of information that is available through this endpoint. Does this endpoint provide information about wind and temperature that would work for our sample development scenario?

{: .tip}
Here's the Aeris weather forecast API in action making mostly the same calls as I showed earlier with OpenWeatherMap: <a href="https://idratherbewriting.com/learnapidoc/assets/files/wind-aeris.html" alt="Aeris example">idratherbewriting.com/learnapidoc/assets/files/wind-aeris.html</a>. (Note: If this returns `[Object][Object]`, it's because my API key expired. You can view the page source to see how the call is constructed.)

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

{% include ads.html %}

Spend a little time exploring the features and information that these weather APIs provide. Try to answer these basic questions:

* What does each API do?
* How many endpoints does each API have?
* What information do the endpoints provide?
* What kind of parameters does each endpoint take?
* What kind of response does the endpoint provide?

{: .tip}
Sometimes people use the term \"API\" to refer to a whole collection of endpoints, functions, or classes. Other times they use API to refer to a single endpoint. For example, a developer might say, \"We need you to document a new API.\" They mean they added a new endpoint or class to the API, not that they launched an entirely new API service.

{% include random_ad3.html %}
