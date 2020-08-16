---
title: DX content strategy role with a developer portals
permalink: /docapis_dx_content_strategy.html
course: "Documenting REST APIs"
weight: 12.1
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
---

As the content grows on a developer portal, there's an increasing need to expand your documentation role from an individual contributor who is creating and publishing new content to a dedicated content steward who, rather than create content as an individual contributor (IC), instead manages the processes, standards, tools, governance, and workflows for the content that is authored by contributing teams. The general common industry term for this role might be *content strategist*, but in the context of developer documentation, I'm calling this role a "DX content strategist" (DX == developer experience). Note that the DX content strategist isn't an IC but rather more of a portal site manager and strategist.

* TOC
{:toc}

## Risks of developer portals with no DX content strategist

If organizations don't have a DX content strategist dedicated to their growing developer portals and enhancing the developer experience, the resulting trajectory of a developer portal will follow the same path more or less as an internal wiki. Internal wikis tend to be content dumping grounds that are a wild west of standards and styles, and where you never know if content is current, outdated, accurate, deprecated, or under construction. Finding the right content on an internal wiki is a constant challenge, and there's no consistency from one page to the next. In the wiki model, teams create docs during their times of need and abandon them when their teams or priorities change. The result is a mishmash of fragmented, often unowned content.

{% include random_ad3.html %}

Documentation for external developers is a high priority that shouldn't fall to the same fate as content on internal wikis. In [SmartBear's State of API 2019 report](https://static1.smartbear.co/smartbearbrand/media/pdf/smartbear_state_of_api_2019.pdf), "accurate and detailed documentation" ranks third in priority (just below "ease of use" and "responsiveness/performance") from 15 ranking factors in an API experience. You can't achieve a high level of content quality without playing a more strategic role with the content and expanding beyond the individual contributor model. Individual contributors are usually focused on docs for a current project only and rarely have bandwidth to expand their concerns at a broader more encompassing level across the developer portal.

Additionally, the individual contributor model doesn't scale for the typical engineer-to-writer ratio in most organizations &mdash; a ratio where engineers and other techs vastly outnumber writers. You might have just a handful of tech writers to support thousands of engineers. Tech writers often work with different product teams on a continually shifting basis, covering as much ground as possible but not having capacity to meet all needs. In this "itinerant" tech writer model, you can't always play individual contributor roles to write the content that each product team needs. Instead, writers might have to shift to playing more content strategy roles around content that others develop.

## Requirements for the DX content strategy role

Some organizations might have product teams be responsible for creating their own documentation, with a tech writer to assist them as needed. However, if you just tell teams to make a pull request for all doc updates, you'll probably get poor content that requires heavy editing and revision, and eventually you might conclude that it would have been faster to write the content yourself.

To elevate contributor contributions to any standard, you have to equip contributors with easy tools, simple markup, fill-in-the-blank templates, clear standards, careful feedback, immediate tools support, and other information and tooling for their effort. You can't do this if you're an individual contributor constantly on the hook to create documentation yourself (often without enough time for that, let alone teaching and helping other contributors).

{% include random_ad2.html %}

Overall, the DX content strategist provides the mechanism to elevate the content in ways that improve the developer experience on the portal. As a strategist, this elevation of content doesn't come from creating better content yourself but rather from all the meta-activities you do around content development and publishing. These meta content-development activities might include the following:

* Onboarding and training contributors (in a self-service way)
* Providing standard templates and guidelines for content creation
* Defining processes and standards (such as for releasing SDKs or writing release notes)
* Making tools available that will automate content checks and workflows
* Defining authoring and publishing workflows and content reviews

These tasks don't involve creating new documentation. Instead, the DX content strategist focuses on the many activities required outside of content development to ensure the content quality meets a high bar.

## Tasks for a developer portal content strategist

The following sections expand in more granular ways on the roles, tasks, and needs that a DX content strategist plays with a developer portal. I've divided the tasks into general groupings related to tools, contributors, processes and standards, and information architecture. Depending on the size of your doc team (e.g., 5 versus 150 writers), you might have specialized teams focusing on each of these areas.

### Tools

* Set up, maintain, and enhance the authoring and publishing toolchain

* Troubleshoot the build when it breaks, then train contributors about proper usage of the system to avoid future breaks

* Understand how the doc toolchain builds and publishes content from end to end (from static site generator outputs to build pipelines, CI/CD server deployments, and more)

* Reduce the risk of Git catastrophes and broken builds in the system (such as due to misunderstandings with Git or insufficient safeguards with permissions)

* Develop and enhance the doc theme's design and style, as well as available components to use for different scenarios

* Implement style/grammar checkers (e.g., Acrolinx) either with in-tool plugins or perhaps at the platform level

* Build out and verify scripts to perform automated checking (such as looking for broken links or style inconsistencies) (e.g., Travis CI scripts)

* Integrate and configure the search experience, including SEO and discoverability of content in search engine results

* Define the metadata that feeds into the search experience to provide navigable facets or other structured data for search

* Address security tickets related to the developer portal (e.g., reverse tabnabbing, linking to external JavaScript sources, errant permissions)

* Configure scripts for PDF generation and output (e.g., Prince XML scripts) to distribute content to pre-release partners

* Manage the assets for your website and permissions for whatever web console is available

### Contributors

* Develop training and guides for contributors to onboard with toolchain and authoring/publishing process

* Create templates for how-to content and other format types (release notes, getting started, first-time setup, CLI docs, schemas) to help guide authors as well as maintain consistency across docs

* Define Git workflows and manage Git permissions for contributors, including pull request workflows and code reviews

* Create reports to assess each doc set to identify stale content (which hasn't been updated for a long time), missing metadata, outdated localization, and other problem areas

* Create processes to automatically ping contributors when they haven't reviewed their docs for a period of time (e.g., 1 year)

* Create and maintain of contacts for every doc set, listing current owners and roles

* Review and monitor Git commits from contributors to identify problems or other issues with contributor content

* Analyze trending support tickets and hot products (even when not filed against the doc team) and sync with engineering teams on resolutions

### Processes and standards

* Define the intake process for large doc projects, including processes for releases that have impact across field engineers, marketing, and support, etc, not just docs.

* Define a process for assessing incoming small doc requests and decide how to approach and prioritize them. Regularly groom the backlog so that we don't have a sea of stale tickets.

* Set up and define localization processes, priorities, and workflows with regards to doc tools

* Define processes for granting access to docs pre-release for early access partners, such as during beta periods

* Define and set up on-call workflows and rotations to handle incoming feedback, emergency tickets, or other daily crises

* Define and enforce the doc review process prior to release (e.g, review with product team, field engineers, support, legal, beta partners), including any required sign-offs

* Define processes for deprecating old content, including outreach and notification workflows as well as content archival

* Define strategies for versioning content, including approaches for incremental versions versus non-incremental versions, deprecated versions versus active versions, small version variants versus entire doc sets that are versioned, etc.

* Promote awareness of Legal red flags and danger zones (e.g., forbidden terms), as well as the Legal review process and resolution

* Define and enforce the release process for SDKs, sample apps, and other code artifacts on the portal

* Define a process for regularly auditing content to avoid stale, abandoned, or outdated content. Include timelines and consequences for owners to update their content

* Set up team processes for managing doc work, such as following Scrum or Kanban methodology, including managing sprint planning for docs and maintaining team momentum of priority items

* Define, implement, and enforce a docs style guide for the site. Also, define and contribute to an API design style guide and understand how it relates to documentation

* Ensure that all docs (especially from contributing authors but also from other technical writers) meet common standards, including release notes for changes published, getting started tutorials, proper syntax highlighting for code samples, etc.

* Define policies for when PDFs are delivered, how they are styled, what legal boilerplate appears on them, and how they are stored and distributed

* Define and promote standards for API reference content (such as using OpenAPI with REST APIs)

* Define and review standards for tagging in auto-generated reference docs from library-based APIs (e.g., Javadoc, Doxygen)

{% include image_ad_right.html %}

### Strategic alignment

* Align the team's efforts and priorities with larger org's priorities. Understand larger initiatives in executive strategies/reports and understand how all of the products fit together

* Coordinate and partner with other doc teams, including aligning on similar directions, tools, or processes

* Understand the doc team's correct fit in the organizational chart (e.g., Engineering, Marketing) and the reporting chain

* Report upwards with weekly, monthly, and yearly metrics, updates, and  issues that resonate with the priorities of the leadership chain.

* Define process and standards for developer product naming and branding, and then enforce this against individual teams that might launch new feature names in unapproved ways

* Understand analytics and regularly investigate trending pages, then prioritize updates based on analytics	|

* Develop strategies for funneling information from users (e.g., external devs) back to internal product teams

* Review incoming doc feedback as well as developer satisfaction surveys and then take action on the results

* Build rapport with key stakeholders by providing regular updates about the performance of their docs, etc

* Define user journeys from marketing landing pages and other incoming sources to the docs

* Understand how every product fits together as a whole across the developer portal (rather than only understanding the docs you work on). Include docs, marketing, support forums, the console, and other areas of the site.

* Ensure the homepage and other marketing pages on the site properly match messaging in the documentation, including language, links, high-level processes, etc.

* Develop awareness and review of activity outside the docs on social channels such as Stack Overflow, GitHub, Twitter, etc., and assess whether the docs align with the terms, hot issues, and priorities of the external activities

* Contribute to regular communication to developers (e.g., a newsletter) to build their trust and awareness with the company and dev portal

* Guide contributing bloggers to address doc needs, and capture blog information that might be worthwhile to incorporate into documentation

* Research and understand developer journeys on competitor sites

* Publicize updates to stakeholder mailing lists to communicate changes to all relevant parties

### User flows

* Arrange multiple doc sets into a master index or starting point that makes sense for the organization

* Integrate a support path from the docs to support channels or contact us pages so that users know how to get help when they need it

* Define and promote flows from the developer portal to the docs through in-app help or contextual help

* Build in mechanisms for collecting feedback, including design of a feedback form and questions, the automated triggers when feedback is received, the workflow for handling feedback, and more.

* Drive developers to sign up to newsletters and other forms of outreach from the docs

* Build funnel metrics in multi-page tutorials to analyze where developers drop out of the tutorial workflow

* Identify the 20% of pages that receive 80% of the traffic so you can identify and prioritize content for those pages

* Analyze incoming traffic sources to get a better understanding of where your users and coming from and why

* Build user profiles that provide authors/contributors with a better understanding of the audience, such as their technical level, companies, purposes, and other needs

## Bandwidth for all of these tasks

Reading through these tasks is probably overwhelming, but I hope to demonstrate the need for activities outside of content development. All too often, people assume that technical writers merely "write docs" and don't understand that there's a large body of work that goes into manage a developing portal that doesn't involve writing content. These tasks try to answer the question, "what else do technical writers do besides write docs?"

{% include random_ad.html %}

It's not always feasible to have a dedicated person fill the DX content strategist role. Many times different technical writers and managers will play the role in varying degrees. However, it's good to have these tasks be part of an official role rather than an add-on to individual contributor role whose primary job is creating docs. Unless these tasks fall under someone's official title, they are likely to be overlooked. This creates more burden on writers to figure out their own tools, processes, and other details.
