---
title: "Step 2: Endpoints and methods (API reference tutorial)"
permalink: /docapis_resource_endpoints.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.11
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
redirect_from:
- http://idratherbewriting.com/learnapidoc/docapis_doc_methods.html
- http://idratherbewriting.com/learnapidoc/docapis_doc_resource_urls_and_methods.html
---

{% include workflow_map.html step="2" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/apiref2.png"/>
{% endif %}

> **{{site.data.apirefsections.endpoints_and_methods.term}}**: {{site.data.apirefsections.endpoints_and_methods.def}}

* TOC
{:toc}


## Example of an endpoints

Here's an example of the endpoints for the Relationships resource in the Instagram API:

<a class="noExtIcon" href="https://www.instagram.com/developer/endpoints/relationships/"><img src="images/instagramurlexample.png" /></a>

The endpoint is usually set off in a stylized way that gives it more visual attention. Much of the documentation is built around the endpoint, so it might make sense to give each endpoint more visual weight in your documentation.

The endpoint is arguably the most important aspect of API documentation, since this is what developers will implement to make their requests.

## Represent path parameters with curly braces

If you have path parameters in your endpoint, represent them through curly braces. For example, here's an example from Mailchimp's API:

```
/campaigns/{campaign_id}/actions/send
```

Better yet, put the [path parameter](docapis_doc_parameters.html) in another color to set it off:

<pre>
/campaigns/<span class="orange">{campaign_id}</span>/actions/send
</pre>

Curly braces are a convention that users will understand. In the above example, almost no endpoint uses curly braces in the actual path syntax, so the `{campaign_id}` is an obvious placeholder.

Here's an example from the Facebook API that colors the path parameter in an easily identifiable way:

<a href="https://developers.facebook.com/docs/graph-api/reference/v2.11/achievement/" class="noExtIcon"><img src="images/facebookapicolor.png"/></a>

When the parameters are described, the same green color is used to set off the parameters, which helps users recognize their meaning.

Path parameters aren't always set off with a unique color (for example, some precede it with a colon), but whatever the convention, make sure the path parameter is easily identifiable.

## You can list the method beside the endpoint

It's common to list the method (GET, POST, and so on) next to the endpoint. The method defines the operation with the resource. Briefly, each method is as follows:

* GET: Retrieve a resource
* POST: Create a resource
* PUT: Update or create within an existing resource
* PATCH: Partially modify an existing resource
* DELETE: Remove the resource

See [Request methods](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods) in Wikipedia's article on HTTP for more details. (There are some additional methods, but they're rarely used.)

Since there's not much to say about the method itself, it makes sense to group the method with the endpoint. Here's an example from Box's API:

<a href="https://developer.box.com/reference/#add-a-comment-to-an-item" class="noExtIcon"><img src="images/methodwithendpoint.png" alt="Box API" /></a>

And here's an example from Linkedin's API:

<a class="noCrossRef" href="https://developer.linkedin.com/docs/rest-api" class="noExtIcon"><img src="images/linkedinexample.png" alt="Linkedin Example" /></a>

{: .tip}
Sometimes the method is referred to as the "verb." GET, PUT, POST, PATCH, and DELETE are all verbs or actions.

{% include random_ad.html %}

## The endpoint shows the end path only

When you describe the endpoint, you list the end path only (hence the term "end point"). The full path that contains both the base path and the endpoint is often called a resource URL.

In our sample API scenario, the endpoint is just `/surfreport/{beachId}`. You don't have to list the full resource URL every time (which would be `http://api.openweathermap.org/surfreport{beachId}`). Including the full resource URL would distract users from focusing on the path that matters. In your user guide, you usually explain the full resource URL, along with the required [authorization](docapis_more_about_authorization.html), in an introductory section.

## How to group multiple endpoints for the same resource

Another consideration is how to group and list the endpoints, particularly if you have a lot of endpoints for the same resource. In the [resource descriptions step](docapis_resource_descriptions.html#examples), we looked at a variety of APIs, and many provide different document designs for grouping or listing each endpoint for the resource. So I won't revisit all the same examples. Group the endpoints in some way that makes sense, such as by method or by the type of information returned.

For example, suppose you had three GET endpoints and one POST endpoint, all of which are related to the same resource. Some doc sites might list all the endpoints for the same resource on the same page. Others might break them out into separate pages. Others might create one group for the GET endpoints and another for the POST endpoints. It depends how much you have to say about each endpoint.

If the endpoints are mostly the same, consolidating them on a single page could make sense. But if they're pretty unique (with different responses, parameters, and error messages), separating them out onto different pages is probably better (and easier to manage). Then again, with a more sophisticated website design, you can make lengthy information navigable on the same page.

{: .tip}
In a later section on [design patterns](pubapis_design_patterns.html), I explore how [long pages](pubapis_design_patterns.html#longish_pages) are common pattern with developer docs, in part because they make content easily findable for developers using Ctrl + F.

## How to refer to endpoints

How do you refer to the endpoints within an API reference topic? Referring to the "`/aqi` endpoint" or to the "`/weatherdata`" endpoint doesn't make a huge difference. But with more complex APIs, using the endpoint to talk about the resource can get problematic.

{% include random_ad2.html %}

At one company I worked at, our URLs for the Rewards endpoints looked like this:

```html
// get all rewards
/rewards

// get a specific reward
/rewards/{rewardId}

// get all rewards for a specific user
/users/{userId}/rewards

// get a specific reward for a specific user
/users/{userId}/rewards/{rewardId}
```

And rewards in context of Missions looked like this:

```html
// get the rewards for a specific mission related to a specific user
/users/{userId}/rewards/{missionId}

// get the rewards available for a specific mission
/missions/{missionid}/rewards
```

To say that you could use the rewards resource wasn't always specific enough, because there were multiple rewards and missions endpoints.

It can get awkward referring to the endpoint. For example, "When you call `/users/{userId}/rewards/`, you get a list of all rewards. To get a specific reward for a specific mission for a specific user, the `/users/{userId}/rewards/{missionId}` endpoint takes several parameters..." The longer the endpoint, the more difficult the reference. These kinds of descriptions are more common in the [non-reference sections](docnonref.html) sections of your documentation. However, brief and clear references to the endpoints are sometimes challenging.

## Endpoint for surfreport API

Let's create the Endpoints section for our [fictitious surfrefport API](docapis_new_endpoint_to_doc.html). Here's my approach:

<div class="docSample">
{% include_relative surfreport_endpoint.html %}
</div>

(There's not much to see here -- endpoints look best when styled attractively with CSS.)

## Next steps

Now that we've described the resource and listed the endpoints and methods, it's time to tackle one of the most important parts of an API reference topic: the [parameters section](docapis_doc_parameters.html).
