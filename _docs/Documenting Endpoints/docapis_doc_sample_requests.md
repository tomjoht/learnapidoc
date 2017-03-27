---
title: Documenting sample requests
permalink: /docapis_doc_sample_requests.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.8
sidebar: docapis
section: docendpoints
---

Although you've already listed the endpoint and parameters, you should also include one or more sample requests that shows the endpoint integrated with parameters in an easy-to-understand way.

In the CityGrid Places API, the basic places endpoint is as follows:

```
https://api.citygridmedia.com/content/places/v2/search/where
```

However, there are 17 possible query string parameters you can use with this endpoint. As a result, the documentation includes several sample requests show the parameters used with the endpoint:

<a href="http://docs.citygridmedia.com/display/citygridv2/Places+API"><img src="images/search_usage_examples.png" alt="CityGrid Places API example" /></a>

These examples show several common combinations of the parameters. Adding multiple requests as samples  makes sense when the parameters wouldn't usually be used together. For example, there are few cases where you might actually include all 17 parameters in the same request, so any sample will be limited in what it can show.

This example shows "Italian restaurants in Chicago using placement 'sec-5'"*:

```
https://api.citygridmedia.com/content/places/v2/search/where?what=restaurant&where=chicago,IL&tag=11279&placement=sec-5&publisher=test
```

If responses vary a lot, consider including multiple responses with the requests. How many different requests and responses should you show? There's probably no easy answer, but probably no more than a few. You decide what makes sense for your API.

In the CityGrid Places API, notice how the examples don't include the sample responses on the same page but rather link to live examples. When you click the URL link, you execute the request in your browser and can see the response. (Here's [an example](http://api.citygridmedia.com/content/places/v2/search/where?type=movietheater&where=90045&publisher=test)).

This approach is common and works well (for GET requests) when you can pull it off. Unfortunately, this approach makes it difficult to define the responses. (The CityGrid API documentation is detailed and does include information in later sections that describes the responses.)

## API explorers provide interactivity with your own data

Many APIs have a feature called an API explorer. For example, you can see Foursquare's API explorer here:

 <a href="https://developer.foursquare.com/docs/explore"><img src="images/foursquareapiexplorer.png" alt="Foursquare's API Explorer" /></a>

The API Explorer lets you insert your own values, your own API key, and other parameters into a request so you can see the responses directly in the Explorer. Being able to see your own data maybe makes the response more real and immediate.

However, if you don't have the right data in your system, using your own API key may not show you the full response that's possible.

Here's another example from the New York Times API, which uses Lucybot (powered by Swagger) to handle the interactive API explorer features:

 <a href="http://developer.nytimes.com/books_api.json"><img src="images/nytimesapirequests.png" alt="NYTimes API Explorer created through Lucybot and Swagger" /></a>

 This example compels users to try out the endpoints to get a better understanding of the information they return.

## API Explorers can be dangerous in the hands of users

Although interactivity is powerful, API Explorers can be a dangerous addition to your site. What if a novice user trying out a DELETE method accidentally removes data? How do you later remove the test data added by POST or PUT methods?

It's one thing to allow GET methods, but if you include other methods, users could inadvertently corrupt their data. With [IBM's Watson APIs](http://www.ibm.com/smarterplanet/us/en/ibmwatson/developercloud/apis/), which use the Swagger UI, they removed the Try it out button.

In Sendgrid's API, they include a warning message to users before testing out calls with their API Explorer:

<a href="https://sendgrid.com/docs/API_Reference/Web_API/blocks.html"><img src="images/sendgridwarningmessage.png" alt="SendGrid API Explorer warning message" /></a>

As far as integrating other API Explorer tooling, this is a task that should be relatively easy for developers. All the Explorer does it map values from a field to an API call and return the response to the same interface. In other words, the API plumbing is all there &mdash; you just need a little JavaScript and front-end skills to make it happen.

However, you don't have to build your own tooling. Existing tools such as [Swagger UI](http://swagger.io/swagger-ui/) (which parses a Swagger spec file) and [Readme.io](http://readme.io) (which allows you to enter the details manually) can integrate an API Explorer functionality directly into your documentation.

## Document the sample request with the surfreport/{beachId} endpoint

Come back to the `surfreport/{beachId}` endpoint example. Create a sample request for it.

Here's mine:

<div class="docSample">

<h2>Sample request</h2>

<pre>
curl --get --include 'https://simple-weather.p.mashap .com/surfreport/123?units=imperial&days=1&time=1433772000' -H 'X-Mashape-Key: APIKEY' -H 'Accept: application/json'
</pre>
</div>
