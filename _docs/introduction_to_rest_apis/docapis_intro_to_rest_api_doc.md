---
title: The market for REST API documentation
permalink: /docapis_intro_to_rest_api_doc.html
course: "Documenting REST APIs"
weight: 1.2
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
---

Before we dive into the technical aspects of APIs, let's explore the market and general landscape and trends with API documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Diversity of APIs

The API landscape is diverse. In addition to web service APIs (which include REST), there are web socket APIs, hardware APIs, and more. Despite the wide variety, there are mostly just two main types of APIs most technical writers interact with:

* Native library APIs (such as APIs for Java, C++, and .NET)
* REST APIs (which are a type of web API)

With native library APIs, you deliver a library of classes or functions to developers, and they incorporate this library into their projects. They can then call those classes or functions directly in their code.

{% include random_ad.html %}

With REST APIs, you don't deliver a library of files to users. Instead, the users make requests for the resources on a web server, and the server returns responses containing the information.

REST APIs follow the same protocol as the web. When you open a browser and type a website URL (such as `https://idratherbewriting.com`), you're actually making a GET request for a resource on a server. The server responds with the content and the browser makes the content visible.

This course focuses mostly on REST APIs because REST APIs are more popular and in demand, and because they're also more accessible to technical writers. You don't need to know programming to document REST APIs. And REST is becoming the most common type of API anyway. (Even so, I also cover native library APIs briefly in a [Native Library APIs](nativelibraryapis_overview.html).)

## Programmableweb API survey rates doc #1 factor in APIs

Before we get into the nuts and bolts of documenting REST APIs, let me provide some context about the popularity of the REST API documentation market in general.

In a [2013 survey by Programmableweb.com](http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07) (which is a site that tracks and lists web APIs), about 250 developers were asked to rank the most important factors in an API. "Complete and accurate documentation" ranked as #1.

{% include course_image.html url="http://www.programmableweb.com/news/api-consumers-want-reliability-documentation-and-community/2013/01/07" size="medium" filename="progwebsurvey" ext_print="png" ext_web="png" alt="Programmableweb survey" caption="Programmableweb survey showing that complete and accurate documentation is the most important factor for developers" %}

John Musser, one of the founders of Programmableweb.com, emphasizes the importance of documentation in his presentations. In [10 reasons why developers hate your API](https://www.infoq.com/presentations/API-design-mistakes), he says the number one reason developers hate your API is because "Your documentation sucks."

{% include random_ad2.html %}

{% include course_image.html url="http://www.slideshare.net/jmusser/ten-reasons-developershateyourapi" filename="yourdocsucks" ext_print="png" ext_web="png" alt="APIs often fail because the doc fails the developers" caption="APIs often fail because the doc fails the developers" %}

If REST APIs were an uncommon software product, it wouldn't be that big of a deal. But actually, REST APIs are taking off in a huge way. Through the PEW Research Center, Programmableweb.com has charted and tracked the prevalence of web APIs.

{% include course_image.html url="http://www.slideshare.net/programmableweb/web-api-growthsince2005"   filename="growthinrestapis" ext_print="png" ext_web="png" alt="The phenomenal growth in web APIs" caption="The phenomenal growth in web APIs" %}

eBay's API in 2005 was one of the first web APIs (the API allowed sellers to manage their products in their eBay stores). Since then, there has been tremendous growth in web APIs. Given the importance of clear and accurate API documentation, this presents a perfect market opportunity for technical writers. Technical writers can apply their communication skills to fill a gap in a market that is rapidly expanding.

## Because REST APIs are a style rather than a standard, docs are essential

REST APIs are a bit different from the SOAP APIs that were popular some years ago. SOAP APIs (service-oriented architecture protocol) enforce a specific message format for sending requests and returning responses. As an XML message format, SOAP is very specific and has a WSDL (Web Service Description Language) file that describes how to interact with the API.

REST APIs, however, do not follow a standard message format. Instead, REST is an architectural *style*, a set of recommended practices for submitting requests and returning responses. To understand the request and response format for REST APIs, you don't consult the SOAP message specification or look at the WSDL file. Instead, you have to consult the REST API's *documentation*.

Each REST API functions a bit differently. There isn't a single way of doing things, and this flexibility and variety fuel the need for accurate and clear documentation. (I'll explain more about REST APIs in the [What is a REST API?](docapis_what_is_a_rest_api.html)) As long as REST APIs vary from one to another, there will be a strong need for technical writers to provide documentation.

## The web is becoming an interwoven mashup of APIs

Another reason why REST APIs are taking off is that the web itself is evolving into a conglomeration of APIs. Instead of massive, do-it-all systems, websites are pulling in the services they need through APIs.

For example, rather than building your own search to power your website, you might use Swiftype instead and leverage their service through the [Swiftype API](https://swiftype.com/developers). Rather than building your own payment gateway, you might integrate [Stripe and its API](https://stripe.com/docs/api). Rather than building your own login system, you might use [UserApp and its API](https://app.userapp.io/#/docs/). Rather than building your own e-commerce system, you might use [Snipcart and its API](https://docs.snipcart.com/api-reference/introduction). And so on.

Practically every service provides its information and tools through an API that you use. Jekyll, a popular static site generator, doesn't have all the components you need to run a site. There's no newsletter integration, analytics, search, commenting systems, forms, chat e-commerce, surveys, or other systems. Instead, you leverage the services you need into your static Jekyll site. CloudCannon has put together a [long list of services](http://cloudcannon.com/tips/2014/12/12/the-ultimate-list-of-services-for-static-websites.html) that you can integrate into your static site.

{% include course_image.html url="http://jekyll.tips/services/" filename="servicesforstaticsites" ext_print="png" ext_web="png" alt="Many sites pull in all the services they need through external APIs" caption="Many sites pull in all the services they need through external APIs" %}

This cafeteria-style model is replacing the massive, swiss-army-site model that tries to do anything and everything. It's better to rely on specialized companies to create powerful, robust tools (such as search) and leverage their service rather than trying to build all of these services yourself.

The way each site leverages its service is usually through a REST API of some kind. In sum, the web is becoming an interwoven mashup of many different services from APIs interacting with each other.

## Job market is hot for API technical writers

Many employers are looking to hire technical writers who can create not only complete and accurate documentation but who can also create stylish outputs for their documentation. Here's a job posting from a recruiter looking for someone who can emulate Dropbox's documentation:

{% include course_image.html  size="medium" filename="indeed_com" ext_print="png" ext_web="png" alt="Job description asking for someone with skills to create doc site like Dropbox" caption="Job description asking for someone with skills to create doc site like Dropbox" %}

As you can see, the client wants to find "someone who'll emulate Dropbox's documentation."

Why does the look and feel of the documentation matter so much? With API documentation, there is no GUI interface for users to browse. Instead, the documentation *is* the interface. Employers know this, so they want to make sure they have the right resources to make their API docs stand out as much as possible.

Here's what the Dropbox API looks like:

{% include course_image.html url="https://www.dropbox.com/developers" filename="dropbox_clean" ext_print="png" ext_web="png" alt="Dropbox API's developer site has a simple but clean UI" caption="Dropbox API's developer site has a simple but clean UI" %}

It's not a sophisticated design. But its simplicity and brevity are what make it appealing. When you consider that the API documentation is more or less the product interface, building a sharp, modern-looking doc site is paramount for credibility and traction in the market. (I dive into the [job market for API documentation later](jobapis_overview.html).)

## API doc is a new world for most tech writers

API documentation is often a new world to technical writers. Many of the components may be new. For example, all of these aspects with developer documentation differ from traditional documentation:

* Authoring tools
* Audience
* Programming languages
* Reference topics
* User tasks

When you try to navigate the world of API documentation, you may be initially overwhelmed by the differences and intimidated by the tools. Additionally, the documentation content itself is often complex and requires familiarity with development concepts and processes.

Realizing there was a need for more information, in 2014 I guest-edited a special issue of Intercom dedicated to API documentation.

{% include course_image.html url="http://bit.ly/stcintercomapiissue" size="small" filename="intercom" ext_print="png" ext_web="png" alt="STC Intercom issue (that I guest-edited) focusing on API documentation" caption="STC Intercom issue focused on API documentation" %}

{: .tip}
You can read this issue for free at [http://bit.ly/stcintercomapiissue](http://bit.ly/stcintercomapiissue).

This issue was a good start, but many technical writers asked for more training. The Silicon Valley STC chapter held a couple of workshops dedicated to APIs. Both workshops sold out quickly (with 60 participants in the first, and 100 participants in the second). API documentation is particularly hot in the San Francisco Bay area, where many companies have REST APIs requiring documentation.

Overall, technical writers are hungry to learn more about APIs. This course will help you build the foundation of what you need to know to get a job in API documentation and excel in this field. As a skilled API technical writer, you will be in high demand and fulfill a critical role in companies that distribute their services through APIs.
