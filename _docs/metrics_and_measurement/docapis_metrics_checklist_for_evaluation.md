---
title: A practical checklist to evaluate documentation
permalink: /docapis_metrics_checklist_for_evaluation.html
course: "Documenting REST APIs"
weight: 13.2
sidebar: docapis
section: devportals
path1: /docapis_managing_doc_processes.html
last-modified: 2021-02-4
---

*This section continues from the previous page, [Measuring progress against documentation quality goals](docapis_measuring_impact.html).*

The following checklist shows how the more general attributes of findability, accuracy, relevance, and clarity, completeness, succinctness, etc., might be implemented in developer documentation. The checklist's criteria are in no particular order or weighting (more on that later). Also, the list shouldn't be seen as definitive or as a foolproof recipe for perfect documentation. And some points might apply more than others, depending on your product, domain, and audience. Overall, these are criteria/characteristics that will likely lead to a better experience with developer docs.

Some criteria can be assessed quickly, while other criteria requires you to be much more familiar with the documentation. Since you might want to perform the assessment during an initial content audit when you are much less familiar with the docs, the criteria are distinguished between quick assessment versus deep assessment.

<style>
li.checkboxListType {
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

{% assign cb = "<li class='checkboxListType' markdown='span'><input type='checkbox'>" %}
{% assign cb-end = "</li>" %}

<div style="background-color: #eef; padding: 15px; margin-top: 30px; margin-bottom: 30px;" markdown="block">
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">Developer documentation quality checklist</div>

### Findability

<ul class="checkLists">

{{cb}} The content is indexed in a general search engine and findable when you create searches with the product name and some key tasks.{{cb-end}}

{{cb}} The doc site has a site-specific search that lets users search within the documentation site itself. {{cb-end}}

{{cb}} If you have lots of documentation relevant to users, the documentation is organized in a developer portal. The information hierarchy in the developer portal organizes content within a larger context or story, even if it's just a list of links under various categories. {{cb-end}}

{{cb}} Content is organized primarily by task and from a user's perspective rather than solely by doc type. The exception is that reference content is often consolidated on its own in an auto-generated output. {{cb-end}}

{{cb}} Each topic consolidates much of the necessary information about the subject in a standalone, modular way. The topics don't fragment the subject into too many small topics that require the user to bounce around, losing context. This doesn't mean topics should be eternally long, but they shouldn't just be a couple of paragraphs. They should be more like an article. {{cb-end}}

{{cb}} If there's a UI (such as with an administrative console), links within the UI connect users to the relevant documentation. For example, on a user interface, a help button might appear next to a confusing section that helps the reader locate the documentation for that section. Or in error messages, a link or code might help users get more troubleshooting information. {{cb-end}}

{{cb}} The content doesn't have an endless FAQ with information that should have been integrated into more logical places in the document. {{cb-end}}

{{cb}} If content has multiple versions, the versions are called out visibly in the topic and often have a selector or link allows users to navigate to the other versions. {{cb-end}}

{{cb}} When new features are released or significant updates are made to the documentation, these changes are called out in release notes. {{cb-end}}

{{cb}} If reference material has a large number of endpoints, functions, commands, or classes, the docs include mechanisms to expand, collapse, sort, or filter the content so that users can more easily find what they're looking for. {{cb-end}}

</ul>

### Accuracy

<ul class="checkLists">

{{cb}} Content has been reviewed by a subject matter expert within the past year. Ideally, each topic should include metadata such as the last-reviewed timestamp, last author, and the group that owns the content. {{cb-end}}

{{cb}} The documentation provides a visible timestamp of the last time it was edited so that users can gauge how current the documentation is. {{cb-end}}

{{cb}} Links point to correct pages or are appropriately handled by redirects to equivalent pages. {{cb-end}}

{{cb}} The steps in the tasks accurately lead to the results promised by the task, without missing any details. For example, if the instructions say to click a button name, the button is named the same way in the interface. If the instructions say to use a class, the class is spelled as it appears in the code library, etc. {{cb-end}}

{{cb}} Information isn't repeated in confusing, redundant, or inconsistent ways. For example, the documentation doesn't explain how to do a task one way in Topic A but then a different way in Topic B. If content is re-used, the re-use is usually single-sourced to reduce inconsistency. {{cb-end}}

{{cb}} Screenshots and other visuals are up to date with the state of the interface (if there is one). {{cb-end}}

{{cb}} Features that are no longer supported (or which have been deprecated) are clearly noted as such in the documentation. Preferably, if a feature has been deprecated, a migration path to an alternative solution is provided. {{cb-end}}

{{cb}} Code samples that can be copy and pasted actually work. {{cb-end}}

{{cb}} Code in sample apps matches the code described in the documentation. The sample app hasn't evolved in ways that no longer match the documentation. {{cb-end}}

</ul>

### Relevance

<ul class="checkLists">

{{cb}} The documentation doesn't just provide reference information (e.g., auto-generated API documentation) but also explains how to use the API with tutorials guiding users through common use cases and journeys. The content should address the *most common* use cases intended for the product. (Fringe use cases don't need to be documented because too much information can dilute the emphasis on the core journeys.) {{cb-end}}

{{cb}} Documentation is available at the same time the feature is released and made available to users, not after the fact. {{cb-end}}

{{cb}} Code samples are available in the user's target language. This might mean providing multiple code samples. {{cb-end}}

{{cb}} Options for contact or support are provided, even if the support merely involves posting to a peer-monitored forum. {{cb-end}}

{{cb}} The docs allow users to interact with the functions, API calls, or other commands often using their custom data. Typically, with REST APIs, an API explorer allows users to try out requests using their own data. Other sites might use Jupyter Notebooks to run code that can be customized. Seeing responses with your own data can make the API seem more relevant. {{cb-end}}

{{cb}} If the product has a code repository on GitHub (or similar), this repository is actively monitored when users log issues or submit pull requests. Users aren't simply ignored. {{cb-end}}

{{cb}} A feedback option is included in the docs so readers can relay feedback about their experience. When users provide feedback, they get the sense that someone is listening. This helps users feel more relevant. {{cb-end}}

</ul>

### Clarity

<ul class="checkLists">

{{cb}} The [overview](docapis_doc_overview.html) explains the big picture and describes the problem that the tool or service addresses. {{cb-end}}

{{cb}} The [overview](docapis_doc_overview.html) provides a high-level description of the main use cases or business objectives of the product. This allows users to get a sense of what the API is all about. {{cb-end}}

{{cb}} The [overview](docapis_doc_overview.html) has a diagram of the main components and how they interact. This provides users with a glimpse of the whole. {{cb-end}}

{{cb}} For larger systems that might have multiple subsystems (e.g., groups of APIs for different scenarios), these subsystems have their own landing pages that resemble the higher-level overview (with use cases, diagrams, getting started links) but scoped to that specific subsystem. {{cb-end}}

{{cb}} Details about how to get access, permissions, and authorization to use the API are provided. For example, this topic might cover how to authorize an API call with API keys. {{cb-end}}

{{cb}} The overview usually links out to a getting started topic that makes it easy for the user to sign up, register, get API keys or permissions, and start using the API. (This topic might link to the authorization topic but is more comprehensive in scope. The purpose of this topic is frictionless onboarding.) {{cb-end}}

{{cb}} The documentation provides opportunities for experiential/opportunistic users to start learning immediately through code and trial/error, and for more systematic users to learn by reading concepts first. {{cb-end}}

{{cb}} A sandbox environment is available for users to try out the tool/system/API on their own and get a better understanding of how it works. {{cb-end}}

{{cb}} If there are different roles and permission levels that correspond to varying capabilities, these roles are noted in all places they apply, such as within the individual API reference. For example, if only admin roles can use a certain endpoint, this is noted in the endpoint's reference and in any places that use the endpoint. {{cb-end}}

{{cb}} If the product has a code repository, the repository contains a Readme file that provides information similar to the overview, including information on how to contribute if applicable. (The readme might simply link to the documentation overview but also include unique sections such as how to contribute in the repo.) {{cb-end}}

{{cb}} Each task has a "Prerequisites" section that explains knowledge requirements, tool requirements, essential concepts, etc., necessary for completing the task. {{cb-end}}

{{cb}} Tasks are articulated through a series of specific, usually numbered steps or sections that reduce the complexity of the task. More complex tasks might require more granular and numerous steps or sections so as to reduce the complexity. (This is the primary way that technical writers simplify complexity.) {{cb-end}}

{{cb}} Specific steps for completing tasks are described in detail rather than glossed over in general ways &mdash; unless the task is something the audience is already familiar with. Overall, the documentation strikes a balance between providing enough detail for users to get the job done but not including too much detail that the reader is inundated with extraneous information. {{cb-end}}

{{cb}} Larger tasks that span multiple topics have a [workflow map](/simplifying-complexity/macro-micro.html) (or similar mechanism) that connects the topics together. {{cb-end}}

{{cb}} In places that are particularly confusing, appropriate visuals or additional examples have been added to reduce confusion. {{cb-end}}

{{cb}} If there are multiple paths to a solution, the documentation focuses on the simplest path (though other possibilities might be briefly mentioned). {{cb-end}}

{{cb}} Users can follow the documentation by themselves without relying on peer or customer support. A large number of support cases or forum threads containing questions that could have been answered in the documentation would indicate that the users aren't self-sufficient through the docs. {{cb-end}}

{{cb}} A [getting-started tutorial](docapis_doc_getting_started_section.html) is provided for users to get started in an end-to-end way with the product, producing a sample output that builds their confidence. {{cb-end}}

{{cb}} [Code samples](docapis_codesamples_bestpractices.html) showing sample ways to use the API (or similar tools) are provided. {{cb-end}}

{{cb}} In more robust docs, a [sample app](docapis_sample_apps.html) might serve as a reference implementation for users. In cases where a sample app complements the documentation as a reference implementation, the documentation should refer to different aspects of the sample app. {{cb-end}}

{{cb}} [Code samples](docapis_codesamples_bestpractices.html) are appropriately commented, either with inline comments, comments that preface or follow the sample, or both. Long code samples with no explanation aren't just dropped in. {{cb-end}}

{{cb}} The documentation's technical level is appropriate to the *target audience* but might not serve every possible audience (e.g., total newbies to a programming language might struggle with documentation intended for developers already experienced in that language). Usually, general concepts in a programming language that you assume the audience knows are not explained in the documentation. Instead, your company's product, configuration, and usage are covered in the context of the programming language. One exception is when the implementation requires a non-standard process or workflow that merits some explanation. {{cb-end}}

{{cb}} A one-pager [quick reference](docapis_doc_quick_reference.html) is available for the documentation so that users can get up and running quickly. The quick reference also allows users to quickly get a sense of the essential information and tasks for the tool or service. {{cb-end}}

</ul>

### Completeness

<ul class="checkLists">

{{cb}} For REST API documentation, the [OpenAPI standard](pubapis_openapi_intro.html) is used to describe the API (or equivalent comprehensiveness). For [library-based APIs](nativelibraryapis_overview.html) like Java, the appropriate conventions for documentation in that language are followed (such as [Javadoc tags](nativelibraryapis_javadoc_tags.html)).{{cb-end}}

{{cb}} Reference material such as APIs follow a [common structure within each topic](docapis_api_reference_tutorial_overview.html), mostly following a request-response type structure. Typical sections include descriptions, parameters, sample requests or usage, and sample responses. {{cb-end}}

{{cb}} [Error messages](docapis_doc_status_codes.html) that users can encounter are documented and discoverable through search. {{cb-end}}

{{cb}} [Error messages](docapis_doc_status_codes.html) help users course correct by providing helpful hints for addressing the error. This supports the opportunistic/experiential user behavior. {{cb-end}}

{{cb}} [Parameter documentation](docapis_doc_parameters.html) typically includes a description, data type, min/max values, sample values, and optional/required usage. {{cb-end}}

{{cb}} The [response documentation](docapis_doc_sample_responses_and_schema.html) provides both a sample response and schema. The response provides an example of what might be returned, while the schema defines all possible elements that might be returned and describes attributes such as data types and whether the elements are required or optional in the response. {{cb-end}}

{{cb}} If there are pitfalls or other traps, gaps, and gotchas to avoid, these are noted in the documentation rather than hidden from the user. A section called ["Known Limitations"](/2010/12/16/known-limitations/) often contains this information. The documentation doesn't lie or mislead the user but rather is [transparent, honest, and helpful](/2017/07/13/transparency-in-documentation/) even if it means exposing the product's warts and revealing problems users will like encounter. {{cb-end}}

{{cb}} If there are [limitations and thresholds](/learnapidoc/docapis_rate_limiting_and_thresholds.html) (e.g., max number of API calls, max file sizes, max string lengths, max/min parameter values, max server load), these limitations are called out in the docs. {{cb-end}}

{{cb}} If a feature is available only in certain contexts (locales, languages,  platforms, roles, versions), that information is noted clearly in the feature. For example, an API that is only available for enterprise versions might have a label that says "Enterprise Version Only," or if only available for a particular platform, might say "Linux Only" or the equivalent. {{cb-end}}

{{cb}} The documentation has a troubleshooting section (either standalone or included within the section/topic it relates to) that provides information on how to solve common problems. The troubleshooting information indicates where things might go wrong and how to fix them. In other words, the documentation doesn't just describe the happy path. {{cb-end}}

</ul>

### Readability

<ul class="checkLists">

{{cb}} The sidebar navigation lets users take in a sense of the whole while also allowing users to expand more details as desired. The sidebar isn't a massive list of seemingly endless scrolling and expansion + expansion + expansion but divides up doc sets into logical groups, like chapters in a book. For systems with large numbers of topics, progressive disclose techniques might be implemented across primary, secondary, and tertiary levels of information. {{cb-end}}

{{cb}} As the user navigates each topic, the sidebar navigation makes it clear where the user is in the navigation (e.g., the topic highlights clearly and the navigation sticks open at that level). Breadcrumbs might also help establish site context. {{cb-end}}

{{cb}} When a user clicks topics in the navigation, the UI doesn't shift context in jarring ways, such as taking the user to another doc set or changing stable navigation areas like the sidebar and header (which are usually consistent for every page). This jarring navigation often happens when sidebar entries point to topics in other doc sites. If this is the case, the external links have an icon indicating the link takes them to another site. {{cb-end}}

{{cb}} Navigation mechanisms work consistently across all docs in the developer portal. For example, in one set of docs, if top-level folders expand to show child items rather than opening to their own page, the same behavior is found in other docs. {{cb-end}}

{{cb}} Common topics have similar names across doc sets in the developer portal. For example, the Overview, Getting Started, Troubleshooting, Glossary, Release Notes, and Reference are named consistently to help users understand how to navigate the site. One doc set shouldn't call a topic "Latest updates" and "First steps" while another uses "What's new" and "Quickstart." {{cb-end}}

{{cb}} Sentences are somewhat short, paragraphs are relatively small, and subheadings are frequent. A readability score will place the content at the high-school level, not college. {{cb-end}}

{{cb}} The subheadings are descriptive enough to allow users to get a gist of the topic by merely reading the subheadings. The subheadings also follow a parallel structure so they can be more easily scanned and read. {{cb-end}}

{{cb}} Each topic usually has a [short summary below the title](/2018/09/15/pages-at-a-glance-feature/#enforcing-best-practices-with-structure) that encapsulates the main purpose of the topic. This helps users get a sense of the topic at a glance. {{cb-end}}

{{cb}} Unfamiliar words and jargon are defined in a [glossary](docapis_glossary_section.html). At times, the glossary terms are linked to their glossary definitions. {{cb-end}}

{{cb}} Glossary terms are used consistently across the documentation. For example, one doc set doesn't use a certain term while another uses a synonym of the term, with the admin UI using yet another term. {{cb-end}}

{{cb}} The language uses active voice (where warranted) with clear subjects and verbs positioned closely together. {{cb-end}}

{{cb}} Sentences are grammatically correct and read well, without distracting the user or calling attention to the language. {{cb-end}}

{{cb}} Individual sentences have one main idea. Paragraphs have one main point. (The documentation doesn't have long walls of text with a wandering focus.) {{cb-end}}

{{cb}} The formatting in code samples follows standard white spacing, line breaks, and other syntax for the language. {{cb-end}}

{{cb}} Code syntax highlighting appropriate to the language has been applied to increase the code's readability. {{cb-end}}

{{cb}} In code samples, placeholder text that needs to be customized is clearly indicated to the user. It's not confusing what is code and what needs to be changed, like `APIKEY`. {{cb-end}}

{{cb}} The content can be read on a mobile device in a usable way. For example, the responsive view allows users to navigate the sidebar links and view code samples. {{cb-end}}

</ul>
</div>

Did I miss anything? I probably missed 100 more details here. Feel free to let me know (either in the comments or survey) what could/should be added, especially if it's a major omission. But there's also something to be said for a practical list of key points (there are 80 checkboxes here!). The more criteria you add, the more laborious it becomes to evaluate docs. The most popular style guides (e.g., Strunk and White) are those that cover the main points you need rather than providing an exhaustive list, especially if many guidelines are already followed.

*Continue on to the next section, [Quantifying your progress](docapis_metrics_quantifying_progress.html).*
