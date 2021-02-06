---
title: Second-level checklist for API documentation
permalink: /docapis_metrics_second_level_checklist.html
course: "Documenting REST APIs"
weight: 13.3
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-02-06

---

*This section continues from the previous page, [First-level checklist for API documentation](docapis_metrics_first_level_checklist.html)*.

In the previous topic, I described a first-level checklist for API documentation that you can do without more familiarity with the docs. This section describes more characteristics to evaluate that will only be discernible when you have more familiarity with the docs.

* TOC
{:toc}  

{% include random_ad2.html %}

## Second-level documentation checklist

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
<div style="margin-top: 20px; margin-bottom: 20px; font-size:24px; text-align: center;">Second-level API documentation quality checklist</div>

### Findability

<ul class="checkLists">

{{cb1}} **Article-length topics.** Each topic consolidates much of the necessary information about the subject in a standalone, modular way. The topics don't fragment the subject into too many small topics that require the user to bounce around, losing context. At the same time, entire guides aren't shoved into single topics, making them eternally long. The length of topics should be about like a web article (for example, 500-3,000 words long). {{cb-end}}

{{cb1}} **Task-based organization**. Content is organized primarily by task and from a user's perspective rather than solely by doc type. The exception is that reference content is often consolidated on its own in an auto-generated output. {{cb-end}}

{{cb1}} **Developer portal IA**. The information architecture (IA) in the developer portal organizes content within a larger context or story, even if it's just a list of links under various categories. {{cb-end}}
</ul>

### Accuracy

<ul class="checkLists">

{{cb1}} **Accurate steps**. The steps in the tasks accurately lead to the results promised by the task, without missing any details. For example, if the instructions say to click a button name, the button is named the same way in the interface. If the instructions say to use a class, the class is spelled as it appears in the code library, etc. {{cb-end}}

{{cb1}} **Consistent instructions**. Information isn't repeated in confusing, redundant, or inconsistent ways. For example, the documentation doesn't explain how to do a task one way in Topic A but then a different way in Topic B. If content is re-used, the re-use is usually single-sourced to reduce inconsistency. {{cb-end}}

{{cb1}} **Up-to-date screenshots**. Screenshots and other visuals are up to date with the state of the interface (if there is one). {{cb-end}}

{{cb1}} **Deprecated features are noted**. Features that are no longer supported (or which have been deprecated) are clearly noted as such in the documentation. Preferably, if a feature has been deprecated, a migration path to an alternative solution is provided. {{cb-end}}

{{cb1}} **Functional code samples**. Code samples that can be copy and pasted actually work. {{cb-end}}

{{cb1}} **App code matches doc code.** Code in sample apps matches the code described in the documentation. The sample app hasn't evolved in ways that no longer match the documentation. {{cb-end}}
</ul>

### Relevance

<ul class="checkLists">

{{cb1}} **Docs are published when features released.** Documentation is available at the same time the feature is released and made available to users, not after the fact. {{cb-end}}

{{cb1}} **Actively monitored GitHub**. If the product has a code repository on GitHub (or similar), this repository is actively monitored when users log issues or submit pull requests. Users aren't simply ignored. {{cb-end}}
</ul>

### Clarity

<ul class="checkLists">

{{cb1}} **Experiential learning paths**. The documentation provides opportunities for experiential/opportunistic users to start learning immediately through code and trial/error, and for more systematic users to learn by reading concepts first. {{cb-end}}

{{cb1}} **Role-based permissions noted**. If there are different roles and permission levels that correspond to varying capabilities, these roles are noted in all places they apply, such as within the individual API reference. For example, if only admin roles can use a certain endpoint, this is noted in the endpoint's reference and in any places that use the endpoint. {{cb-end}}

{{cb1}} **Steps are detailed rather than general**. Specific steps for completing tasks are described in detail rather than glossed over in general ways &mdash; unless the task is something the audience is already familiar with. Overall, the documentation strikes a balance between providing enough detail for users to get the job done but not including too much detail that the reader is inundated with extraneous information. {{cb-end}}

{{cb1}} **Workflow maps connects topics in larger flows**. Larger tasks that span multiple topics have a [workflow map](/simplifying-complexity/macro-micro.html) (or similar mechanism) that connects the topics together. {{cb-end}}

{{cb1}} **Visuals aid in areas of confusion**. In places that are particularly confusing, appropriate visuals or additional examples have been added to reduce confusion. {{cb-end}}

{{cb1}} **Docs favor simplest path.** If there are multiple paths to a solution, the documentation focuses on the simplest path (though other possibilities might be briefly mentioned). {{cb-end}}

{{cb1}} **Support cases are minimal.** Users can follow the documentation by themselves without relying on peer or customer support. A large number of support cases or forum threads containing questions that could have been answered in the documentation would indicate that the users aren't self-sufficient through the docs. {{cb-end}}

{{cb1}} **Correlation between sample app and docs.** In cases where a sample app complements the documentation as a reference implementation, the documentation should refer to different aspects of the sample app.{{cb-end}}

{{cb1}} **Technical level is appropriate to audience**. The documentation's technical level is appropriate to the *target audience* but might not serve every possible audience (e.g., total newbies to a programming language might struggle with documentation intended for developers already experienced in that language). Usually, general concepts in a programming language that you assume the audience knows are not explained in the documentation. Instead, your company's product, configuration, and usage are covered in the context of the programming language. One exception is when the implementation requires a non-standard process or workflow that merits some explanation. {{cb-end}}
</ul>

#### Completeness

<ul class="checkLists">

{{cb1}} **Error messages helpful for troubleshooting**. [Error messages](docapis_doc_status_codes.html) help users course correct by providing helpful hints for addressing the error. This supports the opportunistic/experiential user behavior. {{cb-end}}

{{cb1}} **Unhappy path documented**. If there are pitfalls or other traps, gaps, and gotchas to avoid, these are noted in the documentation rather than hidden from the user. A section called ["Known Limitations"](/2010/12/16/known-limitations/) often contains this information. The documentation doesn't lie or mislead the user but rather is [transparent, honest, and helpful](/2017/07/13/transparency-in-documentation/) even if it means exposing the product's warts and revealing problems users will like encounter. {{cb-end}}
</ul>

### Readability

<ul class="checkLists">

{{cb1}} **Navigation mechanisms consistent across docs**. Navigation mechanisms work consistently across all docs in the developer portal. For example, in one set of docs, if top-level folders expand to show child items rather than opening to their own page, the same behavior is found in other docs. {{cb-end}}

{{cb1}} **Sentences and paragraphs are short**. Sentences are somewhat short, paragraphs are relatively small, and subheadings are frequent. A readability score will place the content at the high-school level, not college. {{cb-end}}

{{cb1}} **Glossary entries match terms used**. Glossary terms are used consistently across the documentation. For example, one doc set doesn't use a certain term while another uses a synonym of the term, with the admin UI using yet another term. {{cb-end}}

{{cb1}} **Language uses active voice**. The language uses active voice (where warranted) with clear subjects and verbs positioned closely together. {{cb-end}}

{{cb1}} **Grammar isn't distracting**. Sentences are grammatically correct and read well, without distracting the user or calling attention to the language. {{cb-end}}

{{cb1}} **Placeholder text in code apparent**. In code samples, placeholder text that needs to be customized is clearly indicated to the user. It's not confusing what is code and what needs to be changed, like `APIKEY`. {{cb-end}}
</ul>
</div>

{% include random_ad3.html %}

## Is this list complete? No

Between the two checklists ([first-level](docapis_metrics_first_level_checklist) and second-level), there are about 75 different characteristics that I've described. Did I miss anything? Sure, you could probably expand this list with 100 more characteristics. Sometimes it's not clear what needs to be added until you see docs that are missing some key element or which violate some assumed principle. Feel free to let me know (in the comments below) what could/should be added, especially if it's a major omission. But there's also something to be said for a practical list of key points. The more criteria you add, the more laborious it becomes to evaluate docs. The most popular style guides (e.g., Strunk and White) are those that briefly cover the main points you need rather than providing an exhaustive list, especially if many guidelines are already followed.

{% include random_ad.html %}

*Continue on to the next section, [Quantifying your progress](docapis_metrics_quantifying_progress.html).*
