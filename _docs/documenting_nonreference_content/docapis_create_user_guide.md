---
title: User guide topics
permalink: /docapis_create_user_guide.html
keywords:
course: "Documenting REST APIs"
weight: 5.0
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

Up until this point, we've been focusing on the endpoint (or reference) aspect of API documentation. The reference documentation is only one part &mdash; granted, a significant one &mdash; in API documentation. You also need to create a user guide and tutorials that cover non-reference topics. Reference documentation tends to appeal to more advanced users, while non-reference documentation is used more by newcomers and novices who need the bigger picture and more handholding.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Essential sections in a user guide

{% include random_ad.html %}

Whereas the endpoint documentation explains how to use each of the endpoints, you also need to explain how to use the API overall. There are other sections common to API documentation that you must also include:

* [API Overview](docapis_doc_overview.html)
* [Getting started tutorial](docapis_doc_getting_started_section.html)
* [Authentication and authorization requirements](docapis_more_about_authorization.html)
* [Status and error codes](docapis_doc_status_codes.html)
* [Rate limiting and thresholds](docapis_rate_limiting_and_thresholds.html)
* [Code samples/tutorials](docapis_codesamples_bestpractices.html)
* [SDKs and sample apps](docapis_sdks_and_sample_apps.html)
* [Quick reference guide](docapis_doc_quick_reference.html)
* [API best practices](docapis_best_practices_with_api.html)
* [Glossary](docapis_glossary_section.html)

Since the content of these sections varies based on your API, it's not practical to explore each of these sections using the same weather API like we did with the API endpoint reference documentation. Instead, I'll provide general descriptions and overviews of what these sections contain.

{% include random_ad2.html %}

## Other tasks and tutorials

Beyond the sections outlined above, you might want to include other tasks and tutorials specific to your API. For example, what do you expect your users to do? What are their real business scenarios for which they'll use your API? How do you accomplish these tasks?

Sure, there are innumerable ways that users can put together different endpoints for a variety of outcomes. And the permutations of parameters and responses also provide endless combinations. But no doubt there are some core tasks that most developers will use your API to do. For example, with the Twitter API, most people want to do the following:

 * Embed a timeline of tweets on a site
 * Embed a hashtag of tweets as a stream
 * Provide a Tweet This button below posts
 * Show the number of times a post has been retweeted

 Provide how-to's or tutorials for these tasks just like you would with any user guide. Seeing the tasks users can do with an API may be a little less familiar because you don't have a GUI to click through. But the basic concept is the same &mdash; find out what tasks users want to do with this product, and document how to do it.
