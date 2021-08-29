---
title: Processes for integrating documentation coverage with each software release
permalink: /docapis_release_process.html
course: "Documenting REST APIs"
weight: 13.7
sidebar: docapis
section: devportals
path1: /docapis_managing_doc_processes.html
last-modified: 2021-08-29
---

Getting a good handle on your release process &mdash; such as understanding the cadence of releases, how features are tracked and tagged in different phases, and other checkpoints prior to the release signoff &mdash; is central to thriving in any documentation role. Providing doc coverage for each release ensures you don't accrue documentation debt, and it also boosts user satisfaction for the new features being released.

* TOC
{:toc}

## Key details to understand about your release process

Each software development group tends to have their own release process, so try to figure out the following:

* **How to view the roadmap**. The roadmap allows you to anticipate what's coming 6+ months down the line. Look for those big tickets that will require more than a few paragraphs of content. You want to avoid being ambushed one week before release with a last-minute request that puts you into crisis mode. Some tickets might require an afternoon of work, while others require integration into a team's meetings over the course of several weeks.
* **Understand the definition of done.** How do product teams qualify their feature for release? Surely QA must sign off on the feature, but is there a docs requirement prior to release as well? First, look for any [definition of done](https://www.productplan.com/learn/agile-definition-of-done/) embraced by your engineering group. Is documentation included? If not, look for ways to insert docs into the process, even if informally at first.
* **Where to see dashboards and tracking mechanisms.** What sites, tools, or documents are used to track what's planned for upcoming releases, and how do you adjust the toggles on these dashboards to look at the next few releases? Each company has its own tools for this (actually, each group within each company tends to have its own tools), and they aren't always obvious to those outside of product management. Features might start as idea pitches before being moved to another tracking mechanism, each with their own statuses and workflows, timelines, contact points, and other details.

## Checking for doc coverage

When you see the release items surface on the horizon, look through each item included in the release and assess whether you have doc coverage. If you have a goal for 100% doc coverage for each release, you could score your the doc coverage against all items in the release. For example, suppose you have six new features being released in the next version. Can you indicate a changelist or other commit that covers each of the features being released? When you start tracking doc coverage meticulously like this, it forces you to account for each necessary update.

## What needs docs?

What items in the release actually need docs? Basically, if there's a release, it means something changed. These changes usually need documentation. However, sometimes the changes are backend fixes and optimizations that don't affect users. Maybe the dev team spent a month fixing technical debt with spaghetti code, and there's no need to document anything (externally, anyway). If so, great, you can avoid doc coverage for that release item.

Another scenario might be bug fixes that don't change any existing functionality. Release notes often include a list of bug fixes, and if the fixes simply address glitches in the code, you probably don't need any docs for these.

But by and large, most items in the release should point to some page in the documentation. Release notes are meant to be short teasers for content that is elaborated upon in the pages of your documentation. For example, release notes for a feature might have a one paragraph summary with a link to a documentation page that expands in more detail. A good-looking release notes page will have a lot of paragraphs with “For more information, see ...” links.

## Teaching others about the need for docs

As you ensure doc coverage with each release, you'll be reaching out to product teams and others to ask questions about docs. Each time you reach out, you reinforce the need for docs, teaching others about how the doc process works. This helps product teams understand your role and anticipate the need for docs in the future in advance.

In short, you build visibility, rapport, and awareness of your role (almost like marketing for your group). This is partly why inserting yourself in the release process as a checkpoint, even if informally, helps your tech comm group become more integrated with product teams.

## Expanding the doc coverage with a doc quality measure

Another consideration is how much doc coverage actually counts as coverage. What if a new feature only has a few inline comments in a code file. Does that count as documentation? In the scope of documentation, a feature might merit anything from a brief description to a full-fledged tutorial, sample app, walk-through code, extensive step-by-step tasks, and more. Can you consider a feature to have documentation coverage if the documentation released is poor and insufficient?

Here's where you have some options. You could expand the doc coverage goal with an additional category of doc quality. For each feature covered by docs, you could score the documentation with a quality rating. As a tech writer, you typically know when docs are good or not. For example, did you personally test the docs, or just copy and paste content an engineer gave you in haste? Does the documentation describe the request and response in a complete way? Are the step-by-step tasks described with enough detail for users to make their way through the docs?

Some other doc quality measures might be much less controversial but still highly valuable. Here's a potentially interesting quality measure to track: Which of the features were personally tested by technical writers? While it might seem like a given that tech writers test all the features they document, that's hardly the case. The setup and execution of the features often requires extensive engineering knowledge and expertise. If you're working in dev docs, testing each feature is a feat unto itself. The extra effort doesn't always pay dividends toward quality, so this might require a lot of time and setup at the expense of more writing; still, at heart I feel like [testing the features we document](testingdocs.html) as technical writers injects fun into the profession. I know my docs are much better when I can experience the feature first-hand rather than merely seeing screenshots or hearing the feature described by engineers.

## Conclusion

Integrating into the release process helps build the foundation for a healthy, aware documentation group that is plugged into product team releases and roadmaps. It helps you avoid documentation debt as well as kept looped in early for larger features requiring more advanced planning. The more you ensure doc coverage for each release, the more others become aware of your role with documentation and the need for it for each feature.
