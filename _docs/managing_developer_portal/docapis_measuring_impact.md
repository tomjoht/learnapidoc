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

**NOTE: This is a topic I am currently developing, so expect more changes over the next week. Also, the content is a bit rough. (Jan 3, 2021)**

As you set goals for your role or team, you'll probably want to measure your impact on documentation quality in some way. First and foremost, you need to measure your impact so that you can evaluate your progress against your goals to improve the documentation. If you don't have any data to provide feedback on your efforts, it's hard to know if you're making a difference.

Additionally, metrics are essential for business reasons: upper management will invariably ask you for metrics of some kind (because what you can't measure, you can't manage). Metrics will also be key if you're trying to make the case for leveling up or if you're defending your performance during annual review time. Ultimately, though, you need metrics to answer this question: Is what I'm doing making any difference?

Despite the importance of metrics, they are an elusive, holy-grail type task that almost no one in the industry has nailed down. In this section, I'll provide a strategy for making metrics more approachable by scoring docs against a rubric of best practices. Note that this isn't a "tried and tested" methodology here but rather something I am still developing and experimenting with.

* TOC
{:toc}

## Doc surveys

The first inclination many have when measuring documentation quality is to conduct surveys with users. After all, it doesn't matter what the technical writer thinks of the doc; it's what the user thinks, and how successful the documentation was in helping the user in some task, right?

To a degree, yes, you can only really evaluate the usefulness of documentation from the perspective of a user going through the documentation with some tasks in mind. However, surveys are a difficult, inefficient way to go about measuring documentation quality for several reasons. For starters, feedback from users about documentation is often too general and unactionable to be helpful. If you do a satisfaction survey and find that only 30% of users would recommend the documentation to a friend, what can you do with that information? So docs are kind of poor and need improvement, but which docs? What's confusing or unhelpful about them? Who is the audience doing the evaluating? If they're incomplete, what do they lack? Are they unclear? Which parts and why? Without more specifics, the information falls flat and doesn't lead to any actionable follow-up. If you can't identify the friction points and areas that need to be fixed, what good are the survey results? They might only serve to depress the technical writers.

Surveys can be useful, and perhaps they are more telling. But they are too hard to pull off in most situations. I found Yoel Strimling's article [Beyond Accuracy: What Documentation Quality Means to Readers](https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers) to be spot on in identifying the issues with surveys. Most technical writers don't have direct and continued access to users to survey them on a regular basis. Even if we do surveys, you have to be skilled in the way you pose survey questions to avoid bias in the responses. The questions need to also be specific so as to be actionable. Echoing the conclusions of other researchers, Yoel explains,

> But it is not enough for us to collect meaningful feedback about our documentation from our readers. We also need to be able to use the information we collect to take actions that will help us directly address and prioritize the issues that are important to them.

Strimling dives into research about survey formulation and lists all the characteristics of a good survey. For example, questions must be "long enough to be useful, and short enough to encourage participation" (Barnum). They need to be unambiguous, non-threatening, easily answerable, clear, unassuming, etc.

Overall, while surveys can be illuminating, there's a lot of variation, subjectivity, and unreliability with surveys. Sometimes people use docs as a scapegoat for other issues related to poor product design, company dissatisfaction, or other issues. But the main problem is that the survey responses are usually not actionable. Reading feedback that says docs are poor, incomplete, outdated, disorganized, etc., doesn't give writers a clear sense of what needs to be done. As a practitioner, above all else I'm focused on the practical.

Note that I'm not entirely dismissive of user satisfaction surveys, only being realistic. If the survey's purpose is to highlight the importance of docs, how critical it is for complete and accurate documentation to help users complete tasks, great. But that's a different purpose than measuring quality. A metric about the importance of docs would support resourcing for doc efforts or other goals around establishing group importance. But to measure quality, you need information that is much more specific and actionable, and that's where general surveys tend to fall flat.

Rather than sink too much time and energy into surveys as a way to measure doc effectiveness, I propose a much more concrete and realistic approach to measuring doc quality: extremely detailed rubrics. And while many scholars have defined characteristics for information quality, I haven't seen a rubric specifically focused on developer documentation.

## Rubrics

Rubrics are a scoring matrix you use to evaluate content based on various criteria. If documentation fulfills the criteria of the rubric, it's likely that the documentation is high quality and would rate well in user satisfaction surveys.

Many teachers use rubrics when grading student essays (e.g., a category for language, organization, reasoning, etc.). Rubrics give teachers a more objective framework of established criteria to assess content; for students, rubrics hold the promise of simplifying and demystifying the grading process. Rubrics can give students a clearer idea of what teachers are looking for, and why they earned a B instead of an A, for example.

Although rubrics are common, many teachers feel they aren't actually helpful. This is because rubric categories are usually too general and high-level, and students struggle to understand how their specific essay performed against the generalized criteria. For example, in [Does Your Rubric Punish Students?](https://makethemmasterit.com/2018/06/30/does-your-rubric-punish-students/), Jeffery Frieden explains two problems with rubrics:

> Problem #1: They lack clarity to inform students of what they did, or did not do, in their work.
>
> Problem # 2: They are designed to communicate student deficits, not student competency.

For example, if a teacher marks a student low on the reasoning category (perhaps due to some logical fallacies), the student might not understand without more specific feedback. A typical grading rubric might describe a "2 Developing" essay as "The text provides data and evidence that attempts to back up the claim and unclearly addresses counterclaims or lacks counterclaims." But this doesn't clearly communicate to the student what the issue is or what needs to be done.

In the tech doc world, common categories in rubrics are equally high-level and general. For example, you might assess documentation against the following criteria:

* Readability
* Clarity
* Context
* Accuracy
* Organization
* Succinctness
* Completeness
* Discoverability

In Strimling's essay, he looks at previous research that has attempted to define information quality and finds the following:

<a href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documentation-quality-definitions.png" alt="Documentation Quality Definitions part 1" /></a>

<a href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documentation-quality-definitions.png" alt="Documentation Quality Definitions part 2" /></a>

Stringling is troubled by the lack of a unified approach to documentation quality, by the slipperiness of terms and the ambiguity of meaning.  Ultimately, Strimling aligns with Wang and Strong's approach because of the way it aligns with the "voice of the data customer" and because of the soundness of their framework and research. After describing about 20 data quality dimensions, they boil it down to four main criteria. Yoel explains:

> Based on their categories, Wang and Strong (1996) concluded that high-quality data must be:
> * Intrinsically good
> * Contextually appropriate for the task
> * Clearly represented
> * Accessible to the consumer

Here's more summary from Strimling's article:

<a href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/wang-and-strong.png" alt="Wang and Strong's data quality categories and dimensions" /></a>

Building on Wang and Strong, Strimling identifies 15 different dimensions to data quality, which he weights according to the importance to users (establishing data through a survey to 80 documentation users). He arrived at the following four main categories to describe documentation quality: accurate, relevant, easy to understand, accessible. He proposes that you can measure quality by answering these four questions:

> * Could you find the information you needed in the
document?
> * Was the information in the document accurate?
> * Was the information in the document relevant?
> * Was the information in the document easy to
understand?

These four criteria seem like a solid way to evaluate documentation, but I still feel the categories are too high-level and general to actually be helpful to writers. These questions are difficult to answer from a technical writer's perspective. For example, is it easy to understand and relevant? Uhm, maybe. If you're the target audience using the docs and have just finished the task, then yes, you could answer these questions to assess the docs, but then this seems to return us to the problem of relying on surveys to gather information to evaluate documentation.

I think we need something more specific to developer documentation, something more concrete, actionable, and easy for a practitioner to implement without getting drawn into questions like, "Is this information clear?" Such questions are not answerable nor all that helpful. Ultimately it's the same problem as with rubrics in school &mdash; probably accurate but not all that helpful for improving your writing.

## An extremely detailed rubric

Instead of looking at docs against these general criteria, let's instead create a series of check boxes that, if fulfilled, should lead to all the more high-level categories of the rubric. To get a better sense of what I'm driving at, let's jump right into these details and continue the discussion afterwards. Here are 50 criteria to analyze docs:

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

{{cb}} The [overview](docapis_doc_overview.html) explains the big picture.{{cb-end}}

{{cb}} The [overview](docapis_doc_overview.html) explains the problem this tool/service solves.{{cb-end}}

{{cb}} The [overview](docapis_doc_overview.html) has diagram of all components and how they interact.{{cb-end}}

{{cb}} Each task has a "Prerequisites" section that explains knowledge requirements, tool requirements, essential concepts, etc., necessary for completing the task.{{cb-end}}

{{cb}} Larger tasks that span multiple topics have a workflow map (or similar mechanism) that connects the topics together.{{cb-end}}

### Readability

{{cb}} Sentences are somewhat short, paragraphs are relatively small (4-6 lines), and subheadings are frequent (every several paragraphs). A readability score will place the content at the high-school level, not college.{{cb-end}}

{{cb}} Subheadings follow a parallel structure so they can be more easily scanned and read.{{cb-end}}

{{cb}} Unfamiliar words and jargon are defined in a glossary. Ideally, the glossary terms are linked to their glossary definitions. {{cb-end}}

{{cb}} The language uses active voice (where warranted) with clear subjects and verbs positioned close together.{{cb-end}}

### Clarity

{{cb}} Tasks are articulated through a series of specific, usually numbered steps or sections that reduce the complexity of the effort. More complex tasks might require more granular and numerous steps or sections so as to reduce the complexity. {{cb-end}}

{{cb}} In places that are particularly confusing, appropriate visuals have been added to reduce confusion. {{cb-end}}

{{cb}} If there are multiple paths to a solution, the documentation provides the simplest path and might briefly mention other possibilities. {{cb-end}}

{{cb}} Specific steps for completing tasks are described in detail rather than glossed over in general ways &mdash; unless the task is something the audience is already familiar with and does not need instructions for doing (e.g., installing an industry-standard tool) {{cb-end}}

{{cb}} Users are able to follow the documentation without relying on peer or customer support. {{cb-end}}

{{cb}} A [getting-started tutorial](docapis_doc_getting_started_section.html) is provided for users to get started in an end-to-end way with the product, producing a sample output that builds their confidence. {{cb-end}}

{{cb}} [Code samples](docapis_codesamples_bestpractices.html) (including [sample apps](docapis_sample_apps.html) if applicable) are provided to help users have a reference implementation for the product that they can consult alongside the documentation; the documentation references the sample code where relevant. {{cb-end}}

{{cb}} For complex concepts, examples are provided to help clarify the concepts. The more complex the concept, more examples are potentially used. {{cb-end}}

### Accuracy

{{cb}} Content has been regularly reviewed by a subject matter expert within the past year.{{cb-end}}

{{cb}} If the content relies on third-party tools (outside the main focus of the documentation), the docs are regularly reviewed to ensure updates or evolutions to the third-party tools haven't made the docs outdated.{{cb-end}}

{{cb}} The documentation provides a timestamp of the last time it was edited so that users can gauge how current the documentation is.{{cb-end}}

{{cb}} The steps in the tasks accurately lead to the results promised by the task, without missing any details or skipping steps.{{cb-end}}

{{cb}} The documentation provides a mechanism for users to submit feedback to the documentation team.{{cb-end}}

{{cb}} Screenshots and other visuals are up to date with the state of the interface. {{cb-end}}

{{cb}} Links point to correct pages or are appropriately handled by redirects to the current pages. {{cb-end}}

{{cb}} Features that are no longer supported or which have been deprecated are clearly noted as such in the documentation. Preferably, if a feature has been deprecated, a migration path to an alternative solution is provided. {{cb-end}}

{{cb}} Code samples that can be copy and pasted have functioning code. {{cb-end}}

{{cb}} The documentation doesn't contradict itself by providing conflicting instructions that tell the user to do the same task in different ways. {{cb-end}}

### Organization

{{cb}} The content doesn't have a lengthy FAQ with information that should ideally have been integrated into other logical places in the document. {{cb-end}}

{{cb}} The sidebar navigation table of contents lets users take in a sense of the whole while also drilling into the details desired. {{cb-end}}

{{cb}} Each topic consolidates all necessary information about the topic into various subheadings (rather than fragmenting the information into small topics that require the user to bounce around, losing context). {{cb-end}}

{{cb}} Information isn't repeated in confusing or redundant ways; if content is re-used, the re-use is single sourced. {{cb-end}}

{{cb}} As the user navigates each topic, the sidebar navigation makes it clear where the user is in the navigation; breadcrumbs also help establish organizational context. {{cb-end}}

### Succinctness

{{cb}} The documentation strikes a balance between enough detail for users to get the job done but not too much detail that the reader is inundated with extraneous information. {{cb-end}}

{{cb}} If the audience is familiar with some details, the documentation doesn't explain information unnecessary to that audience but might link to more resources for details, or hide more elaboration in collapsed sections.{{cb-end}}

{{cb}} A one-pager [quick reference](docapis_doc_quick_reference.html) is available for the documentation so that users can get up and running quickly; the one-pager also allows users to quickly get a sense of the essential information and tasks for the tool or service.{{cb-end}}

{{cb}} When new features are released or significant updates are made to the documentation, these changes are called out in a release notes topic. Changes aren't simply made on the sly without calling them out to users. {{cb-end}}

### Completeness

{{cb}} Reference material (if applicable) follows a common structure within each topic, mostly following a request-response type structure. {{cb-end}}

{{cb}} [Error messages](docapis_doc_status_codes.html) that the user can encounter are documented and discoverable through search. {{cb-end}}

{{cb}} If a task requires certain permissions or versions, or is only available in certain locales or on specific platforms, that information is noted clearly in the prerequisites of the task.{{cb-end}}

{{cb}} The documentation has a troubleshooting section that provides information on how to solve common problems and generally includes an emphasis on where things might go wrong and how to fix them.{{cb-end}}

{{cb}} The documentation doesn't just provide reference information (e.g., auto-generated API documentation) but also explains how to use the API with tutorials guiding users through common use cases.{{cb-end}}

{{cb}} The content addresses the most common use cases intended for the product; lack of explanation of fringe use cases should not penalize documentation quality because too much information can dilute the emphasis on the core information.{{cb-end}}

{{cb}} If there are pitfalls or other traps, gaps, and gotchas to avoid, these are noted in the documentation (even if relayed with a positive spin) rather than hidden from the user. A section called Known Limitations often contains this information. {{cb-end}}

### Discoverability

{{cb}} The content is indexed in a general search engine and findable when you create searches with the product name and some key tasks. {{cb-end}}

{{cb}} The doc site has a site-specific search that lets users search within the site itself. {{cb-end}}

{{cb}} Topics that are related have a related links section on the page (or cross references in appropriate sections) linking the sections together. {{cb-end}}

{{cb}} If content has multiple versions, the versions are called out visibly for the topic and a selector or link allows users to navigate to other versions. {{cb-end}}

{{cb}} Where possible, links are provided to connect users from the task domain to the documentation domain. For example, on a user interface, a help button might appear next to a confusing section that helps the reader locate the documentation for that section. Or in error messages, a link or code might help users get more troubleshooting information. {{cb-end}}

{{cb}} There are entry points into the documentation in popular sites where users look for answers (e.g. Stack Overflow type sites, knowledge bases, or other resources apart from a standard Google search. {{cb-end}}

## Analysis

It's hard to imagine that documentation that checks all of these boxes wouldn't also score highly with user satisfaction surveys. Can you honestly see any documentation that legitimately satisfies all of this criteria as falling short with users? More likely it would be that technical writers lack bandwidth to do all that is necessary here.

Now that we have a set of criteria, we can start to qualitatively measure documentation against the criteria here. For example, out of the 50 criteria, how many does the documentation satisfy? If it satisfies 25 of the 50, then the documentation's grade might be 50%.

Granted, there are some assumptions here. Not all categories are equally important. This seems to have been one of the main goals of Strimling's research &mdash; to identify what matters most to users, not writers. Users can probably overcome issues with readability as long as the content is accurate. Outdated content is probably next to worthless, no matter how much sample code it might contain. I haven't thought about category weighting each of these areas, but since documentation varies a lot from product to product, weighting in a more universally applicable way seems a bit subjective.

As you work on improving documentation, you could quantitatively say that you improved the documentation from a score of 42% to 75%, or something similar. Of course, nothing speaks so clearly as corresponding user satisfaction surveys that confirm the improvements, but at least this rubric provides a more action-oriented way of addressing more fuzzy issues that users might report in a survey (e.g., docs are incomplete, confusing). My goal here is to find a way to assess documentation quality without relying on surveys, and to pin down documentation for developer docs to a list of actionable, easy-to-understand criteria. I recognize that my list has no official research backing or data to support it &mdash; instead, these best practices come from my years in the industry and from best practices that I have observed within the realm of developer documentation.
