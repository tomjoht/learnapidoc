---
title: "Following agile scrum with documentation projects"
permalink: /pubapis_agile_scrum_for_docs.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.6
section: publishingapis
path1: /publishingapis.html
---

Just as doc-as-code tools mirror tools used by software implementation teams, processes that tech writers follow can also mirror similar processes used by software implementation teams. The most common software development methodology today is agile scrum.

Although agile scrum is often loved or hated by engineers, and nearly everyone modifies their implementation of it, this method has resonance with engineers because almost all engineering groups loosely follow the same agile scrum process. It's a process they understand and can follow. When tech writers adopt a similar methodology, engineers they're working with better understand their process and workflow.

* TOC
{:toc}

## Introduction

If you're totally unfamiliar with agile scrum, consider becoming familiar with the methodology first before reading my adaptation of it below. Here are a few resources:

* [Scrum: The art of doing twice the work in half the time](https://www.audible.com/pd/Scrum-Audiobook/B00NJ3WS9G?qid=1445953702&sr=1-1&ref=a_search_c4_1_1_srTtl)

And posts on my site:

* [Increase efficiency 24 times faster when fixing errors — implications for technical writers on agile teams](https://idratherbewriting.com/2015/10/27/fix-errors-fast-scrum-agile/)
* [Tech docs and Agile: Problems with integrating tech writers into engineering Scrums (Part 1)](https://idratherbewriting.com/2017/08/04/part1_when-agile-doesnt-work-technical-writers/)
* [Tech docs and Agile: Alternatives to integrating into engineering Scrums (Part 2)](https://idratherbewriting.com/2017/08/04/part2_alternatives-to-agile-scrum-for-tech-writers/#what-about-lean)
* [How can technical writers thrive in agile environments? Event recording and details](https://idratherbewriting.com/2016/09/20/thriving-in-agile-environments-as-technical-writers)
* [How to apply agile processes to manage your life's projects](https://idratherbewriting.com/2016/01/21/apply-agile-principles-to-personal-projects/)

## Plugging into an engineering scrum versus creating your own doc scrum

The first question is whether to join an existing engineering scrum versus creating your own documentation scrum. When it makes sense, such as for large, ongoing projects where you'll be a regular contributor for a number of months or so, prioritize joining an engineering scrum rather than creating your own.

There are several advantages of joining an engineering scrum:

* You'll have better rapport with engineers. They'll know you and you'll know them. This will simplify working together and getting the information and reviews you'll need.
* You'll be in touch with the needs and priorities of the project. There won't be a huge gulf between you and the engineering team where you wonder what they're doing, and they have little clue what you're doing. Instead, you will be aligned.
* You'll also be much more accountable to keep on track if you report into a daily scrum to let others know what you accomplished the day before and what you're working on today. This more than anything helps you stay committed to the project.

Despite the advantages of integrating with engineering scrums, there are a few disadvantages as well:

* If you're a temporary resource on the project, with a work duration of a month or so only, then it probably doesn't make sense to join the project. There's too much onboarding, familiarization with their process, and more.
* If the scrum is run poorly, such that daily standups occupy 30+ minutes, and you have multiple agile scrum teams you're integrated with, this can be a real time killer that will drain your bandwidth while giving very little in return.
* Finally, most likely you'll have several projects going on at once. If you have to modify your approach to each with a different flavor of agile scrum, then you're own workflow and methodology can get to feel a bit disjointed. For example, if each scrum calculates points differently, has different sprint durations, and has other variances, this can be tiring.

## Adapting scrum for documentation projects

If it doesn't make sense to join an engineering scrum, you can create your own agile scrum process. My adapted process for managing docs following an agile scrum methodology involves the following steps:

1. Identify upcoming projects and other work. Before each sprint, review upcoming projects and other work, such as by reviewing launch calendars, intake buckets, support forums, planning roadmaps, and more. The point is not to be surprised by work that shows up on your door two weeks before the deliverables are needed.

2. Create a documentation plan for larger projects. My documentation play typically follows this [documentation plan template](https://idratherbewriting.com/blog/documentation-project-plan-template/#documentation-plan-template) but is adapted for the project at hand. This plan provides a host of details that I need to keep straight about the project. It isn't a waterfall approach but rather a list of notes about the project, such as who's who, where QA test scripts are, when release dates are planned, where key product documents are, and so on.

2. Chunk doc work into tickets. From the doc plan, create tickets (e.g., JIRA issues) related to the work. The tickets should roughly outline the major tasks for each project. The tickets don't need to be comprehensive from the start, but they should give a sense of the work required. Also, you don't have to log all the tickets from the beginning, as they will likely sit in a backlog and become outdated before you activate them.

3.  Estimate the point weighting for each ticket to communicate the complexity of the project. Every team seems to vary a bit in how they weight their tickets, but this is the approach I follow. A full-day of work is 2 points; a half day or less is 1 point. I like to chunk my tickets at no more than 5 points because I want to show progress and feel like I'm completing work. Even if it's a short fix that takes me 10 minutes, I still log a point for it. (More granular point weighting is typically discouraged in agile methodology.)

5. Assign tickets to bi-weekly sprints. Tickets should be assigned to sprints. Each sprint is two weeks. For each sprint, the total effort per writer should add up to the number of points you can burn (complete) during that two-week period. This "burn rate" is called your "velocity." This number is based on previous velocity calculations, so you won't know your velocity at first. You'll only know after several sprints. My burn rate is about 10 points per week.

6.  Stakeholders should be aware of the work assigned to tech doc sprints so they can see the progress of their projects (and have realistic expectations for when their docs will be worked on). Sprints shouldn't change up their assigned items unless a doc has higher priority. (Accommodating doc emergencies and crisis needs should be something to avoid by following this process.)

Since larger projects might have numerous tickets, you can create a master ticket that functions as an umbrella for all tech docs related to that project. This umbrella doc ticket can simply point to a folder or label that aggregates all the other tickets for that project.

6. Post bi-weekly reports. At the close of each sprint, share details of what you completed with all stakeholders interested in their work. This typically involves sending updates to email distribution lists. The reports show the tickets completed from the closed sprint and the tickets planned for the next sprint. This same info is also extrapolated for monthly WBR reports.

7. Follow the review process prior to publishing docs. Prior to publishing docs, try to follow the review process to ensure the docs meet the quality bar. This review process is similar to the sprint demo with software development, where you check in with customers to see if what you've developed is meeting their needs.

Typically you try to review documentation chunks related to the tickets you complete. If you try to review too much content at once, people often lack the bandwidth to review it.

## Review process

Related to the agile scrum methodology is the review process, since this is how you check in with your audience to see if the work you've produced meets their expectations.

My review process includes five quality checkpoints:

1. *Review with the doc team.* The doc team refers to the tech writers creating the content. Test all the instructions end-to-end ourselves, walking through each step. This might involve developing a test app or other sample code.
2. *Review with the product team.* The product team includes the engineers who coded the product and the PMs involved. They must sign off on accuracy and completeness of the docs.
3. *Review with field engineerings, business development, and support.* At this point, expand the review circle to include additional groups and stakeholders with interest in the docs. Send docs to these groups for review.
4. *Review with Legal.* If the doc has any red flags that might cause concern with legal, interface with your legal group for review.
5. *Review with early release partners.* For larger projects, you might release your docs to beta partners first prior to general availability. Generally field engineers funnel back feedback from early release partners.

If documentation doesn't go through this review to some degree, avoid publishing it. Otherwise, if your skip some of these steps, you risk pushing out poorly written docs and then rarely dedicate time to fixing the docs post-release.

## Conclusion

Without a process for managing tech docs, projects might arrive from seemingly anywhere at random times, assigned to the doc team, with little info or scope or resource allocation. As a result, tech writers can end up in crisis mode, or product owners might have unrealistic expectations about deliverables, etc. Tech writers might get exhausted or feel like they don't have the time or resources to produce the needed quality with docs.

By implementing a more formal process and methodology for managing tech doc projects (specifically, an adaptation of agile scrum), you can avoid this scenario. Additionally, managing and tracking projects this way gives each team member greater visibility and accountability towards the work.
