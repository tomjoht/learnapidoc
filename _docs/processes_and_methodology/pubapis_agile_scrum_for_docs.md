---
title: "Following Scrum with documentation projects"
permalink: pubapis_agile_scrum_for_docs.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 12.12
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2019-08-23
---

Just as [doc-as-code tools](pubapis_docs_as_code.html) mirror tools used by software implementation teams, work processes that tech writers follow can also mirror processes used by software implementation teams. The most common software development methodology today is probably [Scrum](https://www.scrumguides.org/scrum-guide.html), which is a form of agile development methodology.

{: note}
For a longer, more detailed version of this workflow, see the [Managing large documentation projects](docapis_managing_doc_projects.html) and [Managing small documentation requests](docapis_managing_small_doc_requests.html).

Although Scrum is both loved and hated by engineers, and nearly everyone modifies their implementation of it, this methodology has resonance with engineers because so many engineering groups loosely follow the same Scrum process. Scrum is an extremely common approach within the software development industry. When tech writers adopt a similar methodology, engineers they're working with better understand the tech writer's processes and workflows.

{: .note}
Scrum isn't the only software development methodology engineers follow. Your engineers might follow a Kanban, Waterfall, DevOps, Rapid Application, or other approach. In fact, even if they're following Scrum, it will likely be adapted/customized/altered. The general principle here is to adopt a methodology that syncs with the way your company develops software. I've chosen to focus on Scrum here because it's the most common approach.

* TOC
{:toc}

## Introduction

If you're unfamiliar with Scrum, consider becoming familiar with the methodology first before reading my adaptation of it below. Start by reading [The Scrum Guide](https://www.scrumguides.org/scrum-guide.html). If you prefer an earlier book version, see [Scrum: The art of doing twice the work in half the time](https://www.audible.com/pd/Scrum-Audiobook/B00NJ3WS9G?qid=1445953702&sr=1-1&ref=a_search_c4_1_1_srTtl). This is the manual for the approach (it's a short book.).

## Plugging into an engineering scrum versus creating your own doc scrum

The first question is whether to join an existing engineering scrum versus creating your own documentation scrum. When it makes sense, such as for large, ongoing engineering projects where you'll be a regular contributor for a number of months or so, prioritize joining an engineering scrum rather than creating your own documentation scrum.

There are several advantages of joining an engineering scrum:

* You'll have better rapport with engineers. They'll know you and you'll know them (often through the daily standups and other meetings). This will simplify working together and getting the information and doc reviews you'll need.
* You'll be in touch with the needs and priorities of the project. There won't be a huge gulf between you and the engineering team where you'll wonder what they're doing and vice versa.
* You'll be much more accountable to keep on track as you report into a daily scrum to let others know what you accomplished the day before and what you're working on today. More than anything else, this helps you stay committed to the project.

{% include image_ad_right.html %}

Despite the advantages of integrating with engineering scrums, there are a few disadvantages as well:

* If you're a temporary resource on the project, with a work duration of a month or so only, then it probably doesn't make sense to join the engineering scrum. There's too much onboarding, familiarization with their process, and more.
* If the scrum is run poorly, such that daily standups last 30+ minutes, and you have multiple scrum teams you're integrated with, this can be a real time killer that will drain your bandwidth while giving very little in return.
* Most likely you'll have several projects going on at once. If you have to modify your approach to each with a different flavor of Scrum, then your own workflow and methodology can get to feel a bit disjointed. For example, if each scrum calculates points differently, has different sprint durations, and has other variations, this inconsistency with your methodology can be tiring.
* If the engineering team wants you to attend all their scrum meetings but won't treat you as a full-fledged member of the scrum (e.g., no tasks, no points, no demos, etc.), then consider creating your own documentation scrum instead.

## Adapting scrum for documentation projects

{% include random_ad4.html %}

If it doesn't make sense to join an engineering scrum, you can create your own scrum process. My adapted process for managing docs following an Scrum methodology involves the following steps:

1. **Identify upcoming projects and other work (sprint planning)**. Before each sprint, review upcoming projects and other work, such as by reviewing launch calendars, intake buckets, support forums, planning roadmaps, and more. Get a sense of the work and priorities. The point is not to be surprised by work that shows up on your door two weeks before the deliverables are needed.

2. **Create a documentation plan for larger projects**. My documentation plan typically follows this [documentation plan template](https://idratherbewriting.com/blog/documentation-project-plan-template/#documentation-plan-template) and is adapted for the project at hand. This plan provides a host of details that I need to keep straight about the project. It isn't a waterfall approach or a doc outline but rather a list of notes about the project, such as who's who, where QA test scripts are, expected deliverables, when release dates are planned, where key product documents are, and so on. This doc plan functions as a kind of run book for the project, with a section that lists running notes.

2. **Chunk doc work into tickets**. From the doc plan, create tickets (e.g., JIRA issues) related to the work. The tickets should roughly outline the major tasks for each project. The tickets don't need to be comprehensive from the start, but they should give a sense of the work required. Also, you don't have to log all the tickets from the beginning, as they will likely sit in a backlog and become outdated before you even start working on them. The basic idea is to simplify complex tasks by chunking up the work into small tasks.

   Since larger projects might have numerous tickets, you can create a master ticket that functions as an umbrella for all tasks related to that master ticket. This umbrella doc ticket can simply point to a folder or label that aggregates all the other tickets for that project.

3.  **Estimate the point weighting for each ticket**. Points communicate the complexity of the project. Every team seems to vary a bit in how they weight their tickets, but this is the approach I follow. A full day of work is 2 points; a half day or less is 1 point. I like to chunk my tickets at no more than 5 points because I want to show progress and feel like I'm completing work. Even if it's a short fix that takes me 10 minutes, I still log a point for it. (More granular point weighting is typically discouraged in agile methodology.) Points are important because outsiders to documentation often don't understand if a task is complicated or easy.

5. **Assign tickets to bi-weekly sprints**. Tickets should be assigned to sprints. Each sprint is usually two weeks (but can be a different duration, if you want). For each sprint, the total effort per writer should add up to the number of points you can burn (complete) during that two-week period. This point completion rate is called your "velocity." This number is based on previous velocity calculations, so you won't know your velocity at first. You'll only know after several sprints. My velocity is about 10 points per week. Calculating and communicating your velocity is important so that you know if you're staffed appropriately for the work given the release deadlines.

6. **Stakeholders should be aware of the work assigned to tech doc sprints so they can see the progress of their projects** (and have realistic expectations for when their docs will be worked on). Sprints shouldn't change up their assigned items unless a doc has higher priority. Accommodating doc emergencies and crises needs should be something to avoid by following this process.

   Maintaining the plan of the sprint is extremely difficult in a documentation scrum. Different teams might have immediate needs for quick updates. These quick updates might involve a half a day of work or less, or might even involve just fixing a typo. For these quick tasks, I add them in an ongoing, dynamic way to the sprint as needed. However, if someone approaches me with a significant doc project, I tell them that I'll assign it to the next doc sprint (which will likely be two weeks away). People can't really expect me to drop everything and work on a large doc project immediately, without some leeway, so telling them that I'll assign it to an upcoming sprint usually appeases them and gives them some reassurance knowing that their work is scheduled, even if nothing is done currently.

   More than anything, this is why the scrum process is important &mdash; it protects your current workload from becoming too frantic/heavy/scattered. You shouldn't have to exceed your current velocity because of the documentation tasks that are pending &mdash; you just push the work out into the future. I realize that releases and high severity tickets might require you to reprioritize on the fly, but this shouldn't be the norm as it is an approach that will likely exhaust you in the long run.

6. **Post bi-weekly reports at the end of each sprint**. At the close of each sprint, share details of what you completed with all stakeholders interested in their work. This typically involves sending updates to email distribution lists. The reports show the tickets completed from the closed sprint and the tickets planned for the next sprint. This same report might be repurposed into other monthly reports from your team to upper management.

   The sprint report is one of the most important tasks you can do. First, it lets people know what you've been working on. It also provides a record of your work in a way that you can show off. Others are usually fascinated to see the doc work you're doing and will be excited to see the details. Sending regular reports like this might be one of the most influential activities you can do inside the enterprise to promote your team.

7. **Follow the review process prior to publishing docs**. Prior to publishing docs, try to follow a stringent review process to ensure the docs meet your quality bar. This review process is similar to the sprint demo with software development, where you check in with customers to see if what you've developed is meeting their needs. Typically, I try to review documentation chunks related to the tickets completed. If I try to review too much content at once, people often lack the bandwidth to review it. My review process includes six quality checkpoints:

   1. *Review with the doc team.* The doc team refers to the tech writers creating the content. Test all the instructions end-to-end yourself, walking through each step. This might involve developing a test app or other sample code.
   2. *Review with the product team.* The product team includes the engineers who coded the product and the PMs involved. They should sign off on the accuracy and completeness of the docs.
   3. *Review with field engineerings, business development, and support.* Expand the review circle to include additional groups and stakeholders with interest in the docs. Send docs to these groups for review and then meet with them to gather their feedback.

      {: .tip}
      Some groups refer to read the documentation for the first 20 minutes of a meeting and then provide their review, completing the whole read and review task during the meeting itself.

   4. *Review with Legal.* If the doc has any red flags that might cause concern with Legal, interface with your Legal group for review.
   5. *Review with early release partners.* For larger projects, you might release your docs to beta partners first prior to general availability. Generally, field engineers funnel back feedback from early release partners.

   If documentation doesn't go through this review to some degree, avoid publishing it. Otherwise, if you skip some of these steps, you risk pushing out poorly written docs. Again, the review process aligns with agile methodology in that it provides the check-in with your customers to make sure you're on the right track. This review process is where your customers are inspecting your work and providing course corrections as needed.

   6.  *Collect feedback post-release*. After you publish the documentation, embed a Feedback button directly in your docs to collect additional feedback from customers in an ongoing way. This incoming feedback trickles in and might not contain significant or actionable information, but customers should have some way of relaying their feedback. As a tech writer, I want to know if there is some major issue with docs so that I can fix them.

{% include random_ad3.html %}

## Conclusion

Without a process for managing tech docs, projects might arrive from seemingly anywhere at random times, assigned to the doc team, with little info or scope or resource allocation. As a result, tech writers can end up in crisis mode, or product owners might have unrealistic expectations about deliverables, etc. Tech writers might get exhausted or feel like they don't have the time or resources to produce the needed quality with docs.

{% include random_ad2.html %}

By implementing a more formal process and methodology for managing tech doc projects (specifically, an adaptation of Scrum), you can avoid this scenario. Additionally, managing and tracking projects this way gives each team member greater visibility and accountability towards the work of documentation.

{% include ads.html %}

## Additional resources

See these posts on my site for more reading about Scrum and tech docs:

* [Increase efficiency 24 times faster when fixing errors — implications for technical writers on agile teams](https://idratherbewriting.com/2015/10/27/fix-errors-fast-scrum-agile/)
* [Tech docs and Agile: Problems with integrating tech writers into engineering scrums (Part 1)](https://idratherbewriting.com/2017/08/04/part1_when-agile-doesnt-work-technical-writers/)
* [Tech docs and Agile: Alternatives to integrating into engineering scrums (Part 2)](https://idratherbewriting.com/2017/08/04/part2_alternatives-to-agile-scrum-for-tech-writers/#what-about-lean)
* [How can technical writers thrive in agile environments? Event recording and details](https://idratherbewriting.com/2016/09/20/thriving-in-agile-environments-as-technical-writers)
* [How to apply agile processes to manage your life's projects](https://idratherbewriting.com/2016/01/21/apply-agile-principles-to-personal-projects/)
