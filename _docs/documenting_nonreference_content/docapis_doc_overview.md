---
title: Documenting the API overview
permalink: /docapis_doc_overview.html
keywords:
course: "Documenting REST APIs"
weight: 5.2
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

The overview explains what you can do with the API (high-level business goals), the pain points or market needs it solves, who the API is for, and other introductory information.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Purpose of the API overview

Too often with API documentation (perhaps because the content is often written by developers), the documentation gets quickly mired in technical details without ever explaining clearly what the API is used for. Don't lose sight of the overall purpose and business goals of your API by getting lost in the endpoints.

The overview grounds users with a high-level understanding of the system. This high-level understanding is critical to grasping the system as a whole. It allows the details to fit into a larger conceptual framework. In an article in Simplifying Complexity called [Reduction, layering, and distillation as a strategy for simplicity](http://idratherbewriting.com/simplifying-complexity/reduction-layering-distillation.html), I dive into ways that users consume information. We start at the high-level, getting a gist of what something is about from the title and description, and we work our way into more details. This overview provides this initial orientation for the user.

{% include course_image.html size="medium" border="true" filename="nonref_overview" ext_print="png" ext_web="svg" alt="API overview" caption="The API overview provides high-level detail about the purpose, audience, and market need for your API." %}

In the overview, list some common business scenarios in which the API might be useful. This will give people the context they need to evaluate whether the API is relevant to their needs.

Keep in mind that there are thousands of APIs. If people are browsing your API, their first and most pressing question is, what information does it return? Is this information relevant and useful to me?

In "The Top 20 Reasons Startups Fail," one of the main reasons is the inability for the company to solve a market problem:

> Startups fail when they are not solving a market problem. We were not solving a large enough problem that we could universally serve with a scalable solution. We had great technology, great data on shopping behavior, great reputation as a thought leader, great expertise, great advisors, etc, but what we didn’t have was technology or business model that solved a pain point in a scalable way. ([CB Insights](https://www.cbinsights.com/research/startup-failure-reasons-top/))

This overview focuses in on the market problem that the API solves.

The API overview usually appears on the homepage of the API (or is at least a link from the homepage). The homepage (the start of your docs) is a good place to put this overview, because in this overview you also define your audience. Understanding your audience helps you orient the content in your API documentation appropriately.

## Sample API overviews

Here are a few sample API overviews:

**Sendgrid**:

<a href="https://sendgrid.com/docs/User_Guide/index.html" class="noExtIcon"><img src="images/sendgridoverview.png" alt="Sendgrid overview" /></a>

The overview starts off with two key sections: "What is SendGrid?" and "Who is SendGrid for?" I like the straightforward approach. Even in the description of what SendGrid is, the authors don't assume everyone knows what an SMTP provider is, so they link out to Wikipedia. Overall, in about 10 seconds you can get an idea of what SendGrid is all about.

**Lyft**

<a href="https://developer.lyft.com/docs/overview" class="noExtIcon"><img src="images/lyftapioverview.png" alt="Lyft overview" /></a>

Lyft's API overview starts out in a similar way, with sections titled "What is Lyft?" and "Why Use Lyft as a Developer." Their homepage also provides information on access, rate limits and throttling, and testing. The Lyft authors also recognize that each tech domain has its own lingo, so they provide a glossary up front.

**IBM Watson Assistant**

<a href="https://console.bluemix.net/docs/services/conversation/index.html#about" class="noExtIcon"><img src="images/ibmcloudoverview.png" alt="IBM Watson Assistant " /></a>

IBM Watson Assistant starts off with a brief summary of the service, followed by a high-level diagram of the system and the summary about how to implement it. Including a diagram of how your API works and how developers can implement it gives users a good grounding in what to expect, such as the level of complexity and time it will take to incorporate the API.

{% include random_ad.html %}
