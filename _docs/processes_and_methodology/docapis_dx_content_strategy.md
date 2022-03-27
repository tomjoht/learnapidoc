---
title: DX content strategy with developer portals
permalink: docapis_dx_content_strategy.html
course: "Documenting REST APIs"
weight: 12.1
sidebar: docapis
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2020-8-25
---

As the content grows on a developer portal, there's an increasing need for some technical writers to expand their documentation roles from individual contributors creating and publishing new content to dedicated content strategists. These dedicated content strategists manage the processes, standards, tools, governance, and workflows for the content that is primarily authored by contributing writer and engineering teams.

The general common industry term for this activity might be *content strategy*, but in the context of developer documentation, I'm calling this activity "DX content strategy." (*DX* refers developer experience, similar to how *CX* refers to customer experience.) Anyone who engages in DX content strategy would be considered a DX content strategist to some degree. An organization can have multiple people filling DX content strategist roles.

* TOC
{:toc}

## Risks of developer portals with no DX content strategy

If organizations don't have any DX content strategists dedicated to their growing developer portals and enhancing the developer experience, the resulting trajectory of a developer portal will follow the same path more or less as an internal wiki. Internal wikis tend to be content dumping grounds that are a wild west of standards and styles, and where you never know if content is current, outdated, accurate, deprecated, or under construction.

Finding the right content on an internal wiki is a constant challenge, and there's no consistency from one page to the next. In the wiki model, teams create docs during their times of need and abandon them when their teams or priorities change. The result is a mishmash of fragmented, often unowned content.

{% include random_ad3.html %}

Because documentation for external developers is a high priority, it shouldn't befall the same fate as content on internal wikis. In the [State of API 2019 report](https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf), Smartbear found that "accurate and detailed documentation" ranked third in priority (just below "ease of use" and "responsiveness/performance") from 15 ranking factors in an API experience. You can't achieve a high level of content quality without playing a more strategic role with the content and expanding beyond the individual contributor model. Individual contributors are usually focused on docs for a current project only and rarely have bandwidth to expand their concerns at a broader, more encompassing level across the developer portal.

{% include random_ad4.html %}

Additionally, the individual contributor model doesn't scale for the typical engineer-to-writer ratio in most organizations &mdash; a ratio where engineers and other tech roles vastly outnumber writers. You might have just a handful of tech writers to support thousands of engineers. Tech writers often work with different product teams on a continually shifting basis, covering as much ground as possible but not having capacity to meet all needs. In this "itinerant" tech writer model, you can't always play individual contributor roles to write the content that each product team needs. Instead, writers have to shift to playing more content strategy roles around content that others develop.

To elevate contributor contributions to any standard, you have to equip contributors with easy tools, simple markup, fill-in-the-blank templates, clear standards, careful feedback, immediate tools support, and other information and tooling for their effort. You can't do this if you're an individual contributor fully dedicated to three or more full-time projects &mdash; often without enough time to finish, let alone teaching and helping other contributors.

{% include random_ad2.html %}

Overall, the DX content strategist provides the mechanism to elevate the content in ways that improve the developer experience on the portal. As a strategist, this elevation of content doesn't come from creating better content yourself but rather from all the meta-activities you do around content development and publishing. At a high level, these meta content-development activities might include the following:

* Onboarding and training contributors (and providing materials to facilitate self-service onboarding)
* Providing standard templates and guidelines for content creation
* Defining processes and standards (such as for releasing SDKs or writing release notes)
* Making tools available that will automate content checks and workflows
* Defining authoring and publishing workflows and content reviews

These tasks don't involve creating new documentation. Instead, the DX content strategist focuses on the many activities required outside of content development to ensure the content quality meets a high bar.

## Tasks for a developer portal content strategist

The following sections expand in more specific ways on the roles, tasks, and needs that DX content strategists play with a developer portal. I've divided the tasks into general groupings related to tools, contributors, processes and standards, and information architecture. Depending on the size of your doc team (e.g., 5 writers versus 150 writers), you might have specialized teams focusing on each of these areas.

### Tools

* Set up, maintain, and enhance the authoring and publishing toolchain

* Troubleshoot the build when it breaks, and then train contributors about proper usage of the system to avoid future breaks

* Understand how the doc toolchain builds and publishes content from end to end (from static site generator outputs to build pipelines, CI/CD server deployments, and more)

* Reduce the risk of Git catastrophes and broken builds in the system (such as due to misunderstandings with Git or insufficient safeguards with permissions)

* Develop and enhance the doc theme's design and style as well as the available components (e.g., navtabs, accordions, or menus) to use for different scenarios

* Implement style/grammar checkers (e.g., Acrolinx) either with in-tool plugins or perhaps at the platform level

* Build out and verify scripts (e.g., Travis CI scripts, GitHub Actions) to perform automated checking, such as looking for broken links or style inconsistencies

* Integrate and configure the search experience (e.g., Algolia, Swiftype, other), including SEO and discoverability of content in search engine results

* Define the metadata that feeds into the search experience to provide navigable facets or other structured data for search; also monitor the documentation to ensure contributors are using the right metadata

* Address security tickets related to the developer portal (e.g., reverse tabnabbing, linking to external JavaScript sources, errant permissions)

* Configure scripts for PDF generation and output (e.g., Prince scripts) to distribute content to pre-release partners

* Manage the assets for your developer portal and permissions through the web console related to your website host

### Contributors

* Develop training and guides for contributors to onboard with the toolchain and authoring/publishing processes

* Create templates for how-to content and other format types (release notes, getting started, first-time setup, CLI docs, schemas) to help guide authors as well as maintain consistency across docs

* Define Git workflows and manage Git permissions for contributors, including pull request workflows and code review workflows

* Create reports to assess each doc set to identify stale content (which hasn't been updated for a long time), missing metadata, outdated localization, and other problem areas

* Define a process for regularly auditing content to avoid stale, abandoned, or outdated content. Include timelines, requirements, and automated notifications to send out when content owners haven't reviewed their docs for a long period of time (e.g., one year)

* Create and maintain a list of contacts for every doc set, listing current owners and roles

* Review and monitor Git commits from contributors to identify problems or other issues with contributor content

* Analyze trending support tickets and hot topics (even when not filed against the doc team) and sync with engineering teams on resolutions

* Identify support paths and escalation processes for the different products on the developer portal

### Processes and standards

* Define the [process for managing large doc projects](docapis_managing_doc_projects.html), including processes for releases that have impact across field engineers, marketing, and support, etc, not just docs.

* Define a [process for assessing incoming small doc requests](docapis_managing_small_doc_requests.html) and decide how to approach and prioritize them. Regularly groom the backlog so that you don't have a sea of stale tickets.

* Define and enforce the [release process for SDKs](docapis_managing_sdk_releases.html), [sample apps](docapis_sample_apps.html), and other code artifacts on the developer portal

* Set up and define localization processes, priorities, and workflows with regards to doc tools

* Define processes for granting access to docs prior to release for early access partners, such as during beta periods

* Define and set up on-call workflows and rotations to handle incoming feedback, emergency tickets, or other daily doc emergencies

* Define and enforce the doc review process prior to release, including any required sign-offs

* Define processes for deprecating documentation, including outreach and notification workflows as well as migration/upgrade paths

* Define strategies for versioning content, including approaches for incremental versions versus non-incremental versions, deprecated versions versus active versions, small version variants versus entire doc sets

* Promote awareness of [Legal red flags and danger zones](docapis_managing_sdk_releases.html#legal) (e.g., forbidden terms or IP violations), as well as the Legal review process

* Define, implement, and enforce a docs style guide for the site. Also, define and contribute to an API design style guide and understand how it relates to documentation

* Ensure that all docs (especially from contributing authors but also from other technical writers) meet common standards, including release notes for changes published, getting started tutorials, proper syntax highlighting for code samples, etc.

* Define policies for when PDFs are delivered, how they are styled, what legal boilerplate appears on them, and how they are stored and distributed

* Define and promote standards for API reference content, such as using OpenAPI with REST APIs

* Define and review standards for [tagging in auto-generated reference docs](nativelibraryapis_javadoc_tags.html) from library-based APIs (e.g., Javadoc, Doxygen)

* Define process and standards for developer product naming and branding, and then enforce this against individual teams that might launch new feature names in unapproved ways

{% include image_ad_right.html %}

### Strategic alignment

* Align the team's efforts and priorities with larger org's priorities.

* Coordinate and partner with other documentation teams, aligning or sharing similar assets, workflows, tools, or processes

* Champion the doc team's correct fit in the organizational chart (e.g., Engineering, Product, Marketing) and understand the reporting chain

* Report upwards with weekly, monthly, and yearly metrics or other data that resonates with the priorities of the leadership chain

* Identify and cultivate documentation sponsors at the executive level

* Review analytics and regularly investigate trending pages, then prioritize updates based on analytics

* Identify the 20% of pages that receive 80% of the traffic so you can identify and prioritize content for those pages

* Develop strategies for funneling information from users (e.g., external devs) back to internal product teams

* Review incoming doc feedback as well as developer satisfaction surveys and then take action on the results

* Build rapport with key documentation owners by providing regular updates about the analytics and performance of their docs, etc.

* Publicize updates to stakeholder mailing lists to communicate changes to all relevant parties

* Ensure the homepage and other marketing pages on the site properly match messaging in the documentation, including language, links, high-level processes, terms, etc.

* Contribute to regular communication that is sent to developers (e.g., a newsletter) to build their trust and awareness with the company and dev portal

* Guide contributing bloggers to address doc needs, and capture blog information that might be worthwhile to incorporate into documentation

### User flows

* Define user journeys from marketing landing pages and other incoming sources to the docs

* Arrange multiple doc sets into a master index or starting point that makes sense for the organization

* Integrate a support path from the docs to support channels or contact us pages so that users know how to get help when they need it

* Define and promote flows from any admin or console pages to the docs through contextual help links

* Research and understand developer journeys on competitor sites

* Understand how every product fits together as a whole across the developer portal (rather than only understanding the docs you work on)

* Build in mechanisms for collecting feedback, including design of a feedback form and questions, the automated triggers when feedback is received, and the workflow for handling feedback

* Develop awareness and review of activity outside the docs on social channels such as Stack Overflow, GitHub, Twitter, etc., and assess whether the docs align with the terms, hot issues, and priorities of the external activities

* Drive developers to sign up to newsletters and other forms of outreach from the docs

* Build funnel metrics in multi-page tutorials to analyze where developers drop out of tutorials

* Build user profiles that provide authors and contributors with a better understanding of the audience, such as their technical level, companies, purposes, and other needs

## Bandwidth for all of these tasks

Reading through these tasks is probably overwhelming, but my purpose is to demonstrate the need for these activities outside of content development. All too often, people assume that technical writers merely "write docs" and don't understand that there's a large body of work involved in managing a developing portal that doesn't include writing content. These tasks try to answer the question, "what else do technical writers do besides write docs?" When you allocate resources for DX content strategists, they can help build a healthy developer portal so that users can easily find and consume accurate, relevant content that addresses their needs.

{% include ads.html %}

It's not always feasible to have a dedicated person fill the DX content strategist role. Many times different technical writers and managers will play the role in varying degrees. However, it's good to have these tasks be part of an official role rather than an add-on to individual contributor role whose primary job is creating docs. Unless these tasks fall under someone's official title, they are likely to be overlooked. This creates more burden on writers to figure out their own tools, processes, and other details.
