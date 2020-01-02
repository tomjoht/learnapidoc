---
title: The market for REST API documentation
permalink: /docapis_intro_to_rest_api_doc.html
course: "Documenting REST APIs"
weight: 1.2
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
---

Before we dive into the technical aspects of APIs, let's explore the market, general landscape, and trends with API documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Diversity of APIs {#diversity_of_apis}

The API landscape is diverse, with many different types of APIs:

* **Native library APIs**: Refers to code libraries (for example, JAR files) that developers add to their projects to provide additional functionality through classes or other functions that can be called locally. These APIs are specific to the programming language &mdash; e.g., Java, C++, Python, Ruby, .NET, and so on. With native library APIs, all the interactions take place locally within the project &mdash; there isn't any message sent across HTTP to a remote server. See [Native Library APIs](nativelibraryapis_overview.html) in this course for more information into Java APIs.
* **SOAP APIs**: Stands for Simple Object Access Protocol. SOAP is a web service that relies on a strict XML protocol to define the message exchange for requests and responses. SOAP is common with financial APIs and regulated industries, though it has largely been replaced by REST. As a standardized protocol, SOAP's XML message format is usually defined through a WSDL (Web Services Description Language) file that specifies the allowed elements and attributes in the message exchanges. The WSDL file is machine readable and used by the servers interacting with each other to facilitate the communication. See [SOAP](https://en.wikipedia.org/wiki/SOAP) for introductory details. More detail about SOAP is also provided in [What is a REST API?](docapis_what_is_a_rest_api.html).
* **RPC-based APIs**: Stands for Remote Procedure Call. A web service that calls a method on a remote server by delivering an encoded message through HTTP. The encoded message is in XML for [XML-RPC APIs](https://en.wikipedia.org/wiki/XML-RPC) or JSON for [JSON-RPC APIs](https://en.wikipedia.org/wiki/JSON-RPC), but in both cases the message travels to the remote server via HTTP like other web services. The methods on the remote servers can be in any language. For example, an XML-RPC API can call a Java or Python or C++ method.
* **gRPC APIs**: A web service that is similar to RPC-based APIs in that the service calls a function or runs a procedure on a remote server; however, gRPC uses [protocol buffers](https://developers.google.com/protocol-buffers/docs/overview#what-are-protocol-buffers) (specified in .proto files) rather than XML or JSON as the message exchange format. The protocol buffer lets you define the structure for your data and the way to convert (serialize) the data to be consumed by the receiving server. Protocol buffers are lighter and more efficient than XML. gRPC APIs were developed by Google and published as an open-source platform. See [gRPC APIs](https://grpc.io/docs/guides/) for details.
* **REST APIs**: A web service that lets you make requests for resources through endpoints (URLs). Like other web services, the requests and responses travel through HTTP across the web, and the servers receiving the requests can be in any language. Responses are typically returned in JSON. REST APIs have many different endpoints (paths) with various parameters you can configure to determine the results you want. This course mainly focuses on REST APIs. See [What is a REST API?](docapis_what_is_a_rest_api.html) for details.
* **GraphQL APIs**: A web service developed by Facebook that lets users query for results they need through a single endpoint. GraphQL eliminates the need for multiple request URLs or other filtering on the returned results to get what you need. Your query retrieves only the needed data, allowing the request and response to be fast and specific. See [graphql.org](https://graphql.org/) for more detail. Also see [If I am learning to write developer documentation, should GraphQL be on my radar? -- guest post by Casey Armstrong](https://idratherbewriting.com/blog/graphql-relevance-and-documentation-strategies/).
* **Voice Assistant APIs**: These APIs are used with voice assistants such as Alexa. These APIs operate in the cloud and call an endpoint based on natural language processing of voice commands spoken by users. This is a case where APIs operate behind the scenes in the cloud, and developers create code, such as in a Lambda function (cloud computing), that handles incoming requests and sends out messages.
* **Internet of Things (IoT) APIs**: These are APIs used by physical devices (such as sensors or wearables) that transmit or receive data through APIs to connect the device to an online network. For example, a thermostat sensor in a room might transmit the temperature to a central controller (such as with Nest). For more detail, see [App nirvana: When the Internet of Things meets the API economy](https://techbeacon.com/app-dev-testing/app-nirvana-when-internet-things-meets-api-economy)
https://apifriends.com/api-management/iot-api/).

{% include random_ad.html %}

Sarah Maddox also lists other types of APIs in [API types](https://ffeathers.wordpress.com/2014/02/16/api-types/). In addition to the above, there are hardware APIs, object-remoting APIs, web socket APIs, OS functions and routines, and more.

Despite the variety of APIs, the defining characteristic of nearly all developer documentation is that it involves documenting some type of API. All of these APIs make life easier for developers (who are consuming the API) because the APIs perform functions or other tasks in more efficient ways.

{% include callout.html title="A metaphor for APIs" type="primary" content="As a practical example, suppose you're sitting at your desk at you want a cup of coffee. Rather than go to the trouble to make it yourself, you say, \"Hey John, will you get me a cup of coffee?\" John then retrieves a cup, reloads the coffee filter with new grounds, starts the brewer, pours the brewed coffee into your cup, adds some cream and sugar, and delivers it so you at your desk. When developers implement an API, they're essentially saying \"Hey John, get me coffee\" in their applications, and behind the scenes the API performs all of the details of the requested task. This speeds up development and makes the code much more efficient." %}

Most companies make their information and services available through APIs to help third-parties adopt and implement the company's the information/services. (This is the whole idea of the information economy.) Additionally, many APIs are only available internally to help developers within the same company implement various services. For example, a team handling payment controller operations might provide an API that another team developing an app can implement to handle payment transactions.

## Which type of API is most common?

As you browse APIs, you might be wondering which type of API is most common? Which types of APIs should you focus on? Among the web service APIs, the [2019 State of API report](https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf) from Smartbear surveyed more than 3,000 developers and found the following:

{% include course_image.html url="https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf" size="medium" filename="webserviceapisurvey" ext_print="png" ext_web="png" alt="Popularity of web service APIs" caption="Popularity of web service APIs (<i>State of API 2019</i>, p.20)" %}

The report even mentions some APIs not covered above &mdash; [JMS APIs](https://docs.oracle.com/javaee/6/tutorial/doc/bncdr.html), which are used with Java to send messages.

As you can see, one size does fit all. Developers will implement the type of API that best aligns with their scenario and requirements, just as there are different types of cars (sportscars, trucks, semi-trucks, sedans, hurses, etc.) for different journeys on or off road.

Despite the variety, "REST - OAS/Swagger" is the most common API and has emerged as the leading standard. As such, we'll be diving into REST APis in depth. Remember with REST APIs, you don't deliver a library of files to users. Instead, the users make requests for the resources on a web server, and the server returns responses containing the information.

REST APIs follow the same protocol as the web. When you open a browser and type a website URL (such as `https://idratherbewriting.com`), you're actually making a GET request for a resource on a server. The server responds with the content and the browser makes the content visible.

This course focuses mostly on REST APIs because REST APIs are more popular and in demand, and because they're also more accessible to technical writers. You don't need to know programming to document REST APIs. And REST is becoming the most common type of API anyway.

## Programmableweb API survey rates doc #1 factor in APIs

Before we get into the nuts and bolts of documenting REST APIs, let me provide some context about the popularity of the REST API documentation market in general.

In a [2013 survey by Programmableweb.com](http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07) (which is a site that tracks and lists web APIs), about 250 developers were asked to rank the most important factors in an API. "Complete and accurate documentation" ranked as #1.

{% include course_image.html url="http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07" size="medium" filename="progwebsurvey" ext_print="png" ext_web="png" alt="Programmableweb survey" caption="Programmableweb survey showing that complete and accurate documentation is the most important factor for developers" %}

John Musser, one of the founders of Programmableweb.com, emphasizes the importance of documentation in his presentations. In [10 reasons why developers hate your API](https://www.infoq.com/presentations/API-design-mistakes), he says the number one reason developers hate your API is because "Your documentation sucks."

{% include random_ad2.html %}

{% include course_image.html url="http://www.slideshare.net/jmusser/ten-reasons-developershateyourapi" filename="yourdocsucks" ext_print="png" ext_web="png" alt="APIs often fail because the doc fails the developers" caption="APIs often fail because the doc fails the developers" %}

If REST APIs were an uncommon software product, it wouldn't be that big of a deal. But actually, REST APIs are taking off in a huge way. Programmableweb.com charts and tracks the number of web APIs added to their directory. Programmableweb says, "Since January of 2014, an average of more than 2,000 APIs have been added per year" ([Research Shows Interest in Providing APIs Still High](https://www.programmableweb.com/news/research-shows-interest-providing-apis-still-high/research/2018/02/23)).

{% include course_image.html url="https://www.programmableweb.com/news/research-shows-interest-providing-apis-still-high/research/2018/02/23" filename="growthinrestapis" ext_print="png" ext_web="png" alt="The phenomenal growth in web APIs" caption="The phenomenal growth in web APIs" %}

eBay's API in 2005 was one of the first web APIs (the API allowed sellers to manage their products in their eBay stores). Since then, there has been tremendous growth in web APIs. Given the importance of clear and accurate API documentation, this presents a perfect market opportunity for technical writers. Technical writers can apply their communication skills to fill a gap in a market that is rapidly expanding.

## Because REST APIs are a style rather than a standard, docs are essential

REST APIs are a bit different from the SOAP APIs that were popular some years ago. SOAP APIs (service-oriented architecture protocol) enforce a specific message format for sending requests and returning responses. As an XML message format, SOAP is very specific and has a WSDL (Web Service Description Language) file that describes how to interact with the API.

REST APIs, however, do not follow a standard message format. Instead, REST is an architectural *style*, a set of recommended practices for submitting requests and returning responses. To understand the request and response format for REST APIs, you don't consult the SOAP message specification or look at the WSDL file. Instead, you have to consult the REST API's *documentation*.

Each REST API functions a bit differently. There isn't a single way of doing things, and this flexibility and variety fuel the need for accurate and clear documentation. (I'll explain more about REST APIs in the [What is a REST API?](docapis_what_is_a_rest_api.html)) As long as REST APIs vary from one to another, there will be a strong need for technical writers to provide documentation.

## The web is becoming an interwoven mashup of APIs

Another reason why REST APIs are taking off is that the web itself is evolving into a conglomeration of APIs. Instead of massive, do-it-all systems, websites are pulling in the services they need through APIs.

For example, rather than building your own search to power your website, you might use Algolia instead and leverage their service through the [Algolia Search API](https://www.algolia.com/doc/rest-api/search/). Rather than building your own payment gateway, you might integrate the [Stripe API](https://stripe.com/docs/api). Rather than building your own login system, you might use the [UserApp API](https://app.userapp.io/#/docs/). Rather than building your own e-commerce system, you might use the [Snipcart API](https://docs.snipcart.com/api-reference/introduction). And so on.

Practically every service provides its information and tools through an API that you use. Jekyll, a popular static site generator, doesn't have all the components you need to run a site. There's no newsletter integration, analytics, search, commenting systems, forms, chat e-commerce, surveys, or other systems. Instead, you leverage the services you need into your static Jekyll site. CloudCannon has put together a [long list of services](http://cloudcannon.com/tips/2014/12/12/the-ultimate-list-of-services-for-static-websites.html) that you can integrate into your static site.

{% include course_image.html url="http://jekyll.tips/services/" filename="servicesforstaticsites" ext_print="png" ext_web="png" alt="Many sites pull in all the services they need through external APIs" caption="Many sites pull in all the services they need through external APIs" %}

This cafeteria-style model is replacing the massive, swiss-army-site model that tries to do anything and everything. It's better to rely on specialized companies to create powerful, robust tools (such as search) and leverage their service rather than trying to build all of these services yourself.

The way each site leverages its service is usually through a REST API of some kind. Overall, the web is becoming an interwoven mashup of many different services and APIs interacting with each other.

## Job market is hot for API technical writers

Many employers are looking to hire technical writers who can create not only complete and accurate documentation but who can also create stylish outputs for their documentation. Here's a job posting from a recruiter looking for someone who can emulate Dropbox's documentation:

{% include course_image.html  size="medium" filename="indeed_com" ext_print="png" ext_web="png" alt="Job description asking for someone with skills to create doc site like Dropbox" caption="Job description asking for someone with skills to create doc site like Dropbox" %}

As you can see, the client wants to find "someone who'll emulate Dropbox's documentation."

Why does the look and feel of the documentation matter so much? With API documentation, there is no GUI interface for users to browse. Instead, the documentation *is* the interface. Employers know this, so they want to make sure they have the right resources to make their API docs stand out as much as possible.

Here's what the Dropbox API looks like:

{% include course_image.html url="https://www.dropbox.com/developers" filename="dropbox_clean" ext_print="png" ext_web="png" alt="Dropbox API's developer site has a simple but clean UI" caption="Dropbox API's developer site has a simple but clean UI" %}

It's not a sophisticated design. But its simplicity and brevity are what make it appealing. When you consider that the API documentation is more or less the product interface, building a sharp, modern-looking doc site is paramount for credibility and traction in the market. (I dive into the [job market for API documentation later](jobapis_overview.html).)

## API doc is a new world for most tech writers

API documentation is often a new world to technical writers. Many of the components may differ from traditional GUI documentation. For example, all of these aspects with developer documentation differ from traditional documentation:

* Authoring tools
* Audience
* Programming languages
* Reference topics
* User tasks

When you try to navigate the world of API documentation, you may be initially overwhelmed by the differences and intimidated by the tools and code. Additionally, the documentation content itself is often complex and requires familiarity with development concepts and processes.

Realizing there was a need for more information, in 2014 I guest-edited a special issue of Intercom dedicated to API documentation.

{% include course_image.html url="https://idratherbewritingmedia.com/files/intercom_vol61_issue8.pdf" size="small" filename="intercom" ext_print="png" ext_web="png" alt="STC Intercom issue (that I guest-edited) focusing on API documentation" caption="STC Intercom issue focused on API documentation" %}

{: .tip}
You can read this issue for free [here](https://idratherbewritingmedia.com/files/intercom_vol61_issue8.pdf). (The STC made this PDF available for free.)

This issue was a good start, but many technical writers asked for more training. The Silicon Valley STC chapter held a couple of workshops dedicated to APIs. Both workshops sold out quickly (with 60 participants in the first, and 100 participants in the second). API documentation is particularly hot in the San Francisco Bay area, where many companies have REST APIs requiring documentation. From these early days, I realized that API documentation would be a hot topic, so I turned my focus toward this area for the next few years &mdash; giving more presentations, workshops, and all the while building this comprehensive course.

Overall, technical writers are hungry to learn more about APIs. This course will help you build the foundation of what you need to know to get a job in API documentation and excel in this field. As a skilled API technical writer, you will be in high demand and will fulfill a critical role in companies that distribute their services through APIs.
