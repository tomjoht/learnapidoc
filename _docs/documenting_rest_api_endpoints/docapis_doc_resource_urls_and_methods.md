---
title: "API reference tutorial step 2: Resource URLs and methods"
permalink: /docapis_doc_resource_urls_and_methods.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.11
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

{% include workflow_map.html step="2" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/apiref2.png"/>
{% endif %}

> **{{site.data.apirefsections.resource_urls.term}}**: {{site.data.apirefsections.resource_urls.def}}

* TOC
{:toc}


## Example of resource URLs

Here's an example of the resource URL for the Relationships resource in the Instagram API:

<a class="noExtIcon" href="https://www.instagram.com/developer/endpoints/relationships/"><img src="images/instagramurlexample.png" /></a>

The resource URL is usually set off in a stylized way that gives it more visual attention. Much of the documentation is built around the resource URL, so it might make sense to set it off against a background with a unique style.

Another consideration is how to group and list the resource URLs, particularly if you have a lot of resource URLs for the same resource. In the [examples for the resource](docapis_resource_descriptions.html#examples), we looked at a variety of APIs, and many provide different document designs for grouping or listing each URL for the resource.

## Represent path parameters with curly braces

If you have path parameters in your endpoint, represent them through curly braces. For example, here's an example from Mailchimp's API:

```
/campaigns/{campaign_id}/actions/send
```

Better yet, put the [path parameter](docapis_doc_parameters.html) in another color to set it off:

<pre>
/campaigns/<span class="orange">{campaign_id}</span>/actions/send
</pre>

Curly braces are a convention that users will understand. In the above example, almost no URL uses curly braces in the actual path syntax, so the `{campaign_id}` is an obvious placeholder.

The way different APIs set off the path parameter from the other parts of the resource URL varies (some precede it with a colon), but make sure the path parameter is easily identifiable.

## You can list the method beside the endpoint

It's common to list the method (GET, POST, PUT, DELETE) next to the endpoint. Since there's not much to say about the method itself, it makes sense to group the method with the endpoint. Here's an example from Box's API:

<a href="https://developer.box.com/reference/#add-a-comment-to-an-item" class="noExtIcon"><img src="images/methodwithendpoint.png" alt="Box API" /></a>

And here's an example from Linkedin's API:

<a class="noCrossRef" href="https://developer.linkedin.com/docs/rest-api" class="noExtIcon"><img src="images/linkedinexample.png" alt="Linkedin Example" /></a>

{: .tip}
Sometimes the method is referred to as the "verb." GET, PUT, POST, and DELETE are all verbs or actions.

{% include random_ad.html %}

Often there's no term used at all above the endpoint &mdash; you can just list it on the page, styled in a way that makes it obvious what it is.

## The endpoint definition usually contains the end path only

When you describe the endpoint, it's common to list the end path only (hence the nickname "endpoint").

In our scenario, the endpoint/endpath is just `/surfreport/{beachId}`. You don't have to list the full URL every time (which would be `https://simple-weather.p.mashape.com/surfreport{beachId}`. Including the whole path distracts the user from focusing on the path that matters. (In your user guide, you usually explain the full code path in an introductory section.)

The endpoint is arguably the most important aspect of API documentation, since this is what developers will implement to make their requests.

## Multiple endpoints for the same resource

Some resources have multiple endpoints. For example, suppose you had two GET endpoints and one POST endpoint, all of which are highly related to the same resource. Different doc sites organize endpoints in various ways. Some list all the endpoints for the same resource on the same page. Others break them out into separate pages. Others put all the endpoints for all resources on the same page. It depends how much you have to say about each endpoint.

If the endpoints are mostly the same, consolidating them on a single page could make sense. But if they're pretty unique (with different responses, parameters, and error messages), separating them out onto different pages is probably better (and easier to manage).

{: .tip}
In a later section on [design patterns](pubapis_design_patterns.html), I explore how [long pages](pubapis_design_patterns.html#longish_pages) are common pattern with developer docs, in part because they make content easily findable for developers using Ctrl + F.

## Your turn to try: Write the endpoint definition for surfreport

{% include activity.html %}

List out the endpoint definition and method for the surfreport/{beachId} endpoint.

Here's my approach:

<div class="docSample">

<h2>Endpoint definition</h2>

<span class="label label-default">GET</span> <code>surfreport/{beachId}</code>
</div>

(There's not much to see here -- endpoints look best when styled attractively with CSS.)
