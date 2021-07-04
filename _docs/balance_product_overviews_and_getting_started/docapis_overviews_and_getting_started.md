---
title: "Balancing product overviews with getting started tutorials"
permalink: /docapis_overviews_and_getting_started.html
course: "Documenting REST APIs"
weight: 15.1
sidebar: docapis
section: docstory
path1: /docapis_balance.html
last-modified: 2021-07-03
---

{: .note}
July 3, 2021: I'm currently working on content in this section. Be patient as I refine and build this out more.

In my experience with documentation at various companies, at least two topics are frequently neglected: [product overviews](docapis_doc_overview.html) and [getting started tutorials](docapis_doc_getting_started_section.html). Without generalizing too much, I acknowledge that many companies actually have great product overviews and excellent getting started tutorials. But I sometimes feel like I have the misfortune of arriving at documentation portals and feeling lost, and I don't find much help in the product overview.

If there's a getting started tutorial (not usually), I have a low percentage of success getting through it. Both a confusing product overview coupled with a failed or absent getting started tutorial can really demotivate my progress through docs, prompting me to seek help elsewhere, such as third-party sources, for more straightforward information and functional tutorials.

Why are these topics often neglected? Are there valid reasons for the neglect, and how can we address some of these issues to make these topics more of a priority? That's what I explore in this section.

## General overview

Before I dive into the details, let me paint some broad strokes here to provide an overview of this section.

Ideas such as minimalism (as defined by John Carroll, Hans Van Der Meij, and others) and research about opportunistic learning behaviors encourage much more action-oriented approaches to tech writing. These action-oriented approaches might include getting started tutorials, interactive features like Swagger UI, code you can run directly in the browser (e.g., Jupyter Notebooks), task-focused how-to's, and more. For decades now, researchers have been reiterating the belief that users are "reading to do" and are anxious to get going with tasks and other hands-on exploration. Readers don't want lengthy explanations but rather specific steps to accomplish a task at hand.

At the same time, documentation often fails to tell the who/what/when/why about the product. Anemic overview pages provide little detail about what the product even is before jumping directly into how to configure it and install it. Countless project overview pages in docs give almost no indication about what the project code actually does, who it's for, its use cases, or other high-level details. Many of the problems with documentation involve the absence of a larger story around the product, a lack of connecting pieces that tie all the components together into a cohesive way that makes it plain for users to understand and get started.

How do you balance this tension between action (with task-based docs) and narration (with concept-based docs)? When do you focus on reading to do versus reading to understand?

In general, best practices for documentation would mean accounting for both mindsets and orientations. For the reading-to-do mindset, you provide a getting started tutorial that gets the reader going in an immediate, hands-on way with the product. For the reading-to-understand mindset, you provide a product overview that tells the story of your product, answering high-level questions about the product, including the problem it solves, who the product is for, listing sample use cases, presenting architectural diagrams, development timelines, known limitations, and more. Together, the product overview and getting started tutorial can empower users with confidence and enthusiasm to dive into other areas of your docs.



{% comment %}

Solution: Debunk some of the reading to do philosophy
Research into how people use API docs
Systematic behaviors versus opportunistic behaviors

Solution: identify audience’s information needs vs your own needs
Classic conundrum of figuring out how much to write -- how much does the audience already know, how much info is required? The writer is not the user, especially as an outsider to the domain.
Look through support tickets and identify tickets where customers asked for knowledge of some kind. Where are these points of friction happening?
What slide decks are used by partner engineering, BDs, and others to fill in the blanks?
Look at the dev mktg content and see if it answers your questions

Solution: model best practices
What is a good product overview?
Sample sections in a product overview
Open source project that identifies templates, good docs project


Problem #2: Lack of getting started tutorials

Cause: Information is seen as redundant with other setup tasks and instruction
Tech writers might wonder why necessarily if other setup and so on are already described in more detail. In some ways the getting started seems redundant with the other information already written.

Cause: Getting started often requires some setup/environment/account that isn’t easily available
Might need to set up databases, environments, etc. not an easily available sandbox type of thing.
Might need some test account, provisioning, server instance, etc.

Cause: There might not be any easy way to get started with the product.
It really might take a whole afternoon to set this up, in which case the getting started might be a joke.

Cause: Getting started tutorials are hard to write because they have to run from A to Z through the setup
Have to take a user from beginning to end in a manageable way
Have to be able to walk through the entire product, so you have a lot of ground to cover

Cause: Getting started tutorials are seen as extras, going the extra mile
Not usually part of doc requirements or needs
They are easy to overlook because they usually don’t come as requests from teams
When you see a getting started tutorial in docs, it’s like sweet! But if not, it’s not like you’re being cheated out of docs.

Solution: API reference docs are not task-based, so you need something like this
Not a straightforward 1-2-3 list of steps
More like a cupboard of ingredients. Can maybe list a few common recipes only
Writers end up focusing on reference content only because there’s no a mandate for more task-based docs

Solution: Getting started is fundamental to tech writing
If you can’t make the product work at a basic level, then you’re really hamstrung in writing. The getting started tutorial can be really empowering.

Solution: psychological benefits of getting started tutorials -- they build confidence with the user
Feels great to get something working
See some output, even if small, lets you move towards more complex implementations. Build on the basics.
Fundamental way we learn is by starting simple and then increasing complexity. People don’t write super complex code. They start simple and keep adding to it to account for different scenarios.

Getting started tutorials - best practices
Should actually work. Test it out and see how many people are successful at getting through it
Bad experience in getting started will likely not bode well for more confidence with other help material. But if users can do it, and it works, it does do wonders for their psyche





Balance interplay with getting started tutorial and product overview
Reference each other
Springboard into each other. Getting started is first step after overview, or vice versa.
These two topics should be staples in any doc set.
Getting started tutorial has an opportunity for a teaching moment. Asides where you explain something in more depth.
First steps after overview should be to get started


https://docs.microsoft.com/en-us/azure/time-series-insights/overview-what-is-tsi

https://developers.hubspot.com/docs/api/overview
https://developers.activecampaign.com/reference#pagination
https://developer.surveymonkey.com/api/v3/#getting-started
https://developer.automationanywhere.com/learn/bot-developer-journey/getting-started

{% endcomment %}
