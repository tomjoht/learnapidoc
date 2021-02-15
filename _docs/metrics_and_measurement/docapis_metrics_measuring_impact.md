---
title: Measuring progress against documentation quality goals
permalink: /docapis_measuring_impact.html
course: "Documenting REST APIs"
weight: 13.1
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-02-15

---

As you set goals for your role or team, you might want to measure your impact on documentation quality in some way. The main reason for measuring your impact should be to evaluate your progress against documentation improvement goals. If you don't have any data to provide feedback on your efforts, it's hard to know if you're making a difference.

Also, metrics are essential for business reasons: upper management will invariably ask you for metrics of some kind (because what you can't measure, you can't manage). Metrics will also be key if you're making the case for a promotion (leveling up) or defending your performance during annual review time. Ultimately, though, you need metrics to answer this question: Is what I'm doing making a difference?

Despite the importance of metrics about documentation quality, they are an elusive, holy-grail type task that almost no one in the industry has nailed down. How do you know if your docs are any good? Few can answer this question in any objective way. In this section, I'll provide a strategy for making metrics more approachable by scoring docs against a rubric of best practices.

{: .note}
This isn't a tried-and-tested methodology here but rather something I am still developing and experimenting with. As such, I value your feedback.

* TOC
{:toc}

## The problem with doc surveys

The first inclination many have when measuring documentation quality (how good your docs are) is to conduct surveys with users. After all, it doesn't matter what the technical writer thinks of the documentation; it's what the user thinks, and how successful the documentation was in helping the user in some task, right?

To a degree, yes, you can only really evaluate the usefulness of documentation from the perspective of a user going through the documentation with some tasks in mind. However, surveys are a difficult, inefficient way to go about measuring documentation quality for several reasons:

* Survey responses aren't actionable
* Users aren't regularly available for surveys
* Survey questions are difficult to formulate
* Users are sometimes unreliable

### Survey responses aren't actionable

First, feedback from users about documentation is often too general and unactionable to be helpful. If you do a satisfaction survey and find that only 30% of users would recommend the documentation to a friend, what can you do with that information? If surveys indicate that your docs are poor and need improvement, can you act on that? Which docs? Which parts need improvement? Are they "confusing and useless"? What's confusing or unhelpful about them? All of the docs, or just parts? Is the feedback a general impression overall, or focused on a specific user scenario from a single documentation topic?

Without more specifics, the information falls flat and doesn't lead to any actionable follow-up. If you can't identify the friction points and areas that need to be fixed, what good are the survey results? They might only serve to depress the technical writers.

In looking into ways to measure information quality, I found Yoel Strimling's article [Beyond Accuracy: What Documentation Quality Means to Readers](https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers) to be spot on in identifying the issues with surveys. Strimling says that questions in all types of feedback (whether asked in surveys, focus groups, face-to-face interactions, or other) need to be specific to be actionable. Echoing the conclusions of other researchers, Yoel explains:

> But it is not enough for us to collect meaningful feedback about our documentation from our readers. We also need to be able to use the information we collect to take actions that will help us directly address and prioritize the issues that are important to them.

In other words, surveys alone, without actionable feedback, aren't enough. A user might provide general feedback, saying that the docs felt like they needed polish, or that they had trouble understanding/following them, or that they seemed incomplete. But without more specifics, this feedback isn't all that actionable.

### Users aren't available for surveys

Another problem with surveys is that most technical writers don't have direct and continued access to users to survey them on a regular basis. I wrote about the challenge of [reconstructing the absent user](/simplifying-complexity/reconstructing-the-absent-user.html) in my series on Simplifying Complexity. It's unfortunate but the norm that technical writers have very little contact with their target users &mdash; not just access to users for surveys, but access to users through support interactions, training, presales, onboarding, or other situations.

### Unbiased survey questions are difficult to formulate

Let's say you do have access to users, another challenge with surveys is how to formulate the questions. You have to be skilled in the way you pose survey questions to avoid bias in the responses. Strimling dives into research about survey formulation and lists the characteristics of a good survey. For example, questions must be "long enough to be useful, and short enough to encourage participation" (quoting Barnum). They need to be unambiguous, non-threatening, easily answerable, clear, unassuming, etc. Overall, survey questions are hard to formulate.

If you're a regular reader of my blog, you've probably seen a lot of small surveys I include with each article. I've learned that formulating survey questions is an art, and questions need to be simple, unambiguous, and easy to answer. At the same time, you have to consider what the actual goals of the survey are and what you plan to do with the feedback. Surveys are hard to do right.

### Users are sometimes unreliable

Finally, another problem with surveys is audience unreliability. We base the value of our docs around the user's perspective, but what if users are unreliable or unhelpful? There's a lot of variation, subjectivity, and unreliability with survey responses. Sometimes people use docs as a scapegoat for other issues related to poor product design, company dissatisfaction, or other frustrations. Often when I'm taking a survey, I base my responses on one part of the product or docs that I've been using, not on the whole. One bad topic can taint the user's response about the entire docs, distorting the quality measure.

Additionally, people who respond negatively in satisfaction surveys might not be your target audience. You might have been writing for an audience already familiar with a certain framework, but your survey might include someone new to the framework who found the docs worthless. Other times, users might respond so hastily that their responses are cryptic and vague.

### What can replace surveys?

Note that I'm not entirely dismissive of surveys &mdash; I'm only being realistic. They have rarely worked for me. If the survey's purpose is to highlight the importance of documentation in general, how critical it is for complete and accurate documentation to help users complete tasks, great. But that's a different purpose than measuring documentation quality. A metric about the importance of docs would support resourcing for doc efforts or other goals for establishing tech comm's importance. But to make improvements with quality, you need information that is much more specific and actionable, and that's where general surveys tend to fall short.

Rather than sink too much time and energy into surveys as the only way to measure doc effectiveness, I propose a much more concrete and realistic approach to measuring doc quality: detailed rubrics to assess docs. The rubric must take the general qualities of measurement (e.g., clarity, accuracy, relevance, findability, etc.) and make concrete what these abstract qualities mean and how they can be implemented. Also, while many scholars have defined characteristics for information quality, I've yet to see a rubric specifically focused on developer documentation. In the sections that follow, I'll go into specific detail for describing information quality with developer docs.

## Rubrics

Rubrics are a scoring matrix (or checklist) that you use to evaluate and score content based on various criteria. If documentation fulfills the criteria of the rubric, it's likely the documentation is high quality and would rate well in user satisfaction surveys. If positive user satisfaction surveys don't follow from fulfilling the rubric's criteria, the rubric is likely misguided.

Many teachers use rubrics when grading student essays (e.g., a category for language, organization, reasoning, etc.). Rubrics give teachers a more objective framework of established criteria to assess and score content. For students, rubrics hold the promise of simplifying and demystifying the grading process. Rubrics can give students a clearer idea of what teachers are looking for, and why they earned a B instead of an A, for example.

Although rubrics are common, many teachers feel they aren't actually helpful. This is because rubric categories are usually too general and high-level, and students struggle to understand how their specific essay performed against the generalized criteria. For example, in [Does Your Rubric Punish Students?](https://makethemmasterit.com/2018/06/30/does-your-rubric-punish-students/), Jeffery Frieden explains two problems with rubrics:

> Problem #1: They lack clarity to inform students of what they did, or did not do, in their work.
>
> Problem # 2: They are designed to communicate student deficits, not student competency.

For example, if a teacher marks a student low on the reasoning category (perhaps due to some logical fallacies), the student might not understand without more specific feedback, Frieden explains. For a "Below Average" essay, the teacher might check a box next to a Reasoning category that says, "The text provides data and evidence that attempts to back up the claim and unclearly addresses counterclaims or lacks counterclaims." But this doesn't clearly communicate to the student what the issue is or what needs to be done. Instead, the rubric becomes an easy way to justify a deficit without actually helping the student improve their writing.

In the tech doc world, common categories in rubrics are equally high-level and general. For example, you might assess documentation against the following criteria:

* Readability
* Clarity
* Context
* Accuracy
* Organization
* Succinctness
* Completeness
* Findability

In Strimling's essay, he looks at previous research on the attempt to define information quality and finds a wide range of different quality definitions:

<a class="noCrossRef" href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documentation-quality-definitions.png" alt="Documentation Quality Definitions part 1" /></a>

<a class="noCrossRef" href="https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documentation-quality-definitions-2.png" alt="Documentation Quality Definitions part 2" /></a>

As you can see, defining information quality is a constant theme in tech comm research. While the characteristics are somewhat similar, they aren't described in the same way, and they are mostly general and abstract.

Strimling is troubled by the lack of a unified approach to documentation quality, by the slipperiness of terms and lack of consistency. He asks, which of these qualities matter most to users?

Strimling aligns with researchers Richard Wang and Diane Strong (1996) because of the way their research aligns with the "voice of the data customer" and because of the soundness of their framework and research. Wang and Strong's research is the foundation for many other articles here as well. After describing 118 information quality dimensions, Wang and Strong boil them down to four main criteria. Yoel explains:

> Based on their categories, Wang and Strong (1996) concluded that high-quality data must be:
> * Intrinsically good
> * Contextually appropriate for the task
> * Clearly represented
> * Accessible to the consumer

You can read the original article by Wang and Strong in the *Journal of Management Information Systems* if you have access to it, or [online here](http://mitiq.mit.edu/Documents/Publications/TDQMpub/14_Beyond_Accuracy.pdf). These researchers made a pivot in how they measured data quality &mdash; rather than considering the accuracy of the information on its own, they looked to see *what aspects were important to users*, and factored that user perspective into the quality assessment. They explain:

> The salient feature of this research study is that quality attributes of data are collected from data consumers instead of being defined theoretically or based on researchers' experience.

In other words, you can't measure data quality (DQ) without analyzing what quality dimensions are important to users. In their research, they settled on the four criteria that Strimling summarized:

> 1. [Intrinsic DQ] The extent to which data values are in conformance with the actual or true values;
>
> 2. [Contextual DQ] The extent to which data are applicable (pertinent) to the task of the data user;
>
> 3. [Representational DQ] The extent to which data are presented in an intelligible and clear manner and
>
> 4. [Accessibility DQ] The extent to which data are available or obtainable.

Wang and Strong's emphasis is on data quality, not necessarily documentation. Building on Wang and Strong, Strimling identifies 15 different dimensions to documentation quality and then asks users to rate them by importance. He concluded that these four categories are most important to users: accurate, relevant, easy to understand, accessible. These criteria are based on the level of importance assigned to them by the readers who participated in his study. He proposes that you can measure quality by asking users these four questions:

> * Could you find the information you needed in the
document?
> * Was the information in the document accurate?
> * Was the information in the document relevant?
> * Was the information in the document easy to
understand?

Strimling says you can ask users these questions during various interaction points (doc surveys, training situations, support interactions, onboarding, and more). The questions aren't simply yes/no questions but would include follow-up questions asking for more details if problems are noted (you can see a [sample survey here](https://www.surveymonkey.com/r/VJL6QHD)). Similar to Wang and Strong's user-based DQ framework, these criteria aren't priorities from writers but rather from users. (Note: In later research, Yoel found that "completeness" might be more important than "relevance.")

## The problem with abstract definitions

These four criteria seem like a solid way to evaluate documentation if you have a way to frequently interact with your users. But even if you could regularly survey your users, these abstract categories don't provide details about *how* you might go about making the information more clear, relevant, accurate, and findable.

In other words, these categories are too high-level and general to be more actionable. For example, what does it mean for something to be clear when you consider different audiences and varying technical backgrounds? Is well-written code clear, without the need for any comments? The categories fail to specify *tactics and tools* for executing clarity, relevancy, accuracy, and findability. How do you make something more clear and relevant? What specific steps do you take?

If you're not a user (but rather a technical writer) trying to assess documentation through these four questions, the questions are also not helpful. They can't be fully answered by a non-user. For example, "Could you find the information you needed in the document?" Only the reader can answer this. "Was the information in the document relevant?" Again, only the reader can answer this, not the writer. "Was the information easy to understand?" Again, only the reader can answer this.

If you're the target audience using the docs and have just finished the task, then yes, you could answer these questions to assess and transform the docs, but this returns us to the problem of relying on surveys to gather information to evaluate documentation. **How can we break away from the dependence on user surveys but still develop a method for quality based on the user's perspective?** This is my central question here.

Fortunately, if we take the starting categories here (accessibility, accuracy, relevance, clarity), and we are confident that these attributes align with user priorities, then we only need to define how these attributes can be implemented in documentation in more specific, concrete, and actionable ways. This is a point Strimling starts to make in [So You Think You Know What Your Readers Want?](https://www.researchgate.net/publication/331088225). He says, "In lieu of feedback, what we need is a proven model of how readers actually define documentation quality (DQ), which we can then use to ensure that what we produce is useful to our audience." In other words, these four criteria can guide you unless you have more specific feedback. In later sections, I'll get specific about how to implement each of the more general criteria by following best practices for content design detailed in a rubric.

{% include random_ad.html %}

## Other research

Before jumping into the rubric, let's survey the information quality landscape a bit more, as there are a few other sources worth mentioning. First, Pronovix, a company that specializes in creating developer portals, holds regular [Developer Portal Awards](https://pronovix.com/blog/best-developer-portals-2020). As such, they provide general reasons why they rate some developer portals higher than others. For example, in [What is the MVP for a Developer Portal?](https://pronovix.com/blog/what-mvp-developer-portal) they write:

> We compiled a first list of questions that provides users with the information they might need while working with your API product:
>
> * What is this API?
> * How do I get started with this API?
> * What do I need to understand about this API?
> * How do I get X done with this API?
> * Do I know all the details of this API?
> * How do I use your API in Y?
> * Is somebody still working on this API?
> * Where do I go when I have a problem with this API?
> * How do I get access to this API?
> * Can I afford this API?
> * Can I trust this API?

When a user says the documentation is "unclear" or lacks "relevance," it's probably because the documentation does not address some of these questions. This is what I mean by being specific about how to make documentation clear without solely relying on survey feedback.

These bullet points are all good questions that one would expect documentation (or a developer portal) to cover. See these articles from Pronovix describing more best practices for documentation and developer portals:

* [What goes into an award winning developer portal?](https://pronovix.com/blog/what-goes-award-winning-developer-portal)
* [How to Improve Developer Adoption and Onboarding](https://pronovix.com/blog/how-improve-developer-adoption-and-onboarding)
* [The Best Developer Portals of 2020](https://pronovix.com/blog/best-developer-portals-2020)

Keep in mind that Pronovix's focus is on developer portals, not standalone API documentation sites (they [explain the difference here](https://pronovix.com/blog/what-difference-between-api-documentation-and-developer-portal)). As such, they place more emphasis on how users interact both inside and outside the documentation, such as getting API keys from an admin portal, checking service status pages, participating in a community, and more. Since most companies have multiple documentation sites, often aggregated in a portal, I think the emphasis on developer portals is actually more relevant than on documentation alone.

Also, unlike scholarly research, Pronovix looks for best practices and successful patterns in the field, without trying to justify their criteria based on research or from studies that objectively verify and rank these characteristics. Some standards they recommend include API explorers for interactivity, mechanisms to scan and locate reference material, site designs that inspires trust, clear use cases for the API, code samples available in multiple languages, frictionless onboarding, community integration, and more.

Another great resource is [Nordic APIs](https://nordicapis.com/). In [5 Examples of Excellent API Documentation (and Why We Think So)](https://nordicapis.com/5-examples-of-excellent-api-documentation/), Thomas Bush evaluates 5 documentation sites based on these criteria:

* Authentication guide ☐
* Quickstart guide ☐
* Endpoint definitions ☐
* Code snippets ☐
* Example responses ☐

He highlights reasons for admiring certain sites, noting that the lesson with Stripe is "don't overdo it." For Twilio, it's "be beginner-friendly." For Dropbox, it's "cater to unique dev backgrounds." For GitHub, it's "save developer time wherever you can." And for Twitter, it's "be flexible with how you present information."

Another Nordic API article, [7 Items No API Documentation Can Live Without](https://nordicapis.com/7-items-no-api-documentation-can-live-without/), discusses 7 essential components in API docs:

* 1: An Authentication Scheme
* 2: HTTP Call Type Definitions
* 3: Endpoint Definitions
* 4: URI Structures, Methods, and Parameters
* 5: Human Readable Method Descriptions
* 6: Requests and Examples
* 7: Expected Responses

In my rubric, I've listed each of these items but only briefly and generally. Sites like [Nordic APIs](https://nordicapis.com) and [Pronovix](https://pronovix.com) provide more detailed guidance about how to optimize your documentation in each of these areas.

## Technical writing handbooks

Another place to find quality checklists and guidance for implementing general characteristics like clarity, relevance, accuracy, etc., is in technical writing handbooks. In [*Developing Quality Technical Information: A Handbook for Writers and Editors*](https://learning.oreilly.com/library/view/developing-quality-technical/9780133119046/app01.html), the authors provide a mountain of detail for best practices. They divide their guidelines into these categories and subcategories:

* Easy to use
  * Task orientation
  * Accuracy
  * Completeness

* Easy to understand
  * Clarity
  * Concreteness
  * Style

* Easy to find
  * Organization
  * Retrievability
  * Visual effectiveness

In this model, you might score docs from 1 to 5 depending on how well the docs fulfill each characteristic. The textbook has a lot of examples and detail about how to go about each of these characteristics. There's even treatment of code samples. Here's the comprehensive quality checklist provided in the Appendix:

<a class="noCrossRef" href="https://learning.oreilly.com/library/view/developing-quality-technical/9780133119046/app01.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/qualityguidelinestextbook2.png" alt="Quality checklist" /></a>

Overall, there are 60 specific characteristics within the various categories. Why not simply adopt this quality checklist? It wouldn't be a bad approach, for sure. And the principles are so widely held that few would object to them. But I wanted something even more concrete, actionable, and focused on API documentation and developer portals.

{% include random_ad2.html %}

## Standards specifications

Another place to look at information quality would be standards such as the [ASD-STE100](http://www.asd-ste100.org/). The ASD-STE100 standard was developed by the Aerospace and Defense Industries Association (ASD) to encourage simplified technical English (STE). STE consists of a dictionary of about 900 allowed words and a set of 65 writing rules intended to encourage more simplified English.

Another standard is [ISO/IEC 26514:2008 - Systems and software engineering — Requirements for designers and developers of user documentation](https://www.iso.org/standard/43073.html), which is a standard that "specifies the structure, content, and format for user documentation, and also provides informative guidance for user documentation style." Another standard is [IEC/IEEE 82079-1 - Preparation Of Information For Use (Instructions For Use) Of Products - Part 1: Principles And General Requirements](https://webstore.ansi.org/Standards/ISO/IECIEEE820792019?gclid=Cj0KCQiA6Or_BRC_ARIsAPzuer-sndUAjuadJ-nhVGSbZeUX-MfS_jFuZj3mSC_-eyEcRiP-LFyTuMMaAmpKEALw_wcB). Referencing an ISO standard might make your embrace of the standard more defensible. Embracing standards defined here would allow you to benefit from principles already debated, vetted, and finalized. If only the ISO publications were more accessible (e.g., without paywalls), these information resources could be much more valuable.

Another resource developed by SAP and later generalized and adopted by tekom is [Standards and Guidelines for API Documentation](https://www.technical-communication.org/tekom/publications/specialist-books/detail/standards-and-guidelines-for-api-documentation), by Anne Tarnoruder. You can read a summary of the 68-page book in a tcworld article here: [Standardizing API documentation](https://www.tcworld.info/e-magazine/technical-writing/standardizing-api-documentation-949/). Tarnoruder emphasizes clear naming guidelines for APIs, noting:

> Names are the user interface of APIs. Meaningful, clear, and self-explanatory naming is a key factor in API's usability and adoption.

Technical writers might work with developers on names to ensure best practices with API design, especially regarding names. I covered some of these principles in my [summary of Arnaud Lauret's book, *The Design of Web APIs*](https://idratherbewriting.com/learnapidoc/evaluating-api-design.html). However, my focus here is more on documenting an API that has already been finalized rather than providing input on best practices for API design.

The book provides comprehensive guidelines for writing the descriptions of API elements in the OpenAPI definition files, illustrated by examples. Tarnoruder also provides templates for REST and OData APIs, if you're not already using something like OpenAPI. And she provides detailed guidelines for documenting APIs such as Java with Javadoc.

For developer guides, Tarnoruder provides guidelines such as including "conceptual, setup, quick start and how-to information" and avoiding "implementation details irrelevant to users." This advice is fairly commonplace. However, more interesting, she also encourages writers to address both a code-first learning style and a concepts-first learning style. She writes:

> Various usability studies show that API documentation users differ in their learning preferences:
>
> Those with a top-bottom approach would first read all the conceptual topics, and only then start trying the API calls.
> Those who prefer a bottom-up approach would delve right into code samples to get a quick hands-on experience with the APIs. ([Standardizing API documentation](https://www.tcworld.info/e-magazine/technical-writing/standardizing-api-documentation-949/))

This is a pattern I described in [How Developers Use API Documentation: An Observation Study](/learnapidoc/docapiscode_research_on_documenting_code.html#how-developers-use-api-documentation-an-observation-study) and is based on research by Michael Meng, Stephanie Steinhardt, and Andreas Schubert in [How Developers Use API Documentation: An Observation Study](https://sigdoc.acm.org/cdq/how-developers-use-api-documentation-an-observation-study/). The authors describe "opportunistic" behavior (people who learn by immediately trying out code and learning by trial and error) versus "systematic" behavior (people who start by carefully reading the manual before acting) as two common patterns of observed usage for developers using documentation. They encourage documentation to accommodate both learning styles.

## Other sources for quality

Many other sources can inform documentation quality. For example, the [Good Docs project](https://thegooddocsproject.dev/) aims to create templates that incorporate best practices. For example, by using the [Overview template](https://github.com/thegooddocsproject/templates/blob/v0.1/api-overview/about-overview.md), you'll automatically address the various questions and topics needed here. The project has templates for an overviews, quickstarts, reference material, discussions, how-to tasks, logging, tutorials, and more.

{% include random_ad3.html %}

Another place to look for information quality is perhaps with information typing models (Information Mapping, DITA, and more). But I've already surveyed the landscape sufficiently here. My intent is not to exhaustively survey research on information quality. As Strimling's earlier research pointed out, most people generally agree on the high-level categories. I want to instead provide specifics on implementation, especially for developer docs.

*Continue on to the next section, [First-level checklist for API documentation](docapis_metrics_first_level_checklist).*
