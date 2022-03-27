---
title: API quick reference
permalink: docapis_doc_quick_reference.html
keywords:
course: "Documenting REST APIs"
weight: 7.8
sidebar: docapis
section: docconceptual
path1: docconceptual.html
last-modified: 2019-03-30
---

Quick reference guides serve a different function than [getting started tutorials](docapis_doc_getting_started_section.html). While the getting started tutorial helps beginners get oriented by providing an end-to-end instruction to make a simple API request, the quick reference guide helps users get a glimpse of the system as a whole, often by providing a list of the API's endpoints.

* TOC
{:toc}

## The need for quick reference guides

Whether for end-user documentation or developer documentation, the quick reference guide provides a 1-2-page guide that provides a brief summary of the core tasks and features in the system.

<figure><img class="docimage large border" src="{{site.media}}/{% if site.format == "kindle" %}nonref_quickreference.png{% else %}nonref_quickreference.svg{% endif %}" alt="Quick reference" /><figcaption>Quick reference guides compress the key information into a brief format for easy consumption</figcaption></figure>

The quick reference guide should provide the user with just enough information to get the gist of what the system is about, including the key endpoints and tasks. Often with APIs, the endpoints have relationships with each other that you can depict visually. Here's an API diagram I created at a previous company:

{% comment %}Leave image path as is. Otherwise, when generating ebooks, the site.media property becomes blank and Kindlegen looks for this asset locally, returning error. {% endcomment %}
<figure><a target="_blank" class="noExtIcon" href="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/sample_api_diagram.pdf"><img class="docimage medium" src="{{site.media}}/sample_api_diagram.png" alt="Sample quick reference guide format" /></a><figcaption>A quick reference guide format</figcaption></figure>

The text is Latin filler for privacy reasons, so the logic may not be entirely apparent. But with this API, the endpoints could be organized into different groups. Some of the groups had multiple levels within the endpoint, and multiple include options for each endpoint. I created this diagram in Adobe Illustrator and distributed it as a PDF. Developers found it useful because it tried to make sense of the API as a whole, showing how all the endpoints fit together in logical harmony. Most commonly with API documentation, the quick reference guide lists abbreviated descriptions of the endpoints. For this reason, the [Swagger UI output](pubapis_swagger_demo.html) can often function as a quick reference guide.

Outside of API documentation, quick reference guides tend to focus more on tasks. If you have a service to set up or configure, a more narrative rather than visual format might make sense. Here's a sample layout for such a guide:

<figure><a target="_blank" class="noExtIcon" href="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/sample_api_diagram.pdf"><img class="docimage small" src="{{site.media}}/quickreferenceguideformat.png" alt="Quick reference guide format focusing on tasks" /></a><figcaption>This quick reference guide format focuses more on tasks than API endpoints</figcaption></figure>

However, with API documentation, usually the quick reference guide focuses on some visual grouping or display of the endpoints since this is what constitutes the core functionality in an API.

## Advantages of distilled information for learning

The information in the quick reference usually can’t be single sourced, since it’s not just an excerpt from the docs but rather a more briefly written summary or depiction of the entire system. As a result, many times it seems like yet another deliverable technical writers don’t have time to write. But for the best user experience, the quick reference guide shouldn't be skipped because it provides incalculable value to users.

When you create the quick reference guide, try to condense the most important information into one or two pages that users can print and pin up on their wall. By "condense" I don't mean shrink the font to 6-point, decrease the leading, and eliminate all white space. With the quick reference guide, you take something that's robust and complex, and distill it down to its essence in a way that still maintains clarity to users.

Through this distillation, quick reference guides provide a unique advantage for users to understand the material. Providing a high-level overview of a system helps users get a sense of the whole before drilling into the details.

{: .tip}
For a deep dive into the importance of distilling information for users, see [Reduction, layering, and distillation as a strategy for simplicity](https://idratherbewriting.com/simplifying-complexity/reduction-layering-distillation.html) in my series on Simplifying Complexity. Reading overviews, summaries, and other high-level information to see the whole at a glance can help users understand a complex system in significant ways. Too often, users get thrown into the technical details without more grounding and orientation about the whole.

{% include ads.html %}

Distilling large amounts of information into concisely worded titles, summaries, headings, mini-TOCs, and topic sentences can facilitate information consumption and comprehension. Quick reference guides take the principle of distillation to another level by compressing the whole system into a bite-sized information deliverable.

Quick reference guides are like the [poetry of technical writing](https://idratherbewriting.com/2008/07/06/quick-reference-guides-the-poetry-of-technical-writing/). The goal is not just to be brief or concise. With poetry, the poet attempts to evoke a mood or paint a moment, and in that brief moment, capture the essence of the whole. Writing a quick reference guide involves much the same effort. It's not that you merely cut words to make the documentation shorter, or restrict the output to a few topics, but that you try to compress the documentation as a whole and express its minimalist equivalent.

I'll grant that the task is probably impossible for technical material. Still, the attempt is worthwhile and the philosophy remains the same. Quick reference guides teach each us how to use the system in 5 minutes rather than 5 hours. It's a philosophy of simplification and linguistic efficiency.

{% include random_ad2.html %}

Don't be deceived by the brevity and scope of the quick reference guide. In wrangling with layout, scope, and concision to create this guide, you might spend several days writing just one page. But when you're done, you can practically frame the result.

## Sample quick reference guides

The following are sample quick reference guides from various API documentation sites.

### Eventful

<figure><a target="_blank" class="noExtIcon" href="http://api.eventful.com/docs"><img class="docimage" src="{{site.media}}/eventfulquickreference.png" alt="Eventful quick reference guide" /></a><figcaption>Eventful quick reference guide</figcaption></figure>

Eventful provides a one-page quick list of all the endpoints in the API, organized by resource group. Each endpoint is described in about half a line, so you can get a gist of them all quickly. For example, the description for the `/events/get` in their quick reference is "Get an event record." But if you click for more details, the more detailed definition is "Given an event ID, returns the event data associated with that event. See [http://eventful.com/events/E0-001-000278174-6](http://eventful.com/events/E0-001-000278174-6) for an example interface."

There's a certain understanding you get from seeing all the endpoints at a glance. By looking from high-above at the forest, you can see the shape of the forest as a whole. You may not know what kinds of trees the forest contains, but you can comprehend other details that aren't apparent when you're looking at a single tree.

### Parse

<figure><a target="_blank" class="noExtIcon" href="http://docs.parseplatform.org/rest/guide/#quick-reference"><img class="docimage" src="{{site.media}}/parsequickreferenceguide.png" alt="Parse platform quick reference guide" /></a><figcaption>Parse quick reference guide</figcaption></figure>

The quick reference for Parse is similar to Eventful in that it's a long list of endpoints, this time grouped in tables. Notice that this quick reference page is just a section within one long, single page of docs. In their approach, all documentation is on the same page, but as you scroll down, different entries in the sidebar highlight.

Sometimes developers like the one-page approach because it reduces information fragmentation and lets them use Ctrl+F to find all instances of a keyword. I explored the tradeoffs in this one-page approach in [Single-page docs versus "Click Insanity."](https://idratherbewriting.com/2014/01/12/single-page-docs-versus-click-insanity/)

If you use the [OpenAPI reference docs on GitHub](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md), you'll notice the docs are also contained on a single page. Developers might like to use Ctrl+F to quickly see all instances of a topic. However, I'm not a fan of single-page documentation like this because it provides a lot of visual complexity for users to sort out.

### Shopify

<figure><a target="_blank" class="noExtIcon" href="http://cheat.markdunkley.com/"><img class="docimage" src="{{site.media}}/shopifyquickreferenceguide.png" alt="Shopify quick reference guide" /></a><figcaption>Shopify quick reference guide</figcaption></figure>

The Shopify quick reference guide isn't for an API, but it does show the filters, variables, and other functions available in Liquid, which is a scripting language for developers. Here Shopify takes advantage of collapse-and-expand functionality to compress the information.

{% include random_ad4.html %}

This quick reference guide is handy because it lets you browse all the available functionality in Liquid at once, so you can know what to dive into for more information. It's like a map of the Liquid terrain. The map lets you know all the functions that exist.

{% include image_ad_right.html %}

## <i class="fa fa-user-circle"></i> Activity with quick reference guides

With the [open-source project you identified](docapis_find_open_source_project.html), identify the information about quick reference guides for the API. Answer the following questions:

1. Is there a quick reference guide for the API? Perhaps a quick list of the API endpoints?
2. Is there a Swagger UI output that acts as a quick reference for the API?
3. If there isn't a quick reference guide, would the API benefit from one? Why or why not?
4. Besides listing abbreviated descriptions of the endpoints, what else would you put in the API's quick reference guide? Common tasks?
5. Are there several essential tasks users need to perform with the API? Are these core tasks also communicated in the getting started tutorial?

{% include random_ad3.html %}
