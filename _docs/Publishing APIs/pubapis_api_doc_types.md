---
title: "Breaking down API doc"
permalink: /pubapis_api_doc_types.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.7
section: publishingapis
---

Perhaps no other genre of technical documentation has such variety in the outputs as API documentation. Almost every API documentation site looks unique. REST APIs are as diverse as different sites on the web, each with their own branding, navigation, terminology, and style.

## No common tooling

Just as websites have a diversity of engines, platforms, and approaches, so too does API documentation. There is no common tooling like there is among GUI documentation. You can't usually determine what platform is driving the outputs, and often the branding fits in seamlessly with the other company content.

## Similar patterns and structures

Despite the wide variety of APIs, there is some commonality among them. The common ground is primarily in the endpoint documentation. But user guides have common themes as well.

## Three kinds of API doc content

In a [blog post by the writers at Parse](http://blog.parse.com/learn/engineering/designing-great-api-docs/), they break down API doc content into three main types:

>Reference: This is the listing of all the functionality in excruciating detail. This includes all datatype and function specs. Your advanced developers will leave this open in a tab all day long.
>
>Guides: This is somewhere between the reference and tutorials. It should be like your reference with prose that explains how to use your API.
>
>Tutorials: These teach your users specific things that they can do with your API, and are usually tightly focused on just a few pieces of functionality. Bonus points if you include working sample code.</blockquote>

I think this division of content represents the API documentation genre well and serves as a good guide as you develop strategies for publishing API documentation.

In Mulesoft's API platform, you can see many of these sections in their standard template for API documentation:

<a href="http://api-portal.anypoint.mulesoft.com/yahoo/api/yahoo-weather-api?ref=apihub"><img src="images/commonsections.png" alt="Common sections in API documentation" /></a>

 I won't get into too much detail about each of these sections. In previous sections of this course, I explored the content development aspect of API documentation in depth. Here I'll just list the salient points.

### Guides

In most API guide articles, you'll find the following recurring themes in the guides section:

* API Overview
* Authorization keys
* Core concepts
* Rate limits
* Code samples
* Quick reference
* Glossary

Guide articles aren't auto-generated, and they vary a lot from product to product. When technical writers are involved in API documentation, they're almost always in charge of this content.

### Tutorials

The second genre of content is tutorial articles. Whether it's called Getting Started, Hello World Tutorial, First Steps, or something else, the point of the tutorial articles is to guide a new developer into creating something simple and immediate with the API.

By showing the developer how to create something from beginning to end, you provide an overall picture of the workflow and necessary steps to getting output with the API. Once a developer can pass the authorization keys correctly, construct a request, and get a response, he or she can start using practically any endpoint in the API.

Here's a list of tutorials from Parse:

<a href="https://www.parse.com/tutorials"><img src="images/parsetutorials.png" alt="Parse tutorials" /></a>

Some tutorials can even serve as reference implementations, showing full-scale code that shows how to implement something in a detailed way. This kind of code is highly appealing to developers because it usually helps clarify all the coding details.

### Reference

Finally, reference documentation is probably the most characteristic part of API documentation. Reference documentation is highly structured and templatized. Reference documentation follows common patterns when it comes to describing endpoints.

In most endpoint documentation, you'll see the following sections:

* Resource description
* Endpoint
* Methods
* Parameters
* Request submission example
* Request response example
* Status and error codes
* Code samples

If engineers write anything, it's usually the endpoint reference material.

Note that the endpoint documentation is never meant to be a starting point. The information is meant to be browsed, and a new developer will need some background information about authorization keys and more to use the endpoints.

Here's a sample page showing endpoints from Instagram's API:

<a href="https://instagram.com/developer/endpoints/relationships/"><img src="images/instagramref.png" alt="Instagram endpoints" /></a>
