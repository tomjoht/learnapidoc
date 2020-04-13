---
title: "Managing a developer portal"
permalink: /docapis_api_developer_portal.html
weight: 1
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

A developer portal is a site that not only involves a console where developers retrieve API keys and perform other configuration but where they go to consume documentation for different products. Typically, a developer portal involves a lot of different documentation contributed by many different teams.

For example, a developer portal might contain documentation for 30 or more different products of varying size and importance, with hundreds or thousands of pages. With so much documentation from so many teams, the individual contributor model, with tech writers working in silos and pushing out information, just doesn't work. You basically end up with the equivalent of a wiki dumping ground, where content is a wild west of standards and styles, and where you never know if content is current, outdated, accurate, deprecated, or in process. To avoid this scenario, you need a content steward and manager to define processes, standards, workflows, and other strategies for the content. At this scale, more dedication to tools, processes, high-level strategies, and user workflows needs to be attended to. The following sections describe the role of the content manager.

## Tools

* Set up, maintain, and enhance authoring and publishing toolchain

* Develop training and guides for contributors to onboard with toolchain

* Troubleshoot the build when it breaks and train contributors about proper usage of the system to avoid future breaks

* Understand how the doc toolchain builds and publishes content from end to end (from static site generator outputs to build pipelines, CI/CD server deployments, and more)

* Reduce risk of Git catastrophes and broken builds in the system (such as due to misunderstandings or insufficient safeguards)

* Integrate and configure the search experience, including SEO and discoverability of content in search engine results

* Develop and enhance the design (e.g., two-column or three-column themes) and style (e.g. CSS) of the docs

* Implement style/grammar checkers (e.g., Acrolinx) at the platform level

* Address security tickets (e.g., reverse tabnabbing, linking to external JS)
related to content and doc theme  

* Configure scripts for PDF generation and output (e.g., Prince XML scripts)

* Manage cloud console (e.g., AWS Console) and resources for distributing files and storing assets (e.g., S3 bucket policies)

* Verify scripts to perform automated checking (such as looking for broken links or style inconsistencies) (e.g., Travis CI scripts)

* Define authorization setup for content that requires whitelisting or login

## Processes, policies, and strategies

* Define Git workflows and manage Git permissions

* Review and monitor Git commits from contributors

* Define and enforce the release process for SDKs, sample apps, and other code artifacts on the portal

* Define the process for engineers to contribute pull requests or other content. Ensure sufficient onboarding materials for this process.

* Set up and define localization processes, priorities, and workflows with regards to doc tools

* Define, implement, and enforce a style guide for the site

* Define the doc review process prior to release (e.g, review with product team, field engineers, support, legal, beta partners), including any signoff

* Define processes for whitelisting beta partners and collecting feedback from partners during the beta

* Define and set up on-call workflows and rotations for ticketing processes and automated notifications

* Define the intake process, including processes for releases that have impact across field engineers, marketing, and support, etc, not just docs.

* Create and maintain of contacts for every doc set, listing current owners and roles

* Regularly review content (regardless of whether it's currently being worked on) to avoid stale, abandoned, or outdated content. Define processes, including timelines and consequences, for owners to update their content.

* Review content that other team members and contributors write to ensure that it integrates with the rest of the docs.

* Ensure that all docs (especially from tenant authors but also from other technical writers) meet common standards, including release notes for changes published, getting started tutorials, proper syntax highlighting, etc. Actually read over and review the content to ensure it fits within the existing docs already published.

* Define processes for deprecating old content, including outreach and notification workflows as well as content archival

* Set up team processes for managing doc work, such as following Scrum or Kanban methodology, including managing sprint planning for docs and maintaining team momentum of priority items

* Manage tickets in backlog and approaches for handling them

* Publicize updates to stakeholder mailing lists to communicate changes to all relevant parties

* Define policies for when PDFs are delivered/justified and how they are stored and distributed

* Define and promote standards for API reference content (such as using OpenAPI with REST APIs)

* Define and review standards for tagging in auto-generated reference docs from library-based APIs (e.g., Javadoc, Doxygen)

* Create templates for how-to content and other format types (release notes, getting started, first-time setup, CLI docs, schemas) to help tenant authors as well as maintain consistency across docs

* Define and contribute to a design style guide for APIs, especially as it relates to documentation

* Maintain and publicize legal awareness and understanding of red flags and danger zones (e.g., forbidden terms), as well as the legal review process and resolution

* Define strategies for versioning content, including approaches for incremental versions versus non-incremental versions, deprecated versions versus active versions, small version variants versus entire doc sets that are versioned, etc.

* Define process and standards for developer product naming and branding, and then enforce this against individual teams that might launch new feature names in unapproved ways

* Define processes for collecting feedback, including design of the survey form and questions, the automated triggers when feedback is received, etc.

* Align the team's efforts and priorities with larger org's priorities. Understand larger initiatives in executive strategies/reports and connect the dots with all of these products

* Coordinate and partner with other doc teams, including aligning on similar directions, tools, or processes

* Analyze trending support tickets and products (even when not filed against the doc team) and sync with engineering teams on resolutions

* Assess incoming requests and decide how to approach and prioritize them

* Understand the doc team’s correct fit in the organizational chart (e.g., * Engineering, Marketing) and the reporting chain

* Report upwards with weekly, monthly, and yearly metrics, updates, and  issues that resonate with the priorities of the leadership chain.

* Understand analytics and regularly investigate trending pages, then prioritize updates based on analytics

* Develop strategies for funneling information from users (e.g., 3p devs) back to internal product teams. Play the user champion role to relay the voice of the developer in actionable ways.

* Review incoming doc feedback as well as developer satisfaction surveys  and then take action on the results

* Build rapport with key stakeholders by providing regular updates about the performance of their docs, etc.

* Define user journeys from marketing landing pages to docs

* Understand how content across the portal all fits and flows together &mdash; docs, marketing, support, console

* Arrange multiple doc sets into a master index or starting point

* Integrate the support path from the docs to support channels or contact us pages

* Define and promote flows from the Developer console to the docs through in-app help or contextual help

* Ensure the homepage and other marketing pages on the site properly match messaging in the documentation, including language, links, high-level processes, etc.

* Develop awareness and review of pages outside the docs on social channels such as Stack Overflow, GitHub, Twitter, etc.

* Understand how every product fits together as a whole across the developer portal (rather than only understanding the docs you work on)

* Drive developers to sign up to newsletters and other forms of outreach from the docs

* Research and understand developer journeys on competitor sites
