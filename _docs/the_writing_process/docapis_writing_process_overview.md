---
title: "The writing process"
permalink: /docapis_writing_process_overview.html
course: "Documenting REST APIs"
weight: 8.912
sidebar: docapis
section: writing_process
path1: /writing_process.html
last-modified: 2021-11-14
---

If there's one topic in this course that is glossed over, it's the writing process itself. This is ironic because, more than anything else, it's the content that matters. And this content is likely your primary stewardship.

{% comment %}{% include random_ad4.html %}{% endcomment %}

If you're an engineer, writing might seem kind of unfamiliar territory and the blank page intimidating. You're likely burdened by the curse of knowledge, unaware of what jargon might be familiar or unfamiliar, unsure of the assumptions about the user's setup and knowledge. The blank page might give you writer's block.

On the flip side, if you're coming from a humanities background, you might be intimidated by all the programming-specific terminology and concepts, unaware of the technical level and familiarity of the users, unsure of how things work on a technical level, confused about what to call things, and more.

{% include random_ad3.html %}

So whether you're an engineer or a professional writer, writing API documentation can be tough. It is extremely challenging, and most of the texts on writing give you very plain, bare-bones writing instruction.

For example, most texts will explain that you first need to understand your audience's needs, gather your sources, write an outline, draft some content, review and edit the content, and finally publish. These are the phases of the writing process, but such a description doesn't tailor the tasks specifically to the tech writer's scenario nor really give you insider tips on how to succeed.

{% include random_ad2.html %}

Rather than rehash the same writing steps and phases, I'll instead paint more of an inside, hands-on guide to the writing process, with the most transparency and plain-speaking tips I can give. I will describe how the writing process really is, and how to slay the content dragon. The process involves these five general phases:

1. [Planning](docapis_planning.html)
2. [Information gathering](docapis_information_gathering.html)
3. [Writing](docapis_writing.html)
4. [Reviewing](docapis_reviewing.html)
5. [Publishing](docapis_publishing.html)

## The writing scenario {#the-writing-scenario}

Before we jump into this process, let's start by presenting a writing scenario. A product team (consisting of a handful of engineers + a product manager + QA) is creating a new API. In contrast to the more language-agnostic territory of REST APIs, this happens to be a Java-based API. The audience involves engineers who know Java, implementing the API in a complex scenario. For example, let's say the API will pull location data about coffee shops, for the sake of having a concrete use case.

The API is slated for a release next month, so even though engineers have been cracking away at this API for half a year, they're mostly done and ready for you to create the documentation and ship it. You have about three weeks to learn the product, write and review the docs, and publish the docs in time for release.

{% include random_ad1.html %}

This is a very typical scenario, by the way &mdash; being brought in at the ninth inning, often unaware of the product's development cycles that have been going on for months previously. Product teams are long past the stage where they debated the best implementation, the feature set, how the API matches use cases, and so on. By this time, they've already entered QA testing stages and just need to put a bow on the product with some docs before shipping it.

## Next steps

Continue on to [1. Planning](docapis_planning.html).
