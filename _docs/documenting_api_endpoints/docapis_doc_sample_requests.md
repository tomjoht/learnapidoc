---
title: "Step 4: Request example (API reference tutorial)"
permalink: docapis_doc_sample_requests.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.5
sidebar: docapis
section: docendpoints
path1: docendpoints.html
last-modified: 2020-05-13
---

{% include workflow_map.html step="4" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/apiref4.png"/>
{% endif %}

{{site.data.glossary.request_example.def}}

* TOC
{:toc}

## Examples of requests

The following example shows a sample request from the [Callfire API](https://developers.callfire.com/docs.html#pagination):

<figure><a target="_blank" class="noExtIcon" href="https://developers.callfire.com/docs.html#pagination"><img class="docimage large" src="{{site.media}}/callfireapirequestexample.png" alt="Sample request from Callfire" /></a><figcaption>Sample request from Callfire</figcaption></figure>

The design of this API doc site arranges the sample requests and responses in the right column of a three-column layout. The request is formatted in curl, which we explored earlier in [Make a curl call](docapis_make_curl_call.html).

```curl
curl -u "username:password" -H "Content-Type:application/json" -X GET "https://api.callfire.com/v2/texts?limit=50&offset=200"
```

{% include random_ad3.html %}

curl is a common format to show requests for several reasons:

* curl is language agnostic, so it's not specific to one particular programming language.
* curl shows the header information required in the request.
* curl shows the method used with the request.

In general, use curl to show your sample request. Here's another example of a curl request in the Parse API:

<a href="http://docs.parseplatform.org/rest/guide/#updating-objects" class="noExtIcon"><img src="{{site.media}}/parseapirequest2.png"/></a>

You can add backslashes in curl to separate each parameter onto its own line (though, as I pointed out in the [curl tutorial](docapis_make_curl_call.html#windows_notes), Windows has trouble with backslashes).

{% include random_ad4.html %}

Other API doc sites might use the full resource URL, such as this plain example from Twitter:

<a class="noExtIcon" href="https://developer.twitter.com/en/docs/accounts-and-users/follow-search-get-users/api-reference/get-friends-list"><img src="{{site.media}}/twitterrequestexample.png" /></a>

The resource URL includes both the base path and the endpoint. One problem with showing the full resource URL is that it doesn't indicate if any header information needs to be passed to authorize the request. (If your API consists of GET requests only and doesn't require authorization, great, but few APIs are set up this way.) curl requests can easily show any header parameters.

## Multiple request examples

{% include random_ad2.html %}

If you have a lot of parameters, consider including several request examples. In the CityGrid Places API, the [`where` endpoint](http://docs.citygridmedia.com/display/citygridv2/Places+API#PlacesAPI-WhereSearchHTTPSEndpoint) is as follows:

```
https://api.citygridmedia.com/content/places/v2/search/where
```

However, there are [literally 17 possible query string parameters](http://docs.citygridmedia.com/display/citygridv2/Places+API#PlacesAPI-WhereSearchRequest) you can use with this endpoint. As a result, the documentation includes several sample requests that show various parameter combinations:

<a href="http://docs.citygridmedia.com/display/citygridv2/Places+API" class="noExtIcon"><img src="{{site.media}}/search_usage_examples.png" alt="CityGrid Places API example" /></a>

Adding multiple request examples makes sense when the parameters wouldn't usually be used together. For example, there are few cases where you might actually include all 17 parameters in the same request, so any sample will be limited in what it can show.

This example shows how to "Find hotels in Boston, viewing results 1-5 in alphabetical order":

```
https://api.citygridmedia.com/content/places/v2/search/where?what=hotels&where=boston,ma&page=1&rpp=5&sort=alpha&publisher=test&format=json
```

If you [click the link](https://api.citygridmedia.com/content/places/v2/search/where?what=hotels&where=boston,ma&page=1&rpp=5&sort=alpha&publisher=test&format=json), you can see the response directly. In the [responses topic](docapis_doc_sample_responses_and_schema.html#dynamic_responses), I get into more detail about dynamically showing the response when users click a request.

How many different requests and responses should you show? There's probably no easy answer, but probably no more than a few. You decide what makes sense for your API. Users will usually understand the pattern after a few examples.

{% include ads.html %}

{% include image_ad_right.html %}

## Requests in various languages

As noted earlier, in [What is a REST API?](docapis_what_is_a_rest_api.html), REST APIs are language agnostic. The universal protocol helps facilitate widespread adoption across programming languages. Developers can code their applications in any language, from Java to Ruby to JavaScript, Python, C#, Node JS, or something else. As long as developers can make an HTTP web request in that language, they can use the API. The response from the web request will contain the data in either JSON or XML.

Because you can't entirely know which language your end users will be developing in, it's kind of fruitless to try to provide code samples in every language. Many APIs just show the format for submitting requests and a sample response, and the authors will assume that developers will know how to submit HTTP requests in their particular programming language.

However, some APIs do show simple requests in a variety of languages. Here's an example from Twilio:

<a href="https://www.twilio.com/docs/api/rest/making-calls" class="noExtIcon"><img src="{{site.media}}/twiliocodeexamples.png" alt="Twilio code samples" /></a>

You can select which language you want for the sample request: C#, curl, Java, Node.js, PHP, Python, or Ruby.

Here's another example from the Clearbit API:

<a href="https://clearbit.com/docs?javascript#enrichment-api-combined-api" class="noExtIcon"><img src="{{site.media}}/clearbitrequestexamples.png" alt="Clearbit code samples" /></a>

You can see the request in Shell (curl), Ruby, Node, or Python. Developers can easily copy the needed code into their applications, rather than figuring out how to translate the curl request into a particular programming language.

Providing a variety of requests like this, often displayed through [tabs](https://getbootstrap.com/docs/3.3/javascript/#tabs), helps make your API easier to implement. It's even better if you can automatically populate the API keys with the actual user's API keys based on their logged-in profile.

However, don't feel so intimidated by this smorgasbord of code samples. Some API doc tools (such as [Readme.com](https://readme.com/) or [SwaggerHub](pubapis_swaggerhub_smartbear.html)) can automatically generate these code samples because the patterns for making REST requests in different programming languages follow a common template.

{: .tip}
Many times, product managers know which programming languages the target users develop applications with. If you know the target audience's preferred programming language, you can focus your code samples on that language only.

## Auto-generating code samples

If you're not using an authoring tool that auto-generates code examples, and you want to provide these code snippets, you can auto-generate code samples from both Postman and Paw, if desired.

[Paw](https://paw.cloud/) (for Mac) lets you export your request into nearly every conceivable language:

<a href="https://luckymarmot.com/paw/extensions/" class="noExtIcon"><img src="{{site.media}}/pawcodegenerators.png" alt="Paw code generator" /></a>

After you have a request configured (a process similar to [Postman](docapis_postman.html)), you can generate a code snippet by going to **File > Export Request**.

The Postman app can also generate code snippets in a similar way. I covered this process in an earlier tutorial on [Inspect the JSON from the response payload](docapis_json_console.html). In Postman, after you configure your request, click the **Code** link (which appears below the Save button in the upper-right area).

<img src="{{site.media}}/postmangeneratecodesnippet.png" class="medium" alt="Generate code snippet" />

Then select the language you want, such as JavaScript > Jquery AJAX:

<img src="{{site.media}}/postman_javascript_ajax.png" class="medium" alt="JavaScript Ajax code snippet" />

{: .note}
Although these code generators are probably helpful, they may or may not work for your API. Always review code samples with developers. In most cases, developers supply the code samples for the documentation, and technical writers briefly comment on the code samples.

(For an activity that involves using the generated jQuery code from Postman, see [Inspect the JSON from the response payload](docapis_json_console.html) and [Access and print a specific JSON value](docapis_access_json_values.html).)

## SDKs provide tooling for APIs

A lot of times, developers will create an [SDK (software development kit)](docapis_sdks.html) that accompanies a REST API. The SDK helps developers implement the API using specific tooling. While APIs are language agnostic, SDKs are language specific.

For example, at one company I worked at, we had both a REST API and a JavaScript SDK. Because JavaScript was the target language developers were working in, the company developed a JavaScript SDK to make it easier to work with REST using JavaScript. You could submit REST calls through the JavaScript SDK, passing a number of parameters relevant to web designers.

An SDK is any kind of tooling that makes it easier to work with your API. It's extremely common for a company to provide a language-agnostic REST API and then to develop an SDK that makes it easy to implement the API in the primary language they expect users to implement the API in. As such, peppering your sample requests with these small request snippets in other languages isn't that important, since the SDK provides an easier implementation. If you have an SDK, you'll want to make more detailed [code samples](docapis_codesamples_bestpractices.html) showing how to use the SDK.

## API explorers provide interactivity with your own data

Many APIs have an API explorer feature that lets users make actual requests directly from the documentation. For example, here's a typical reference page for Spotify's API docs:

<a href="https://developer.spotify.com/web-api/console/get-album/" class="noExtIcon"><img src="{{site.media}}/spotifyapiconsole.png"/></a>

Flickr's API docs also have a built-in API Explorer:

<a href="https://www.flickr.com/services/api/explore/flickr.photos.search" class="noExtIcon"><img src="{{site.media}}/flickrapiexplorer.png"/></a>

As does the New York Times API:

<a class="noExtIcon" href="http://developer.nytimes.com/article_search_v2.json#/Console/GET/articlesearch.json"><img src="{{site.media}}/nytimesrequestexample.png"/></a>

The API Explorer lets you insert your own values, your own API key, and other parameters into a request so you can see the responses directly in the API Explorer. Being able to see your own data makes the response more real and immediate.

However, if you don't have the right data in your system, using your own API key may not show you the full response that's possible. It works best when the resources involve public information and the requests are GET requests.

## API Explorers can be dangerous in the hands of users

Although interactivity is powerful, API Explorers can be a dangerous addition to your site. What if a novice user who is trying out a DELETE method accidentally removes data? How do you later remove the test data added by POST or PUT methods?

It's one thing to allow GET methods, but if you include other methods, users could inadvertently corrupt their data. In Sendgrid's API, they include a warning message to users before testing out calls with their API Explorer:

<a href="https://sendgrid.com/docs/API_Reference/Web_API/blocks.html" class="noExtIcon"><img src="{{site.media}}/sendgridwarningmessage.png" alt="SendGrid API Explorer warning message" /></a>

Foursquare's API docs used to have a built-in API explorer in the previous version of their docs (shown below), but they have since removed it. I'm not sure why &mdash; maybe they ran into some of these issues.

<a href="https://developer.foursquare.com/docs" class="noExtIcon"><img src="{{site.media}}/foursquareapiexplorer.png" alt="Foursquare's API Explorer" /></a>

As far as integrating custom API Explorer tooling, this is a task that should be relatively easy for developers. All the API Explorer does is map values from a field to an API call and return the response to the same interface. In other words, the API plumbing is all there &mdash; you just need a little JavaScript and front-end skills to make it happen.

However, you don't have to build your own tooling. Existing tools such as [Swagger UI](http://swagger.io/swagger-ui/) (which parses an [OpenAPI specification document](pubapis_openapi_tutorial_overview.html)) and [Readme.com](http://readme.com) (which allows you to enter the details manually or from an OpenAPI specification) can integrate API Explorer functionality directly into your documentation.

{: .tip}
For a tutorial on how to create your own API explorer functionality, see the [Swagger UI tutorial](pubapis_swagger.html).

## Request example for the surfreport endpoint

Let's return to the `surfreport/{beachId}` endpoint in our [sample scenario](docapis_new_endpoint_to_doc.html) and create a request example for it. Here's my approach:

<div class="docSample">
{% include_relative surfreport_request.html %}
</div>

## Next steps

Now that we've created a sample request, the next steps naturally follow &mdash; include a sample response that corresponds with the same request. We'll also document the model or schema of the response in general. Go to [Step 5: Response example and schema (API reference tutorial)](docapis_doc_sample_responses_and_schema.html).
