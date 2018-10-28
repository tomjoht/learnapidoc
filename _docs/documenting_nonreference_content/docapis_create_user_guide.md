---
title: User guide topics
permalink: /docapis_create_user_guide.html
keywords:
course: "Documenting REST APIs"
weight: 6.01
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

Up until this point, we've been focusing on the [reference aspect of API documentation](docendpoints.html) (the endpoints). The reference documentation is only one part (granted, a significant one) in API documentation. In this section, I'll cover the main non-reference topics that are commonly found in API documentation. Rather than "non-reference topics," you might consider this type of information part of the "user guide."

{% include random_ad.html %}

* TOC
{:toc}

## Common topics in the user guide

The following are common non-reference topics common in API documentation:

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

Since the content of these sections varies based on your API, it's not practical to explore each of these sections using the [same weather API](docapis_scenario_for_using_weather_api.html) like we did with the API endpoint reference documentation. Instead, I'll provide general descriptions and overviews of what these sections contain, following by examples from actual API documentation sites.

{% include random_ad2.html %}

## Other topics not covered here

Beyond the sections outlined above, you might want to include other tasks and tutorials specific to your API. For example, what do you expect your users to do? What are their real business scenarios for which they'll use your API? How do you accomplish these tasks?

Sure, there are innumerable ways that users can put together different endpoints for a variety of outcomes. And the permutations of parameters and responses also provide endless combinations. But no doubt there are some core tasks that most developers will use your API to do. For example, with the Twitter API, most people want to do the following:

 * Embed a timeline of tweets on a site
 * Embed a hashtag of tweets as a stream
 * Provide a Tweet This button below posts
 * Show the number of times a post has been retweeted

In your non-reference documentation, you'll want to provide documentation for these business goals, just like you would with any user guide. Seeing the tasks users can do with an API may be a little less familiar because you don't have a GUI to click through. But the basic concept is the same &mdash; find out what tasks users want to do with this product, and explain how to do it.

I provide some instruction for this general area in [Code samples/tutorials](docapis_codesamples_bestpractices.html), but you might need to go beyond these non-reference sections to include additional topics based on your user's goals.
