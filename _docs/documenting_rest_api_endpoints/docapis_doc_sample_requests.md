---
title: "API reference tutorial step 4: Request example"
permalink: /docapis_doc_sample_requests.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.4
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

{% include workflow_map.html step="4" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/apiref8.png"/>
{% endif %}

> **{{site.data.apirefsections.request_example.term}}**: {{site.data.apirefsections.request_example.def}}

* TOC
{:toc}

## Example

<a class="noExtIcon" href="https://developer.twitter.com/en/docs/accounts-and-users/follow-search-get-users/api-reference/get-friends-list"><img src="images/twitterrequestexample.png" /></a>

Although you've already listed the endpoint and parameters, you should also include one or more sample requests that shows the endpoint integrated with parameters in an easy-to-understand way.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Example

In the CityGrid Places API, the basic places endpoint is as follows:

```
https://api.citygridmedia.com/content/places/v2/search/where
```

However, there are 17 possible query string parameters you can use with this endpoint. As a result, the documentation includes several sample requests show the parameters used with the endpoint:

<a href="http://docs.citygridmedia.com/display/citygridv2/Places+API" class="noExtIcon"><img src="images/search_usage_examples.png" alt="CityGrid Places API example" /></a>

These examples show several common combinations of the parameters. Adding multiple requests as samples  makes sense when the parameters wouldn't usually be used together. For example, there are few cases where you might actually include all 17 parameters in the same request, so any sample will be limited in what it can show.

This example shows "Italian restaurants in Chicago using placement 'sec-5'":

```
https://api.citygridmedia.com/content/places/v2/search/where?what=restaurant&where=chicago,IL&tag=11279&placement=sec-5&publisher=test
```

If responses vary a lot, consider including multiple responses with the requests. How many different requests and responses should you show? There's probably no easy answer, but probably no more than a few. You decide what makes sense for your API.

{% include random_ad.html %}

Some sample requests in API don't show responses in the endpoint documentation. Instead, you click the request URL, which executes a GET request that doesn't require any authorization. You then see the response dynamically in the browser. The [Open Weather API](https://openweathermap.org/current) provides an example.

For example, if you click one of the "Examples of API calls," such as [http://samples.openweathermap.org/data/2.5/weather?q=London](http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1), you see the response dynamically returned in the browser.

<a href="http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1" class="noExtIcon"><img class="medium" src="images/dynamicresponseinbrowser.png"/></a>

This approach is common and works well (for GET requests) when you can pull it off. Unfortunately, this approach makes it difficult to define the responses. (The CityGrid API documentation is detailed and does include information in later sections that describes the responses.)

## API explorers provide interactivity with your own data

Many APIs have a feature called an API explorer. For example, here's a typical reference page for Spotify's API docs:

<a href="https://developer.spotify.com/web-api/console/get-album/" class="noExtIcon"><img src="images/spotifyapiconsole.png"/></a>

Flickr's API docs also have a built-in API Explorer:

<a href="https://www.flickr.com/services/api/explore/flickr.photos.search" class="noExtIcon"><img src="images/flickrapiexplorer.png"/></a>

As does the New York Times API:

<a href="http://developer.nytimes.com/article_search_v2.json#/Console/GET/articlesearch.json"><img src="images/nytimesrequestexample.png"/></a>

The API Explorer lets you insert your own values, your own API key, and other parameters into a request so you can see the responses directly in the Explorer. Being able to see your own data maybe makes the response more real and immediate.

However, if you don't have the right data in your system, using your own API key may not show you the full response that's possible.

Here's another example from the New York Times API, which uses Lucybot (powered by Swagger) to handle the interactive API explorer features:

<a href="http://developer.nytimes.com/books_api.json" class="noExtIcon"><img src="images/nytimesapirequests.png" alt="NYTimes API Explorer created through Lucybot and Swagger" /></a>

This example compels users to try out the endpoints to get a better understanding of the information they return.

## API Explorers can be dangerous in the hands of users

Although interactivity is powerful, API Explorers can be a dangerous addition to your site. What if a novice user trying out a DELETE method accidentally removes data? How do you later remove the test data added by POST or PUT methods?

It's one thing to allow GET methods, but if you include other methods, users could inadvertently corrupt their data. With [IBM's Watson APIs](http://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/apis/), which use the Swagger UI, they removed the Try it out button.

In Sendgrid's API, they include a warning message to users before testing out calls with their API Explorer:

<a href="https://sendgrid.com/docs/API_Reference/Web_API/blocks.html" class="noExtIcon"><img src="images/sendgridwarningmessage.png" alt="SendGrid API Explorer warning message" /></a>

Foursquare's API docs used to have a built-in API explorer in the previous version of their docs, but they have since removed it. I'm not sure why.

 <a href="https://developer.foursquare.com/docs" class="noExtIcon"><img src="images/foursquareapiexplorer.png" alt="Foursquare's API Explorer" /></a>

 The [IBM Watson API](https://watson-api-explorer.mybluemix.net/) use [Swagger UI](pubapis_swagger.html) but they have suppressed the "Try it out" feature.

As far as integrating other API Explorer tooling, this is a task that should be relatively easy for developers. All the Explorer does is map values from a field to an API call and return the response to the same interface. In other words, the API plumbing is all there &mdash; you just need a little JavaScript and front-end skills to make it happen.

However, you don't have to build your own tooling. Existing tools such as [Swagger UI](http://swagger.io/swagger-ui/) (which parses a OpenAPI specification document) and [Readme.io](http://readme.io) (which allows you to enter the details manually) can integrate API Explorer functionality directly into your documentation.

## Document the sample request with the surfreport/{beachId} endpoint

{% include activity.html %}

Come back to the <code>surfreport/{beachId}</code> endpoint example. Create a sample request for it.

Here's mine:

<div class="docSample">

<h2>Sample request</h2>

<pre>
curl --get --include 'https://simple-weather.p.mashape.com/surfreport/123?units=imperial&days=1&time=1433772000' -H 'X-Mashape-Key: APIKEY' -H 'Accept: application/json'
</pre>
</div>
