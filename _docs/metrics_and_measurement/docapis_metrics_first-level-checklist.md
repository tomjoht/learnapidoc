---
title: First-level checklist for API documentation
permalink: /docapis_metrics_first_level_checklist.html
course: "Documenting REST APIs"
weight: 13.2
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-02-06

---

*This section continues from the previous page, [Measuring progress against documentation quality goals](docapis_measuring_impact.html).*

As indicated earlier, my goal is to create a practical guide for measuring quality. Instead of looking at docs against a list of general, abstract criteria, I encourage creating a list of characteristics that, if fulfilled, should lead to all the more high-level categories of the rubric (clarity, accuracy, findability, etc.) automatically. Each of the characteristics must be specific, actionable, and unambiguous in how it would be implemented in your docs. This section gets into the nitty-gritty details of the characteristics.

* TOC
{:toc}  

## Doc scope

Before jumping into the criteria, consider the scope. If you're working on a developer portal, chances are you don't own the entire portal. You might just own one little section of the portal. That's okay. You can limit your review to just the scope that you own. Granted, the user journeys might extend beyond this scope, but start with your stewardship first. The last thing you want to do is start a war with other authors by identifying all kinds of issues with their content (at least not before you address your own issues first).

{% include random_ad3.html %}

## Two levels of assessment

Another consideration is just how much you can assess without more familiarity with docs. You can't know if the steps are accurate unless you go through the steps. You can't know if the docs aren't contradictory unless you've read all the documentation. You can't know if the code works unless you can run it in a test environment. It might take more than a year working with the docs to be able to make these kinds of assessments. You shouldn't have to spend a year working with the docs before you can provide an initial assessment of some kind.

All too often, you might find yourself situated in a new group, with many pages of documentation before you. What if you're trying to measure your impact on the docs from day one? If you can't complete the assessment until a year into the work, after you'll have already contributed so much to the docs, you won't have a clear benchmark against which to assess your contributions and impact.

Because some criteria can be assessed quickly, while other criteria requires you to be much more familiar with the documentation, I provide two levels of assessment &mdash; a first-level checklist and a second-level checklist. The two lists are distinguished between quick assessments you can make without being familiar with the docs versus more in-depth assessments that require more familiarity.

{% include random_ad2.html %}

In this section, I'll present a first-level checklist, and in the next topic, I'll present a [second-level checklist](docapis_metrics_first_level_checklist).

## First-level documentation checklist

The following checklist is a first-level checklist that doesn't require much familiarity with the docs. The checklist's criteria are in no particular order or weighting (more on that later). Also, the list shouldn't be seen as definitive or as a foolproof recipe for perfect documentation. And some points might apply more than others, depending on your product, domain, and audience. Overall, these are criteria/characteristics that will likely lead to a better experience with developer docs.

<style>
li.checkboxListType1 {
  list-style-type: none;
  margin-left: 25px;
  text-indent: -28px;
  margin-bottom: 20px;
  line-height: 24px;
}
input[type=checkbox] {
  margin-right: 10px;
}
</style>

{% assign cb1 = "<li class='checkboxListType1' markdown='span'><input type='checkbox'>" %}
{% assign cb-end = "</li>" %}

<div style="background-color: #eef; padding: 15px; margin-top: 30px; margin-bottom: 30px;" markdown="block">
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">First-level API documentation quality checklist</div>

### Findability

<ul class="checkLists">

{{cb1}} **Findable in search.** The content is indexed in a general search engine and findable when you create searches with the product name and some key tasks.{{cb-end}}

{{cb1}} **Site-specific search available.** The doc site has a site-specific search that lets users search within the documentation site itself. {{cb-end}}

{{cb1}} **Developer portal hub context**. If you have lots of documentation relevant to users, the documentation is organized in a developer portal of some kind. {{cb-end}}

{{cb1}} **UI pages link to docs**. If there's a UI (such as with an administrative console), links within the UI connect users to the relevant documentation. {{cb-end}}

{{cb1}} **Main organization isn't an FAQ.** The content doesn't have an endless FAQ with information that should have been integrated into more logical places in the document. {{cb-end}}

{{cb1}} **Version selection available.** If content has multiple versions, the versions are called out visibly in the topic and might have a selector or link allows users to navigate to the other versions. {{cb-end}}

{{cb1}} **Release notes present**. Release notes track changes to the product and documentation. {{cb-end}}

</ul>

### Accuracy

<ul class="checkLists">

{{cb1}} **Content reviewed within past year** Content has been reviewed by a subject matter expert within the past year. Ideally, each topic should include metadata such as the last-reviewed timestamp, last author, and the group that owns the content. {{cb-end}}

{{cb1}} **Timestamps visible.** The documentation provides a visible timestamp of the last time it was edited so that users can gauge how current the documentation is. {{cb-end}}

{{cb1}} **No broken links**. Links point to correct pages or are appropriately handled by redirects to equivalent pages. {{cb-end}}

</ul>

### Relevance

<ul class="checkLists">

{{cb1}} **Key use cases are documented.** The documentation doesn't just provide reference information (e.g., auto-generated API documentation) but also explains how to use the API with tutorials guiding users through common use cases and journeys. The content should address the *most common* use cases intended for the product. {{cb-end}}

{{cb1}} **Code samples exist.** [Code samples](docapis_codesamples_bestpractices.html) showing sample ways to use the API (or similar tools) are provided. Ideally, the code samples are available in the user's target language. This might mean providing multiple code samples. {{cb-end}}

{{cb1}} **Support options noted**. Options for contact or support are provided, even if the support merely involves posting to a peer-monitored forum. {{cb-end}}

{{cb1}} **Reference material is interactive**. The docs allow users to interact with the functions, API calls, or other commands often using their custom data. Typically, with REST APIs, an API explorer allows users to try out requests using their own data. Other sites might use Jupyter Notebooks to run code that can be customized. Seeing responses with your own data can make the API seem more relevant. {{cb-end}}

{{cb1}} **Feedback options available**. A feedback option is included in the docs so readers can relay feedback about their experience. When users provide feedback, they get the sense that someone is listening. This helps users feel more relevant. {{cb-end}}

</ul>

### Clarity

<ul class="checkLists">

{{cb1}} **Product overview page answers wh questions.** The [overview](docapis_doc_overview.html) explains the big picture and describes the problem that the tool or service addresses. Common who/what/where/why questions are answered here. {{cb-end}}

{{cb1}} **Overview addresses use cases.** The [overview](docapis_doc_overview.html) provides a high-level description of the main use cases or business objectives of the product. This allows users to get a sense of what the API is all about. {{cb-end}}

{{cb1}} **Overview has architectural diagram/overview + explanation**. The [overview](docapis_doc_overview.html) has a diagram of the main components and how they interact. This provides users with a glimpse of the whole. {{cb-end}}

{{cb1}} **Overview has index of assets**. If there's an SDK or developer kit that users can download, the contents of this download are described. This is similar to product instructions that start by identifying all parts that should have arrived in a package.

{{cb1}} **Subsystems have their own overview pages**. For larger systems that might have multiple subsystems (e.g., groups of APIs for different scenarios), these subsystems have their own landing pages that resemble the higher-level overview (with use cases, diagrams, getting started links) but scoped to that specific subsystem. {{cb-end}}

{{cb1}} **Access and authorization explained**. Details about how to get access, permissions, and authorization to use the API are provided. For example, this topic might cover how to authorize an API call with API keys. {{cb-end}}

{{cb1}} **Getting started tutorial exists**. A [getting-started tutorial](docapis_doc_getting_started_section.html) is provided for users to get started in an end-to-end way with the product, producing a sample output that builds their confidence. This topic might provide info on how to sign up, register, get API keys or permissions, and start using the API. (This topic might link to the authorization topic but is more comprehensive in scope. The purpose of this topic is frictionless onboarding.) {{cb-end}}

{{cb1}} **Sandbox environment available**. A sandbox environment is available for users to try out the tool/system/API on their own and get a better understanding of how it works. {{cb-end}}

{{cb1}} **README file exists in code repo**. If the product has a code repository, the repository contains a README file that provides information similar to the overview (but abbreviated), including information on how to contribute if applicable. (The README might simply link to the documentation overview but also include unique sections such as how to contribute in the repo.) {{cb-end}}

{{cb1}} **Tasks have prerequisites sections**. Each task has a "Prerequisites" section that explains knowledge requirements, tool requirements, essential concepts, etc., necessary for completing the task. {{cb-end}}

{{cb1}} **Tasks have numbered steps or sections**. Tasks are articulated through a series of specific, usually numbered steps or sections that reduce the complexity of the task. More complex tasks might require more granular and numerous steps or sections so as to reduce the complexity. (This is the primary way that technical writers simplify complexity.) {{cb-end}}

{{cb1}} **Sample app available**. In more robust docs, a [sample app](docapis_sample_apps.html) might serve as a reference implementation for users.  {{cb-end}}

{{cb1}} **Code sample has comments**. [Code samples](docapis_codesamples_bestpractices.html) are appropriately commented, either with inline comments, comments that preface or follow the sample, or both. Long code samples with no explanation aren't just dropped in. {{cb-end}}

</ul>

### Completeness

<ul class="checkLists">

{{cb1}} **REST APIs use OpenAPI standard**. For REST API documentation, the [OpenAPI standard](pubapis_openapi_intro.html) is used to describe the API (or equivalent comprehensiveness). For [library-based APIs](nativelibraryapis_overview.html) like Java, the appropriate conventions for documentation in that language are followed (such as [Javadoc tags](nativelibraryapis_javadoc_tags.html)).{{cb-end}}

{{cb1}} **Reference content has consistent structure**. Reference material such as APIs follow a [common structure within each topic](docapis_api_reference_tutorial_overview.html), mostly following a request-response type structure. Typical sections include descriptions, parameters, sample requests or usage, and sample responses. {{cb-end}}

{{cb1}} **Error messages documented**. [Error messages](docapis_doc_status_codes.html) that users can encounter are documented and discoverable through search. {{cb-end}}

{{cb1}} **Parameter docs have complete info.** [Parameter documentation](docapis_doc_parameters.html) typically includes a description, data type, min/max values, sample values, and optional/required usage. {{cb-end}}

{{cb1}} **Response includes both sample and schema.** The [response documentation](docapis_doc_sample_responses_and_schema.html) provides both a sample response and schema. The response provides an example of what might be returned, while the schema defines all possible elements that might be returned and describes attributes such as data types and whether the elements are required or optional in the response. {{cb-end}}

{{cb1}} **Troubleshooting section exists**. The documentation has a troubleshooting section (either standalone or included within the section/topic it relates to) that provides information on how to solve common problems. The troubleshooting information indicates where things might go wrong and how to fix them. In other words, the documentation doesn't just describe the happy path. {{cb-end}}

{{cb1}} **Limitations/thresholds documented.** If there are [limitations and thresholds](/learnapidoc/docapis_rate_limiting_and_thresholds.html) (e.g., max number of API calls, max file sizes, max string lengths, max/min parameter values, max server load), these limitations are called out in the docs. {{cb-end}}

{{cb1}} **Locale limitations noted**. If a feature is available only in certain contexts (locales, languages,  platforms, roles, versions), that information is noted clearly in the feature. For example, an API that is only available for enterprise versions might have a label that says "Enterprise Version Only," or if only available for a particular platform, might say "Linux Only" or the equivalent. {{cb-end}}

</ul>

### Readability

<ul class="checkLists">

{{cb1}} **Sidebar nav has consumable organization.** The sidebar navigation lets users take in a sense of the whole while also allowing users to expand more details as desired. The sidebar isn't a massive list of seemingly endless scrolling and expansion + expansion + expansion but divides up doc sets into logical groups, like chapters in a book. For systems with large numbers of topics, progressive disclose techniques might be implemented across primary, secondary, and tertiary levels of information. {{cb-end}}

{{cb1}} **Sidebar nav highlights current topic**. As the user navigates each topic, the sidebar navigation makes it clear where the user is in the navigation (e.g., the topic highlights clearly and the navigation sticks open at that level). Breadcrumbs might also help establish site context. {{cb-end}}

{{cb1}} **Context remains consistent when navigating**. When a user clicks topics in the navigation, the UI doesn't shift context in jarring ways, such as unexpectedly taking the user to another doc set or changing stable navigation areas like the sidebar and header (which are usually consistent for every page). This jarring navigation often happens when sidebar entries point to topics in other doc sites. If this is the case, the external links have an icon indicating the link takes them to another site. {{cb-end}}

{{cb1}} **Doc types have consistent names**. Common topics have similar names across doc sets in the developer portal. For example, the Overview, Getting Started, Troubleshooting, Glossary, Release Notes, and Reference are named consistently to help users understand how to navigate the site. One doc set shouldn't call a topic "Latest updates" and "First steps" while another uses "What's new" and "Quickstart." {{cb-end}}

{{cb1}} **Subheadings are descriptive**. The subheadings are descriptive enough to allow users to get a gist of the topic by merely reading the subheadings. The subheadings also follow a parallel structure so they can be more easily scanned and read. {{cb-end}}

{{cb1}} **Topics start with summaries**. Each topic usually has a [short summary below the title](/2018/09/15/pages-at-a-glance-feature/#enforcing-best-practices-with-structure) that encapsulates the main purpose of the topic. This helps users get a sense of the topic at a glance. {{cb-end}}

{{cb1}} **Glossary exists**. Unfamiliar words and jargon are defined in a [glossary](docapis_glossary_section.html). At times, the glossary terms are linked to their glossary definitions. {{cb-end}}

{{cb1}} **Code has proper formatting** The formatting in code samples follows standard white spacing, line breaks, and other syntax for the language. {{cb-end}}

{{cb1}} **Code has syntax highlighting**. Code syntax highlighting appropriate to the language has been applied to increase the code's readability. {{cb-end}}

{{cb1}} **Responsive view is readable**. The content can be read on a mobile device in a usable way. For example, the responsive view allows users to navigate the sidebar links and view code samples. {{cb-end}}

</ul>
</div>

{% include random_ad.html %}

*Continue on to the next section, [Second-level checklist for API documentation](docapis_metrics_second_level_checklist).*
