---
title: What is a REST API?
permalink: docapis_what_is_a_rest_api.html
keywords:
course: "Documenting REST APIs"
weight: 1.7
sidebar: docapis
section: introtoapis
path1: docapis_introtoapis.html
last-modified: 2020-03-15
---

This course is all about learning by doing, but while *doing* various activities, I'll periodically pause and dive into some more abstract concepts to fill in more detail. This topic is one of those deep-dive moments into concepts. Here we'll explore what a REST API is, comparing it to other types of APIs like SOAP. REST APIs have common characteristics but no definitive protocols like its SOAP predecessor.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## What is an API?

In general, an API (or Application Programming Interface) provides an interface between two systems. It's like a cog that allows two systems to interact with each other. In this case, the two systems are computers that interact programmatically through the API.

<figure><a class="noCrossRef" href="http://bit.ly/1DexWM0" class="noExtIcon"><img class="medium" class="small" src="{{site.media}}/spinning_gears.jpg" alt="Spinning gears. By Brent 2.0. Flickr." /></a><figcaption>An API is like a cog that allows two different systems to interact. (Image from <a href='https://www.flickr.com/photos/brentinoz/'>Brent 2.0</a>, <a href='http://bit.ly/1DexWM0'>spinning gears</a>, <a href='https://creativecommons.org/licenses/by-nd/2.0/legalcode'>CC BY-ND 2.0</a>.)</figcaption></figure>

APIs are often pulling and pushing data underneath user interfaces. Consider the example of a flight booking site like [kayak.com](https://kayak.com) or [orbitz.com](https://orbitz.com). When you search for flights, the site reaches out to many other airline services to retrieve information about flights matching your query. kayak.com itself doesn't have all of this information. Instead, it gathers this data through APIs.

{% include random_ad3.html %}

Or consider other similar services. When you see a YouTube video embedded on a site, the site itself doesn't host the video. Instead, the embed code contains API requests that get the video from YouTube's hosting centers. When you embed a Twitter widget on your site, the widget's APIs pull in tweets from a Twitter server onto your site.

Consider another example from Fire TV. Suppose you want to view a pay-per-view event that requires payment. A pop-up dialog might appear letting you enter your credit card details. Your payment gets processed and you receive confirmation about the purchase's success. This payment processing doesn't occur within the app. Instead, the app makes API calls out to payment servers with the needed information, and all that payment processing happens in the cloud. When the processing finishes, the API returns a confirmation response.

{% include random_ad4.html %}

The next time you push a button in some interface, think about what's going on underneath. Most likely, the button is internally wired to make calls to an external service for the information needed. That call is made through an API that performs a request and receives a response.

## APIs that use HTTP protocol are "web services"

A "web service" is a web-based application that provides resources in a format consumable by other computers. Web services include various types of APIs, including both REST and SOAP APIs. Web services are basically request-and-response interactions between clients and servers (a computer requests a resource, and the web service responds to the request).

All APIs that use HTTP protocol as the transport format for requests and responses are considered "web services." With web services, the client making the request for the resource and the API server providing the response can use any programming language or platform &mdash; it doesn't matter because the message request and response are made through a common HTTP web protocol.

The web protocol is part of the beauty of web services: they are language agnostic and therefore interoperable across different platforms and systems. When documenting a REST API, it doesn't matter whether engineers build the API with Java, Ruby, Python, or some other language. The requests are made over HTTP, and the responses are returned through HTTP.

The following diagram shows the general model of a REST API:

<figure><img class="docimage large" src="{{site.media}}/{% if site.format == "kindle" %}restapi_restapi.png{% else %}restapi_restapi.svg{% endif %}" alt="General model of a REST API" /><figcaption>General model of a REST API</figcaption></figure>

As you can see, there's a request and a response between a client to the API server. The client and server can be based in any language, but HTTP is the protocol used to transport the message. This request-and-response pattern is fundamentally how REST APIs work.

Each programming language that makes the request will have a different way of submitting a web request and parsing the response in its language. These language-specific functions for making requests and parsing responses aren't part of the REST API (though they might be provided in an [accompanying SDK](docapis_sdks.html)). The REST API is language agnostic and handles incoming and outgoing information across HTTP, just like the web.

## SOAP APIs are the predecessor to REST APIs

Before REST became the most popular web service, SOAP (Simple Object Access Protocol) was much more common. To understand REST a little better, it helps to have some context with SOAP. This way you can see what makes REST different.

{% include random_ad2.html %}

SOAP is a standardized protocol that requires XML as the message format for requests and responses. As a standardized protocol, the message format is usually defined through something called a WSDL (Web Services Description Language) file.

The WSDL file defines the allowed elements and attributes in the message exchanges. The WSDL file is machine readable and used by the servers interacting with each other to facilitate the communication.

SOAP messages are enclosed in an "envelope" that includes a header and body, using a specific XML schema and namespace. For an example of a SOAP request and response format, see [SOAP vs REST 101: Understand The Differences](http://www.soapui.org/testing-dojo/world-of-api-testing/soap-vs--rest-challenges.html).

{% include image_ad_right.html %}

The main problem with SOAP is that the XML message format is too verbose and heavy. It is particularly problematic with mobile scenarios where file size and bandwidth are critical. The verbose message format slows processing times, which makes SOAP interactions lethargic.

SOAP is still used in enterprise application scenarios (especially with financial institutions) with server-to-server communication, but in the past five years, SOAP has mostly been replaced by REST, especially for APIs on the open web.

## REST is a style, not a standard

Like SOAP, REST (Representational State Transfer) uses HTTP as the transport protocol for the message requests and responses. However, unlike SOAP, REST is an architectural style, not a standard protocol. This is why REST APIs are sometimes called _RESTful_ APIs &mdash; REST is a general style that the API follows.

A RESTful API might not follow all of the official characteristics of REST as outlined by [Dr. Roy Fielding](https://en.wikipedia.org/wiki/Roy_Fielding), who first described the model. Hence these APIs are "RESTful" or "REST-like." (Some developers insist on using the term "RESTful" when the API doesn't fulfill all the characteristics of REST, but most people just refer to them as "REST APIs" regardless.)

{% include ads.html %}

As an architectural style, you aren't limited to XML as the message format. REST APIs can use any message format the API developers want to use, including XML, JSON, Atom, RSS, CSV, HTML, and more.

Despite the variety of message format options, most REST APIs use JSON (JavaScript Object Notation) as the default message format. They use JSON because it provides a lightweight, simple, and more flexible message format that increases the speed of communication. The lightweight nature of JSON also allows for mobile processing scenarios and is easy to parse on the web using JavaScript.

In contrast, with XML, XSLT is used more for presenting or rather "transforming" (the "T" in XSLT) the content stored in an XML language. XSLT enables the human readability (rather than processing data stored in an XML format).

### REST focuses on resources accessed through URLs

Another unique aspect of REST is that REST APIs focus on *resources* (that is, *things*, rather than actions) and ways to access the resources. Resources are typically different types of information. You access the resources through URLs (Uniform Resource Locators), just like going to a URL in your browser retrieves an information resource. The URLs are accompanied by a method that specifies how you want to interact with the resource.

Common methods include GET (read), POST (create), PUT (update), and DELETE (remove). The endpoint usually includes query parameters that specify more details about the representation of the resource you want to see. For example, you might specify (in a query parameter) that you want to limit the display to 5 instances of the resource.

Here's what a sample endpoint might look like:

```
http://apiserver.com/homes?limit=5&format=json
```

The endpoint shows the whole path to the resource. However, in documentation, you usually separate this URL into more specific parts:

* The **base path** (or base URL or host) refers to the common path for the API. In the example above, the base path is `http://apiserver.com`.
* The **endpoint** refers to the end path of the endpoint. In the example above, `/homes`.
* The `?limit=5&format=json` part of the endpoint contains query string parameters for the endpoint.

In the example above, this endpoint would get the "homes" resource and limit the result to 5 homes. It would return the response in JSON format.

You can have multiple endpoints that refer to the same resource. Here's one variation:

```
http://apiserver.com/homes/{home id}
```

The above URL might be an endpoint that retrieves a home resource that contains a particular ID. What is transferred back from the server to the client is the "representation" of the resource. The resource may have many different representations (showing all homes, homes that match certain criteria, homes in a specific format, and so on), but here we want to see a home with a particular ID.

{: .tip}
The relationship between resources and methods is often described in terms of "nouns" and "verbs." The resource is the noun because it is an object or thing. The verb is what you're doing with that noun. Combining nouns with verbs is how you form the language in REST.

We'll explore endpoints in much more depth in the sections to come (for example, in the [API reference tutorial](docapis_api_reference_tutorial_overview.html) we go through each property in a resource). But I wanted to provide a brief overview here.

### The web itself follows REST

The terminology of "GET requests" and "message responses" transported over "HTTP protocol" might seem unfamiliar, but this is just the official REST terminology to describe what's happening. Because you've used the web, you're already familiar with how REST APIs work &mdash; the web itself essentially follows a RESTful style.

If you open a browser and go to [https://idratherbewriting.com](https://idratherbewriting.com), you're really using HTTP protocol (`https://`) to submit a GET request to the resource available on a web server. The response from the server sends the content at this resource back to you using HTTP. Your browser is just a client that makes the message response look pretty.

<figure><img class="docimage medium" src="{{site.media}}/{% if site.format == "kindle" %}restapi_www.png{% else %}restapi_www.svg{% endif %}" alt="Web as REST API" /><figcaption>Web as REST API</figcaption></figure>

You can see this response in [curl](docapis_install_curl.html) if you open a terminal prompt and type `curl https://idratherbewriting.com`. (This assumes you have [curl installed](docapis_install_curl.html).)

Because the web itself is an example of RESTful style architecture, the way REST APIs work will likely become second nature to you.

### REST APIs are stateless and cacheable {#stateless_and_cacheable}

REST APIs are also stateless and cacheable. Stateless means that each time you access a resource through an endpoint, the API provides the same response. It doesn't remember your last request and take that into account when providing the new response. In other words, there aren't any previously remembered states that the API takes into account with each request.

The responses can also be cached to increase the performance. If the browser's cache already contains the information asked for in the request, the browser can just return the information from the cache instead of getting the resource from the server again.

Caching with REST APIs is similar to caching of web pages. The browser uses the last-modified-time value in the HTTP headers to determine if it needs to get the resource again. If the content hasn't been modified since the last time it was retrieved, the cached copy can be used instead. Caching increases the speed of the response.

REST APIs have other characteristics, which you can dive more deeply into on this [REST API Tutorial](http://www.restapitutorial.com/lessons/whatisrest.html). One of these characteristics includes links in the responses to allow users to page through to additional items. This feature is called HATEOAS, or Hypermedia As The Engine of Application State.

Understanding REST at a higher, more theoretical level isn't my goal here, nor is this knowledge necessary to document a REST API. However, there are many technical books, courses, and websites that explore REST API concepts, constraints, and architecture in more depth that you can consult if you want to. For example, check out [Foundations of Programming: Web Services by David Gassner](https://www.lynda.com/Software-Development-tutorials/Foundations-Programming-Web-Services/126131-2.html) on lynda.com.

### REST APIs don't use WSDL files, but some specs exist

An important aspect of REST APIs, especially in the context of documentation, is that they don't use a WSDL file to describe the elements and parameters allowed in the requests and responses.

Although there is a possible WADL (Web Application Description Language) file that can be used to describe REST APIs, WADL files are rarely used because they don't adequately describe all the resources, parameters, message formats, and other attributes of the REST API. (Remember that the REST API is an architectural style, not a standardized protocol.)

To understand how to interact with a REST API, you have to *read the documentation* for the API. The need to read the docs makes the technical writer's role extremely important with REST APIs.

Some formal specifications &mdash; for example, [OpenAPI](pubapis_openapi_intro.html) and [RAML](pubapis_raml.html) &mdash; have been developed to describe REST APIs. When you describe your API using the OpenAPI or RAML specification, tools that can read those specifications (such as [Swagger UI](pubapis_swagger.html) or the [RAML API Console](pubapis_raml.html#apiconsole)) will generate an interactive documentation output.

The OpenAPI specification document can take the place of the WSDL file that was more common with SOAP. Tools like [Swagger UI](pubapis_swagger.html) that read the specification documents usually produce interactive documentation (featuring API Consoles or API Explorers) and allow you to try out REST calls and see responses directly in the browser.

But don't expect the Swagger UI or RAML API Console documentation outputs to include all the details users would need to work with your API. For example, these outputs won't include info about [authorization keys](docapis_more_about_authorization.html), details about workflows and interdependencies between endpoints, and so on. The Swagger or RAML output usually contains reference documentation only, which typically accounts for only a third or half of the total needed documentation (depending on the API).

Overall, REST APIs are more varied and flexible than SOAP APIs, and you almost always need to read the documentation to understand how to interact with a REST API. As you explore REST APIs, you will find that they differ significantly from one to another (especially the format and display of their documentation sites, which we'll look at in [Survey of API doc sites](pubapis_apilist.html)), but they all share the common patterns outlined here. At the core of any REST API is a request and response transmitted over the web.

## Additional reading

* [REST: a FAQ](https://medium.com/@diogo.lucas/rest-a-faq-b3cd7ed62828), by Diogo Lucas
* [Learn REST: A RESTful Tutorial](http://www.restapitutorial.com/), by Todd Fredrich
* [Understanding RPC Vs REST For HTTP APIs](https://www.smashingmagazine.com/2016/09/understanding-rest-and-rpc-for-http-apis/), by Phil Sturgeon
