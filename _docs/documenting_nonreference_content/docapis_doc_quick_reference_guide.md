---
title: Quick reference guide
permalink: /docapis_doc_quick_reference.html
keywords:
course: "Documenting REST APIs"
weight: 5.8
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

The quick reference guide serves a different function from the [getting started guide](docapis_doc_getting_started_section.html). While the getting started guide helps beginners get oriented by providing an beginning-to-end tutorial to make a simple API request, the quick reference guide helps users get a glimpse of the system as a whole often by providing a hierarchical diagram of the API endpoints.

* TOC
{:toc}

## The need for quick reference guides

Whether for end-user documentation or developer documentation, the quick reference guide provides a 1-2-page guide that provides a brief summary of the core tasks and features in the system.

{% include course_image.html size="large" border="true" filename="nonref_quickreference" ext_print="png" ext_web="svg" alt="Quick reference" caption="Quick reference guides compress the key information into a brief format for easy consumption" %}

The quick reference guide should provide the user with just enough information to get the gist of what the system is about, including the key endpoints and tasks. Often times with APIs, the endpoints have relationships with each other that can be depicted visually. Here's an API diagram I created at a previous company:

{% include course_image.html size="medium" url="images/sample_api_diagram.pdf" filename="sample_api_diagram.pdf" ext_print="png" ext_web="png" alt="Sample quick reference guide format" caption="A quick reference guide format" %}

The text is Latin filler for privacy reasons, so the logic may not be entirely apparent. But with this API, the endpoints could be organized into different groups. Some of the groups had multiple levels within the endpoint, and multiple include options for each endpoint. I created this diagram in Adobe Illustrator and distributed it as a PDF. Developers found it useful because it tried to make sense of the API as a whole, how all the endpoints fit together in a logical harmony.

Outside of API documentation, quick reference guides tend to focus more on tasks. If you have a service to set up or configure, a more narrative rather than visual format might make sense. Here's a sample layout for such a guide:

{% include course_image.html url="images/sample_qrg.png" size="small" filename="quickreferenceguideformat" ext_print="png" ext_web="png" alt="Quick reference guide format focusing on tasks" caption="This quick reference guide format focuses more on tasks than API endpoints" %}

However, with API documentation, usually the quick reference guide focuses on some visual grouping or display of the endpoints, since this is what constitutes the core functionality in an API.

## Learning benefits from distilled information

The information in the quick reference usually can’t be single sourced, since it’s not just an excerpt from the docs but rather a more briefly written summary or depiction of the entire system. As a result, many times it seems like yet another deliverable technical writers don’t have time to write. But for the best user experience, the quick reference guide shouldn't be skipped because it provides incalculable value to users.

When you create the quick reference guide, try to condense the most important information into one or two pages that users can print and pin up on their wall. By "condense" I don't mean shrink the font to 6 point, decrease the leading, and eliminate all white space. With the quick reference guide, you take something that's robust and complex, and distill it down to its essence a way that still maintains clarity to users.

Through this distillation, quick reference guides provide a unique advantage for users to understand the material. Providing a high-level overview of a system helps users get a sense of the whole before drilling into the details. I wrote about the importance of distilling information here: [Reduction, layering, and distillation as a strategy for simplicity](http://idratherbewriting.com/simplifying-complexity/reduction-layering-distillation.html).

Distilling large amounts of information into concisely worded titles, summaries, headings, mini-TOCs, and topic sentences can facilitate information consumption and comprehension. Quick reference guides take the principle of distillation to another level by compressing the system as a whole into a bite-sized deliverable.

Quick reference guides are like the poetry of technical writing. The goal is not just to be brief or concise. With poetry, the poet attempts to evoke a mood or paint a moment, and in that brief moment, capture the entire essence of the whole. Writing a quick reference guide involves much the same effort. It's not that you merely cut words to make the documentation shorter, or restrict the output to a few topics, but that you try to compress the documentation as a whole and express its minimalist equivalent.

I'll grant that the task is probably impossible for technical material. Still, the attempt is worthwhile and the philosophy remains the same. Quick reference guides teach each us how to use this manual in 5 minutes rather than 5 hours. It's a philosophy of simplification and linguistic efficiency.

{% include random_ad2.html %}

Don't be deceived by the brevity and scope of the quick reference guide. In wrangling with layout, scope, and concision to create this guide, you might spend several days writing just one page. But when you're done, you can practically frame it.

## Sample quick reference guides

The following are sample quick reference guides from various API documentation sites.

### Eventful

{% include course_image.html url="http://api.eventful.com/docs" filename="eventfulquickreference" ext_print="png" ext_web="png" alt="Eventful quick reference guide" caption="Eventful quick reference guide" %}

Eventful provides a one-page quick list of all the endpoints in the API, organized by resource group. Each endpoint is described in about half a line, so you can get a gist of them all quickly. For example, the description for the `/events/get` is "Get an event record." But if you click for more details, the more descriptive definition is "Given an event ID, returns the event data associated with that event. See [http://eventful.com/events/E0-001-000278174-6](ttp://eventful.com/events/E0-001-000278174-6) for an example interface."

There's a certain value you get from seeing all the endpoints at a glance. By looking from high-above at the forest, you can see the shape of the forest as a whole. Sure, you may not even know what kinds of trees the forest contains, but you can comprehend other details that aren't apparent when you're looking at a single tree.

### Parse

{% include course_image.html url="http://docs.parseplatform.org/rest/guide/#quick-reference" filename="parsequickreferenceguide" ext_print="png" ext_web="png" alt="Parse platform quick reference guide" caption="Parse quick reference guide" %}

The quick reference for Parse is similar to Eventful in that it's a long list of endpoints, this time grouped in tables. Notice that this quick reference page is just a section within one long, single page of docs. In their approach, all documentation is on the same page, but as you scroll down, different entries in the sidebar highlight.

Sometimes developers like the one-page approach because it reduces information fragmentation and lets them use Ctrl+F to find all instances of a keyword. I explored the tradeoffs in this one-page approach in [Single-page docs versus "Click Insanity"](http://idratherbewriting.com/2014/01/12/single-page-docs-versus-click-insanity/).

If you use the [OpenAPI reference docs on GitHub](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md), you'll notice the docs are also contained on a single page. Developers might like to use Ctrl+F to quickly see all instances of a topic. However, I'm not a fan of single-page documentation like this because it provides a lot of visual complexity for users to sort out.

### Shopify

{% include course_image.html url="http://cheat.markdunkley.com/" filename="shopifyquickreferenceguide" ext_print="png" ext_web="png" alt="Shopify quick reference guide" caption="Shopify quick reference guide" %}

The Shopify quick reference guide isn't for an API but it does show the filters, variables, and other functions available in Liquid, a scripting language for developers often building e-commerce sites. Here Shopify takes advantage of collapse-and-expand functionality to compress the information. This quick reference guide is handy because it lets you browse all the available functionality in Liquid at once, so you can know what to dive into for more information. It's like a map of the system. The map let's you know all the functions that exist.

{% include random_ad.html %}
