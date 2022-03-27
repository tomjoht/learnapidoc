---
title: "Developer experience (DevX) usability"
permalink: devx-usability-examples.html
course: "Documenting REST APIs"
weight: 8.9
sidebar: docapis
section: docapiscode
path1: doccode.html
last-modified: 2020-10-20
---

In [API design and usability](evaluating-api-design.html), I covered different aspects of usability related to API design. In this topic, I'll explore usability related to developer processes and technologies in general, independent of API design.

* TOC
{:toc}


## Three types of usability

Usability can be roughly divided into at least three different areas:

* [Usability with physical products](#physical_products)
* [Usability with code products](#code_products)
* [Usability with documentation](#documentation_products)

(Many other divisions could likely be made, for but the discussion here, this division is enough.)

## Usability with physical products {#physical_products}

Usability with physical products or graphical user interfaces (GUIs) is what people traditionally think of with usability. When you have a physical product to use, assessing its usability is more straightforward.

{% include ads.html %}

For example, suppose you're testing the usability of a new headphone design. A usability researcher might bring in a group of beta testers to try the headphones on, ask them to adjust the headphone controls, use the headphones in their daily workflows, and so on. Users might evaluate the headphones based on comfort, familiarity of buttons, how easy they might be to pair to bluetooth, the placement of the microphone, and so on.

Usually, technical writers are too far down the development line to influence product design. By the time the product arrives at your door, most product teams just ask technical writers to provide documentation for the product, not to provide input on design itself. Usually, it would not be expected for you to push back on the design and try to get the product to team to reconsider fundamental aspects such as the placement of the microphone or the fit over your ears. (Of course, you can always try, and different scenarios might be more appropriate for rethinking product design.) You might be able to influence *button names* at this point, and maybe catch glitches in the software (e.g., maybe the bluetooth pairing is wonky), but don't expect too much. Changing product design is usually required before the specs are sent to the factory. After factory lockdown, it's hard to change a product. And documentation is usually something that begins after factory lockdown.

{% include random_ad4.html %}

That's not to say that you shouldn't venture forth to comment and critique product design. Just don't get your hopes up if the timeline doesn't allow for drastic changes. By the way, some technical writers get tired of documenting poorly designed products, so they move into usability and product design instead. Once you make this move, you're usually operating outside the standard tech writer domain. For more on playing a product design role, see [Playing a product design role as a content designer -- podcast with Jonathon Colman](https://idratherbewriting.com/blog/podcast-colman-playing-product-design-roles-as-a-content-designer/).

Product design has a rich history of research and best practices. See this book for many good ideas on how to assess the usability of a product: [*Universal Principles of Design: 125 Ways to Enhance Usability, Influence Perception, Increase Appeal, Make Better Design Decisions, and Teach through Design*](https://www.amazon.com/Universal-Principles-Design-Revised-Updated/dp/1592535879).

## Usability with code products {#code_products}

In the developer documentation domain, usability with code products is more common. Few usability researchers venture into the code domain because it's much less clear how to assess the usability of code. But make no mistake, usability is just as much in play with code products for developers as with physical products or products with GUIs.

Code usability asks questions such as the following: How easy is it for developers to use the code? Do the APIs provide the information that developers need? How long does it take developers to figure the code out and implement it? Are you using a language or framework that will be familiar to your developers? Are you following general patterns in the industry for tackling common problems?

Let me illustrate with an example. One product I recently documented was the [Video Skills Kit for Fire TV](https://developer.amazon.com/docs/video-skills-fire-tv-apps/introduction.html). The original design involved a [cloudside implementation](https://developer.amazon.com/docs//video-skills-fire-tv-apps/integration-overview-cloudside.html) that had about a dozen different technologies and steps. The implementation required devs to use several AWS services (Identity Access Management, CloudWatch, Lambda), several Appstore services (Login with Amazon and security profiles, Alexa console, Amazon Device Messaging, Live App Testing), a client library (JAR), Fire TV device, Alexa app, and ADB. These services were on top of Android services that developers were expected to know. (Altogether, this is about a dozen different services or tools.)

{% include random_ad3.html %}

Unsurprisingly, users were unfamiliar with all of these services, so not only was there an initial learning curve, when they did run into problems, the problems were hard to troubleshoot. Additionally, troubleshooting was also complex not just due to the unfamiliar toolset, but because there were so many different places where something might be misconfigured. For example, after integrating everything, you could say, "Alexa, watch Interstellar," and your app would play a video. But if it didn't work, you had to figure out where the problem was. The logs could provide a clue, but if you had some invalid formatting in your Lambda function, Alexa might just respond, "Something went wrong," with no other logs. Alexa might respond similarly for a lot of different issues, as there were many backend services as well (invisible to the user) that processed the information. For example, one issue might be with the natural language processing logic occurring behind the scenes.

The cloudside implementation took a long time to complete (multiple months, usually). We had a sample app, and each time I would go through the steps to set up the services around the app, it would take the entire afternoon or more. So many pieces had to be in place, and many times it felt like a house of cards &mdash; if one little piece was misconfigured (e.g., signing your app with the wrong key), the whole thing didn't work.

Fast-forward two years later. The product team released a new implementation design to the Video Skills Kit called [app-only integrations](https://developer.amazon.com/docs/video-skills-fire-tv-apps/integration-overview-app-only.html). The app-only integration grounded most of the configuration within Android itself. Developers didn't have to bother with configuring any AWS services, no Lambda functions, no authorization through ADM. Developers instead would need only configure a security profile, capability reporter, and BroadcastReceiver in their Android app to handle incoming messages sent from an on-device routing agent built into Fire TV.

Partners welcomed this approach much more wholeheartedly. Not only did the implementation stay within the technology realm they were familiar with (Android), it didn't cobble together a dozen different services that all had to be working in harmony for success. Troubleshooting was also simplified because most issues were contained within the same Android platform. The new design shortened the implementation time from a couple of months to a couple of weeks.

Finally, the new design also improved the speed of communication among the different services. With the first solution (cloudside), messages had to travel from one service to another (Alexa in the cloud to a Lambda function in AWS, then to the partner's app on Fire TV). With the app-only integration, most of the communication took place on the device itself. Alexa sent a message to an on-device routing agent that communicated with the app (also installed on the device). The communication between components had much less latency.

In general, when evaluating code usability, consider these questions:

* Does the implementation use a technology that your developers are familiar with?
* Does the implementation rely on a small number of core services/components rather than a dozen separate services cobbled together?
* How easy will it be to troubleshoot errors when things go wrong?
* How long will it take developers to complete the implementation?
* How much latency exists for communication among the different components?

Evaluating developer usability can be hard because many times, there are technology constraints that make more streamlined approaches problematic. No one sets out to build a house of cards, but as you encounter one issue after another, with fast deadlines to finish the code, you might adopt solutions that work in the short term but which require a lot of hacks. String together too many hacks and accrue too much technical debt (shortcuts that provide fixes while leaving larger problems unaddressed), and you head down the path to a house-of-cards solution.

{% include random_ad2.html %}

In general, product teams building developer tools strive to provide APIs or other tools that simplify the third-party developer's implementation. You want to abstract complexity behind an API, so that the developer need only provide the specified inputs to get the desired outputs in a response. The developer probably doesn't care (or need to know) how the sausage is made on the backend to transform the inputs into outputs. If you can abstract more of this complexity behind the scenes, it will result in a better developer experience.

Assessing the architectural design of a developer solution isn't easy for most technical writers. Unless you have an engineering background and can assess the feasibility of a code solution, you might not have a lot of input. A lot of factors go into an engineering solution, including security, memory usage, infrastructure, efficiency, latency, databases, and more. In most scenarios, tech writers struggle just to understand the workflow and describe it. Going the extra mile to suggest a more efficient and streamlined architectural design is often something that would be "next-level" for tech writers.

However, if you keep an eye out for the questions I mentioned above, this can provide you with a starting point for evaluation and feedback. You're often the first user of the code (outside the product team), so teams value your feedback, even if you're not an engineer.

## Usability withy documentation products {#documentation_products}

You can also incorporate usability with documentation products. How easy is the documentation to understand and follow? Are the topics something that users can search for and find in the documentation? Does the documentation assume that users have deep background knowledge about all the services, or does it help even novice users complete complicated tasks?

As an example, consider the car manual in your glovebox. Suppose your headlight goes out and you want to replace it. Or suppose a light flashes ("LDW") on your dashboard and you need to look up what it means. Does the user manual make it easy to find this information, such as through a search or index? Are the terms used in the manual similar to the terms you would use to describe the features? When you do locate the right section, are the steps easy to follow? Are there visuals that help clarify the information? Can the documentation help even someone who isn't mechanically inclined follow a sequence of steps successfully?

The main usability task of technical writing is to simplify complexity. I wrote an [entire series on simplifying complexity](https://idratherbewriting.com/simplifying-complexity). One strategy is to provide users with a map to guide them through a complex number of steps spanning multiple topics. See [Principle 1: Let users switch between macro and micro views](https://idratherbewriting.com/simplifying-complexity/macro-micro.html).

How do you know if your documentation is easy to follow? Just as you can observe users interact with products or interfaces in a usability lab, you can also observe users with documentation. Ask users to do a task they're unfamiliar with, and see how they interact in your help system to locate the information. I outlined some notes from my observations in a usability lab some years ago. See [A Few Notes from Usability Testing: Video Tutorials Get Watched, Text Gets Skipped](https://idratherbewriting.com/2011/07/22/a-few-notes-from-usability-testing-video-tutorials-get-watched-text-gets-skipped/). I observed two basic patterns. Novice users welcomed video tutorials and read the documentation carefully, sometimes multiple times. In contrast, advanced users skimmed and scanned, not reading carefully but rather trying to find a specific piece of information.

In the usability lab, time and time again we observed how something that looks simple usually turns out to be much more complex and difficult for users. Remember this and make your instructions as simple as possible, assuming that users will be reading while looking elsewhere, dealing with interruptions, pausing and resuming the task, and more. Although this documentation scenario was for a GUI-based product, you could do the same with code.

Few of us get opportunities to regularly observe users, so probably most of the feedback will come through asynchronous channels (e.g., email, Slack, tickets.) That's fine, and you will probably get more feedback than you can handle anyway.

{: .tip}
Many of the same principles in [*Universal Principles of Design: 125 Ways to Enhance Usability, Influence Perception, Increase Appeal, Make Better Design Decisions, and Teach through Design*](https://www.amazon.com/Universal-Principles-Design-Revised-Updated/dp/1592535879) can also be used in documentation. See [Introduction to User-Centered Documentation](https://idratherbewriting.com/ucd-introduction/) for some ideas.

## Video

I recently participated in a short interview about usability for a class on [Usability & User Experience](https://usability-ux.weebly.com/). The presentation doesn't cover all the details from above, but it does touch upon usability in different scenarios (e.g., professional writing versus a blog, academic contexts, and other). [Kirk St.Amant](https://www.linkedin.com/in/kirk-st-amant-614a272/), a distinguished professor in the tech comm field, conducted the interview with me. You can see his usability course online at [https://usability-ux.weebly.com/](https://usability-ux.weebly.com/). Here's the video:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/devx-usability-examples.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/d3r1_38mpI0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{% endif %}

You can view other interviews Kirk has done with usability professionals here:

* [Interview with Dr. Katie Panciera of the Milwaukee School of Engineering](https://www.youtube.com/watch?v=uPUJq4w4xNU)
* [Interview with Dr. Joy Robinson of University of Alabama in Huntsville and Northrop Grumman](https://www.youtube.com/watch?v=f_rMFwee9KI)
* [Interview with Maiken Blok-Wahlgreen of TimeLog](https://www.youtube.com/watch?v=V5A19tiMfo4)
* [Interview with Dr. Quan Zhou of Metro State University](https://www.youtube.com/watch?v=L23Y8ooX-a0)
* [Interview with Joe Welinske of WritersUA/ Welinske & Associates](https://www.youtube.com/watch?v=78c10I35QyI&t=2s)
* [Featured Lecture with Eva Snee of Google](https://www.youtube.com/watch?v=g1_wILJCuFY)

For more, see [Kirk's Guest Lectures](https://usability-ux.weebly.com/guest-lectures.html).
