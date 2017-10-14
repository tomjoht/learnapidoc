---
title: How to document the endpoints and methods
permalink: /docapis_doc_endpoint_definitions.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.2
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

In the previous section, I noted the variation over terminology related to resources, with some doc sites calling the resources "endpoints." Although some might call the whole topic "endpoint documentation," the endpoint usually refers to a specific part in the API. The endpoint literally refers to the resource URL that you call, specifically, the last part of the resource URL (after the base path).

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Varied terminology

As you might expect, the terms used for the endpoint vary as well. In addition to "endpoint," you might see the following:

* Requests
* API methods
* Resource URLs
* URLs
* URL syntax

My preferred term is "endpoint."

{% include random_ad.html %}

Often there's no term used at all above the endpoint &mdash; you can just list it on the page, styled in a way that makes it obvious what it is.

## The endpoint definition usually contains the end path only

When you describe the endpoint, it's common to list the end path only (hence the nickname "endpoint").

In our scenario, the endpoint/endpath is just `/surfreport/{beachId}`. You don't have to list the full URL every time (which would be `https://simple-weather.p.mashape.com/surfreport{beachId}`. Including the whole path distracts the user from focusing on the path that matters. (In your user guide, you usually explain the full code path in an introductory section.)

The endpoint is arguably the most important aspect of API documentation, since this is what developers will implement to make their requests.

## Represent path parameters with curly braces

If you have path parameters in your endpoint, represent them through curly braces. For example, here's an example from Mailchimp's API:

```
/campaigns/{campaign_id}/actions/send
```

Better yet, put the path parameter in another color to set it off:

<pre>
/campaigns/<span class="parameter">{campaign_id}</span>/actions/send
</pre>

{: .tip}
If you set off your code block with `pre` tags (instead of backticks as is common with Github-flavored Markdown syntax), you can use `span` tags to set off specific elements in different colors, since angle brackets get processed as HTML. However, if you do use `pre` tags, you lose out on syntax highlighting, so it's a tradeoff.

Curly braces are a convention that users will understand. In the above example, almost no URL uses curly braces in the actual path syntax, so the `{campaign_id}` is an obvious placeholder.

Another convention it to represent parameter values with a colon, like this:

```
/campaigns/:campaign_id/actions/send
```

You can see this convention in the [EventBrite API](https://www.eventbrite.com/developer/v3/) and the [Aeris Weather API](http://www.aerisweather.com/support/docs/api/). But I'm not a fan of it.

In general, if the placeholder name is ambiguous as to whether it's a placeholder or not, clarify it.

## You can list the method beside the endpoint

It's common to list the method (GET, POST, PUT, DELETE) next to the endpoint. Since there's not much to say about the method itself, it makes sense to group the method with the endpoint. Here's an example from Box's API:

<a href="https://developer.box.com/reference/#add-a-comment-to-an-item"><img src="images/methodwithendpoint.png" alt="Box API" /></a>

And here's an example from Linkedin's API:

<a class="noCrossRef" href="https://developer.linkedin.com/docs/rest-api"><img src="images/linkedinexample.png" alt="Linkedin Example" /></a>

{: .tip}
Sometimes the method is referred to as the "verb." GET, PUT, POST, and DELETE are all verbs or actions.

## Multiple endpoints for the same resource

Some resources have multiple endpoints. For example, suppose you had two GET endpoints and one POST endpoint, all of which are highly related to the same resource. Different doc sites organize endpoints in various ways. Some list all the endpoints for the same resource on the same page. Others break them out into separate pages. Others put all the endpoints for all resources on the same page. It depends how much you have to say about each endpoint.

If the endpoints are mostly the same, consolidating them on a single page could make sense. But if they're pretty unique (with different responses, parameters, and error messages), separating them out onto different pages is probably better (and easier to manage).

{: .tip}
In a later chapter on design patterns, I explore how [long pages](pubapis_longish_pages.html) are common pattern with developer docs, in part because they make content easily findable for developers using Ctrl + F.

## Your turn to try: Write the endpoint definition for surfreport

List out the endpoint definition and method for the surfreport/{beachId} endpoint.

Here's my approach:

<div class="docSample">

<h2>Endpoint definition</h2>

<span class="label label-default">GET</span> <code>surfreport/{beachId}</code>
</div>

(There's not much to see here -- endpoints look best when styled attractively with CSS.)
