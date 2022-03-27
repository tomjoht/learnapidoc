---
title: "1. Planning (the writing process)"
permalink: docapis_planning.html
course: "Documenting REST APIs"
weight: 8.92
sidebar: docapis
section: writing_process
path1: writing_process.html
last-modified: 2021-11-19
---

First things first &mdash; you need to figure out what the writing project involves by doing some basic planning. In this step, you'll create a doc plan, establish roles, gather source material, and view a demo.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## 1.1. Create a doc plan {#create_plan}

Create a [documentation plan](docapis_managing_doc_projects.html#create_project_plans), even if it's brief or incomplete. The doc plan will help you get organized and set some expectations about the deliverables and timelines. Answer some basic questions, such as these:

* When is the release for the new API (and hence when is the documentation deadline)?
* What content resources are already available? Any drafts? Product design documents? QA testing documents?
* Where will we publish the docs? Most likely the developer portal where the other docs live, but are there special pre-release needs for early access partners? Is there a need for PDFs or gated access?
* What outputs and formats will we need? Tutorials, API reference, other how-to docs? Documentation for a sample app? GitHub readme's?
* Who are my contacts? Who needs to review and sign off on the content? Identify the product manager, tech lead, engineers, QA, and other stakeholders.

There are a host of other details you could gather, but these are the basics. All writing moves into action when you establish a deadline, so this date should set your wheels into motion.

{% include ads.html %}

## 1.2 Establish who's going to write the docs {#who_will_write}

The next step to ask is who will do the writing. Although you might think that being a technical _writer_ means you should do the writing, this might not be the best approach. This Java API (part of our [fictitious writing scenario](docapis_writing_process_overview.html)) might be complicated. Are you really going to articulate how to use the API in a series of detailed steps, with code examples and other observations, if you don't really know Java beyond the one-week course you took two years ago?

You will find that with extremely technical topics, writing might not come as easily as with topics you know well. Some technology can be a tough nut to crack, and if you think you can pull some writing prowess out of your pocket and just hack it out, let me warn you, get ready for engineers to pick the heck out of each phrase and term used in your content as they explain that what you've written is wrong. Engineers aren't shy at all about telling tech writers each nitty-gritty detail of incorrectness.

{% include random_ad2.html %}

Depending on your workload and expectations, think about starting with this approach: ask the engineers to write a first draft, even if it's just a brain dump (maybe this content already exists on an internal wiki somewhere). If they want more guidance, you could give them a template with a lot of fill-in-the-blank type sections. See if they can write some initial content.

Many tech writers are spread so thin, they act more like editors, curators, and writing coaches more than actual writers developing content from scratch. It just depends on how your organization has resourced tech writers and what their expectations are. In some ways, it's kind of crazy that the very people who possess all the knowledge about the product aren't the same ones writing the documentation (at least the first draft). So try your hand to push engineers toward this route first.

If you do get engineers to write, you might find that they write crap (like a one-hour stream-of-consciousness style that has never been edited or reviewed after they typed it out). Then you have to spend more time fixing the content and trying to understand whether it's even coherent for the audience, filling in the gaps, and so on. It might be uncomfortable to rework their writing, especially if you're making changes to terminology and processes you're unfamiliar with.

At any rate, just because engineers have "written" content, it doesn't mean you somehow escaped a lot of work &mdash; it just gives you a different starting point. Rewriting content can take just as long as writing from scratch. So maybe you won't want to go the path of having engineers write anyway. Either way, whether you have the first "draft" to begin with or need to author it yourself, you still have a lot of work to do.

{% include random_ad3.html %}

I'm going to assume that, in this scenario, engineers aren't inclined to write the docs. They do, however, have a lot of source material they've been holding out on.

## 1.3 Scrounge up all the source material {#gather_source_material}

For any writing tasks, gathering source material is key, but for tech docs, there are a few important documents you should track down. These documents often exist, but unless you ask for them by name, product teams might never mention them or send them to you.

To provide some background first, here's how most software development groups work. Before engineers started working on the feature, someone had to pitch the feature to a program management office (and executive) to green-light the effort. This means they had to write a description of the feature at a high level. There might be a short document (nicknamed something like a "two-pager") that acts as the product pitch, describing the problem and the need for this API. Or there could be a pitch slide deck used to persuade an executive to fund the project. Locate this **two-pager or pitch deck**. If you can identify the nomenclature for this company document, all the better.

Once a product is green-lit, the feature gets planned for a specific timeframe (for example, 2021 Quarter 4), and the team who will develop the feature gets identified. The product team then sizes up the feature and writes a **product design document** that acts as the blueprint for the feature's design. The engineers will debate the proposed design long before any actual code development begins.

{% include random_ad4.html %}

During the code development phase, some names used in the product design document will probably change, and some other details as well. The first release is usually a "minimum viable product," or MVP, so it will lack some features described in the document.

Even so, the product design document is usually a goldmine of information for documentation, and you should be able to leverage some information here, such as the product description and a high-level description of the API, the data it provides, important elements, and how to work with it. So make sure you locate this product design document.

The engineers usually populate the **reference documentation** themselves, building Javadoc from annotations in the source code. They may want you to review the reference content, but most comments you'll have will come later in the writing process, after you've written some documentation and become familiar with the product/API.

At any rate, the Javadoc output will give you a good sense of what classes and methods are available in the API. It will communicate the scope and the possible use cases. Ask the engineers to generate a Javadoc output for you to review.

Besides the pitch materials, product design, and Javadoc, there might be other documents as well to gather. Each company tends to call its documents by unique names. Understand what the key documents are for projects in your company, and this will usually unlock people finding and giving them to you. Gather up as many documents as you can find, list them in your doc plan in a resources section, and then browse through these documents to (a) learn about the product, and (b) see what material you can use either directly or indirectly in your docs.

## 1.4 Ask for a demo of the product {#demo}

The next step is to ask the product team for a demo of some kind. Perhaps one of the engineers has written a sample app that demonstrates how to call the API in some scenario and what to do with the response. The response might simply be to log data to the console, or to see it rendered in the terminal. That's  fine, and this simplicity is actually what you want at this point. You don't want an enterprise-scale application that has so many different dimensions and files that the API is obscured. You want a simple sample app that shows how to call the API and what data comes back.

If you can, try to play around with the demo yourself. Try to get the product to work in some way, even if it's just superficial. For example, you could ask this same engineer who created the sample app to share the sample app with you and provide details on how to run it. Get it working and play around with it a little bit so you get a better sense of what you're documenting. (See [Set up a test environment](testingdocs_test_environment.html) for more details.)

Almost no engineer develops an API without also developing a sample app that calls the API and gets some data back, though frequently the sample app is just a bare-bones type of code project that logs data. Having some initial familiarity with the product will pay dividends later as you start writing about the feature.

{% include image_ad_right.html %}

Most engineers, by the way, are usually happy to demo the product they've built. This is a point of pride for them, and it's what they do best. Later, you will be asking these same engineers to review the documentation you've written, and then you will see another side to these engineers. They will likely hate reading and reviewing written content. You will have to constantly pull them back on track to avoid sliding into discussions about bugs and future plans rather than continue their document review. But to show off their product and talk through what it's doing in a demo, they love it.

## Next steps

Continue on to [2. Information gathering](docapis_information_gathering.html).
