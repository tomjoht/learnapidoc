---
title: The job market for API technical writers
course: "Documenting REST APIs"
permalink: jobapis_overview.html
weight: 10.1
sidebar: docapis
section: jobapis
path1: jobapis.html
last-modified: 2020-01-02
---

Technical writers who can write developer documentation are in high demand, especially in the Silicon Valley area. There are plenty of technical writers who can write documentation for graphical user interfaces but not many who can navigate the developer landscape to provide highly technical documentation for developers working in code.

Although I briefly mentioned jobs in [Introduction to REST API documentation](docapis_intro_to_rest_api_doc.html), in this section of my API documentation course, I'll dive deeper into the job market for API documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Basic qualifications you must have

Breaking into your first API documentation role can be challenging. Employers will usually have three requirements to hire you:

1. Familiarity with 1-2 programming languages or other technical foundations
2. Experience writing docs for a developer audience
3. A portfolio with writing samples demonstrating the above two points

These requirements are why I've focused this course on activities that will help you break into the field. Although I could create more quizzes in this course, and at the end, you could earn a "certificate" (which wouldn't be a bad idea, actually) it would be virtually meaningless in your job search and larger goals. There's no way around it: if you're serious about breaking into API documentation, you need to fulfill the above requirements. Completing the activities in this course will help you do that.

## Why employers look for candidates who can read programming languages

In nearly every job description for technical writers in developer documentation, you'll see requirements like this:

> Ability to read code in one or more programming languages, such as Java, C++, or Python.

You may wonder what the motivation is behind these requirements, especially if the core APIs are RESTful. After all, they can't expect you to *do* a programmer's job. No, but here's the most common scenario. The company has a REST API for interacting with their services. To make it easy for developers, the company provides [SDKs and client implementations](docapis_sdks.html) in various languages for the REST API.

For an example, take a look at Algolia's API. You can view the documentation for their [REST API here](https://www.algolia.com/doc/rest). However, when you implement Algolia (which provides a search feature for your site), you'll probably follow the documentation for your specific platform or language.

<a href="https://www.algolia.com/doc" class="noExtIcon"><img src="{{site.media}}/algolia_clientsdks.png" alt="Algolia client implementations" /></a>

{% include random_ad3.html %}

Although users could construct their own code when using the REST endpoints, most developers would rather leverage existing code and copy and paste what they need.

When I worked at Badgeville, we developed a collection of JavaScript widgets that developers could easily copy and paste into their web pages, making a few adjustments as needed. Developers could also create their own JavaScript widget code (from scratch) based on calls to the REST endpoints, but sometimes it can be tricky to know how to retrieve all the right information and then manipulate it in the right way in your chosen language. It's easier to use the pre-built JavaScript widgets.

{% include image_ad_right.html %}

Remember that developers are typically using a REST API as a *third-party* service. The developers' primary focus is their own company's code; they're just leveraging your REST API as an additional, extra service. As such, developers want to just get in, get the code, and get out. This get-in-and-get-out mentality is why companies need to provide multiple client SDKs in as many languages as possible &mdash; these client implementations allow developers to implement the API quickly and efficiently.

{% include random_ad4.html %}

If you were recruiting for a technical writer to document Algolia, how would you word the job requirements? Can you now see why even though the core work involves documenting the REST API, it would also be good to have an "ability to read code in one or more programming languages, such as Java, C++, or Python."

The number of SDKs a company distributes can vary considerably. You might not have six SDKs in multiple languages and frameworks for your API. You might be in a C++ only shop where all you need to know is C++ and nothing more. If that's the case, you'll need to develop a deeper knowledge of C++ so you can provide more value in your writing role.

{% include random_ad2.html %}

Although the proliferation of code and platforms creates pressure on the multi-lingual capabilities of technical writers, if you can understand what's going on in one programming language, your description of the reference implementations in other programming languages will follow highly similar patterns.

What mainly changes across languages are the code snippets and some of the terms. You might refer to "functions" instead of "classes," and so on. Even so, getting all the language right can be a challenge, which is why it's so hard to find technical writers who have skills for producing developer documentation, especially for the SDKs and sample apps.

## Providing value without in-depth technical knowledge

The degree to which you can provide value in your role as a technical writer is often directly proportional to your level of technical knowledge. For example, if you land (or inherit) a job that involves working with several API projects involving languages you don't know, you can still facilitate the documentation for the projects. However, you'll play more of an editing/publishing role rather than an authoring role.

In many highly technical shops, this editor/publisher role is becoming increasingly common. Engineers will write the technical material, especially the reference documentation, and technical writers will focus more on making sure the content checks all the boxes &mdash; that it has an overview, release notes, addresses user tasks, follows the style guide, integrates with the other docs, and so on. You can shape and organize the content, and identify areas where it's deficient or needs expansion, but the ability to add deeper value requires a deeper knowledge of the subject matter.

A lack of more technical knowledge will likely remove some of the value from your role. In [How API Documentation Fails](https://ieeexplore.ieee.org/document/7140676/), Martin Robillard and Gias Uddin explain:

> Perhaps unsurprisingly, the biggest problems with API documentation were also the ones requiring the most technical expertise to solve. Completing, clarifying, and correcting documentation require deep, authoritative knowledge of the API’s implementation. This makes accomplishing these tasks difficult for non-developers or recent contributors to a project.

Without in-depth, authoritative knowledge of the API, it will be challenging to complete, clarify, and correct errors in the content.

{% include ads.html %}

The balance between generalist and specialist roles is an ongoing challenge that I'll explore more in the next topic: [How much code do you need to know?](jobapis_learning_code.html) In short, if you want to solve the biggest problem with API documentation, you'll need to develop more technical expertise in the subject domain.

## Consolations for technical writers

As a consolation to this stress of having to navigate multiple programming domains, you can take comfort in the fact that REST APIs (which remember are language agnostic) are becoming more common and are replacing [native-library APIs](nativelibraryapis_overview.html). The advantages of providing a universally accessible API using any language platform usually outweigh the specifics you get from a native library API.

For example, when I worked at 41st Parameter (a startup acquired by Experian), the company had a Java, .NET, and C++ API &mdash; each implementation did the same thing but in different languages. We also had an SDK for Android and iOS.

Maintaining the same functionality across three separate API platforms was a serious challenge for the company's developers. Not only was it difficult to find skill sets for developers across these three platforms, having multiple code bases made it harder to test and maintain the code. It was three times the amount of work, not to mention three times the amount of documentation.

Additionally, since native library APIs are implemented locally in the developer's code, it was almost impossible to get users to upgrade to the latest version of the API. We had to send out new library files and explain how to upgrade versions, licenses, and other deployment code. If you've ever tried to get a big company with a lengthy deployment process on board with making updates every couple of months to the code they've deployed, you realize how impractical it is. Rolling out a simple update could take 6-12 months or more. During that time, the company is often struggling with a load of bugs and other issues that are setting them back.

It's much more feasible for API development shops to move to a SaaS model using REST, and then create various client implementations that briefly demonstrate how to call the REST API using the different languages. With a REST API, you can update it at any time (hopefully maintaining backward compatibility), and developers can continue using their same deployment code.

As such, you won't be hopelessly lost if you can't navigate these other domains in the programming languages. Your core function will hopefully involve documenting the REST API, with brief docs on the client SDKs mostly authored by the engineers.

That said, one area where REST APIs can be problematic is with devices (for example, smartphones and tablets, devices in cars, streaming media devices). In these cases, calls to REST APIs tend to be slow, so a native library API (such as [Android](https://developer.android.com)) is used instead.

In the next topic, [How much code do you need to know?](jobapis_learning_code.html), I'll explore the topic of how much code you need to know and strategies for learning it.
