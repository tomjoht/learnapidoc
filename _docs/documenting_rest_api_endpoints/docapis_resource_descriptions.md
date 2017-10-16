---
title: Documenting resource descriptions
permalink: /docapis_resource_descriptions.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.1
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

Exactly what are the "things" that you access using a URL? Here are some of the terms used in different API docs:

* API calls
* Endpoints
* API methods
* Calls
* Resources
* Objects
* Services
* Requests

When it comes to the right terminology to describe these things (which I call "resources"), practices vary. Some docs get around the situation by not calling them anything explicitly.

{% include random_ad.html %}

You could probably choose the terms that you like best. My favorite is to use *resources* (along with *endpoint* for the URL. An API has various "resources" that you access through "endpoints." The endpoint gives you access to a resource. The endpoint is the URL path (in this example, `/surfreport`). The information the endpoint interacts with, though, is a resource.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Some examples

Take look at [Mailchimp's API for an example](http://developer.mailchimp.com/documentation/mailchimp/reference/overview/).

> Quickly review all available resources for MailChimp API 3.0 with this reference overview.

The list of resources includes things like `authorized-apps`, `automations`, `batches`, and more.

With Mailchimp, a sample resource is "Automations." This endpoint has several methods:

* `/automations` (GET)
* `/automations/{workflow_id}` (GET)
* `/automations/{workflow_id}/actions/pause-all-emails` (POST)
* `/automations/{workflow_id}/actions/start-all-emails` (POST)

<a class="noCrossRef" href="http://developer.mailchimp.com/documentation/mailchimp/reference/overview/"><img src="images/mailchimpapi_3_2017.png"/></a>

In contrast, look at Twitter's API. In their [API Reference overview](https://dev.twitter.com/rest/reference), they call them endpoint docs:

> These are the REST API endpoint reference docs.

A sample endpoint reference doc is [GET statuses/retweets/:id](https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid). To access it, you use the Resource URL `https://api.twitter.com/1.1/statuses/retweets/:id.json`. They then list out "Resource Information."

<a  class="noCrossRef" href="https://dev.twitter.com/rest/reference/get/statuses/retweets/%3Aid"><img src="images/twitterapi_3_17.png" alt="How Twitter refers to resources" /></a>

Here's the approach by [Instagram](https://instagram.com/developer/endpoints/relationships/). Their doc calls resources "endpoints" in the plural -- e.g., "Relationship endpoints," with each endpoint listed on the relationship page.

<a  class="noCrossRef" href="https://instagram.com/developer/endpoints/relationships/"><img src="images/instagramapi_3_17.png"/></a>

The [EventBrite API](https://www.eventbrite.com/developer/v3/endpoints/events/) shows a list of endpoints, but when you go to an endpoint, the descriptions refer to them as objects. On the object's page you can see the variety of endpoints you can use with the object.

<a  class="noCrossRef" href="https://www.eventbrite.com/developer/v3/endpoints/events/"><img src="images/eventbriteobjects.png" alt="Eventbrite" /></a>

I point out discrepancies with the terminology to reinforce the fact that the terms are somewhat non-standard. Still, you can't go wrong by referring to them as resources. A resource can have many different endpoints and methods you can use with it.

When you're writing documentation, it probably makes sense to group content by resources and then list the available endpoints for each resource on the resource's page, or as subpages under the resource.

This simple example with the Mashape Weather API, however, just has three different endpoints. There's not a huge reason to separate out endpoints by resource.

## When it gets confusing to refer to resources by the endpoint

The Mashape Weather API is pretty simple, and just refers to the endpoints available. In this case, referring to the aqi endpoint or the air quality index resource doesn't make a huge difference. But with more complex APIs, using the endpoint path to talk about the resource can get problematic.

At one company I worked at (Badgeville), our endpoints looked like this:

```html
// get all users
api_site.com/{apikey}/users

// get a specific user
api_site.com/{apikey}/users/{userId}

// get all rewards
api_site.com/{apikey}/rewards

// get a specific reward
api_site.com/{apikey}/rewards/{rewardId}

// get all rewards for a specific user
api_site.com/{apikey}/users/{userId}/rewards

// get a specific reward for a specific user
api_site.com/{apikey}/users/{userId}/rewards/{rewardId}

// get the rewards for a specfic mission related to a specific user
api_site.com/{apikey}/users/{userId}/rewards/{missionId}

// get the rewards available for a specific mission
api_site.com/{apikey}/missions/{missionid}/rewards
```

A rewards resource had various endpoints that returned different types of information related to rewards.

To say that you could use the rewards or missions endpoint wasn't always specific enough, because there were multiple rewards and missions endpoints.

It can get awkward referring to the resource by its endpoint path. For example, "When you call `/users/{userId}/rewards/{rewardId}`, you get a specific reward for a user. The `/users/{userId}/rewards/{rewardId}` endpoint takes several parameters..." It's a mouthful.

## The same resource can have multiple endpoints

The [Box API](https://docs.box.com/reference#membership-object) has a good example of how the same resource can have multiple endpoints and methods.

<a  class="noCrossRef" href="https://docs.box.com/reference#membership-object"><img src="images/boxapi_3_17.png" alt="Example from Box" /></a>

For the Membership object, as they call it, there are 7 different endpoints or methods you can call. Each of these methods lets you access the Membership  object in different ways. Why call it an object? When you GET the Membership resource, the response is a JSON object.

{: .tip}
Developers often use the term \"call a method\" when talking about using a method. If you consider the endpoints as HTTP methods, then you can call an API method.

## Wait, I'm confused

You're probably thinking, wait, I'm a bit confused. Exactly what am I supposed to call the things I'm documenting in an API? My recommendation is to call them resources. In your table of contents, you might group all the resources under a larger umbrella called "API Reference."

But my point is that there is no standard practice here. The terminology varies, and this is one of those cases where everyone chooses their favorite term.

## When describing the resource, start with a verb

Regardless of the terms you use, the description is usually brief, from 1-3 sentences, and often expressed as a fragment in the active tense.

Review the [surf report wiki page](docapis_new_endpoint_to_doc.html) containing the information about the endpoint, and try to describe the endpoint in the length of one or two tweets (140 characters).

Here are some examples of resource descriptions:

**[Delicious API](https://github.com/SciDevs/delicious-api/blob/master/api/posts.md#v1postsupdate)**

<div class="docSample">
<p><b>/v1/posts/update</b></p>

<p>Check to see when a user last posted an item. Returns the last updated time for the user, as well as the number of new items in the user’s inbox since it was last visited.</p>

<p>Use this before calling posts/all to see if the data has changed since the last fetch.</p>
</div>

**[Foursquare API](https://developer.foursquare.com/docs/venues/menu)**

<div class="docSample">
<p><b>Venue Menu</b></p>
<p><code>https://api.foursquare.com/v2/venues/VENUE_ID/menu</code></p>

<p>Returns menu information for a venue.</p>

<p>In some cases, menu information is provided by our partners. When displaying the information from a partner, you must attribute them using the attribution information included in the provider field. Not all menu information available on Foursquare is able to be redistributed through our API.</p>
</div>

## How I go about it

Here's how I went about creating the endpoint description. If you want to try crafting your own description of the endpoint first, and then compare yours to mine, go for it. However, you can also just follow along here.

I start by making a list of what the resource contains.

<div class="docSample">
<p><b>Surfreport</b></p>

<ul><li>shows surfing conditions about surf height, water temperature, wind, and tide.</li>
<li>must pass in a specific beach ID</li>
<li>gives overall recommendation about whether to go surfing</li>
<li>conditions are broken out by hour</li>
</ul>
</div>

{: .tip}
Whenever I have a blank page, instead of immediately filling it with full sentences, I usually create a rough outline. Outlines prevent writers block with almost any writing project. After I have an outline, then I craft the sentences.

So now that I have a rough outline here, I craft the sentences:

<div class="docSample">

<p><b>surfreport/{beachId}</b></p>

<p>Returns information about surfing conditions at a specific beach ID, including the surf height, water temperature, wind, and tide. Also provides an overall recommendation about whether to go surfing. </p>

<p><code>{beachId}</code> refers to the ID for the beach you want to look up. All Beach ID codes are available from our site.</p>
</div>

## Critique the Mashape Weather API descriptions

Look over the descriptions of the three endpoints in the weather API. They're pretty short. For example, the `aqi` endpoint just says "Air Quality Index."

These descriptions are too short. But developers like concision. If shortening the surfreport description, you could also write:

<div class="docSample">
<p><b>/surfreport/{beachId}</b></p>
<p>Provides surf condition information.</p>
</div>

Compare these descriptions with the endpoint descriptions from the [Aeris Weather API](http://www.aerisweather.com/support/docs/api/reference/endpoints/).

With Aeris Weather, the description for the [forecasts endpoint](http://www.aerisweather.com/support/docs/api/reference/endpoints/forecasts/) is as follows:

<div class="docSample">
<p><b>Endpoint: forecasts</b></p>
<p>The forecasts endpoint/data set provides the core forecast data for US and international locations. Forecast information is available in daily, day/night intervals, as well as, custom intervals such as 3 hour or 1 hour intervals.</p>
</div>

In summary, the description provides a 1-3 sentence summary of the information the resource contains.

## Recognize the difference between reference docs versus user guides

One thing to keep in mind is the difference between reference docs and user guides/tutorials:

* **Reference guides**: Concise, bare-bones information that developers can quickly reference.
* **User guides/tutorials**: More elaborate detail about everything, including step-by-step instructions, code samples, concepts, and procedures.

With the description of surfreport, you might expand on this with much greater detail in the user guide. But in the reference guide, just provide a short description.

You could link the description to the places in the user guide where you expand on it in more detail. But since developers often write API documentation, they sometimes never write the user guide (as is the case with the Weather API in Mashape).

{: .tip}
The description of the endpoint is likely something you'll re-use in different places: product overviews, tutorials, code samples, quick references, etc. As a result, put a lot of effort into crafting it.
