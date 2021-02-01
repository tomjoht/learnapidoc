---
title: Product overview
permalink: /docapis_doc_overview.html
keywords:
course: "Documenting REST APIs"
weight: 6.1
sidebar: docapis
section: docconceptual
path1: /docconceptual.html
last-modified: 2021-01-31
---

The product overview explains what you can do with the product, including the high-level business goals, the market needs or pain points it solves, who the API or other features are for, and other introductory information. Although a seemingly simple page, the product overview can confusingly overlap into marketing domains, present redundancies with README's, and pose challenges with a more diverse audience (both engineers and bizdev people) than the rest of your technical docs.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Purpose of the product overview

Too often with developer documentation, the documentation gets quickly mired in technical details without ever explaining clearly what the product (e.g., its APIs and other services) is used for. Don't lose sight of the overall purpose and business goals of your API by getting lost in the endpoints.

{% include random_ad3.html %}

The product overview grounds users with a high-level understanding of the system. This high-level understanding is critical in order to grasp the system as a whole. It allows the details to fit into a broader conceptual framework.

To understand your product, users often need to start at a high-level, getting a gist of what something is about from the title and description, then the overview, table of contents, and so on, gradually wading into more and more details. This is how our brains work &mdash; start with the big picture (the forest) before diving into the details (trees and leaves). I elaborated more on this in [Reduction, layering, and distillation as a strategy for simplicity](/simplifying-complexity/reduction-layering-distillation.html). This overview provides this initial orientation for the user with your product.

Some key questions your overview should address are as follows:

* What is it?
* What does it do?
* Who is it for?
* Why would someone use this?

{% include course_image.html size="medium" border="true" filename="nonref_overview" ext_print="png" ext_web="svg" alt="product overview" caption="The product overview provides high-level detail about the purpose, audience, and market need for your API." %}

In the overview, list some common business scenarios in which the API might be useful. These scenarios will give users the context they need to evaluate whether the API is relevant to their needs.

Keep in mind that there are thousands of APIs. If people are browsing your API, their first and most pressing question is, what information does it provide? Is this information relevant and useful to my needs? And if you want to go the extra mile, how does this product compare with other products in the same category?

## Explain the market problems your API solves

In [The Top 20 Reasons Startups Fail](https://www.cbinsights.com/research/startup-failure-reasons-top/), one of the main reasons startups fail is their inability to solve a market problem. The authors explain:

> Startups fail when they are not solving a market problem. We were not solving a large enough problem that we could universally serve with a scalable solution. We had great technology, great data on shopping behavior, great reputation as a thought leader, great expertise, great advisors, etc, but what we didn’t have was technology or business model that solved a pain point in a scalable way. (*CB Insights*)

This overview focuses in on the market problem that the API solves. If your API fails, it's likely because it's not solving a market problem. Although you're likely just writing the documentation, it helps to understand the problem the product solves and the overall market context.

## Product overview vs overviews (plural)

A developer portal usually has documentation for many different products, not just one. Each product will have its own product overview page. In fact, the homepage of the developer portal rarely has a product overview. Instead, the developer portal's homepage serves as a routing board to the product overviews.

Even a single product might have multiple product overviews for each of the features. The overview is just a term for the opening page of a product, the landing page or starting page.

## Audience dimensions

One important dimension to keep in mind with product overviews is the expanded audience. Product overviews aren't just read by your target users, i.e., usually engineers. Product overviews are frequently read by product managers, executives, and other decision makers who are trying to decide whether to purchase or move forward with the product. These decision-makers might be trying to size up the complexity of integration, how many person hours the effort will consume, and whether the product will solve the problem they have.

For example, a high-level executive might be trying to decide if implementing your product will require one week integration effort by a single developer or a team of 50 developers working heads-down for six months. The product overview should give some indication of the development effort.

Also, the high-level executive will be less interested in the technical details and more interested in conceptual and bigger picture content. An architectural diagram that describes how the product works at a high level is appropriate, but save the excruciating technical details for the inner pages of the documentation.

## Overlap with marketing

Another facet of product overview pages is their frequent overlap with marketing content. In many organizations, there is a "developer marketing" group that handles product overviews that cover this more high-level overview of the product. For example, if you browse the AWS Lambda documentation, you'll find that a higher-level product overview appears before the actual documentation. Here's the marketing layer to the product:

<a class='noCrossRef' href="https://aws.amazon.com/lambda/"><img style="border: 1px solid #dedede" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/awslambdaproducthomepage.png" alt="AWS Lambda product homepage" /></a>

This marketing layer covers these topics: Overview, Features, Pricing, Getting Started, Resources, FAQs, and Partners. The actual [Lambda documentation](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) is presented on another site:

<a class='noCrossRef'  href="https://docs.aws.amazon.com/lambda/latest/dg/welcome.html"><img style="border: 1px solid #dedede"  src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/awslambdadochomepage.png" alt="Lambda documentation homepage" /></a>

See how the marketing content can be somewhat disjointed from the how-to documentation? Nevertheless, the documentation's product overview repeats some of the same content as the product overview. The documentation product overview addresses these questions:

* When should I use AWS Lambda?
* Are you a first-time user of AWS Lambda?

Typically, developer marketing teams write the marketing product overview, while developer documentation teams write the documentation product overview. But as you can see, this is an area where content overlaps and where some coordination across teams becomes essential. Suppose the doc team for Lambda wanted to emphasize certain points that the marketing team did not &mdash; it would create a confusing transition between the two sets of content. But even with differences, the idea is that business decision makers read the marketing content, while engineers read the documentation content.

Your organization might have multiple teams writing content like this, or you might be tasked with creating both the higher-level marketing layer and the documentation yourself. In some ways, having a single team or writer handle both types of content might lead to a more streamlined, unified content experience. When you're the sole writer, you're less likely to repeat yourself in different places in contradictory ways. You can simply devote a section of your documentation to the marketing content rather than housing it on another site.

If you are stuck with the two-site model (marketing on one site, docs on another), it might seem logical to share content between these two groups, but usually marketing has a different system for managing and publishing content than the documentation teams. Marketers don't usually adopt docs-as-code systems but rather prefer more CMS-driven systems. These systems rarely share content with each other, and even if they did, the marketing versions might prefer to be more condensed and cover other features such as pricing, which is rarely an area documentation ventures into.

{% include random_ad.html %}

## Strategies for the documentation's product overview

What strategies should you employ when you're faced with writing a product overview when a product marketing team has their own product overview on a separate site? Consider the following:

* Find out who the marketing group is and what messaging they are focusing on for the product.
* Create a condensed version of the marketing overview content, and point users to the marketing overview for more details. You don't want to duplicate all the content because invariably, docs will go out of date as the other content evolves (not to mention the confusion of presenting two sets of overviews to users).
* Avoid simply copying any overblown promises about simplicity or ease of installation in marketing copy.

Here it's worth diving into some differences between documentation copy and marketing copy because while both genres might seem to share purposes with the product overview, avoid falling into marketing style here. For example, suppose you find a few pages of product descriptions that the marketing team already wrote, and you want to just copy it into the docs for the documentation product overview.

If you do this, strip out mention of the word "easy" or "just," as in "the implementation is so easy, you *just* have to do X..." To sell a product, marketing invariably gravitates toward promises about ease of implementation. This is perhaps the hallmark of marketing content. And many bizdevs or execs are trying to scope the difficulty of the implementation. But as a technical writer, you not only have an obligation to be honest about implementation complexity, you must also recognize that what is easy for one user might be insurmountable to another.

Never say something is "easy" &mdash; you might qualify the degree of development effort based on the role. For example, you could say that for a seasoned engineer familiar with Java and who has been developing cloud-based apps for years, implementing this product will likely be straightforward and not require more than a week of integration effort. For someone new to cloud-based app development or less familiar with Java, there will be a much steeper learning curve and might require several months or more of preparation and learning to implement. If you can qualify the level of development effort based on different audience types, that will provide more realistic information. You can still answer the exec's question &mdash; how difficult is this product to implement &mdash; without falling prey to promises of installation ease.

By the way, it's worth noting that marketers often have a superficial technical understanding of a product, so they usually cannot make these kinds of judgements about the implementation difficulty. They might be going off of an internal engineer's observation that it's "straightforward" or that it "should be easy to implement." What the marketer might not realize is that the engineer usually makes these estimations by assuming the audience has the same knowledge level and background as the engineer making the pronouncements.

## Overlap with README's

Another challenge with product overviews is the overlap with README content. A README is an introductory overview file (a homepage) placed in a code repository such as GitHub. The README often has many elements of an overview similar to a product overview in documentation site. If your documentation references a code repo, that code repo needs a README. But do you duplicate the same information in the README that you do in the documentation overview (and potentially a product marketing site as well)?

Hopefully not. The README might have a high-level summary and information on installation, configuration, and usage. But my feeling is that this information should be condensed from more detailed documentation. Many guides about README content assume that the README is the only documentation for the code in the repo. As a professional technical writer, I rarely work on projects that are so small that the documentation can be handled by a single page that lives in a code repo. If that's all you need for your product, great. However, chances are the README is only a glimpse of many more pages of configuration, installation, and usage that live in a more robust documentation site separate from the repo.

However, the README has some elements that don't necessarily belong in regular documentation. Content elements specific to the code repo might be the following:

* Version information
* Code of conduct
* Contributor how-to protocol
* Issue filing
* Pull requests
* License information
* Team details/contributors

See [The Essential Sections for Better Documentation of Your README Project](https://www.welcometothejungle.com/en/articles/btc-readme-documentation-best-practices) by Thomas Parisot for a good guide about writing README content.

I admit that my preferences for what the README should contain might deviate from general recommendations from developers in this space. I am not a fan of duplicating the same information in the documentation into a README. If your documentation covers installation, configuration, implementation, usage, etc.., why duplicate this same information in a text file in a code repo? Instead, I prefer to provide brief summaries only in the README and point users to the main documentation for more details. For example, you could provide 1-2 sentences for each of these sections and point users back to your docs for details. A README might be the length of a poem while your docs are the length of a novel.

README's have the additional complication of being difficult to maintain. Unless you have rights to publish to the code repository, it might be cumbersome to update the README content. If you're an engineer who is writing the code and docs at the same time, this likely isn't an issue. But in many organizations, technical writers are separate from engineering teams, and tech writers usually don't publish code to GitHub repos. I've published to GitHub repos in the past &mdash; in an effort to speed along the publication of a sample app, I jumped through the company's approval process and pushed out the content into the repo. But later I regretted doing so. I learned that the person who pushes content into a repo owns that content and all the filed issues, pull requests, and other responsibilities that come with repo management. I didn't want to be in that position &mdash; I wanted the engineers to own and maintain the code and control pushes to this space.

I share this experience only to reinforce that README files shouldn't contain so many doc details that the information begins to conflict or become outdated with your main documentation. As long as you have only brief, condensed information in your README, it likely won't go out of date with each release.

## Key differentiators in product overviews

The product overview space is interesting because it places you into murky territory where marketing and documentation blend. If you were to put on a marketing hat for a moment, what angle would you take in your writing?

Although it would be awesome to compare your product against competitor products, most likely your legal group would freak out (mentioning competitors is usually taboo). And you might not have a deep understanding of other products to make a fair comparison. Or you might feel that readers will assume you're too biased and wouldn't trust your comparison anyway.

But what you can do is focus in on your product's key differentiators. These are features your product has that make it unique in the market. For example, maybe users can access your app from the browser rather than installing it locally. You don't need to create a comparison chart showing how products X, Y, and Z lack online browser access. But by emphasizing this differentiating feature, you help establish a selling point and a potential reason for market dominance.

Remember that the product overview, unless other documentation, often addresses a *presales* scenario. As such, the reader is likely wondering how your product compares with other products in the same category. Why should they go with your product rather than another? What advantage does your product provide? Unless you know the competitive advantage of your product, you'll have a difficult time writing marketing-esque content.

Fortunately, your marketing team should already have this information available &mdash; a competitive analysis is one of the fundamental marketing documents. Ask for it so you can follow a similar emphasis in the product overview. For more information on this topic, especially "How does this product differ from other products?" see my post [My documentation takeaways from the Boeing disaster -- two essential doc questions to ask for any project](/2019/03/20/two-doc-takeaways-from-boeing-disaster/).

## Good Docs project template

If you're looking for more inspiration and guidance about overviews, see the [API overview template from the Good Docs project](https://github.com/thegooddocsproject/templates/blob/master/api-overview/about-overview.md). They recommend similar sections as those I've been recommending here &mdash; establish who the docs are for, what problems the product solves, what market/industry the product is intended for, and so on. In the body of the overview, the Good Docs team recommends covering the following questions:

> * What is it supposed to do? (What problem does it solve, and for whom?)
> * What exact capabilities are available to the user? What services does it offer?
> * What does it not do that developers should know about?
> * What are the typical use cases?
> * How does it work? (What do users need to know about architecture an * internal components?)
> * What dependencies does the developer need to know about before installing?
> * What technical requirements do readers need? Include development environment and licensing requirements.
> * What knowledge prerequisites does the developer need to know about before using the API?
>
> (See [The overview](https://github.com/thegooddocsproject/templates/blob/master/api-overview/about-overview.md))

This is all good information to include.

## Sample structure of a product overview

Product overviews vary from product to product, but here's the general flow that I like to follow:

- Overview of the product
- Who it's for
- Sample use cases
- Requirements to use the product
- High-level architecture
- List of components
- Development effort/scope
- How to get support/help
- Link to getting started tutorial

## Sample product overviews

Here are a few sample product overviews.

### SendGrid

{% include course_image.html url="https://sendgrid.com/docs/User_Guide/index.html" filename="sendgridoverview" ext_web="png" ext_print="png" alt="SendGrid product overview" caption="SendGrid API overview" %}

The Sendgrid overview starts with two key sections: "What is SendGrid?" and "Who is SendGrid for?" I like the straightforward approach. Even in the description of what SendGrid is, the authors don't assume everyone knows what an SMTP provider is, so they link out to more information. Overall, in about 10 seconds you can get an idea of what the SendGrid API is all about.

### Lyft

{% include course_image.html url="https://developer.lyft.com/docs/overview" filename="lyftapioverview" ext_web="png" ext_print="png" alt="Lyft product overview" caption="Lyft API overview" %}

Lyft's product overview starts in a similar way, with sections titled "What is Lyft?" and "Why Use Lyft as a Developer." Their homepage also provides information on access, rate limits and throttling, and testing. The Lyft authors also recognize that each tech domain has its own lingo, so they provide a [glossary](docapis_glossary_section.html) up front.

### IBM Watson Assistant

{% include course_image.html url="https://cloud.ibm.com/docs/services/assistant?topic=assistant-index#index" filename="ibmcloudoverview" ext_web="png" ext_print="png" alt="IBM Watson Assistant overview" caption="IBM Watson Assistant overview" %}

IBM Watson Assistant starts off with a brief summary of the service, followed by a high-level diagram of the system and a summary about how to implement it. Including a diagram of your API gives users a good grounding about what to expect, such as the level of complexity and time it will take to incorporate the API.

## <i class="fa fa-user-circle"></i> Activity with product overviews

{% include image_ad_right.html %}

With the [open-source project you identified](docapis_find_open_source_project.html), identify the API overview. Then answer the following questions:

1. Does the documentation have an product overview?
2. Does the overview clarify who the API is for?
3. Does the overview indicate the market need or business problem the API solves?
4. What questions do you still have about the API after reading the overview?
5. How does the overview transition into a getting started tutorial or other first steps with the API?

{% include random_ad2.html %}
