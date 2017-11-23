---
title: "API reference tutorial step 1: Resource description"
permalink: /docapis_resource_descriptions.html
course: "Documenting REST APIs"
weight: 3.1
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

{% include workflow_map.html step="1" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/apiref1.png"/>
{% endif %}

> **{{site.data.apirefsections.resource_description.term}}**: {{site.data.apirefsections.resource_description.def}}

* TOC
{:toc}

## Example of a resource description {#examples}

Typically, an API will have a number of resource URLs grouped under the same resource. In the Mailchimp API, the [Campaigns resource](http://developer.mailchimp.com/documentation/mailchimp/reference/campaigns/#) is described as follows:

<a class="noExtIcon" href="http://developer.mailchimp.com/documentation/mailchimp/reference/campaigns/"><img src="images/mailchimpcampaigns.png"/></a>

The Campaigns resource has various resource URLs (also often called endpoints):

* POST `/campaigns`
* GET `/campaigns	`
* GET `/campaigns/{campaign_id}`
* PATCH `/campaigns/{campaign_id}`
* DELETE `/campaigns/{campaign_id}`
* POST `/campaigns/{campaign_id}/actions/cancel-send`
* POST `/campaigns/{campaign_id}/actions/pause`
* POST `/campaigns/{campaign_id}/actions/replicate`
* POST `/campaigns/{campaign_id}/actions/resume`
* POST `/campaigns/{campaign_id}/actions/schedule`
* POST `/campaigns/{campaign_id}/actions/send`
* POST `/campaigns/{campaign_id}/actions/test`
* POST `/campaigns/{campaign_id}/actions/unschedule`

In the Eventbrite API, here's the Events resource:

<a class="noExtIcon" href="https://www.eventbrite.com/developer/v3/endpoints/events/"><img src="images/eventbriteresourceexample.png"/></a>

The Events resource itself isn't defined. Instead, the descriptions are added for each of the Events resource URLs. The Events resource contains all of these resource URLs:

* `/events/search/`
* `/events/`
* `/events/:id/`
* `/events/:id/`
* `/events/:id/publish/`
* `/events/:id/cancel/`
* `/events/:id/`
* `/events/:id/display_settings/`
* `/events/:id/display_settings/`
* `/events/:id/ticket_classes/`
* `/events/:id/ticket_classes/:ticket_class_id/`
* `/events/:id/canned_questions/`
* `/events/:id/questions/`
* `/events/:id/attendees/`
* `/events/:id/discounts`

And so on.

As another example, here's the Relationships resource in the  [Instagram API](https://instagram.com/developer/endpoints/relationships/).

<a  class="noCrossRef" href="https://instagram.com/developer/endpoints/relationships/" class="noExtIcon"><img src="images/instagramapi_3_17.png"/></a>

The Relationships resource isn't described. Instead, the descriptions are added for each of the resources grouped within the Relationships resource:

* GET `/users/self/followsGet`
* GET `/users/self/followed-byGet`
* GET `/users/self/requested-byList`
* GET `/users/user-id/relationshipGet`
* POST `/users/user-id/relationshipModify`

{% include random_ad.html %}

The [Box API](https://docs.box.com/reference#membership-object) is another good example of how the same resource can have multiple URLs.

<a  class="noCrossRef" href="https://docs.box.com/reference#membership-object" class="noExtIcon"><img src="images/boxapi_3_17.png" alt="Example from Box" /></a>

For the Membership resource (or "object," as they call it), there are 7 different endpoints or methods you can call.

The Trello API shows another example. In Trello, the [Members](https://developers.trello.com/v1.0/reference#member) resource has around 40 resource URLs.

Whether your API has resources that contain lots of variant resource URLs, or just one resource URL per resource, you need to describe the resource.

## How many resource URLs for the same resource?

When developers create APIs, they have a design question to consider: Use lots of variants of resource URLs (as with Eventbrite's API), or provide lots of parameters to configure the same resource URL.

Often there's a balance between the two. The trend seems to be toward providing separate resource URLs rather than supplying a host of potentially confusing parameters for the same URL.

## Terminology for describing the resource

The exact terminology for referring to resources varies.  The "things" that you access using a URL can be referred to in a variety of ways. Other than "resources," you might see them listed as API calls, endpoints, API methods, calls, objects, services, and requests. Some docs get around the situation by not calling them anything explicitly.

However, in general, an API has various "resources" that you access through "resource URLs." The resource URLs give you access to the resource. (But terminology isn't standard, so expect variety.)

The [Mashape Weather API](https://market.mashape.com/fyhao/weather-13) is pretty simple, and just refers to 3 endpoints available. Referring to the "`/aqi` resource URL" or to the "aqi resource" doesn't make a huge difference. But with more complex APIs, using the resource URL to talk about the resource can get problematic.

At one company I worked at, our URLs for the Rewards resource looked like this:

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

And rewards in context of the Missions resource looked like this:

```html
// get the rewards for a specific mission related to a specific user
/users/{userId}/rewards/{missionId}

// get the rewards available for a specific mission
/missions/{missionid}/rewards
```

To say that you could use the rewards resource wasn't always specific enough, because there were multiple rewards and missions resource URLs.

It can get awkward referring to the resource by its resource URL. For example, "When you call `/users/{userId}/rewards/`, you get a list of all rewards. To get a specific reward for a specific mission for a specific user, the `/users/{userId}/rewards/{missionId}` resource URL takes several parameters..." The longer the resource URL, the more difficult the reference. These kinds of descriptions would be more common in the [non-reference sections](docnonref.html) sections of your documentation.

## Describe the surfreport resource

{% include activity.html %}

Review the [surf report wiki page](docapis_new_endpoint_to_doc.html) containing the information about the resource, and try to describe the resource in the length of one or two tweets (140 characters).

Here's how I went about creating the resource description. If you want to try crafting your own description of the resource first, and then compare yours to mine, go for it. However, you can also just follow along here.

<div class="docSample">

<p><b>surfreport/{beachId}</b></p>

<p>Returns information about surfing conditions at a specific beach ID, including the surf height, water temperature, wind, and tide. Also provides an overall recommendation about whether to go surfing. </p>

<p><code>{beachId}</code> refers to the ID for the beach you want to look up. All Beach ID codes are available from our site.</p>
</div>

## Critique the Mashape Weather API descriptions

{% include activity.html %}

Look over the descriptions of the three resources in the weather API. They're pretty short. For example, the `aqi` resource just says "Air Quality Index."

These descriptions are too short, but developers like concision. If I were shortening the surfreport description, I might write:

<div class="docSample">
<p><b>/surfreport/{beachId}</b></p>
<p>Provides surf condition information.</p>
</div>

Compare these descriptions with the resource descriptions from the [Aeris Weather API](http://www.aerisweather.com/support/docs/api/reference/endpoints/).

With Aeris Weather, the description for the [forecasts endpoint](http://www.aerisweather.com/support/docs/api/reference/endpoints/forecasts/) is as follows:

<div class="docSample">
<p><b>Endpoint: forecasts</b></p>
<p>The forecasts endpoint/data set provides the core forecast data for US and international locations. Forecast information is available in daily, day/night intervals, as well as, custom intervals such as 3 hour or 1 hour intervals.</p>
</div>

In summary, the description provides a 1-3 sentence summary of the information the resource contains.

## Recognize the difference between reference docs versus user guides

Given how brief the user description is, one thing to keep in mind is the difference between reference docs and user guides/tutorials:

* **Reference guides**: Concise, bare-bones information that developers can quickly reference.
* **User guides/tutorials**: More elaborate detail about everything, including step-by-step instructions, code samples, concepts, and procedures.

With the description of surfreport, you might expand on this with much greater detail in the user guide. But in the reference guide, just provide a short description.

You could link the description to the places in the user guide where you expand on it in more detail. But since developers often write API documentation, they sometimes never write the user guide (as is the case with the Weather API in Mashape).

{: .tip}
The description of the resource is likely something you'll re-use in different places: product overviews, tutorials, code samples, quick references, etc. As a result, put a lot of effort into crafting it. Consider storing the description in a re-usable snippet in your authoring tool so that you can list it without resorting to copy/paste methods in your [quic start guide](docapis_doc_quick_reference.html).
