---
title: Managing small documentation requests
permalink: docapis_managing_small_doc_requests.html
course: "Documenting REST APIs"
weight: 12.3
sidebar: docapis
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2021-02-17
---

With any developer portal, you'll receive not only incoming [documentation projects](docapis_managing_doc_projects.html) but also a healthy dose of small documentation requests too. These small requests can be managed in a similar way as documentation projects but can also be scaled down with a simpler workflow. Even so, small requests have unique challenges when it comes to prioritization, weighting, and cadence.

* TOC
{:toc}  

## Definition of small documentation requests

Small requests by definition are tasks that exist outside of a more formal documentation project. Some examples of small requests might be to update an existing page, correct some misinformation, expand existing content with more details, review a contributor's updates, document a new option on a screen, publish an SDK minor version with release notes, and so on.

Small doc requests can usually be made in a few days or less. These tasks are submitted by requesters from various groups and usually relate to products that have already been released. These small tasks typically wouldn't be included in a list of documentation projects.

## Assignment of small requests

Who handles these small doc requests? If the request originates in one of the general groups related to a tech writer's specialization, then typically that writer would automatically take on the request. For incoming requests outside of projects and divisions, the item can be assigned to an on-call writer assigned for the rotation that week, or to whomever has the most available bandwidth. This can be determined during your sprint planning.

With engineering teams, there are often engineers who have available bandwidth and will voluntarily take on additional requests. Sometimes with writing teams, fewer people willingly step up to take on requests. In that case, the on-call might be more appropriate.

## Assigning the request to a sprint

During the sprint planning meeting, you review all the small documentation requests that have been submitted through your intake process and assign the items into the sprint as appropriate. In general, try to include a few of these items each week in addition to the project work. The small items can help provide balance with larger projects (like a break from some longer, more in-depth task you might be working on), and should be handled with some regularity even if not a major priority. For example, fixing a broken link might not align with a strategic priority for your organization, but it doesn't mean the task should be moved last on your to-do list.

Small doc requests can be prioritized and weighted similar to other projects (e.g., low, medium, or high priority). As described in [documentation projects](docapis_managing_doc_projects.html), the weighting can be as follows:

* 1 point = 0.5 days work or less
* 2 points = 1 day of work
* 3 points = 1.5 days of work
* 4 points = 2 days of work

If there are a lot of small tickets that each takes 10 minutes, and you can't logically group them together, you can choose how you weight them. This where a more exact weighting system breaks down &mdash; it probably makes sense for disparate tasks to remain in separate tickets, but since many ticketing systems usually require whole number weightings, how do you represent a 10-minute task? You don't want to use 0 because the task requires *some* work, but if you use 1 point, wouldn't this distort the actual effort? Ten minutes of work is hardly the same as another task that takes half a day.

It depends on the purpose of the weighting. If the purpose of weighting is to evaluate the team's productivity, recognize that there can be a danger in using these rough point estimates to assess the amount of work completed. The way you chunk up tasks and weight them can easily be distorted. For example, suppose a writer breaks down tasks for a project in an extremely granular way, and then weights each task as 1 point. The writer might appear to be finishing a ton of work when in reality the writer just manipulated the tracking system to appear to be doing more work than was actually done. If your velocity and weighting can so easily be distorted, it might not mean a whole lot to others.

{% include image_ad_right.html %}

At the same time, best practices for chunking work and providing time estimates usually don't recommend such granular, hourly chunks of time. Perhaps one solution might be to attach a code review to every ticket so that others can see exactly how much text was changed. However, this could also short-sell the work. Suppose the edit required tracking down a SME who had more knowledge about a particular value or setting that needed clarification. Maybe the file diff is minimal but the effort to get the information was large. Conversely, suppose a writer receives a large chunk of code or other content from an engineer that is production-ready, and all the writer needs to do is paste it into an existing page.

I don't have a good solution for this situation. I think at the end of the day, if managers evaluate writers based on the points they tackle each week, writers will trend towards more granular chunking and points to show more work. As such, weighting and work assessments probably shouldn't be used to assess writer productivity. But if the weighting doesn't factor into any productivity metric, it probably won't be abused.

## Intake template for small requests

As with the required fields in the documentation project intake, the intake for small requests should include required fields that the requester must populate. Here's a sample intake form for small documentation requests:

<div class="docSample" markdown="block">

**General details**

* Page that needs to be updated:
* Section on the page that requires updates:
* Product owner:
* Business group:
* Related project:
* Team:
* Date update needs to be published:
* Related project:
* Category for this product:

**Update details**

Describe the update that needs to be made. Be as specific as possible:

**Existing resources**

* Does draft documentation already exist?
* Are there wiki pages related to the update?
* Any related design, business docs, or other information?
* Who should review the content?
</div>

You can see that these fields also ask for existing business documents, informational wiki pages, or related projects. This is because sometimes releases might have a lot of complexity on the backend but might not require much documentation work. It's not always easy to draw the line between documentation projects and small documentation requests based on whether the update originates from a larger project or not. This isn't an exact science. Requesters will probably use the intake form that makes more sense to them.

Think about the different kinds of doc requests you receive, and then customize an intake form for each type of document. For example, suppose you receive requests for these doc types:

* Legal documents
* Blog posts
* UX microcopy
* Screencasts
* Announcements

Create a custom intake form that solicits the information you need for each of these different doc types. Advertise your intake process on your team wiki page and point users to it when they ask for docs.

{% include ads.html %}

It's important that small doc request tickets be completed by the requester. This ensures that the tech writer isn't stuck digging around for the information needed to complete the task. It also ensures commitment and allows the requester to receive updates on the status of the ticket. The ticket provides a channel for communication not only for the requester but for anyone else following the ticket, and also provides a record of the work.

It's easy for someone to request an update via email or chat, and perhaps asking the requester to formalize the request by submitting a ticket might be extra overhead &mdash; wouldn't it be easier for you to just copy/paste the email thread into the ticket, rather than making a request to the person to locate your intake page, create a ticket, and then populate the right information in the right way?

Here is where the intake fields can do some work. Email threads have scattered information. As part of the formalization of the work, you usually organize the information in a more structured, logical way. Rather than doing the work of restructuring this information to specify what page needs to be updated, what updates need to be made, who should review the updates, when they should be published, etc., you can ask the requester to do this. This can reduce your own workload. When the task is made more formal and structured in a ticket, it will be easier for other writers who aren't part of the email thread to work on it. In fact, if you can specialize different intake forms for different types of requests, you can more acutely focus your questions around the information needed for that task.

## Requests should come through product teams {#requester}

In your small intake process, avoid allowing anyone to make a doc request. Instead, the ones making requests should be product managers (or those who own the products related to the docs).

To understand why, consider this scenario. Suppose your DevRel engineers (the ones who work closely with partners on implementations) make a doc request for more information about some feature. They don't have the information themselves, but they they've noticed that the lack of information is a partner friction, so they file a doc request. It sounds like a good idea, right, because you want to drive your doc priorities based on partner-facing groups? However, the problem is that DevRel groups (or others) usually don't have the information needed to make the request actionable.

If anyone can make a request for information they wish would be included in the docs, this can leave technical writers trying to chase down the information, knocking on the doors of different groups without getting much traction. This puts all the burden on technical writers for information collection and SME identification, and none on the requester. This is the wrong approach.

It's much better to direct DevRel groups to make documentation requests to product teams. Then product teams should formally go through your intake process. This might seem like an extra hop, but it results in a world of difference. When the product team files a request for documentation help, you've got them at your disposal. They can provide the information that you actually need to write the documentation. The PM can allocate bandwidth to the collection and sharing of this information so you can complete the request. They will also review the docs.

Without this backing of the product team, the DevRel request places all the pressure on the technical writer to figure out who has the info, what the details of the info are, and more. In most organizations, the DevRel groups are much stronger than the documentation groups because DevRel groups work closely with key partners. Hence DevRel can place much greater pressure on product teams to act, while product teams might simply disregard requests from technical writers.

## Indicating progress on the ticket

As tech writers work on the ticket and make progress, they communicate the status, questions, or other information in the ticket thread. This allows others who might not be part of email threads to see the ticket's history and work.

In contrast, if you manage communication through email threads, you're bound to lose track of key information, and those not included on the thread might not have all the context if added later. Email threads expand and contract based on the Cc list someone decides to use &mdash; sometimes adding people, or removing them, etc.

Suppose a thread goes a dozen rounds and multiple Cc lists. By the time the thread settles down, it's much harder to trace back through an email thread's history than a ticket's history. In contrast, a ticket history shows details about dates for each response, profile information that lets readers quickly click names to see who's who, and status information about the ticket.

## Starting work

Most small doc requests can be made directly within your authoring system rather than starting out in a collaborative platform like Google Docs or Quip. When you're creating content in your authoring system, you might choose to follow a standard branching workflow (or whatever Git workflow you've decided to implement in your group). Usually, create a branch from production and make your changes in the branch.

{% include random_ad3.html %}

When you're ready to review this version with reviewers, merge your feature branch into beta, push the build into a beta environment of some kind, and provide a link to reviewers. Also, create a code review so the requester can see specifically what you changed. I find that code reviews provide more granular detail if people want it, though I'm somewhat mixed about whether code reviews are useful for more extensive updates. I personally like that code reviews objectively demonstrate the changes made so that readers get a sense of the effort involved.

## Closing the ticket

When you're finished with the work, ask the requester to resolve the ticket. This indicates their acceptance of the work. Then make the change live by merging your feature branch into production. Afterward, delete the feature branch.

If the ticket doesn't require any review (e.g., fixing a broken link), you can just push the content to prod and let the reviewer know.

## Reporting on progress

In your monthly report listing doc work completed, consider listing all closed tickets. You might decide to put the small doc requests into a section at the end (e.g., "Small Doc Requests Resolved") so that readers can focus on the important changes. If you simply list all tickets in order of resolution, it might juxtapose trivial changes alongside more substantial efforts and dilute your communication.

{% include random_ad2.html %}

In the Small Doc Requests Resolved section, you might also provide a link to your intake form for these types of requests. This helps others know your process for managing small doc requests. The next time they have a request, they'll know what the process is and what to expect.

{% include random_ad4.html %}
