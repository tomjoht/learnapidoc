---
title: "Reasons why getting started tutorials are so bad"
permalink: /docapis_reasons_for_bad_getting_started_tutorials.html
course: "Documenting REST APIs"
weight: 15.3
sidebar: docapis
section: docstory
path1: /docapis_balance.html
last-modified: 2021-07-12
---

{: .note}
July 12, 2021: I'm currently working on content in this section. Be patient as I refine and build this out more.

In [Reasons why product overviews are often minimal or nonexistent](docapis_reasons_for_anemic_overviews.html), I explained a number of reasons why product overviews are poor. In this section, I'll switch the focus to [getting started tutorials](docapis_doc_getting_started_section.html) and follow the same pattern.

* TOC
{:toc}

## Best practices for getting started tutorials

Before diving into reasons why getting started tutorials often fail, let me first recap a few best practices. I already explored these topics in detail in [getting started tutorials](docapis_doc_getting_started_section.html), but it seems right to at least cover best practices at a high-level. Consider including the following characteristics in your getting started tutorial:

*  Allow a new user to have some success with your product, even the success is small, like getting a one-line value back from an API call.
*  Remove the burden about setup requirements as much as possible through sandbox accounts, pre-configured data that users can load, Postman workspaces, sample apps, or more.
*  Take a user from beginning to end through the tutorial, including registration, authorization, making a call with the API, inspecting the result, and more. As much as possible, the tutorial shouldn't just link out to a bunch of other longer docs but rather provide a compressed and condensed path with the product.
*  Make sure the tutorial actually works and provides the advertised result, with as high of a success rate as possible.
*  During the tutorial, take the opportunity to teach users about concepts, linking out to other parts of the docs. Including teaching moments and asides, assuming that the user is in a learning mood.
*  Include a troubleshooting section that covers common issues users might see (e.g., 403 authorization errors).

Now that we've covered these best practices, let's get into some reasons why getting started tutorials are often poor or non-existent.

## Cause 1: Getting started tutorials are seen as an optional extra, and few have time for optional work at release crunch times

One reason getting started tutorials are often absent is because they're seen as going the extra mile, delivering content that exceeds normal expectations. Given time constraints and bandwidth, creating a getting started tutorial might not make the cut against the pressure of other more pressing documentation needs. For example, if you're still working on reference documentation for your API, that's probably more important than a getting started tutorial. If you haven't even explained what returns in an API call, that is likely more important.

Without question, there's a hierarchy of needs with docs, and a getting started tutorial sits more towards the top. If you're still working on those core docs, the getting started tutorial might not be achievable within the release timeframe.

{: .takeaway}
If writing a getting started tutorial isn't possible within the release timeframe, plan for it in the next iteration. You can continue improving and adding to docs after a release.

## Cause 2: The product setup might be too involved or impractical for a getting started tutorial

Your product might require more setup than is practical for a getting started tutorial. For example, the user might need to be officially authorized or credentialed, which might be possible only after signing a contract. Some requirements such as a database, server setup, or other service configuration might be necessary before the user can call an API. And you might not have this infrastructure readily available for the user, especially not in a sandbox/temporary way.

One of the products I documented at Amazon was developer docs for Fire TV. Getting things setup for Alexa integration literally took 3-4 hours, with no simple shortcuts to speed things up. Developers had to set up AWS accounts, identity access management credentials, configure permissions for buckets, set up other services, add code in various files, and more. There really wasn't any quick shortcut even with a sample app, which make the tutorial possible in an afternoon rather than a week. In short, your product might not facilitate getting started in an easy way.

{: .takeaway}
If your product doesn't allow users to get started in an easy way, consider scaling back the result. Maybe the user can't all the API easily. Maybe all you can do is teach a user how to register for API keys, or how to issue a command a terminal that brings up the help information. Either scale the expectations down a bit, or go the other route and elongate the tutorial so that it actually does provide value but might require more time and effort to get through.

## Cause 3: There's no sample app to demonstrate how to call the API

Another obstacle to getting started tutorials happens with native APIs, such as Java APIs, that require users to have a Java app already set up. If you don't have a sample app for the user, it will likely be difficult to show how to make a call to the API. Most native API documentation involves various classes and other app configuration, such with in the manifest file. In short, you need the context of an app to run the code.

But getting engineers to make a [sample app](docapis_sample_apps.html) available is a tall order, especially because of the many risks involved. Even though most QA teams have [half-baked] sample apps to facilitate testing, product teams don't usually like to give developers these sample apps for fear that they'll use them for real scenarios. Also, the sample apps are usually so simple and primitive that they are in no way production scalable.

{: .takeaway}
In scenarios where you lack a sample app, you could still provide code snippets and instruct users to make the code configurations in their own apps. Assume that your target users will actually have apps and be familiar with the programming language so that telling them to add a class and instantiate it with certain parameters isn't too challenging. If you find that the instructions go beyond your audience's skill level, double down on those efforts to make a sample app available. You can always add detailed notes to the sample app that state the app is not intended for production use and is a simplified form of an app to demonstrate API calls only.

## Cause 4: The getting started tutorial omits details for brevity that might lead to confusion

Another obstacle to creating the getting started tutorial is the challenge of writing them, as they require more writing skill. Ideally, the getting started tutorial condenses longer, more detailed information into a succinct one-page tutorial. Yet this tutorial is supposed to take a user through registration, setup, authorization, execution, viewing results, interpretation, and more. It's like being asked to create a poem out of a novel. Being brief at the expense of creating a short tutorial might lead to a confusing user experience, and omission of detail runs counter to the traditional mode of writing documentation. Leaving out more specifics, notes, and other more explicit instructions for the sake of brevity goes against our tech-writing principles of providing clear, explicit instructions.

The ability to reduce and distill information down to short, crisp summaries for a getting started tutorial is a higher-level writing skill. It also requires more effort and subject mastery. For more information on distilling information, see [Principle 4: Reduce and distill vast information down to its essence](/simplifying-complexity/reduction-layering-distillation.html).

{: .takeaway}
In places where you choose to be succinct and omit detail, link out to your regular docs for more information. In these cases, consider the approach one that favors progressive information disclosure. If a user needs more information, he or she can click the link and get it. But if not, the concise version suffices.

## Cause 5: The tech might be too complicated for tech writers to walk through themselves

Another reason why getting started tutorials might be absent from docs is because the tech itself might be beyond the tech writer's reach. Suppose you have an advanced product that requires senior-engineering-level knowledge to use it. In this same scenario, the tech writer might mainly be acting as an editor, curator, and publisher &mdash; facilitating content mostly written by engineers. Since getting started tutorials are mostly hands-on, experience driven deliverables, it might be too advanced for the tech writer. This is the nature of working in developer docs, especially without an engineering background. The tools are really designed for engineers who have a lot more training, experience, and knowledge in areas that we don't. It can be hard to walk through all of these same tasks in an end-to-end way.

{: .takeaway}
Consider asking an engineer to write the getting started tutorial. If you can't follow it, this could form the basis of homework or other learning that you chip away at little by little in your path of continual learning.


## Cause 6: The content isn't tested against real users

The last cause I'll explore here is that getting started tutorials are rarely tested against actual users. (This could explain why a lot of documentation is poor, not just getting started tutorials.) During one of my API workshops, I had participants go through this [5 minute Sendgrid tutorial](https://docs.sendgrid.com/for-developers/sending-email/api-getting-started). Out of about 20 workshop participants, only a couple managed to do the tutorial successfully. It seemed simple on the surface, but in practice, users got hung up many details.

Testing docs against users isn't usually something tech writers do, though most admit it would be a good idea. The testing usually comes in the form of feedback from actual users, or through training sessions where users provide feedback in real-time. But if we want to make getting started tutorials a better experience, it would behoove us to ask a few engineers (new to the project) to spend an hour or so going through the tutorial. Unlike other content in docs that might require more setup and context, the getting started tutorial is supposed to be self-contained, short, and accessible to a new user. It's the perfect type of documentation to test.
