---
title: Introduction to REST API documentation
permalink: docapis_intro_to_rest_api_doc.html
course: "Documenting REST APIs"
weight: 1.6
sidebar: docapis
section: introtoapis
path1: docapis_introtoapis.html
last-modified: 2020-03-30
---

Before we dive into the technical aspects of APIs, let's explore the market, general landscape, and trends with API documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Different types of APIs {#diversity_of_apis}

The API landscape is diverse, with many different types of APIs. Although this course focuses on REST APIs, there are many other types of APIs as well. Often when people start browsing GitHub looking for API projects to join, or when they peruse the various APIs in their own company, they are surprised that the APIs look unfamiliar from the APIs covered in this course. There are many types of APIs you will likely encounter.

{% include ads.html %}

One way to sort the different types of APIs is to categorize them into two general buckets: web service APIs versus native library APIs. Web service APIs send and receive messages across the web using HTTP to transport the request and response; web service APIs are language agnostic. Native library APIs, on the other hand, involve incorporating code directly into your project for the desired functionality; native library APIs are language-specific.

{% include image_ad_right.html %}

The following list describes the most common types of APIs you will encounter:

* **Native library APIs**: Native library APIs, also called "library-based APIs," refer to code libraries (for example, JAR files) that developers add directly to their projects to provide additional functionality through classes or other functions that can be called locally. These APIs are specific to a programming language &mdash; e.g., Java, C++, Python, Ruby, .NET, and so on. With native library APIs, the functions are incorporated locally within the code to expand the operations you can perform within your project, usually without requiring you to access resources in the cloud. Native library APIs require you to be familiar with the programming language and tend to be the most challenging type of API to document for technical writers. See [Native Library APIs](nativelibraryapis_overview.html) in this course for more information into Java APIs.
* **SOAP APIs**: SOAP (Simple Object Access Protocol) APIs are web services that rely on a strict XML protocol to define the message exchange format for requests and responses. SOAP is common with financial APIs and regulated industries, though it has largely been replaced by REST in popularity. As a standardized protocol, SOAP's XML message format is usually defined through a WSDL (Web Services Description Language) file that specifies the allowed elements and attributes in the message exchange. The WSDL file is machine-readable and used by the servers interacting with each other to facilitate the communication. See [SOAP](https://en.wikipedia.org/wiki/SOAP) for introductory details. More detail about SOAP is also provided in [What is a REST API?](docapis_what_is_a_rest_api.html)
* **RPC-based APIs**: RPC stands for Remote Procedure Call. RPC-based APIs are web services that call a method on a remote server by delivering an encoded message through HTTP. The encoded message format might be XML for [XML-RPC APIs](https://en.wikipedia.org/wiki/XML-RPC) or JSON for [JSON-RPC APIs](https://en.wikipedia.org/wiki/JSON-RPC), but in both cases, the message travels to the remote server via HTTP like other web services. The methods on the remote servers can be in any language. For example, an XML-RPC API can call a Java or Python or C++ method.
* **gRPC APIs**: gRPC APIs are web services similar to RPC-based APIs in that the web service calls a function or runs a procedure on a remote server; however, gRPC uses [protocol buffers](https://developers.google.com/protocol-buffers/docs/overview#what-are-protocol-buffers) (specified in .proto files) rather than XML or JSON as the message exchange format. The protocol buffer lets you define the structure for your data and the way to convert (serialize) the data to be consumed by the receiving server. Protocol buffers are lighter and more efficient than XML. gRPC APIs were developed by Google and published as an open-source platform. See [gRPC APIs](https://grpc.io/docs/guides/) for details.
* **REST APIs**: REST (Representational State Transfer) are web services that let you make requests for resources through URL paths. You also supply the operation to be performed with the path (e.g., GET, CREATE, DELETE). As with other web service APIs, the requests and responses travel via HTTP across the web, and the servers receiving the requests are language agnostic about the request (not required to be a specific programming language). Responses are typically returned in JSON or XML formats. REST APIs have many different paths (endpoints) with various parameters you can configure to determine the results you want. This course mainly focuses on REST APIs. See [What is a REST API?](docapis_what_is_a_rest_api.html) for details.
* **GraphQL APIs**: GraphQL APIs are web services developed by Facebook that let users dynamically query for results they need through a single path (endpoint). GraphQL eliminates the need for multiple request URLs or other post-filtering on the returned results to get what you need. Your query retrieves only the needed data, allowing the request and response to be fast and specific. See [graphql.org](https://graphql.org/) for more detail. Also see [If I am learning to write developer documentation, should GraphQL be on my radar?](https://idratherbewriting.com/blog/graphql-relevance-and-documentation-strategies/).
* **Voice Assistant APIs**: Voice Assistant APIs are used with voice assistants such as Alexa. These APIs originate from the cloud and call an endpoint based on natural language processing of voice commands spoken by users. This is a case where APIs operate behind the scenes in the cloud, and developers create code, such as in a Lambda function (cloud computing), that handles incoming requests sent from the voice assistant API.
* **Internet of Things (IoT) APIs**: IoT APIs are used by physical devices (such as sensors or wearables) that transmit or receive data to connect the device to an online network. For example, a thermostat sensor in a room might transmit the temperature to a central controller (such as with Nest) via an IoT API. For more detail, see [App nirvana: When the Internet of Things meets the API economy](https://techbeacon.com/app-dev-testing/app-nirvana-when-internet-things-meets-api-economy). See also [APIs in the world of IoT](https://apifriends.com/api-management/iot-api/).

{% include random_ad4.html %}

For more reading, see [API types](https://ffeathers.wordpress.com/2014/02/16/api-types/) by Sarah Maddox. Sarah notes that there are also hardware APIs, object-remoting APIs, web socket APIs, OS functions and routines, and more.

{% include random_ad3.html %}

Despite the variety of APIs, the defining characteristic of nearly all developer documentation is that it involves documenting *some type of API*. This is why "API documentation" and "developer documentation" are used somewhat synonymously. APIs make life easier for developers (who are consuming the API) because the APIs perform functions or other tasks in more efficient ways.

Most companies make their information and services available through APIs to help third-parties adopt and implement the company's information/services. (This is the whole idea of the information economy.) Additionally, many APIs are available only internally to help developers within the same company implement various services. For example, a team handling payment controller operations might provide an API that another team developing the company's app can implement to handle payment transactions.

## Which type of API is most common?

As you browse APIs, you might be wondering which type of API is most common? Which types of APIs should you focus on? Among the web service APIs, [*The State of API 2019* report](https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf) from [Smartbear](https://smartbear.com/) surveyed more than 3,000 technology professionals and found that REST-OAS / Swagger was the most common web service used:

<figure><a target="_blank" class="noExtIcon" href="https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf"><img class="docimage medium" src="{{site.media}}/webserviceapisurvey.png" alt="Popularity of web service APIs" /></a><figcaption>Popularity of web service APIs (<i>The State of API 2019</i>, p.20)</figcaption></figure>

OAS stands for OpenAPI Specification, which is something I explore in-depth in [Introduction to the OpenAPI specification](pubapis_openapi_intro.html). The report even mentions some APIs not covered above &mdash; [JMS APIs](https://docs.oracle.com/javaee/6/tutorial/doc/bncdr.html), which are used with Java to send messages.

As you can see, when it comes to APIs, one size/type does not fit all. Developers will implement the type of API that best aligns with their scenario and requirements, just as there are different types of cars (sports cars, trucks, semi-trucks, sedans, hearses, etc.) for different trips, drivers, passengers, and roads.

In this course, we'll be diving into REST APIs in depth. Remember that with REST APIs, you don't deliver a library of files to users. Instead, the users make requests for the resources on a web server, and the server returns responses containing the information. Both the system initiating the request and the system providing the response can be in any programming language, so long as they transmit the message via HTTP.

REST APIs follow the same protocol as the web. When you open a browser and type a website URL (such as `https://idratherbewriting.com`), you're actually making a GET request for a resource on a server. The server responds with the content and the browser makes the content visible.

This course not only focuses on REST APIs because they are more popular and in-demand but because they're also more accessible to technical writers. You don't need to know a specific programming language to document REST APIs. And REST is becoming the most common type of API anyway.

## Many companies are new to API development

According to [*The State of API 2019*](https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf) report, more and more companies are starting to develop APIs:

> While modern APIs have been used in software development for more than two decades, the last 10 years have been marked by a growth in API adoption. Our survey found that 59% of organizations began developing APIs in the last five years. Furthermore, 28% only began developing APIs in the last two years. The 2019 State of API Report saw a higher percentage of early adopters than the 2016 State of API Report, with twice as many respondents saying that they only began developing APIs in the last year.

The accompanying graph is as follows:

<figure><a target="_blank" class="noExtIcon" href="https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf"><img class="docimage medium border" src="{{site.media}}/timedevelopingapis.png" alt="Most companies are new to API development" /></a><figcaption>Most companies are new to API development</figcaption></figure>

It's astonishing that API development is so nascent in companies &mdash; "59% of organizations began developing APIs in the last five years." If you look at Smartbear's [*The State of API 2016* report](https://static1.smartbear.co/smartbear/media/ebooks/state-of-api-report-2016.pdf), which surveyed 2,300 professionals, you find similar growth rates:

> 42.1% of API providers have been providing/developing APIs for
six years or more, while 51.5% began developing APIs in the last
five years.

API development is clearly an area that is somewhat new for many companies, and the directions, methods, and other paths through this new territory aren't clear. In fact, *The State of API 2019* report notes that companies are resoundingly asking for more standardization in this space.

[Programmableweb.com](https://programmableweb.com) charts and tracks the number of web APIs added to their directory. Programmableweb says, "Since January of 2014, an average of more than 2,000 APIs have been added per year" ([Research Shows Interest in Providing APIs Still High](https://www.programmableweb.com/news/research-shows-interest-providing-apis-still-high/research/2018/02/23)).

<figure><a target="_blank" class="noExtIcon" href="https://www.programmableweb.com/news/research-shows-interest-providing-apis-still-high/research/2018/02/23"><img class="docimage" src="{{site.media}}/growthinrestapis.png" alt="The phenomenal growth in web APIs" /></a><figcaption>The phenomenal growth in web APIs</figcaption></figure>

eBay's API in 2005 was one of the first web APIs &mdash; the API allowed sellers to manage their products in their eBay stores. Since then, there has been tremendous growth in web APIs. Given the importance of clear and accurate API documentation, this presents a perfect market opportunity for technical writers. Technical writers can apply their communication skills to fill a gap in a market that is rapidly expanding.

## Reasons for API growth?

Why are APIs growing in popularity, so much that you can pretty much search for any company name followed by "API" and land on developer docs for that company? One reason is that the web itself is evolving into a conglomeration of APIs. Instead of massive, do-it-all systems, websites are pulling in the services they need through APIs.

For example, rather than building your own search to power your website, you might use Algolia instead and leverage their service through the [Algolia Search API](https://www.algolia.com/doc/rest-api/search/). Rather than building your own payment gateway, you might integrate the [Stripe API](https://stripe.com/docs/api). Rather than building your own login system, you might use the [UserApp API](https://app.userapp.io/#/docs/). Rather than building your own e-commerce system, you might use the [Snipcart API](https://docs.snipcart.com/api-reference/introduction). And so on.

Practically every service provides its information and tools through an API that you use. Jekyll, a popular static site generator, doesn't have all the components you need to run a site. There's no newsletter integration, analytics, search, commenting systems, forms, chat e-commerce, surveys, or other systems. Instead, you leverage the services you need into your static Jekyll site. (CloudCannon has put together a [long list of services](http://cloudcannon.com/tips/2014/12/12/the-ultimate-list-of-services-for-static-websites.html) that you can integrate into your static site.)

<figure><a target="_blank" class="noExtIcon" href="http://jekyll.tips/services/"><img class="docimage medium" src="{{site.media}}/servicesforstaticsites.png" alt="Many sites pull in all the services they need through external APIs" /></a><figcaption>Many sites pull in all the services they need through external APIs</figcaption></figure>

This cafeteria-style model is replacing the massive, swiss-army-site model that tries to do anything and everything. It's better to rely on specialized companies to create powerful, robust tools (such as search) and leverage their service rather than trying to build all of these services yourself.

The way each site leverages its service is usually through a REST API of some kind. Overall, the web is becoming an interwoven mashup of many different services and APIs interacting with each other.

## The need for API documentation

We've established that APIs are on the rise, following the model of the web, and that REST APIs are leading the pack as the most common type of API. But what about documentation for these APIs?

When asked "What are the top three most important characteristics you need in an API?", [*The State of API 2019* report](https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf) found that "Accurate and detailed documentation" ranks third in importance:

<figure><a target="_blank" class="noExtIcon" href="https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf"><img class="docimage medium" src="{{site.media}}/mostimportantelementsapi2.png" alt="Top characteristics needed in an API (The State of API 2019, p.25)" /></a><figcaption>Top characteristics needed in an API (The State of API 2019, p.25)</figcaption></figure>

This rank is three higher than noted in the [*The State of API 2016* report](https://static1.smartbear.co/smartbear/media/ebooks/state-of-api-report-2016.pdf), which put "Accurate and detailed documentation" sixth in importance:

<figure><a target="_blank" class="noExtIcon" href="https://static1.smartbear.co/smartbear/media/ebooks/state-of-api-report-2016.pdf"><img class="docimage" src="{{site.media}}/mostimportant2016.png" alt="Documentation ranks sixth in importance" /></a><figcaption>In The State of API 2016 report, documentation ranked sixth in importance, p.19</figcaption></figure>

An even earlier survey conducted by Programmableweb in 2013 (which included 250 respondents) found that "Complete and accurate documentation" actually ranked as the most important factor in an API (see [API Consumers Want Reliability, Documentation and Community](http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07)).

<figure><a target="_blank" class="noExtIcon" href="http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07"><img class="docimage medium" src="{{site.media}}/progwebsurvey2.png" alt="Programmableweb survey" /></a><figcaption>Programmableweb survey showing that complete and accurate documentation is the most important factor for developers</figcaption></figure>

John Musser, one of the founders of Programmableweb.com, emphasizes the importance of documentation in his presentations. In [10 reasons why developers hate your API](https://www.infoq.com/presentations/API-design-mistakes), he says the number one reason developers hate your API is because "Your documentation sucks."

<figure><a target="_blank" class="noExtIcon" href="http://www.slideshare.net/jmusser/ten-reasons-developershateyourapi"><img class="docimage medium" src="{{site.media}}/yourdocsucks.png" alt="APIs often fail because the doc fails the developers" /></a><figcaption>APIs often fail because the doc fails the developers</figcaption></figure>

{% include random_ad2.html %}

Despite what might seem like a clear mandate for excellent API docs,  technical writers aren't always leveraged for these doc efforts. [*The 2019 State of API*](https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf) report found the following:

> Automation is playing a major role in how organizations document their APIs. 43% of respondents said they leverage an API standard, like the OpenAPI Specification, to generate API docs. One quarter of respondents are using a “code-first” approach, where developers are responsible for adding annotations to the API code to generate docs. Only 15% of participants are investing in technical writers to help with documenting APIs.

<figure><a target="_blank" class="noExtIcon" href="https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf"><img class="docimage medium" src="{{site.media}}/howteamsarehandlingdocs.png" alt="How teams are handling docs, The State of API 2019, p.42" /></a><figcaption>How teams are handling docs, The State of API 2019, p.42</figcaption></figure>

Of course, the finding that "Only 15% of participants are investing in technical writers..." will upset technical writers. Fortunately, this question is poorly worded and might account for the disheartening answers. The wording suggests that employing technical writers to create docs is an *alternative* to generating docs through the OpenAPI specification (OAS). In reality, technical writers should be collaborating with engineers to generate reference documentation through OAS. Reference docs account for only part of the needed documentation (maybe half, if that). In this course, I heavily recommend that technical writers generate reference documentation through the OAS. This is covered in the [OpenAPI spec and Swagger section](pubapis_rest_specification_formats.html).

Thus, the connotation with this survey question misunderstands and distorts the role that technical writers play. Technical writers aren't old-school grammarians using feather and quill to etch out documentation in a tediously manual way (rather than auto-generating it via the OAS). Instead, many technical writers promote and champion OAS as a standard for creating the reference docs.

[The *State of API 2016* report](https://static1.smartbear.co/smartbear/media/ebooks/state-of-api-report-2016.pdf) words the question a bit differently &mdash; "Does your organization have a formal API developer documentation process?" The 2016 report found that docs are a priority for about half of the respondents:

> Nearly 75% of API providers have a formal API developer
documentation process, but only 45.6% say that it is a priority for their team.
> A quarter of API providers (25.3%) say they either do not
have, or are unaware of their team’s API developer documentation process.

Again, the question here is a bit vague. Exactly what is a "formal documentation process"? Given that one of Smartbear's key products is [SwaggerHub](pubapis_swaggerhub_smartbear.html), which auto-generates reference documentation from the OpenAPI spec, a "formal documentation process" might mean generating docs from the OpenAPI spec.

## Why the increased focus on documentation?

Why does documentation for REST APIs merit so much attention? Why is it ranking so high in these surveys? In short, documentation for REST APIs is important because REST follows an *architectural style* rather than an exact protocol standard.

To understand the importance of documentation for REST APIs, it helps to compare REST with SOAP. REST APIs are a bit different from the SOAP APIs that were popular some years ago. SOAP APIs enforce a specific message format for sending requests and returning responses. As an XML message format, SOAP is very specific and has a WSDL (Web Service Description Language) file that describes how to interact with the API.

REST APIs, however, do not follow a standard message format. Instead, REST is an architectural *style*, a set of recommended practices for submitting requests and returning responses. To understand the request and response format for REST APIs, you don't consult the SOAP message specification or look at the WSDL file. Instead, you have to consult the REST API's *documentation*.

Each REST API functions a bit differently. There isn't a single way of doing things, and this flexibility and variety fuel the need for accurate and clear documentation. (I'll explain more about REST APIs in the [What is a REST API?](docapis_what_is_a_rest_api.html)) As long as REST APIs vary from one to another, there will be a strong need for technical writers to provide documentation.

## Job market is hot for API technical writers

Many employers are looking to hire technical writers who can create not only complete and accurate documentation but who can also create stylish outputs for their documentation. Here's a job posting from a recruiter looking for someone who can emulate Dropbox's documentation:

<figure><img class="docimage medium" src="{{site.media}}/indeed_com.png" alt="Job description asking for someone with skills to create doc site like Dropbox" /><figcaption>Job description asking for someone with skills to create doc site like Dropbox</figcaption></figure>

As you can see, the client wants to find "someone who'll emulate Dropbox's documentation."

Why does the look and feel of the documentation matter so much? With API documentation, there is no GUI interface for users to browse. Instead, the documentation *is* the interface. Employers know this, so they want to make sure they have the right resources to make their API docs stand out as much as possible.

Here's what the Dropbox API doc site looks like:

<figure><a target="_blank" class="noExtIcon" href="https://www.dropbox.com/developers"><img class="docimage" src="{{site.media}}/dropbox_clean.png" alt="Dropbox API's developer site has a simple but clean UI" /></a><figcaption>Dropbox API's developer site has a simple but clean UI</figcaption></figure>

It's not a sophisticated design. But its simplicity and brevity are what make it appealing. When you consider that the API documentation is more or less the product interface, building a sharp, modern-looking doc site is paramount for credibility and traction in the market. (I dive into the [job market for API documentation later](jobapis_overview.html).) Basically, if you have strong technical skills and experience writing for developers, you can have nearly any job you want in Silicon Valley and command a base salary of $100-$150k or more.

## API doc is a new world for most tech writers

API documentation is often a new world for technical writers. Many of the components may differ from traditional GUI documentation. For example, all of these aspects with developer documentation differ from traditional documentation:

* Authoring tools
* Audience
* Programming languages
* Reference topics
* User tasks

When you try to navigate the world of API documentation, you may be initially overwhelmed by the differences and intimidated by the tools and code. Additionally, the documentation content itself is often complex and requires familiarity with development concepts and processes.

Overall, technical writers are hungry to learn more about APIs. This course will help you build the foundation of what you need to know to get a job in API documentation and excel in this field. As a skilled API technical writer, you will be in high demand and will fulfill a critical role in companies that distribute their services through APIs.
