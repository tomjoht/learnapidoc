---
title: Is your REST API doc auto-generated?
permalink: /survey_automating_api_docs.html
course: "Documenting REST APIs"
weight: 12.7
sidebar: docapis
section: survey
path1: /survey.html
---

{: .survey}
[Survey question](survey_introduction): Is any aspect of your REST API documentation auto-generated (e.g., custom scripts)? If so, how?

From 38 responses, here are the results:

![Are you automating your REST API documentation?](/images/automatingrestAPIs-550x386.png)

Several people weren't working on REST APIs, so they wrote N/A. For those who said yes, they're automating their REST API documentation, here's how they're doing it:

*   custom scripts
*   custom tooling
*   homegrown framework
*   homegrown Python scripts
*   custom tooling
*   Swagger
*   Swagger
*   Swagger
*   Corilla.co
*   code responses auto-generated
*   some code samples auto-generated

Overall, most of the people doing REST API documentation aren't auto-generating their REST APIs. A fraction of the people are automating them, and most of them are using Swagger or custom-built tools.

A lot of people who are creating REST API documentation manually noted that they're trying to use Swagger, or they're exploring Swagger. For example, several people noted:

*   "i'm still trying to get Dev resources to help hook up a Swagger implementation."
*   "We have Swagger capability and will be using it more in the future but are not currently using it in generation of our published API docs."
*   "Newer projects are moving toward Swagger/Enunciate."

For automating REST API documentation, the most commonly mentioned technique for doing it or planning to do it was Swagger.

## Why aren't more people automating their documentation?

I recently recorded a podcast with [Peter Gruenbaum](http://sdkbridge.com), an experienced API technical writer who shed some light on when Swagger is appropriate for a project. He said that for simple APIs, where you have a clear call and response, Swagger and other automated tools work well.

But for APIs that are more complex, such as APIs that include endpoints that are only possible to call after calling other endpoints (for example, one endpoint returns an object that is passed as an argument into another endpoint, and other more sophisticated workflows), the simple automated methods for REST APIs don't work as well.

## Other challenges with automated docs

Swagger and other automated doc solutions for REST APIs pose other challenges as well. If you have a lot of notes, details, code samples, or other information about an endpoint, it can be difficult to include all of it in the automated doc display. Most of these displays have a simple list of parameters and their descriptions, a brief description of what the endpoint returns, and then a button to generate a response. For example, here's what an endpoint in Swagger's demo looks like:

<figure>[![This demos an endpoint for updating a pet in the store. ](/images/swagger_demo-550x340.png)](http://petstore.swagger.wordnik.com/#!/pet/addPet)

<figcaption>This demos an endpoint for updating a pet in a store.</figcaption>

</figure>

What if you have a note such as, "Pets remain in the pet store for a period of 30 days only, after which they are transferred to an animal shelter. Therefore the `petId` is only valid for 30 days. Passing an invalid `petID` returns an error. However, even after a `petId` has expired, you can't create a new `petId` with an expired `petId`. All `petId` values must be unique."

Try cramming that note in there. (There might be a space for misc. notes about an endpoint in the Swagger spec -- I just don't know it well.)

If you don't have an API key, or if you don't have any real data to return meaningful results, you may not get a lot of value out of the Swagger doc. For example, in this scenario, I don't have any pets with IDs or names, so how can I test out the process of updating my `petId`?

If you think about it, someone who is learning an API isn't going to have much data to return initially, so the dynamic endpoint generators won't be that meaningful because the responses will be data anemic. Peter said that as a workaround, some API doc sites have a sample API key and test data.

Peter wondered whether these dynamic endpoint generators are actually instructive to developers. What programmers really need to see are sample responses, and you don't need users to plug in their own values in a dynamic way to see this. Many API doc sites (like [Stripe](https://stripe.com/docs/api)) do a good job in showing the responses produced by the API.

Despite these challenges, Peter said that for simple APIs, automated doc solutions like Swagger and Enunciate are often a deliverable he creates for clients. These API doc sites have a certain sizzle and interactivity to them that make them a popular design trend with API documentation.

## The documentation drift debate

One argument that's often made with platform specific APIs is that you can reduce documentation drift by keeping comments with the code. If a programmer can easily add a few notes in a semi-intuitive syntax directly in the code, you're less likely to encounter documentation drift, where the code and documentation start drifting farther and farther apart.

Note that Swagger does not automate the documentation by adding comments in the code in the same way as a platform-specific API. In fact, “automated” or “automatic” may be entirely the wrong word to use here, since there's nothing documented automatically.

Swagger specifies a framework for describing your API. You're not adding comments in the code of your API as you do with a Java or C++ API. Instead, you create a separate file that describes the capabilities of your API. Here's a [sample Swagger file](https://github.com/appirio-tech/lc1-challenge-service/blob/85160966dbf2cc9a0023e185a8fb99f5c98b9e86/api/swagger/swagger.yaml) from a post on [appiro](http://appirio.com/category/tech-blog/2014/10/writing-documentation-first-api/). Once you describe your API using this standard framework, Swagger can convert it to the display shown above (or [see the full Swagger demo here](http://petstore.swagger.wordnik.com/)).

In that sense, calling Swagger an automated doc solution is probably confusing things. One person previously referred to Swagger as an "automated endpoint generator," which I think may be a better term for it.

By the way, the idea of "automatic documentation" or "automated documentation," even with platform-specific APIs, is bogus. You're still writing the documentation. No code generates its own descriptions of what it does.

## Why Swagger instead of some other tool?

Swagger seems to be a popular tool among a wider developer audience for automating REST APIs. However, it's not entirely clear why. There are a host of other tools that seem easier to use and have outputs that look just as slick. See this excellent post: [A review of all most common API editors](https://medium.com/@orliesaurus/a-review-of-all-most-common-api-editors-6a720dc4f4e6), by @orliesaurus. In this post, orliesaurus shares his feedback in implementing Swagger, Mashape API Editor, API Designer Studio, Readme Editor, and Apiary API Editor. He rates each tool by the following:

*   API Modelling Flexibility
*   TTL (Time to Live)
*   User friendliness

Swagger gets just 1 star (out of 5) for Time to Live and 3 stars for User Friendliness. In contrast, Mashape API Editor from Mashape.com gets 4 stars in every category. Commenting on the ease of use, the author says,

> It's really straightforward, you can't go wrong with this editor as it really simplifies the adding of an API to the bone. There's not really anything that is required to be read. So you can forget the spec documentation, and dive in adding endpoints, models and go live in seconds.

However, I'm not sure if the author works for Mashape.com or not. It's unclear.

Despite the glowing reviews of Mashape's API Editor, orliesaurus' conclusions about the best tool for API documentation are as follows:

> All the editors have their pros and cons, if you're a highly technical user you're possibly very comfortable with the speedy nature of Swagger or API Designer.
>
> If you're looking for a different approach and a clean hip design, you should probably try API Blueprint and its editor.
>
> Finally if you're a company whose product is an API and wants to quickly appeal developers you should point to Mashape.
>
> Or give ReadMe.IO a go for a lightweight editor for very simple APIs
>
> There is no real winner because it depends on your requirements.
>
> Looking for flexibility over design or design over flexibility or… ease of use over everything, then you're better of getting accustomed with one or another tool and stick to it. The API Market is upcoming and rising day after day, IBM and SAP just announced their own solutions..watch this space!  
> [A review of all most common API editors](https://medium.com/@orliesaurus/a-review-of-all-most-common-api-editors-6a720dc4f4e6)

I'm not sure why he backpeddles on some of the earlier ratings and seems to give an "it depends" kind of conclusion, but his reviews are definitely helpful nonetheless.

By the way, some of the tools he reviews use RAML (RESTful API Modeling Language), which is a simpler alternative to the Swagger specification. Other tools not reviewed but also prominent include Enunciate and Mashery I/O Docs.

One reason Swagger may be more popular is that unlike Mashape, you aren't locked into a cloud platform. Mashape has a directory of APIs in a marketplace available on the general web so they're easy to consume. I think in many cases, technical writers may be working on private APIs behind firewalls.

## Related links

In comparing REST API doc tools, see [API Design: Do You Swagger, Blueprint or RAML?](http://apievangelist.com/2014/01/16/api-design-do-you-swagger-blueprint-or-raml/)
