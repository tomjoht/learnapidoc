---
title: Measuring progress against documentation quality goals -- a practical set of criteria
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

Additionally, metrics are essential for business reasons: upper management will invariably ask you for metrics of some kind (because what you can't measure, you can't manage). Metrics will also be key if you're making the case for a promotion (upleveling) or defending your performance during annual review time. Ultimately, though, you need metrics to answer this question: Is what I'm doing making any difference?

Despite the importance of metrics, they are an elusive, holy-grail type task that almost no one in the industry has nailed down. In this section, I'll provide a strategy for making metrics more approachable by scoring docs against a rubric of best practices. Note that this isn't a tried-and-tested methodology here but rather something I am still developing and experimenting with.

* TOC
{:toc}

## Doc surveys

The first inclination many have when measuring documentation quality is to conduct surveys with users. After all, it doesn't matter what the technical writer thinks of the documentation; it's what the user thinks, and how successful the documentation was in helping the user in some task, right?

To a degree, yes, you can only really evaluate the usefulness of documentation from the perspective of a user going through the documentation with some tasks in mind. However, surveys are a difficult, inefficient way to go about measuring documentation quality for several reasons. For starters, feedback from users about documentation is often too general and unactionable to be helpful. If you do a satisfaction survey and find that only 30% of users would recommend the documentation to a friend, what can you do with that information? If surveys indicate that your docs are poor and need improvement, can you act on that? Which docs? Which parts? Are they "confusing" and "useless"? What's confusing or unhelpful about them? All of it, or just parts? Who is the audience doing the evaluating? If they're incomplete, what do they lack? Are they "unclear"? Which parts (tasks, concepts, reference, troubleshooting?) and why?

Without more specifics, the information falls flat and doesn't lead to any actionable follow-up. If you can't identify the friction points and areas that need to be fixed, what good are the survey results? They might only serve to depress the technical writers.

Surveys can be useful, but they are too hard to pull off in most situations. Most technical writers don't have direct and continued access to users to survey them on a regular basis. Even if we do surveys, you have to be skilled in the way you pose survey questions to avoid bias in the responses.

I found Yoel Strimling's article [Beyond Accuracy: What Documentation Quality Means to Readers](https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers) to be spot on in identifying the issues with surveys. He says the surveys' questions need to be specific so as to be actionable. Echoing the conclusions of other researchers, Yoel explains,

> But it is not enough for us to collect meaningful feedback about our documentation from our readers. We also need to be able to use the information we collect to take actions that will help us directly address and prioritize the issues that are important to them.

Strimling dives into research about survey formulation and lists the characteristics of a good survey. For example, questions must be "long enough to be useful, and short enough to encourage participation" (quoting Barnum). They need to be unambiguous, non-threatening, easily answerable, clear, unassuming, etc.

Overall, while surveys can be illuminating, there's a lot of variation, subjectivity, and unreliability with surveys. Sometimes people use docs as a scapegoat for other issues related to poor product design, company dissatisfaction, or other issues. But the main problem is that the survey responses are usually not actionable. Reading feedback that says docs are poor, incomplete, outdated, disorganized, etc., doesn't give writers a clear sense of what needs to be done. As a practitioner, above all else I'm focused on the practical.

Note that I'm not entirely dismissive of user satisfaction surveys, only being realistic. If the survey's purpose is to highlight the importance of docs, how critical it is for complete and accurate documentation to help users complete tasks, great. But that's a different purpose than measuring quality. A metric about the importance of docs would support resourcing for doc efforts or other goals around establishing group importance. But to measure quality, you need information that is much more specific and actionable, and that's where general surveys tend to fall flat.

Rather than sink too much time and energy into surveys as a way to measure doc effectiveness, I propose a much more concrete and realistic approach to measuring doc quality: extremely detailed rubrics. Many scholars have defined characteristics for information quality, but I haven't seen a rubric specifically focused on developer documentation. In the sections that follow, I will go into specific detail for describing information quality with developer docs.

## Rubrics

Rubrics are a scoring matrix you use to evaluate and score content based on various criteria. If documentation fulfills the criteria of the rubric, it's likely that the documentation is high quality and would rate well in user satisfaction surveys.

Many teachers use rubrics when grading student essays (e.g., a category for language, organization, reasoning, etc.). Rubrics give teachers a more objective framework of established criteria to assess content. For students, rubrics hold the promise of simplifying and demystifying the grading process. Rubrics can give students a clearer idea of what teachers are looking for, and why they earned a B instead of an A, for example.

Although rubrics are common, many teachers feel they aren't actually helpful. This is because rubric categories are usually too general and high-level, and students struggle to understand how their specific essay performed against the generalized criteria. For example, in [Does Your Rubric Punish Students?](https://makethemmasterit.com/2018/06/30/does-your-rubric-punish-students/), Jeffery Frieden explains two problems with rubrics:

> Problem #1: They lack clarity to inform students of what they did, or did not do, in their work.
>
> Problem # 2: They are designed to communicate student deficits, not student competency.

For example, if a teacher marks a student low on the reasoning category (perhaps due to some logical fallacies), the student might not understand without more specific feedback. For a "Below Average" essay, the teacher might check a box next to a Reasoning category that says, "The text provides data and evidence that attempts to back up the claim and unclearly addresses counterclaims or lacks counterclaims." But this doesn't clearly communicate to the student what the issue is or what needs to be done.

In the tech doc world, common categories in rubrics are equally high-level and general. For example, you might assess documentation against the following criteria:

* Readability
* Clarity
* Context
* Accuracy
* Organization
* Succinctness
* Completeness
* Discoverability

In Strimling's essay, he looks at previous research on the attempt to define information quality and finds the following:

<a class="noCrossRef" href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documentation-quality-definitions.png" alt="Documentation Quality Definitions part 1" /></a>

<a class="noCrossRef" href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documentation-quality-definitions.png" alt="Documentation Quality Definitions part 2" /></a>

As you can see, defining information quality is a constant theme in tech comm research, and while themes are consistent, they aren't described in the same way, and they are all general and abstract.

Stringling is troubled by the lack of a unified approach to documentation quality, by the slipperiness of terms and the ambiguity of meaning.  Ultimately, Strimling aligns with researchers Wang and Strong in their 1996 approach because of the way their research aligns with the "voice of the data customer" and because of the soundness of their framework and research. After describing about 20 data quality dimensions, they boil it down to four main criteria. Yoel explains:

> Based on their categories, Wang and Strong (1996) concluded that high-quality data must be:
> * Intrinsically good
> * Contextually appropriate for the task
> * Clearly represented
> * Accessible to the consumer

Here's more summary from Strimling's article:

<a class="noCrossRef" href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/wang-and-strong.png" alt="Wang and Strong's data quality categories and dimensions" /></a>

Building on Wang and Strong, Strimling identifies 15 different dimensions to data quality, which he weights according to the importance to users (establishing the weighting through a survey to 80 documentation users). He arrived at the following four main categories to describe documentation quality: accurate, relevant, easy to understand, accessible. He proposes that you can measure quality by answering these four questions:

> * Could you find the information you needed in the
document?
> * Was the information in the document accurate?
> * Was the information in the document relevant?
> * Was the information in the document easy to
understand?

These criteria aren't priorities from the writer but rather from users of documentation.

These four criteria seem like a solid way to evaluate documentation, but I still feel the categories are too high-level and general to actually be helpful to writers. These questions are difficult to answer from a technical writer's perspective. For example, is  the document easy to understand and relevant? Uhm, maybe. If you're the target audience using the docs and have just finished the task, then yes, you could answer these questions to assess the docs, but then this seems to return us to the problem of relying on surveys to gather information to evaluate documentation.

I think we need something more specific, concrete, actionable, and easy for a practitioner to implement without getting drawn into questions like, "Is this information clear?" Such questions are not answerable nor all that helpful. Ultimately, it's the same problem as with rubrics in school &mdash; probably accurate but not all that helpful for improving your writing.

## An extremely detailed rubric

Instead of looking at docs against these general criteria, I propose that we create a series of check boxes that, if fulfilled, should lead to all the more high-level categories of the rubric. Each of these check boxes are specific, actionable tasks you can take to implement in your documentation without relying on user surveys. To get a better sense of what I'm driving at, let's jump right into these details and continue the discussion afterwards. Here are 50 criteria to analyze docs. The criteria are in no particular order or weighting.

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

<ul class="checkLists">

{{cb}} The [overview](docapis_doc_overview.html) explains the big picture and describes the problem that the tool or service addresses.{{cb-end}}

{{cb}} The [overview](docapis_doc_overview.html) has diagram of all components and how they interact.{{cb-end}}

{{cb}} Each task has a "Prerequisites" section that explains knowledge requirements, tool requirements, essential concepts, etc., necessary for completing the task.{{cb-end}}

{{cb}} Larger tasks that span multiple topics have a [workflow map](/simplifying-complexity/macro-micro.html) (or similar mechanism) that connects the topics together.{{cb-end}}
</ul>

### Readability

<ul class="checkLists">

{{cb}} Sentences are somewhat short, paragraphs are relatively small, and subheadings are frequent. A readability score will place the content at the high-school level, not college.{{cb-end}}

{{cb}} Subheadings follow a parallel structure so they can be more easily scanned and read.{{cb-end}}

{{cb}} Unfamiliar words and jargon are defined in a glossary. Ideally, the glossary terms are linked to their glossary definitions in a systematic way. {{cb-end}}

{{cb}} The language uses active voice (where warranted) with clear subjects and verbs positioned closely together.{{cb-end}}

{{cb}} Sentences are grammatically correct and read well, without distracting the user or calling attention to the language. {{cb-end}}
</ul>

### Clarity

<ul class="checkLists">

{{cb}} Tasks are articulated through a series of specific, usually numbered steps or sections that reduce the complexity of the effort. More complex tasks might require more granular and numerous steps or sections so as to reduce the complexity. {{cb-end}}

{{cb}} In places that are particularly confusing, appropriate visuals have been added to reduce confusion. {{cb-end}}

{{cb}} If there are multiple paths to a solution, the documentation provides the simplest path (though other possibilities might be briefly mentioned). {{cb-end}}

{{cb}} Specific steps for completing tasks are described in detail rather than glossed over in general ways &mdash; unless the task is something the audience is already familiar with and does not need instructions for doing (e.g., installing an industry-standard tool). {{cb-end}}

{{cb}} Users are able to follow the documentation by themselves without relying on peer or customer support. {{cb-end}}

{{cb}} A [getting-started tutorial](docapis_doc_getting_started_section.html) is provided for users to get started in an end-to-end way with the product, producing a sample output that builds their confidence. {{cb-end}}

{{cb}} [Code samples](docapis_codesamples_bestpractices.html) (including [sample apps](docapis_sample_apps.html) if applicable) are provided as a reference implementation for the product that users can consult alongside the documentation. {{cb-end}}

{{cb}} For complex concepts, examples are provided to help clarify the concepts. {{cb-end}}
</ul>

### Accuracy

<ul class="checkLists">

{{cb}} Content has been reviewed by a subject matter expert within the past year. {{cb-end}}

{{cb}} The documentation provides a timestamp of the last time it was edited so that users can gauge how current the documentation is.{{cb-end}}

{{cb}} If the content relies on third-party tools (outside the main focus of the documentation), the sections detailing the third-party tools are checked yearly to ensure the third-party tools haven't evolved or changed, making the documentation for the primary tool or service out of date. {{cb-end}}

{{cb}} The steps in the tasks accurately lead to the results promised by the task, without missing any details. {{cb-end}}

{{cb}} Information isn't repeated in confusing, redundant, or inconsistent ways. (For example, the documentation does explain how to do a task one way in Topic A but then a different way in topic B.) If content is re-used, the re-use is usually single sourced. {{cb-end}}

{{cb}} Screenshots and other visuals are up to date with the state of the interface. {{cb-end}}

{{cb}} Links point to correct pages or are appropriately handled by redirects to equivalent pages. {{cb-end}}

{{cb}} Features that are no longer supported or which have been deprecated are clearly noted as such in the documentation. Preferably, if a feature has been deprecated, a migration path to an alternative solution is provided. {{cb-end}}

{{cb}} Code samples that can be copy and pasted actually work. {{cb-end}}

{{cb}} In code samples, placeholder text that needs to be customized is clearly indicated to the user. {{cb-end}}

{{cb}} The formatting in code samples follows standard formatting, white spacing, and other syntax for the language, and has code syntax highlighting to increase readability. {{cb-end}}


</ul>

### Organization

<ul class="checkLists">

{{cb}} The content doesn't have a lengthy FAQ with information that should have been integrated into other logical places in the document. {{cb-end}}

{{cb}} The sidebar navigation table of contents lets users take in a sense of the whole while also allowing users to expand more details as desired. {{cb-end}}

{{cb}} Each topic consolidates all necessary information about the topic in a standalone, modular way (rather than fragmenting the information into small topics that require the user to bounce around, losing context). {{cb-end}}

{{cb}} As the user navigates each topic, the sidebar navigation makes it clear where the user is in the navigation. Breadcrumbs might also help establish organizational context. {{cb-end}}

{{cb}} Content is organized primarily by task rather than solely by doc type (that is, the content follows task-based or user-based documentation organization schemes rather than organization around product features). For example, content isn't divided into different buckets labeled task, concept, reference, troubleshooting, and glossary, but rather organized by the general tasks users are performing. The exception is that reference content often consolidated on its own in an auto-generated output. {{cb-end}}
</ul>

### Succinctness

<ul class="checkLists">

{{cb}} The documentation strikes a balance between providing enough detail for users to get the job done but not including too much detail that the reader is inundated with extraneous information. {{cb-end}}

{{cb}} If the core audience is familiar with some details, the documentation doesn't explain information already understood by that audience but might link to more resources for details, or hide more elaboration in collapsed sections. The documentation's technical level is appropriate to the *target audience* but might not serve every possible audience (e.g., total newbies to a programming language might struggle with documentation intended for developers already experienced in that language). {{cb-end}}

{{cb}} A one-pager [quick reference](docapis_doc_quick_reference.html) is available for the documentation so that users can get up and running quickly. The one-pager also allows users to quickly get a sense of the essential information and tasks for the tool or service. {{cb-end}}

{{cb}} When new features are released or significant updates are made to the documentation, these changes are called out in release notes. Changes aren't simply made on the sly without calling them out to users. {{cb-end}}

</ul>

### Completeness

<ul class="checkLists">

{{cb}} Documentation is available at the same time the feature is released or made available to users, not after the fact. {{cb-end}}

{{cb}} Reference material (if applicable) follows a common structure within each topic, mostly following a request-response type structure. {{cb-end}}

{{cb}} [Error messages](docapis_doc_status_codes.html) that users can encounter are documented and discoverable through search. {{cb-end}}

{{cb}} If a task requires certain permissions, roles, or versions, or is only available in certain locales or on specific platforms, that information is noted clearly in the topic. This is similar to the Prerequisites section in a topic but focuses on higher-level requirements rather than organizational context for the information. For example, the topic might have a label that says "Admin role only," or it might have tabs that split the content into Mac, Windows, and Linux." {{cb-end}}

{{cb}} The documentation has a troubleshooting section (either standalone or included within the section/topic it relates to) that provides information on how to solve common problems and generally includes an emphasis on where things might go wrong and how to fix them. In other words, the documentation doesn't only describe the happy path. {{cb-end}}

{{cb}} The documentation doesn't just provide reference information (e.g., auto-generated API documentation) but also explains how to use the API with tutorials guiding users through common use cases. The content should address the *most common* use cases intended for the product. (Fringe use cases don't need to be documented because too much information can dilute the emphasis on the core information.) {{cb-end}}

{{cb}} If there are pitfalls or other traps, gaps, and gotchas to avoid, these are noted in the documentation (even if relayed with a positive spin) rather than hidden from the user. A section called "Known Limitations" often contains this information. The documentation doesn't lie or mislead the user but rather is transparent, honest, and helpful even if it means exposing the product's warts. {{cb-end}}
</ul>

### Discoverability

<ul class="checkLists">

{{cb}} The content is indexed in a general search engine and findable when you create searches with the product name and some key tasks. {{cb-end}}

{{cb}} The doc site has a site-specific search that lets users search within the documentation site itself. {{cb-end}}

{{cb}} Topics that are highly related have a related links section on the page (or cross references in appropriate sections) linking the sections together. {{cb-end}}

{{cb}} If content has multiple versions, the versions are called out visibly for the topic and a selector or link allows users to navigate to the other versions. {{cb-end}}

{{cb}} Where possible, links are provided to connect users from the task domain to the documentation domain. For example, on a user interface, a help button might appear next to a confusing section that helps the reader locate the documentation for that section. Or in error messages, a link or code might help users get more troubleshooting information. {{cb-end}}

{{cb}} There are entry points into the documentation in popular sites where users look for answers (for example, question-and-answer sites like Stack Overflow, knowledge bases, or other resources apart from a standard Internet search). {{cb-end}}
</ul>

## Analysis

It's hard to imagine that documentation that checks all of these boxes wouldn't also score highly with user satisfaction surveys. Can you honestly see any documentation that legitimately satisfies all of this criteria as falling short with users? And yet, to achieve the level of information quality, we didn't have to rely on constant user surveys to gather feedback. By identifying best practices for content design (specifically for API/developer documentation), we're able to increase the documentation quality in more self-sufficient, self-directed ways. (At least this is my theory.)

Now that we have a set of criteria, we can start to qualitatively measure documentation against the criteria here. To allow for some flexibility with each criteria, you can give documentation a 0, 1, or 2 points for each criteria. For example, if the overview exists and briefly describes the big picture but doesn't really describe the problem the tool solves, consider giving this a 1 instead of 2. If the overview is poor or non-existent, give it a 0. Documentation can score a total of 100 points. You can then calculate the percentage accordingly. If you add up the score and find that the documentation scores 70/100, then this is 70%, or a C-. By assigning documentation a grade that aligns with school grades, it provides a clear assessment of the documentation quality or performance.

Taking the metrics one step further, you could give your documentation a grade point average by calculating each of the individual grades. For example, suppose you have 10 sets of documentation for 10 different products. The cumulative score would simply be the average. This could give you your documentation GPA.

Granted, there are some assumptions here. Not all categories are equally important. This seems to have been one of the main goals of Strimling's research &mdash; to identify what matters most to users, not to writers. Users can probably overcome issues with readability as long as the content is accurate. Outdated content is probably next to worthless, no matter how much sample code it might contain.

In my weighting, everything has a possible score of 2 points without regards to the criteria's importance. I have omitted weighting because it's too difficult and varies too much, but you could implement a more sophisticated weighting system as long as the weighting leads to the same total. I think it's nearly impossible to impose an objective weight across each criteria because while a readability category such as "Sentences are grammatically correct and read well, without distracting the user or calling attention to the language" might seem relatively unimportant, if the content is written by a non-native speaker and is extremely hard to follow or understand, this can be just as jarring as a non-functioning code example. There are degrees to which each of these criteria can be so poorly implemented or omitted that it takes on a larger weighting. Passive voice might not be problematic in places, but convert the entire document into passive voice and see how usable it is.

## Conclusion

As you work on improving documentation, you could quantitatively say that you improved the documentation from a score of 42% to 75%, or something similar. Of course, nothing speaks so clearly as corresponding user satisfaction surveys that confirm the improvements, but at least this rubric provides a more action-oriented way of addressing more fuzzy issues that users might report in a survey (e.g., docs are incomplete, confusing), and it provides a quantitative metric for measurement.

My goal here was to find a way to assess documentation quality without relying solely on surveys, and to pin down the criteria for developer docs to a list of actionable, easy-to-understand criteria. I recognize that my list has no official research backing or data to support it &mdash; instead, these best practices come from my years in the industry and from best practices that I have observed within the realm of developer documentation. And yet, I am confident that few would object to the criteria here, and that they would be agreed upon by both readers and writers with enough common ground as to be a practical guide for improving documentation quality.
