---
title: Managing large documentation projects
permalink: docapis_managing_doc_projects.html
course: "Documenting REST APIs"
weight: 12.2
sidebar: docapis
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2020-08-13
---

When you're managing larger documentation projects, you need to incorporate project management skills to break the large work into smaller chunks. You can pick and choose from Scrum and other agile methodologies (like Kanban) to create a workflow that works for you. The following sections describe a process for working with large documentation projects.

{: . note}
I also wrote about some of these processes in [Following Scrum with documentation projects](pubapis_agile_scrum_for_docs.html). This section expands on that initial framework with more process details and commentary.

* TOC
{:toc}

## Definition of a documentation project

A "documentation project" is a larger effort tied to some new feature or product launching, whereas a [small documentation request](docapis_managing_small_doc_requests.html) might be a minor update or fix to an existing doc. In both cases, you can manage documentation work by loosely following the same adapted Scrum processes used in many engineering workflows. This is because documentation processes are closely coupled with software engineering in terms of its cadence and workflow. In both cases, you're building something complex.

However, because tech writers are often allocated to multiple Scrum teams, and because tech writers are often resourced under a different group organizationally (e.g., tech comm), implementing Scrum in the strict, traditional way usually doesn't work without some adaptations. In the sections that follow, I'll elaborate on what I think works in a practical sense.

## Process overview

A process for *managing doc projects* could have the following steps:

1.  [Identify the documentation projects](#identify_work)
2.  [Assess the identified work against strategic priorities](#assess_strategic_priorities)
3.  [Assign the projects to different tech writers](#specialize_the_writers)
4.  [Create project plans for the documentation projects](#create_project_plans)
5.  [Convene a documentation kickoff meeting](#kickoff_meeting)
6.  [Chunk project work into tickets](#chunk_the_work)
7.  [Assign tickets to a sprint board](#assign_tickets_to_sprints)
8.  [Start creating content](#start_creating_content)
9.  [Follow a review process for your docs](#follow_review_process)
10. [Create a code review for changes](#code_review_for_changes)
11. [Close the sprint](#close_sprint)
12. [Share monthly reports about completed work](#share_reports)

## 1. Identify the documentation projects {#identify_work}

First, try to identify all documentation projects by reviewing different project lists for the teams you're working with. The whole need to identify the projects might seem unintuitive &mdash; shouldn't product managers reach out to technical writers to let them know what doc needs they have? Yes, in an ideal world that would be the case. But we all know the reality in corporate settings. About two weeks before release, the product manager suddenly starts thinking about docs, and an email winds around to your inbox with the request. If you were to start from the time you received the email heads down until the release, working on that project and only that project, you might be able to finish it &mdash; meanwhile postponing/re-prioritizing everything else you're working on as you enter crisis mode. Most people dislike working for extended periods in crisis modes.

{% include random_ad4.html %}

To get out of crisis mode, you have to scan the project landscape like a scout looking across a plain for emerging wildlife and identify the projects early on. Identifying projects early on also gives you more opportunity to engage more deeply in the project, such as providing input on the [API design and usability](evaluating-api-design.html).

So this first step is one of *identifying* the work &mdash; what projects are out there, what's on each team's roadmap, when are new features and products going to be released, which of these projects will require documentation, and so on. Gather up a list of these projects and put them onto a documentation planning spreadsheet.

While this project identification task might seem common to any documentation team, this work is magnified in scenarios where you're publishing on a developer portal. A developer portal tends to be a publishing hub for many different teams, often working independently. A thriving developer portal might have documentation input from dozens of different teams, many of whom might be unfortunately siloed from each other but publishing through a common documentation team steward/gatekeeper.

As you're scouring for this project information, look for roadmap trackers maintained by all the teams you support. For example, you might track about half a dozen different roadmaps from teams. Some projects might be listed on multiple roadmaps because different teams might play different roles with the projects. For example, visual designers might only have UX mocks on their roadmap, while engineering teams might have engineering tasks related to the project, and so on.

Sometimes a large project can have lots of sub-teams that are working on different dimensions &mdash; an API team working on handling databases to store information, a UX team working on the admin console, another team developing a CLI to handle input or other commands, other teams working on other features, and so on. Usually as a technical writer, you see this larger picture and support all the teams, even if these teams only have awareness of their own projects.

In this stage, you're looking only for "projects." What is the definition of a project versus a small documentation request? Here we get into a semi-gray area, but it's essential to separate the two types of work because they have different workflows and needs.

A *documentation project* is any work that typically has associated business documents, design documents, or other requirements documents with it, along with a product manager who is defining a large scope of work and a team implementing some feature or product. Projects usually have a release as part of their timeline.

Sometimes smaller efforts can be grouped under larger projects. For example, a project might include a lot of sub-projects released at different timelines, but the larger effort overall is managed by a PM. (Later on in the process, I'll describe why it's essential to break these larger projects down into smaller tasks.)

Doc work that isn't associated with a project can be referred to as a "small documentation request." Small requests can usually be made in a few days or less. Some examples of small requests would be to remove an outdated paragraph, update availability information for a product, review a contributor's updates, publish an SDK minor version with release notes, etc. These small tasks aren't listed on your documentation project planning spreadsheet. (I go into detail about managing [small documentation requests here](docapis_managing_small_doc_requests.html).)

What about extensive doc efforts that might take 1-2 weeks but which aren't part of any larger project? In these cases, you're essentially managing the project yourself, and I would recommend adding it to your documentation project spreadsheet. If you need a more definitive separation between projects and small doc requests, maybe consider defining a project as any effort requiring more than a week of work.

The converse scenario might also apply: documentation needed as part of a project but which only takes 1-2 days. In that case, I would still list the effort as a project because projects have different rhythms and workflows &mdash; there are often multiple phases (internal, beta, general availability, fast-follows), as well as multiple iterations as teams evolve product designs based on customer feedback. You might have to rewrite the topics three or four different times as part of the development churn. As a result, what might initially begin as a small amount of work can turn into a much larger work.

When do you sit down and identify all the projects? Who reaches out and contacts the different teams and finds their roadmaps and tracks what's coming and so on? You could designate a doc lead for this. However, it might be better to designate different writers who are specialized in different areas to do the information collection work. For example, suppose a documentation team has 5 writers, each of whom is embedded with 2-3 teams in different areas of the org. Writer 1 might be assigned to projects in Group A, Writer 2 might be assigned to projects in Group B, and so on.

This specialization not only lets tech writers become SMEs in these areas of the business but builds rapport with the leaders in that group. As such, it makes sense for these embedded writers to interface with the leaders in the group around roadmaps. If a doc lead instead performs this function, the analogy becomes more like a waiter (doc lead) interfacing with the customers at tables and then handing orders to cooks (tech writers), who remain isolated from the customers at tables. Instead, if each writer interfaces with customers to gather up the orders, chances are this interaction will build a stronger rapport and relationship with the teams, which will serve the documentation efforts more in the long run (such as when you ask for doc reviews or other information). In short, all writers should be scouts to identify the projects in their respective domains.

To enforce these efforts on a regular basis, doc teams should gather bi-weekly for a "Documentation Planning" meeting where they specifically review the various roadmaps of the teams they support. If multiple people are invited to the meeting, you're more likely to keep it going. During the project planning, list out projects onto a documentation planning spreadsheet.

{% include image_ad_right.html %}

If you're not part of a doc team but are fully embedded with a product team as a solo writer, you can still perform the same function but might need to drive the whole process yourself. Solo writers often support many different disconnected teams within an organization as well.

## 2. Assess the identified work against strategic priorities {#assess_strategic_priorities}

The next step is to assess the identified work against your department's strategic priorities and decide which projects and tasks should be given more importance. This prioritization is probably only needed in situations where the tech writers have more work than they can feasibly handle. However, this is almost always the case, not an anomaly to the norm.

Even in cases where each tech writer has a healthy allocation of projects, you will still probably have a lot of latitude/flexibility about which projects you devote most of your energy. It's worth understanding which projects are considered a strategic priority.

Track down your organization's strategic goals from your C-suite execs or other senior leaders as a way to figure out these priorities. If you're so far down the org hierarchy that you've never seen such a document nor are allowed to access it, find out from your manager what the goals are. Your manager should be aware of his or her manager's goals, who should be aware of his or her manager's goals, and so on up the line. If there's a disconnect somewhere, it represents a broken line of communication and potentially an organization that isn't aligned.

Decide which projects should receive your most thorough attention (based on the projects that your senior leaders are prioritizing). This alignment is key for boosting your value to the organization, as I described in [Part V: On being strategic, interpersonal, and sponsored](https://idratherbewriting.com/blog/reflecting-seven-years-later-about-layoff-clarke-being-strategic/). After you get a sense of your organization's strategic priorities, assign each project on your doc planning spreadsheet one of the following priorities: low, medium, or high.

Keep in mind that strategic priorities differ by group. What might be a strategic priority for one group might not be a strategic priority for another group. This prioritization can be especially problematic if your group is cross-functional, meaning you support many organizations with different services (e.g., documentation, marketing, support, dev relations, and so on). In these cases, you'll have to figure out which priorities your own group wants to embrace.

{% include random_ad2.html %}

The review of strategic priorities and the assessment of projects should ideally take place at a regular cadence, and although filling up your calendar with meetings isn't ideal, this meeting (especially when it involves multiple people) can be a forcing function for this task. You might call this meeting "Project Prioritization" and even include field engineers in the meeting (especially if the field engineers have a close ear to important business partners).

## 3. Assign the projects to different tech writers {#specialize_the_writers}

At this point, you have a documentation project spreadsheet with dozens of projects from different areas of the organization. You need to group the projects into buckets that make sense and which can be correlated with different tech writers into areas of specialization.

For example, suppose you have 25 different projects, and you have about 5 different tech writers. You might divide 25 by 5 to come up with 5 different groupings of the project (or create some other logic that makes sense here based on the project size, scope, and complexity).

These different buckets become areas of specialization for the writers. For example, "Bob" takes on all projects originating from the ACME group and which deal with Widgets. Bob becomes immersed in ACME's widgets and teams, and builds rapport with that group the more he embeds with them. Meanwhile, "Cassandra" takes on all projects originating from the Globex group or which deal with Components. Cassandra immerses herself as much as possible in Globex teams, attending their standups and other meetings and such. In this way, everyone in Globex gets to know who Cassandra is and learns the process for docs.

It's important that each tech writer is assigned an area of specialization so that they can accrue the necessary knowledge and rapport with teams in those areas. Each project on your doc planning spreadsheet should be categorized into an area of specialization correlating to a tech writer's specialization.

{% include ads.html %}

What happens if the groups don't balance out evenly? Suppose Globex pushes out tons of features while ACME is much smaller and only has 1-2 releases a year? In that case, you might have to make adjustments so that the work is more balanced. These adjustments can only be decided based on the number of writers at your disposal, your org structures, and other factors. But if you have a list of strategic priorities for your org, these strategic priorities can serve as the guiding core for balancing the work. Ideally, balance writers based on strategic priorities rather than simply the number of projects.

## 4. Create project plans for the documentation projects {#create_project_plans}

Now that you have a list of projects and priorities, along with different specialization categories and assigned writers, you're ready to move on to the next phase: creating project plans for these projects. Each tech writer will need to sync with the different product managers needing information for these plans.

Each tech writer should reach out to the respective product manager (PM) to find out what docs are needed for their project. PMs might reach out proactively as well, which is great when they do.

After some back and forth over email or other channels, the tech writer would then ask the PM to create a project-intake ticket for the needed documentation. The project-intake ticket should require the PM to complete a comprehensive, in-depth set of fields related to the project. Here's an example of what this project-intake ticket might consist of:

<div class="docSample" markdown="block">

**Documentation project plan**

*This project plan defines the scope and details for a larger doc project. Complete as much information as you can, as this will help us get better oriented and familiar with the doc needs.*

**Project overview**

Tell us about the project:

* Product name:
* Product code name:
* Brief product description: [3-4 lines]
* Project status page:
* Business requirements doc:
* Design documents:
* Functional analysis documents:

**Business group**

Which business does this project fall under:

* Organization:
* Business group:
* Team:

**Product team**

Who's who on the project team:

* Product manager:
* Project manager:
* Software developers:
* Quality assurance:
* Marketing:
* Developer outreach:
* Legal:
* Field engineer:
* Evangelist:
* Security:

**Priority**

Is this documentation a strategic priority:

* Does this project roll up under a strategic leadership goal? If so, which one?

**Target users**

Who is the documentation for:

* Developers
* Internal engineers
* Business decision-makers

**Issue tracking**

Where can the tech writer track work related to the project:

* Ticketing system:
* Wiki:
* Code repository:

**Release timelines**

* Beta partner release date:
* General availability (GA) launch date:
* Date docs must be ready to distribute:

**Information sources**

How does information flow within your team:

* Key team meetings:
* Team sprints:
* Scrum leader:
* Email lists:
* Slack channels:

**Code repositories**

Where the code is stored:

* Build system:
* Other storage:

**Testing**

How is the product tested:

* Test environment:
* Test scripts:

**Localization needs**

Is localization needed:

* Localization required: y/n
* Date localization needs to be complete: [mm/dd/yyyy]
* Localized languages:

**Restricted access**

Will this documentation be public or protected:

* Protected behind a login: y/n
* Public to everyone: y/n

**Documentation size estimate**

How much documentation do you anticipate for this project:

* 0-5 pages: y/n
* 6-9 pages: y/n
* 10-19 pages: y/n
* 21+ pages: y/n

**Scope of content requests**

What type of content do you need:

* Documentation: y/n
* UX microcopy: y/n
* Screencasts: y/n
* Email campaign content: y/n
* Blog articles: y/n
* Other: y/n

**Reviewers for content**

Who will review the docs and other content:

* Person 1:
* Person 2:

**Support post-launch**

Who will support the product post-launch:

* Support team:
* Is the support aware of this project: y/n
* Long-term owner post-launch:

**Internal product wiki/resource pages**

What wiki pages are important to be aware of for this project:

* page:  
* page:
* page:

**Marketing support**

What marketing support do you need for this project:

* Marketing landing page: y/n
* Email to general devs: y/n
* Email to a targeted subset of devs: y/n
* Paid advertising efforts: y/n
* Have you reached out to anyone in Marketing? y/n

**Other**

List any other details not requested above that might be important to know.
</div>

(Note that you can usually populate tickets based on a template like this. For example, JIRA lets you do this.)

To instill a sense of ownership and commitment, it's important that the PM complete the project-intake ticket, populating the necessary fields. This information helps the tech writers more appropriately scope and assess the work, as well as get oriented on the tasks.

This information collection reduces email churn and the need for tech writers to figure out the answers themselves through meetings and other email threads. If the PM leaves the fields blank, consider setting up a meeting with the PM and go over the needed fields in the meeting. You would be extremely lucky to find all information completely filled out from the start. Most of the time, PMs fill out about a third of these forms because they themselves lack more details (e.g., test scripts, code repositories, etc). You might want to loop in the Engineering manager to complete the other details.

Note that the time required to collect this information can either be absorbed upfront through the requester or later through the tech writer. Placing the responsibility on the requester helps tech writers be more efficient. It also gives you a filter to decide just how desperately product teams want documentation for their projects. If a PM can't be bothered to complete the intake ticket, why should tech writers be bothered to create the documentation?

However, just because a PM or other requester is slow to make the request, don't rush to judgment about their interest in the docs, especially if you're making the requests over email. For many people, email is just noise, especially if they don't know you well. Sometimes I've followed up with PMs about emails I've sent, and they were oblivious to the context or purpose of the email (if they even read it). PMs might not understand what you're asking them to do unless you explain it to them through a meeting. Unfortunately, meetings are often the only language PMs understand.

## 5. Convene a documentation kickoff meeting {#kickoff_meeting}

After the project-intake ticket has been completed, the tech writer schedules a documentation kickoff meeting with the PM and other interested stakeholders. The tech writer reviews the information in the project-intake ticket and asks questions and gathers other details during the meeting.

During this meeting, the tech writer should set expectations about what will be delivered, clarify timelines, push for demos or sample apps, describe the process for working together on the project, understand who the reviewers are, describe the review process, what's in scope or out of scope, and more. If the requester left fields blank, the tech writer should push on reasons why or who might have the information. It's better to collect the information upfront while you're in information-collecting mode rather than later, when you're already supposed to be writing the documentation.

The tech writer might decide to copy this information into a note-taking wiki and store it with other doc plans. After the kickoff, the personal wiki can become a place for the tech writer to store running notes, questions, or other details specific to the project. This wiki can become a log of important information for the project, perhaps where the tech writer organizes all the information needed for the project.

In cases where one tech writer leaves or transitions to another project, a new tech writer can review this wiki and get a sense of the project's status, contacts, and other details.

{% include random_ad3.html %}

## 6. Chunk project work into tickets {#chunk_the_work}

The incoming project request acts as the parent ticket. Your next task is to chunk this large documentation project ticket into smaller tickets (still grouped under the parent). (Any project management methodology will have you break up large work into smaller chunks.)

Each child ticket represents a chunk of work for the larger project. Each chunk of work typically represents 1-2 days of work, no more. This chunking helps keep tasks manageable and provides a sense of progress on the project. Also, if you're able to identify all the sub-pieces of work, it will help you more accurately represent the scope of the work.

Tech writers can create the smaller tickets themselves, rather than requiring the PM to create each individual ticket. This is because the PM often doesn't know how to break down the work of a larger project, or because the requester might not know all the details of what is needed.

Compare this to an engineering team where a PM might ask for a certain feature &mdash; a mobile app for Android, or something. The engineering team analyzes the goal and then breaks the request into multiple sub-tasks (e.g., set up the mobile templates, create databases to store input, define layouts for the pages, and such) that are beyond the PM's original understanding of what is needed to bring about the end goal. Even though the tech writer creates these tickets, the requester should always be added as a watcher and the child ticket should be linked to the parent ticket.

All child tickets don't need to be created from the start, since it's not always possible to know the end from the beginning. And sometimes you only begin to see the work required as you get into the tasks. Part of the philosophy of agile is to plan your work in short sprints (usually two weeks) rather than six-month + intervals. As such, you need only sketch out the tickets for the next month or so. Also, avoid creating too many tickets that you drown in tickets. You can only see so far into the future.

Each tech writer does this chunking for his or her own projects. Exactly how you chunk up the tasks depends on the nature of the project. You might identify a list of expected tasks the user would need to perform and make the doc for each task a separate ticket. Or the chunking could involve identifying common doc types (e.g., Overview, Getting Started tutorial, Configuration, Sample App, Testing) and devoting each ticket to a different doc type. See [Conceptual Topics in Docs](docconceptual.html) for some ideas here beyond the [Reference material](docapis_api_reference_tutorial_overview.html).

These chunked tickets should originally appear in the backlog of your ticketing system (to be later assigned to a sprint &mdash; described in the next step).

## 7. Assign tickets to a sprint board {#assign_tickets_to_sprints}

With projects chunked into tickets, the next task is to next decide what tasks to promote from the backlog to a sprint. Sprints are typically two-week work cycles in which the team attempts to complete a defined set of work. (Sometimes sprints are one week, other times three weeks &mdash; try to align with the general approach engineering teams take in your organization, as it will breed better understanding of your processes when you have discussions with engineers.)

Each sprint has a capacity. For example, the sprint capacity might be 10 points per writer. For a team of 5 writers, the sprint would allow for 50 points. This number represents the team's *velocity*, or how fast your team can get work done. Theoretically, this velocity can be used to estimate how fast teams can get work done.

Suppose your project has a backlog of items totaling 1,000 points, and a stakeholder wants to know when the project will be completed. The team could say that, based on the current team's velocity (which is driven by the team's resources), the team can complete the backlog in 20 sprints, or 40 weeks.

But agile teams don't usually define all the needed tasks upfront in an endless backlog. The whole idea is to constantly course-correct by demonstrating the output of your sprint to the owners, and then make adjustments for the next sprint.

During sprint planning, writers assign points to the tickets. Each ticket might be weighted as follows:

* 1 point = 0.5 days work or less
* 2 points = 1 day of work
* 3 points = 1.5 days of work
* 4 points = 2 days of work

Larger weightings are discouraged. For example, if the task would take 5 days, as a best practice, break this up into smaller chunks to feel a greater sense of progress and so that you more accurately identify the work that needs to be done. However, avoid chunking tasks too granularly. If the task takes 10 minutes, see if you can group these smaller tasks into a single ticket.

Although I've used points here, many times teams will use non-point sizing, such as using T-shirt sizes or dog breeds (is it a Great Dane type task or a Chihuahua). Psychologically, it's easier to identify an XL task versus a small task rather than equate them with time. However, these non-number sizings ultimately resolve back down to points in the ticketing systems.

Typically, each writer usually doesn't take on more than 10-20 points per sprint. This provides a more practical sense of timelines and forces you to decide on priorities. When you realize that you can't do everything at once, you're forced to decide what you *should* work on first, and this is where prioritization comes into play.

During the bi-weekly Sprint Planning meeting, each writer weights their items and assigns the highest priority items from the backlog into the sprint.

## 8. Start creating content {#start_creating_content}

As tech writers begin developing content, there are two primary ways to go about it. For new content that involves a significant amount of new material, which will require review, comments, iterations, and other discussions, I recommend starting the content in a collaborative wiki platform (e.g., Google Docs, Quip, Confluence). Use the platform that your team already uses for collaboration, as it will probably a familiar place for interaction. These platforms allow you to easily ask questions, let reviewers provide input, and collaboratively shape the material in a more interactive way.

There's no point in focusing on your authoring tool's syntax (e.g., Markdown, DITA, XML) or struggling with build issues at this point if you're not even sure if the pages you've written will make it into the published documentation. I wrote about this scenario extensively in [Treat code like code and prose like prose](https://idratherbewriting.com/blog/treat-code-like-code-and-prose-like-prose/). While it might be tempting to drive everything from a docs-as-code tooling perspective here, asking engineers to review content using code review tools, this workflow typically excludes non-engineers from the documentation review process.

Although engineers might like providing comments through GitHub or other code review tools, usually product managers, field engineers, QA, or others will find these tools much less familiar and might forego participating in reviews altogether. This scenario is bad news for docs because you end up with the reviewers being the same people who created the systems you're documenting. You need more of an outside perspective to avoid problems related to the curse of knowledge.

Note that I'm only recommending writing in Google Docs, Quip, or Confluence as you're working on totally new pages with substantial amounts of content that needs to be heavily reviewed. If you're working on small tasks, it might make sense to make the changes directly in your authoring system from the start. Also, at some point, you'll need to migrate the content from the collaborative wiki into your authoring system as well, with some iterations thereafter. A good time to port it into your authoring system is after the content is no longer being actively reviewed and shaped in the wiki.

As you're creating content, you don't need to start from a blank page. You can use common templates to help get started and shape the material. You can find templates in the following places:

* [Conceptual topics in API docs](docconceptual.html)
* [API reference tutorial](docapis_api_reference_tutorial_overview.html)  
* [The Good Docs Project](https://thegooddocsproject.dev/)

Engineers and other product team members almost invariably have some product information on a wiki, but this information often needs to be reworked, sometimes from scratch. Avoid just lightly editing content that someone gives you, without assessing it on a deeper level.

One of your first steps is usually to get the product or code working (to some extent) yourself. This testing will usually help you understand the product and identify information gaps in the existing material. See [Testing your docs](testingdocs_overview.html) for more details here.

Push for [sample apps](docapis_sample_apps.html) or [sample code](docapis_codesamples_bestpractices.html) (often from a QA team) in order to test the code. Also, recognize that clarifying these information gaps is a primary value we add as technical communicators to the information process. If you don't understand something on a wiki that engineers wrote, find out whether your audience will understand it (often by asking field engineers or support teams to represent the customer's point of view).

## 9. Follow a review process for your docs {#follow_review_process}

It can be tempting to prematurely consider docs done when an engineer gives you his or her stamp of approval. However, engineering approval is only part of the review. In general, as you develop content, follow these five stages of review:

1. Review with the doc team (e.g., yourself)
2. Review with the product team (e.g., engineers, PMs)
3. Review with field engineers and support group (e.g., solutions architects, evangelists, field engineers, support engineers)
4. Review with your Legal group (e.g., lawyers)
5. Review with early release partners (e.g., beta partners)

The general pattern is to increase the circle of reviewers wider and wider with each iteration. It doesn't make sense to blast everyone with the first draft. Instead, before you invite a larger number of reviewers (field engineers, support, other stakeholders), you want the draft to have at least been vetted by you and the product team first. Also, before you push content through your legal process, make sure it's not still changing.

For more details, see [Processes for reviewing documentation](docapis_review_processes.html).

## 10. Create a code review for your changes {#code_review_for_changes}

Let's say you've finished the content development in your collaborative platform, everyone has reviewed it (to the extent needed at this stage), and you are ready to integrate the content into your authoring system (e.g., Jekyll, Sphinx, Gatsby, Hugo).

When you're creating content in your authoring tool, if it's a docs-as-code system that uses Git, follow a Git workflow that makes sense for your team. For example, you might choose to align with a standard branching workflow when working with docs.

Usually, you create a feature branch from your production branch and then make changes in the feature branch. Consider following the general workflow described here: [Git Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow).

When you're ready to review this version with reviewers, merge your feature branch into a beta environment, push out the build, and provide a link where reviewers can see the output.

If you're working in a docs-as-code environment, you should also create code reviews for the changes you're making. The code review can be especially helpful for writers or others who haven't been working with you closely in other spaces on the content.

For example, another writer might want to know what you're committing into the repository, or a software development manager might want to see the docs written for a feature. These people might not have been reviewing the docs in Google Docs, Quip, or Confluence earlier &mdash; maybe they only want to be looped in at the end. Code reviews provide diffs that show file changes at a granular level. They help everyone know specifically what you're changing.

Even if no one looks at your code reviews, I still recommend creating code reviews for docs for the sole purpose that they build visibility with engineering teams for the work you're doing. Each code review you create usually sends a notification (via some chatbot) to the engineering channel indicating that a new code review has been posted. This code review makes you more part of the team, more visible, and your tech credibility also increases.

You will also become more familiar with how engineering code review tools work, how to use and interpret the file diffs, the workflows of code review, and such. You can then begin to monitor changes that your engineering teams are making. By staying aware of code reviews, you can more easily track what's going on in your team. With most engineering teams, almost nothing gets pushed to production unless engineers push code into a code review system and others approve it. If you become intimately familiar with doing code reviews yourself for your docs, you will be more familiar with them when interfacing with code reviews for engineering changes.

You could ask other engineers to review and approve code reviews for docs, but if you've already gone through the review process elsewhere, there's not much point in asking for reviews again. The code review is mostly a notification that you've transitioned the content into your authoring system and published it.

## 11. Close the sprint {#close_sprint}

At the close of the sprint, the doc team re-groups and closes the doc sprint. For your sprint closure meeting, consider doing the following activities:

* Demo the work completed, perhaps talking through it at a high-level
* Engage in a retrospective discussion about what went well and what needs improvement

This meeting is a chance to re-evaluate the work and make any adjustments, course correct, get feedback, and more. During the demos, consider giving each writer 5-10 minutes to actually read through the completed work.

Items not completed during the sprint can either be reverted to the backlog or left as uncompleted in the sprint. (A single ticket can usually have more than one sprint label.)

Typically, writers embedded with product teams should also attend the Scrum meetings, demos, and retrospectives of that team. (And of course, if you're a lone writer, that product meeting would be your only sprint closure meeting.) If you want to show off your docs as part of the list of product team's demo, great. I find that it only makes sense to showcase the docs every so often when I've added something significant or noteworthy and want to call attention to it in a more visible way.

In many cases, engineers are specialized and often unaware of additions to the documentation. By occasionally providing a demo of the docs, you build awareness with engineers that you're writing and contributing docs, and they start to understand your role and what you do. (Yes, some engineers might not fully understand what your role as a technical writer is on the project!)

## 12. Share monthly reports {#share_reports}

At a monthly cadence, the doc team shares details of what they completed with all stakeholders interested in their work (outside the engineering teams). This typically involves sending updates to an email distribution list and might include your own senior leadership, field engineers, support teams, and so on.

The monthly report contains a high-level summary of the latest doc updates as well as a list of completed tickets. For significant updates (e.g., launches), you can send info immediately to the list (or relevant stakeholders) rather than waiting for the end of the month.

## Meetings summary

Here's an overview of the meetings that drive the process for managing documentation projects.

<table>
   <colgroup>
      <col width="30%" />
      <col width="70%" />
   </colgroup>
   <thead>
      <tr>
         <th markdown="span">Meeting</th>
         <th markdown="span">Cadence</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td markdown="span">Doc Project Planning</td>
         <td markdown="span">Biweekly</td>
      </tr>
      <tr>
         <td markdown="span">Doc Project Prioritization</td>
         <td markdown="span">Biweekly</td>
      </tr>
      <tr>
         <td markdown="span">Doc Project Kickoff</td>
         <td markdown="span">After a project intake ticket is completed</td>
      </tr>
      <tr>
         <td markdown="span">Sprint Planning</td>
         <td markdown="span">Biweekly</td>
      </tr>
      <tr>
         <td markdown="span">Sprint Closure</td>
         <td markdown="span">Biweekly</td>
      </tr>
   </tbody>
</table>

## Related topics

See the [Process for managing small documentation requests](docapis_managing_small_doc_requests.html).
