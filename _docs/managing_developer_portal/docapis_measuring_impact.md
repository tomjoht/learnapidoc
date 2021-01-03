---
title: Measuring progress against documentation quality goals
permalink: /docapis_measuring_impact.html
course: "Documenting REST APIs"
weight: 12.92
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
last-modified:
---

As you set goals for your role, you'll probably want to measure your impact and results in some way. Primarily, you need to measure your impact so that you can evaluate your progress against your goals. If you don't have any data to provide feedback on your efforts, it's hard to know if you're making a difference.

Additionally, metrics are essential for business reasons: upper management will invariably ask you for metrics of some kind (because what you can't measure, you can't manage). Metrics will be key if you're trying to make the case for leveling up or if you're defending your performance during annual review time. Ultimately, though, you need metrics to answer this question: Is what I'm doing making any difference?

Despite the importance of metrics, they are an elusive, holy grail type task that almost no one in the industry has nailed down. In this section, I'll provide a strategy for making metrics more approachable by scoring docs against a rubric of best practices.

* TOC
{:toc}

## Doc surveys

Let's start with doc surveys and why they're both important and yet problematic. Suppose you do an extensive survey with your audience to get their feedback on docs, and the results grade the docs at something equivalent to a C+. While this information seems useful, it's not that actionable. Which docs are problematic? Your company might have dozens of different doc sets for various products. Which audience is doing the evaluating int he survey? What areas are problematic in the docs? How would you go about identifying friction points and making a plan for improvement? If the feedback is just general and applicable to docs as a whole across the company, this information is likely not actionable.

For example, suppose you made a goal to improve the user satisfaction of docs, and a year later, you do a similar audience survey to assess your docs. This time, your overall grade is equivalent to a C. How do you know if the difference is due to a changed audience, or to shifting usage of different docs, or to other factors, like new employees? Overall, while surveys can be illuminating, there's a lot of variation, subjectivity, and unreliability with surveys. Sometimes people use docs as a scapegoat for other issues related to poor product design, company dissatisfaction, or other issues.

I'm not entirely dismissive of user satisfaction surveys, only being realistic. If the survey's purpose is to highlight the importance of docs, how critical it is for complete and accurate documentation to help users complete tasks, great. But that's a different purpose than measuring quality. A metric about the importance of docs would support resourcing for doc efforts or other goals around establishing group importance. But to measure quality, you need information that is much more specific and actionable, and that's where general surveys tend to fall flat.

Rather than sink too much time and energy into surveys as a way to measure doc effectiveness, I propose a much more concrete and realistic approach to measuring doc quality.

## Rubrics

Rather than relying on surveys, consider measuring your documentation against an extremely detailed rubric. Rubrics are scoring matrices you use to look at content based on various criteria. If documentation fulfills the criteria of the rubric, it's likely that the documentation is high quality and would rate well in user satisfaction surveys.

Many teachers use rubrics when grading student essays (e.g., a category for language, organization, reasoning, etc.). Rubrics give teachers a more objective framework of established criteria to assess content; for students, rubrics hold the promise of simplifying and demystifying the grading process. Rubrics can give students a clearer idea of what teachers are looking for, and why they earned a B instead of an A, for example.

Although rubrics are common, many teachers feel they aren't actually helpful. This is because rubric categories are usually too general and high-level, and students struggle to understand how their specific essay performed against the generalized criteria. For example, if a teacher marks a student low on the reasoning category (perhaps due to some logical fallacies), the student might not understand without more specific feedback.

In the tech doc world, common categories in rubrics are equally high-level and general. For example, you might assess documentation against the following criteria:

* Context
* Readability
* Clarity
* Accuracy
* Organization
* Succinctness
* Completeness
* Discoverability

However, if you were to try to rate documentation according to how it meets each of these criteria, it would be tough. How do you know if the documentation is complete? How do you know if it's organized well? These general categories are too high-level to be meaningful and useful to assessing documentation. To assess docs against any of these criteria, we need much more concrete and actionable details for each of the criteria.

## An extremely detailed rubric

Instead of looking at docs against these general criteria, let's instead create a series of check boxes that, if fulfilled, should lead to all the more high-level categories or the rubric. Here are 35 different criteria to analyze docs:

<style>
li.checkboxListType {
  list-style-type: none;
  margin-left: 22px;
  text-indent: -31px;
}
input[type=checkbox] {
  margin-right: 10px;
}
</style>

{% assign cb = "<li class='checkboxListType' markdown='span'><input type='checkbox'>" %}
{% assign cb-end = "</li>" %}

### Context

{{cb}} The [overview](docapis_doc_overview.html) explains big picture.{{cb-end}}

{{cb}} The [overview](docapis_doc_overview.html) that explains the problem this tool/service solves.{{cb-end}}

{{cb}} The [overview](docapis_doc_overview.html) has diagram of all components and how they interact.{{cb-end}}

{{cb}} Each task has a "Prerequisites" section that explains knowledge requirements, tool requirements, essential concepts, etc., necessary for completing the task.{{cb-end}}

{{cb}} Larger tasks that span multiple topics have a workflow map that connects the topics together.{{cb-end}}

### Readability

{{cb}} Sentences are somewhat short, paragraphs are relatively small (4-6 lines), and subheadings are frequent (every several paragraphs).{{cb-end}}

{{cb}} Subheadings follow a parallel structure so they can be more easily scanned and read.{{cb-end}}

{{cb}} Unfamiliar words and jargon are defined in a glossary.{{cb-end}}

### Clarity

{{cb}} Tasks are articulated through a series of specific, usually numbered steps or sections that reduce the complexity of the effort.{{cb-end}}

{{cb}} In places that are particularly confusing, appropriate visuals have been added to reduce confusion.{{cb-end}}

{{cb}} Users are able to follow the documentation without relying on peer or customer support.{{cb-end}}

{{cb}} A [getting-started tutorial](docapis_doc_getting_started_section.html) allows a user to get started in an end-to-end way with the product, producing a sample output.{{cb-end}}

{{cb}} [Code samples](docapis_codesamples_bestpractices.html) (including [sample apps](docapis_sample_apps.html)) are provided to help users have a reference implementation for the product that they can consult alongside the documentation; the documentation references the sample code where relevant.{{cb-end}}

### Accuracy

{{cb}} Content has been regularly reviewed by a subject matter expert within the past year.{{cb-end}}

{{cb}} If the content relies on third-party tools (outside the main focus of the documentation), the docs are regularly reviewed to ensure updates or evolutions to the third-party tools haven't made the docs outdated.{{cb-end}}

{{cb}} The documentation provides a timestamp of the last time it was edited so that users can gauge how current the documentation is.{{cb-end}}

{{cb}} The steps in the tasks accurately lead to the results promised by the task, without missing any details or skipping steps.{{cb-end}}

{{cb}} The language uses active voice with clear subjects and verbs positioned close together.{{cb-end}}

{{cb}} The documentation provides a mechanism for users to submit feedback to the documentation team.{{cb-end}}


### Organization

{{cb}} The content doesn't have a lengthy FAQ with information that should ideally have been integrated into other logical places in the document.{{cb-end}}

{{cb}} The sidebar navigation table of contents lets users take in a sense of the whole while also drilling into the details desired.{{cb-end}}

{{cb}} Each topic consolidates all necessary information about the topic into various subheadings (rather than fragmenting the information into small topics that require the user to bounce around, losing context).{{cb-end}}

{{cb}} Information isn't repeated in confusing ways or redundant; if content is re-used, the re-use is single sourced.{{cb-end}}

### Succinctness

{{cb}} Content hides extra, potentially unnecessary detail in expand/collapse sections or other non-essential pages.{{cb-end}}

{{cb}} If the audience is familiar with some details, the documentation doesn't explain information unnecessary to that audience but might link to more resources for details, or hide more elaboration in collapsed sections.{{cb-end}}

{{cb}} A one-pager [quick reference](docapis_doc_quick_reference.html) is available for the documentation so that advanced users can get up and running quickly, and so that all users can quickly get a sense of the essential information and tasks for the tool or service.{{cb-end}}

### Completeness

{{cb}} Reference material (if applicable) follows a common structure within each topic. {{cb-end}}

{{cb}} [Error messages](docapis_doc_status_codes.html) that the user can encounter are documented and discoverable through search.{{cb-end}}

{{cb}} If a task requires certain permissions or versions, or is only available in certain locales or on specific platforms, that information is noted clearly in the prerequisites of the task.{{cb-end}}

{{cb}} The documentation has a troubleshooting section that provides information on how to solve common problems and generally includes an emphasis on where things might go wrong and how to fix them.{{cb-end}}

{{cb}} The documentation doesn't just provide reference information (e.g., auto-generated API documentation) but also explains how to use the API with tutorials guiding users through common use cases.{{cb-end}}

{{cb}} The content addresses the most common use cases intended for the product; lack of explanation of fringe use cases should not penalize documentation quality because too much information can dilute the emphasis on the core information.{{cb-end}}

### Discoverability

{{cb}} The content is indexed in a general search engine and findable when you create searches with the product name and some key tasks.{{cb-end}}

{{cb}} The doc site has a site-specific search that lets users search within the site itself.{{cb-end}}

{{cb}} Topics that are related have a related links section on the page (or cross references in appropriate sections) linking the sections together.{{cb-end}}

## Analysis

It's hard to imagine that documentation that checks all of these boxes wouldn't also score highly with user satisfaction surveys. Can you honestly see any documentation that legitimately satisfies all of this criteria as falling short with users? More likely it would be that technical writers lack bandwidth to do all that is necessary here.

Now that we have a set of criteria, we can start to qualitatively measure documentation against the criteria here. For example, out of the 35 criteria, how many does the documentation satisfy? If it satisfies 15 of the 35, then the documentation's grade might be 42%.

Granted, there are some assumptions here. Not all rubric categories are equally important. Users can probably overcome issues with readability as long as the content is accurate. Outdated content is probably next to worthless, no matter how much sample code it might contain. I haven't thought about category weighting each of these areas, but it might make sense to do so. It's a lot easier to add a glossary than a sample app, for example. But since documentation varies a lot from product to product, weighting in a more universally applicable way seems a bit naive.

As you work on improving documentation, you could quantitatively say that you improved the documentation from a score of 42% to 75%, or something similar. Of course, nothing speaks so clearly as corresponding user satisfaction surveys that confirm the improvements, but at least this rubric provides a more action-oriented way of addressing more fuzzy issues that users might report in a survey (e.g., docs are incomplete, confusing).
