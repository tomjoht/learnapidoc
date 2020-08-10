---
title: Process for managing small documentation requests
permalink: /docapis_process_for_managing_small_doc_requests.html
course: "Documenting REST APIs"
weight:
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
---

With any developer portal, you'll receive not only incoming [documentation projects](docapis_process_for_managing_doc_projects.html) but also a healthy dose of small documentation requests. These requests should be managed in a similar way as doc projects but can be scaled down significantly.

* TOC
{:toc}  

## Definition of small documentation requests

Small requests by definition are tasks that exist outside of a more formal documentation project. Some examples of small requests might be to update an existing page, correct some misinformation, expand existing content with more details, review a contributor's updates, publish an SDK minor version with release notes, and so on.

These small tasks typically wouldn't be listed on your documentation planning spreadsheet. These types of documentation tasks are referred to as "small doc requests." Small requests can usually be made in a few days or less. These tasks are submitted by requesters from various groups and usually relate to products that have already been released.

## Assignment of small requests

If the request originates in one of the general groups related to a tech writer specialization, then typically that writer would automatically take on the request. For incoming requests outside of projects and divisions, the item can be assigned to an on-call writer assigned for the rotation that week, or to whomever has the most available bandwidth.

## Assigning the Request to a Sprint

During the Sprint Planning meeting, you review all the small documentation requests that have been submitted through your intake process and assign the items into the sprint as appropriate. In general, we try to include a few of these items each week in addition to the project work. The small items can help provide balance with larger projects, and should be handled with some attention even if not a major priority.

Small doc requests are weighted and prioritized similar to the weighting and prioritization of other projects. As described in [documentation projects](docapis_process_for_managing_doc_projects.html), those points are as follows:

* 1 point = half day's work or less
* 2 points = 1 days of work
* 3 points = 1.5 days of work
* 4 points = 2 days of work

If there are a lot of small tickets that each take 10 minutes, and you can't logically group them together, you can choose how you weight them. You could weight a 10 minute task as 0, or weight them as 1 if you want.

## Intake template for small requests

As with the required fields in the documentation project intake, the intake for small requests includes required fields that the requester must populate. Here's a sample intake form for small documentation requests:

<div class="docSample" markdown="block">

**General details**

* Page that needs to be updated:
* Section on the page that requires updates:
* Product owner:
* Business group:
* Team:
* Date update needs to be published:
* Related project:
* Category for this product:

**Update details**

Describe the update that needs to be made. Be as specific as possible:

**Existing resources**

* Does draft documentation already exist?
* Are there wiki pages related to the update?
* Who should review the content?
</div>

It's important that small doc request tickets be completed by the requester. This ensures that the tech writer isn't stuck hunting around for the information needed to complete the task. It also ensures commitment and allows the requester to receive updates on the status of the ticket.

## Indicating progress on the ticket

As tech writers work on the ticket and make progress, they should communicate the status, questions, or other information in the ticket ticket thread. This allows others who might not be part of email threads to see the ticket's history and work. If you manage communication through email threads, you're bound to lose track of key information, and those not included on the thread might not have all the context if added later.

## Starting work

Most small doc requests can be made directly within your authoring system rather than starting out in a collaborative platform like Google Docs or Quip. When you're creating content in your authoring system, follow a standard branching workflow. For example, create a branch from production and make your changes there.

When you're ready to review this version with reviewers, merge your feature branch into beta and provide a link to reviewers. Create a code review when it might be important for the requester to specifically see what you changed.

If the ticket doesn't require any review, you can just push the content to prod and let the reviewer know.

## Closing the ticket

When you're finished with the work, ask the requester to resolve the ticket. This indicates their acceptance of the work.

## Reporting on progress

In your monthly report listing doc work completed, all closed tickets should appear.
