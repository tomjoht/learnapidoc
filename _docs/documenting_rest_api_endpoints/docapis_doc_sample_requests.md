---
title: "Step 4: Request example (API reference tutorial)"
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

## Example of a request

The following example shows a request example from the [Callfire API](https://developers.callfire.com/docs.html#pagination):

<a href="https://developers.callfire.com/docs.html#pagination"><img src="images/callfireapirequestexample.png"/></a>

The design of their API doc site arranges the sample requests and responses in the right column of a three-column layout. The request is formatted in curl, which we [explored earlier](docapis_install_curl).

```curl
curl -u "username:password" -H "Content-Type:application/json" -X GET "https://api.callfire.com/v2/texts?limit=50&offset=200"
```

curl is a common format to show requests for several reasons:

* curl is language agnostic, so it's not specific to one particular programming language.
* curl shows the header information that is required in the request.
* curl also shows the method used with the request, and other parameters.

Here's another example of a curl request in the Parse API:

<a href="http://docs.parseplatform.org/rest/guide/#updating-objects" class="noExtIcon"><img src="images/parseapirequest.png"/></a>

You can add backslashes in curl to separate out each parameter onto its own line (though, as I pointed out in the [curl tutorial](docapis_make_curl_call.html#make-the-request-in-curl-windows-7), Windows has trouble with backslashes).

Other API doc sites might use a more plain URL, such as this lackluster example from Twitter:

<a class="noExtIcon" href="https://developer.twitter.com/en/docs/accounts-and-users/follow-search-get-users/api-reference/get-friends-list"><img src="images/twitterrequestexample.png" /></a>

One problem with this Twitter request example is that it doesn't indicate if any header information needs to be passed to authorize the request.

## Multiple request examples

If you have a lot of parameters, it might make sense to include several request examples. In the CityGrid Places API, the [`where` endpoint](http://docs.citygridmedia.com/display/citygridv2/Places+API#PlacesAPI-WhereSearchHTTPSEndpoint) is as follows:

```
https://api.citygridmedia.com/content/places/v2/search/where
```

However, there are [literarlly 17 possible query string parameters](http://docs.citygridmedia.com/display/citygridv2/Places+API#PlacesAPI-WhereSearchRequest) you can use with this endpoint. As a result, the documentation includes several sample requests show the parameters used with the endpoint:

<a href="http://docs.citygridmedia.com/display/citygridv2/Places+API" class="noExtIcon"><img src="images/search_usage_examples.png" alt="CityGrid Places API example" /></a>

These examples show several common combinations of the parameters. Adding multiple requests as samples  makes sense when the parameters wouldn't usually be used together. For example, there are few cases where you might actually include all 17 parameters in the same request, so any sample will be limited in what it can show.

This example shows "Find hotels in Boston, viewing results 1-5 in alphabetical order""

```
https://api.citygridmedia.com/content/places/v2/search/where?what=hotels&where=boston,ma&page=1&rpp=5&sort=alpha&publisher=test&format=json
```

If you click the link, you can see the response directly.

How many different requests and responses should you show? There's probably no easy answer, but probably no more than a few. You decide what makes sense for your API. Users usually understand the pattern after a few examples.

{% include random_ad.html %}

In the [responses topic](docapis_doc_sample_responses.html#dynamic_responses), I get into more details about dynamically showing the response when users click the request.

## API explorers provide interactivity with your own data

Many APIs have an API explorer feature. For example, here's a typical reference page for Spotify's API docs:

<a href="https://developer.spotify.com/web-api/console/get-album/" class="noExtIcon"><img src="images/spotifyapiconsole.png"/></a>

Flickr's API docs also have a built-in API Explorer:

<a href="https://www.flickr.com/services/api/explore/flickr.photos.search" class="noExtIcon"><img src="images/flickrapiexplorer.png"/></a>

As does the New York Times API:

<a href="http://developer.nytimes.com/article_search_v2.json#/Console/GET/articlesearch.json"><img src="images/nytimesrequestexample.png"/></a>

The API Explorer lets you insert your own values, your own API key, and other parameters into a request so you can see the responses directly in the Explorer. Being able to see your own data maybe makes the response more real and immediate.

However, if you don't have the right data in your system, using your own API key may not show you the full response that's possible. It works best when the resources involve public information and the requests are GET requests.

## API Explorers can be dangerous in the hands of users

Although interactivity is powerful, API Explorers can be a dangerous addition to your site. What if a novice user trying out a DELETE method accidentally removes data? How do you later remove the test data added by POST or PUT methods?

It's one thing to allow GET methods, but if you include other methods, users could inadvertently corrupt their data. In Sendgrid's API, they include a warning message to users before testing out calls with their API Explorer:

<a href="https://sendgrid.com/docs/API_Reference/Web_API/blocks.html" class="noExtIcon"><img src="images/sendgridwarningmessage.png" alt="SendGrid API Explorer warning message" /></a>

Foursquare's API docs used to have a built-in API explorer in the previous version of their docs, but they have since removed it. I'm not sure why.

<a href="https://developer.foursquare.com/docs" class="noExtIcon"><img src="images/foursquareapiexplorer.png" alt="Foursquare's API Explorer" /></a>

As far as integrating other API Explorer tooling, this is a task that should be relatively easy for developers. All the Explorer does is map values from a field to an API call and return the response to the same interface. In other words, the API plumbing is all there &mdash; you just need a little JavaScript and front-end skills to make it happen.

However, you don't have to build your own tooling. Existing tools such as [Swagger UI](http://swagger.io/swagger-ui/) (which parses a OpenAPI specification document) and [Readme.io](http://readme.io) (which allows you to enter the details manually) can integrate API Explorer functionality directly into your documentation.

{: .tip}
For a tutorial on how to create your own API explorer functionality, see the [Swagger UI tutorial](pubapis_swagger.html).

## Document the sample request with the surfreport/{beachId} endpoint

{% include activity.html %}

Let's return to the `surfreport/{beachId}` endpoint in our [sample scenario](docapis_new_endpoint_to_doc.html). Create a request example for it.

Here's mine:

<div class="docSample">

<h2>Sample request</h2>

<pre>
curl --get --include 'https://simple-weather.p.mashape.com/surfreport/123?units=imperial&days=1&time=1433772000' -H 'X-Mashape-Key: APIKEY' -H 'Accept: application/json'
</pre>
</div>
