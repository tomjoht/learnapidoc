---
title: "Step 2: Endpoints and methods (API reference tutorial)"
permalink: docapis_resource_endpoints.html
course: "Documenting REST APIs"
weight: 3.3
sidebar: docapis
section: docendpoints
path1: docendpoints.html
redirect_from:
- https://idratherbewriting.com/learnapidoc/docapis_doc_methods.html
- https://idratherbewriting.com/learnapidoc/docapis_doc_resource_urls_and_methods.html
last-modified: 2019-06-09
---

{% include workflow_map.html step="2" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/apiref2.png"/>
{% endif %}

{{site.data.glossary.endpoints_and_methods.def}}

* TOC
{:toc}


## Examples of endpoints

Here's an example of the endpoints for the Relationships resource in the Instagram API:

<a class="noExtIcon" href="https://www.instagram.com/developer/endpoints/relationships/"><img src="{{site.media}}/instagramurlexample.png" /></a>

The endpoint is usually set off in a stylized way that gives it more visual attention. Much of the documentation is built around the endpoint, so it might make sense to give each endpoint more visual weight in your documentation.

{% include image_ad_right.html %}

The endpoint is arguably the most important aspect of API documentation because this is what developers will implement to make their requests.

## Represent path parameters with curly braces

If you have [path parameters](docapis_doc_parameters.html#path_parameters) in your endpoint, represent them through curly braces. For example, here's an example from Mailchimp's API:

```
/campaigns/{campaign_id}/actions/send
```

If you can, put the path parameter in another color to set it off:

<pre>
/campaigns/<span class="orange">{campaign_id}</span>/actions/send
</pre>

Curly braces for path parameters are a convention that users will understand. In the above example, almost no endpoint uses curly braces in the actual path syntax, so the `{campaign_id}` is an obvious placeholder.

Here's an example from the Facebook API that colors the path parameter in an easily identifiable way:

<a href="https://developers.facebook.com/docs/graph-api/reference/v2.11/achievement/" class="noExtIcon"><img src="{{site.media}}/facebookapicolor.png"/></a>

When the parameters are described in Facebook's docs, the same green color is used to set off the parameters, which helps users recognize their meaning.

Path parameters aren't always set off with a unique color (for example, some precede it with a colon), but whatever the convention, make sure the path parameter is easily identifiable.

## You can list the method next to the endpoint

It's common to list the method (GET, POST, and so on) next to the endpoint. The method defines the operation with the resource. Briefly, each method is as follows:

* GET: Retrieves a resource
* POST: Creates a resource
* PUT: Updates or creates within an existing resource
* PATCH: Partially modifies an existing resource
* DELETE: Removes the resource

See [Request methods](https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods) in Wikipedia's article on HTTP for more details. (There are some additional methods, but they're rarely used.)

{% include random_ad3.html %}

Since there's not much to say about the method itself, it makes sense to group the method with the endpoint. Here's an example from the Box API:

<a href="https://developer.box.com/reference/post-comments/" class="noExtIcon"><img src="{{site.media}}/methodwithendpointv2.png" style="border: 1px solid #dedede" alt="Box API" /></a>

And here's an example from the Linkedin API:

<a class="noCrossRef" href="https://developer.linkedin.com/docs/rest-api" class="noExtIcon"><img src="{{site.media}}/linkedinexample.png" alt="Linkedin Example" /></a>

{: .tip}
Sometimes the method is referred to as the "verb." GET, PUT, POST, PATCH, and DELETE are all verbs or actions.

{% include ads.html %}

## The endpoint shows the end path only

When you describe the endpoint, you list the end path only (hence the term "*end* point"). The full path that contains both the base path and the endpoint is often called a resource URL.

In our sample API scenario, the endpoint is just `/surfreport/{beachId}`. You don't have to list the full resource URL every time (which would be `https://api.openweathermap.org/surfreport/{beachId}`). Including the full resource URL would distract users from focusing on the path that matters. In your user guide, you usually explain the full resource URL, along with the required [authorization](docapis_more_about_authorization.html), in an introductory section (such as the [Getting started tutorial](docapis_doc_getting_started_section.html)).

## How to group multiple endpoints for the same resource

Another consideration in documenting endpoints and methods is how to group and list the endpoints, particularly if you have a lot of endpoints for the same resource. In [Examples of resource descriptions](docapis_resource_descriptions.html#examples), we looked at a variety of APIs. Many doc sites provide different designs for grouping or listing each endpoint for the resource, so I won't revisit all the same examples. Group the endpoints in some way that makes sense, such as by method or by the type of information returned.

For example, suppose you have three GET endpoints and one POST endpoint, all of which relate to the same resource. Some doc sites might list all the endpoints for the same resource on the same page. Others might break them into separate pages. Others might create one group for the GET endpoints and another for the POST endpoints. It depends how much you have to say about each endpoint.

If the endpoints are mostly the same, consolidating them on a single page could make sense. But if they're substantially unique (with different responses, parameters, and error messages), separating them onto different pages is probably better (and easier to manage). Then again, with a more sophisticated website design, you can make lengthy information navigable on the same page.

{: .tip}
In a later section on [design patterns](pubapis_design_patterns.html), I explain that [long pages](pubapis_design_patterns.html#longish_pages) are common pattern with developer docs, in part because they make content easily findable for developers using Ctrl + F.

## How to refer to endpoints in tutorials

In tutorials and other conceptual content, how do you refer to the endpoints within an API reference topic? Referring to the "`/aqi` endpoint" or to the "`/weatherdata`" endpoint doesn't make a huge difference. But with more complex APIs, using the endpoint to talk about the resource can be tricky.

{% include random_ad2.html %}

At one company I worked at, our URLs for the Rewards endpoints looked like this:

<pre>
/rewards

/rewards/<span class="orange">{rewardId}</span>

/users/<span class="orange">{userId}</span>/rewards

/users/<span class="orange">{userId}</span>/rewards/<span class="orange">{rewardId}</span>
</pre>

And rewards in context of Missions looked like this:

<pre>
/users/<span class="orange">{userId}</span>/rewards/<span class="orange">{missionId}</span>

/missions/<span class="orange">{missionid}</span>/rewards
</pre>

To say that you could use the rewards resource wasn't always specific enough, because there were multiple rewards and missions endpoints.

{% include random_ad4.html %}

It can get awkward referring to the endpoint. For example, you might have a sentence like this: "When you call `/users/{userId}/rewards/`, you get a list of all rewards. To get a specific reward for a specific mission for a specific user, the `/users/{userId}/rewards/{missionId}` endpoint takes several parameters..."

The longer the endpoint, the more cumbersome the reference becomes. These kinds of descriptions are more common in the [conceptual sections](docconceptual.html) of your documentation. Generally, there's not a clear convention about how to refer to cumbersome endpoints. Adopt an approach that makes the most sense for your API.

## Endpoint for surfreport API

Let's create the Endpoints and methods section for our [fictitious surfreport API](docapis_new_endpoint_to_doc.html). Here's my approach:

<div class="docSample">
{% include_relative surfreport_endpoint.html %}
</div>

## Next steps

Now that we've described the resource and listed the endpoints and methods, it's time to tackle one of the most important parts of an API reference topic: the [parameters section](docapis_doc_parameters.html).
