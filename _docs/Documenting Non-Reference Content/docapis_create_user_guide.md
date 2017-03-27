---
title: Creating the user guide
permalink: /docapis_create_user_guide.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.2
sidebar: docapis
section: docnonref
---

Up until this point, we've been focusing on the endpoint (or reference) documentation aspect of user guides. The endpoint documentation is only one part (albeit a significant one) in API documentation. You also need to create a user guide and tutorials.

Whereas the endpoint documentation explains how to use each of the endpoints, you also need to explain how to use the API overall. There are other sections common to API documentation that you must also include. (These other sections are absent from the Mashape Weather API because it's such a simple API.)

In Mulesoft's API tooling, you can see some other sections common to API documentation:

<a href="http://api-portal.anypoint.mulesoft.com/yahoo/api/yahoo-weather-api"><img src="images/commonsections.png" alt="Common sections in API documentation" /></a>

Although this is the Yahoo Weather API page, all APIs using the Mulesoft platform have this same template.

## Essential sections in a user guide

Some of these other sections to include in your documentation include the following:

* Overview
* Getting started
* Authorization keys
* Code samples/tutorials
* Response and error codes
* Quick reference

Since the content of these sections varies a lot based on your API, it's not practical to explore each of these sections using the same API like we did with the API endpoint reference documentation. But I'll briefly touch upon some of these sections.

[Sendgrid's documentation](https://sendgrid.com/docs) has a good example of these other user-guide sections essential to API documentation. It does a good job showing how API documentation is more than just a collection of endpoints.

## Also include the usual user guide stuff

Beyond the sections outlined above, you should include the usual stuff that you put in user guides. By the usual stuff, I mean you list out the common tasks you expect your users to do. What are their real business scenarios for which they'll use your API?

Sure, there are innumerable ways that users can put together different endpoints for a variety of outcomes. And the permutations of parameters and responses also provide endless combinations. But no doubt there are some core tasks that most developers will use your API to do. For example, with the Twitter API, most people want to do the following:

 * Embed a timeline of tweets on a site
 * Embed a hashtag of tweets as a stream
 * Provide a Tweet This button below posts
 * Show the number of times a post has been retweeted

 Provide how-to's for these tasks just like you would with any user guide. Seeing the tasks users can do with an API may be a little less familiar because you don't have a GUI to click through. But the basic concept is the same &mdash; ask what will users want to do with this product, what can they do, and how do they do it.
