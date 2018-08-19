---
title: The job market for API technical writers
course: "Documenting REST APIs"
permalink: /jobapis_overview.html
weight: 10.1
sidebar: docapis
section: jobapis
path1: /jobapis.html
---

Technical writers who can write developer documentation are in high demand, especially in the Silicon Valley area. There are plenty of technical writers who can write documentation for graphical user interfaces but not many who can navigate the developer landscape to provide highly technical documentation for developers working in code. In this section of my API documentation course, I'll dive into the job market for API documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Basic qualifications you must have

Breaking into your first API documentation role can be challenging. Employers will usually require three prerequisites:

1. Familiarity with 1-2 programming languages
2. Experience writing docs for a developer audience
3. A portfolio with writing samples providing the above two points

This is why in this course I've focused on activities that will actually help you break into the field. (For more, see [How do you communicate user progress in a course without a Learning Management System (LMS)?](https://idratherbewriting.com/2017/11/28/motivating-users-through-progress/).) Sure, I could create little quizzes and such, and at the end you could earn a certificate of some sort. But it will be virtually meaningless in your job search and larger goals. There's no way around it: if you're serious about breaking into API documentation, you need to fulfill the above prerequisites. Completing the activities in this course will help you do that.

## Why employers look for candidates who can read programming languages

In nearly every job description for technical writers in developer documentation, you'll see requirements like this:

> Ability to read code in one or more programming languages, such as Java, C++, or Python.

You may wonder what the motivation is behind these requirements, especially if the core APIs are RESTful. After all, they can't expect you to actually *do* a programmer's job. Well, here's the most common scenario. The company has a REST API for interacting with their services. However, to make it easy for developers, the company provides SDKs and client implementations in various languages for the REST API.

Take a look at Algolia's API for an example. You can view the documentation for their [REST API here](https://www.algolia.com/doc/rest). However, when you implement Algolia (which provides a search feature for your site), you'll probably follow the documentation for your specific platform.

<a href="https://www.algolia.com/doc" class="noExtIcon"><img src="images/algolia_clientsdks.png" alt="Algolia client implementations" /></a>

{% include random_ad.html %}

Although users could construct their own code when using the REST endpoints, most developers would rather leverage existing code to just copy and paste what they need.

When I worked at Badgeville, we developed a collection of JavaScript widgets that developers could easily copy and paste into their web pages, making a few adjustments as needed. Sure developers could have created their own JavaScript widget code based on calls to the REST endpoints, but sometimes it can be tricky to know how to retrieve all the right information and then manipulate it in the right way in your chosen language.

Remember that developers are typically using a REST API as a *third-party* service. The developer's main focus is his or her own company's code; they're just leveraging your REST API as an additional, extra service. As such, the developer wants to just get in, get the code, and get out. This is why companies need to provide multiple client references in as many languages as possible &mdash; these client implementations make it easy for developers to implement the API.

If you were recruiting for a technical writer to document Algolia, how would you word the job requirements? Can you now see why even though the core work involves documenting the REST API, it would also be good to have an "ability to read code in one or more programming languages, such as Java, C++, or Python."

{% include random_ad2.html %}

## Diverse technical landscape

The technical landscape is diverse, so the generalizations I'm providing here may not hold true in all companies. You might not have 6 SDKs in multiple languages and frameworks for your API. You may be in a Java or JavaScript shop where all you need to know is Java or JavaScript and nothing more. If that's the case, you'll need to develop a deeper knowledge of the programming language so you can provide more depth.

However, with the proliferation of REST APIs, this scenario is much less common. Companies can't afford to cater only to one programming language. Doing so drastically reduces their audience and limits their revenue. The advantages of providing a universally accessible API using any language platform usually outweigh the specifics you get from a native library API.

When I worked at 41st Parameter (a startup acquired by Experian), the company had a Java, .NET, and C++ API &mdash; each implementation did the same thing but in different languages. We also had an SDK for Android and iOS.

Maintaining the same functionality across three separate API platforms was a serious challenge for the company's developers. Not only was it difficult to find skill sets for developers across these three platforms, having multiple code bases made it harder to test and maintain the code. It was three times the amount of work, not to mention three times the amount of documentation.

Additionally, since native library APIs are implemented locally in the developer's code, it was almost impossible to get users to upgrade to the latest version of the API. We had to send out new library files and explain how to upgrade versions, licenses, and other deployment code. If you've ever tried to get a big company with a lengthy deployment process on board with making updates every couple of months to the code they've deployed, you realize how impractical it is. Rolling out a simple update could take 6-12 months or more.

It's much more feasible for API development shops to move to a SaaS model using REST, and then create various client implementations that briefly demonstrate how to call the REST API using the different languages. With a REST API, you can update it at any time (hopefully maintaining backward compatibility), and developers can simply continue using their same deployment code.

But even with a REST API, you'll still likely have a few language-specific SDKs. The more you can facilitate implementation in the user's desired language, the higher your chances of implementation &mdash; which means greater product adoption, revenue, and success.

## Consolations for technical writers

This proliferation of code and platforms creates more pressure on the multi-lingual capabilities of technical writers. Here's one consolation, though. If you can understand what's going on in one programming language, then your description of the reference implementations in other programming languages will follow highly similar patterns.

What mainly changes across languages are the code snippets and some of the terms. You might refer to "functions" instead of "classes," and so on. Even so, getting all the language right can be a challenge, which is why it's so hard to find technical writers who have skills for producing developer documentation, especially for the [SDKs and sample apps](docapis_sdks_and_sample_apps.html).

With this scenario of having multiple client implementations, you'll face other challenges, such as maintaining consistency across the various platforms. As you try to single source your explanations for various languages, your documentation code will become complex and difficult to maintain.

Additionally, product managers might want you to make the documentation for each language entirely focused on that language (rather than stacking code examples in different languages on top of each other or in navigation tabs). This separation of user guides by language helps keep things simple for the users. Can you imagine pushing out a dozen different outputs across different languages (and possibly versions) for content that follows highly similar patterns and has common explanations but differs in just enough ways to make single sourcing from the same core content an act of sorcery? Here is where you have to put your technical writing wizard hat on and pull off level 9 incantations.

In the next topic, [How much code do you need to know?](jobapis_learning_code.html), I'll explore the topic of how much code you need to know, and strategies for learning it. 
