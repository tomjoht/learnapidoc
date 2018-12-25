---
title: API Glossary
permalink: docapis_glossary_section.html
keywords:
course: "Documenting REST APIs"
weight: 6.90
sidebar: docapis
section: docnonref
path1: /docnonref.html
no_newsletter: true
---

The API glossary defines all the terms that might be unique to your company or API. Glossaries are often overlooked or skipped, but their importance should not be understated since much of the user's understanding of API documentation depends on the clarity and alignment of specific terms.

* TOC
{:toc}

## Define any words you invest

Unlike most other professional writing disciplines, tech docs are notorious for the number of specialized terms in their content. Not only do we have unique terms related to our products, industry jargon and company-specific terms make their way into docs, driving up their complexity.

API evangelist Kin Lane recently noted his frustration with an API's language when he encountered an undefined acronym in some API docs he was browsing. Lane explains,

> I came across a set of API resources for managing a DEG the other day. You could add, updated, delete and get DEGs. You can also pull analytics, history, and other elements of a DEG. I spent about 10-15 minutes looking around their developer portal, documentation, and even Googling, but never could figure out what a DEG was. Nowhere in their documentation did they ever tell consumers what a DEG was, you just had to be in the know I guess. The API designer (if that occurred) and developer had never stopped to consider that maybe someone would stumble across their very public API and not know what a DEG was. ([Using Plain Language In Your API Paths](https://apievangelist.com/2018/07/09/use-plain-language-in-api-paths/))

In this case, DEG must have been an acronym specific to the developer's API. In these cases, there's no excuse for not defining your own pet acronyms and unique vocabulary.

But many times, acronyms and unfamiliar terms are part of a specialized domain. As a technical writer, using the correct terms for your knowledge domain and your product is necessary, and those terms are often appropriate for that particular knowledge domain.

To simplify the language, you can't just omit the necessary terminology for the domain and substitute in more friendly names. You have to teach the user the right language so they can participate in the conversation. One commonsense approach for teaching users how to speak this language involves defining unfamiliar words for the user by way of a glossary.

{% include course_image.html size="medium" border="true" filename="nonref_glossary" ext_print="png" ext_web="svg" alt="Glossary" caption="Glossaries not only provide clarity about terms for users but also help the writers think more clearly and consistently about the topic." %}

{: .tip}
I provide an [API glossary here](api-glossary.html) that defines many terms related to API documentation. If you run into unfamiliar jargon that I don't define in the topic, you can always consult the glossary.

## Should you provide a glossary?

Usually, providing a glossary in your documentation seems like going above and beyond the call of duty. However, defining these terms has tremendous benefit for the writer too, not just for the users. Defining terms helps you recognize the specialized terminology that might be used with your API &mdash; terms that you may have become immune to by hearing them so frequently in project meetings. By defining the terms, you ensure that you're using these terms more precisely and accurately (rather than switching around with synonyms for variety).

## Localization requirements and glossaries

If you're planning to localize your API documentation, most translators will require a glossary. Especially with API documentation, there are many technical terms that translators need to to be aware of so they can decide whether the terms should be translated.

For example, suppose in your sample Android app, you have terms like `PlaybackState` and "media session" and "callback" and `BroadcastReceiver`. Translators need to be technical enough to know whether these terms should be translated or left as is. Terms set off in `code` tags normally wouldn't be translated, but many other terms referring to technical elements might also best be left untranslated. It can be a tricky judgment call when the technical term isn't set off as code but refers to a technical concept or class (such as "MediaSession").

After translators finish translating the content, the translation needs to be checked over by a subject matter expert in that language &mdash; usually by a field engineer who works with clients in that locale. The glossary will also assist the subject matter experts who review the translation.

## Specialized versus non-specialized terms

One challenge in coming up with a glossary is distinguishing between specialized terms unique to your API and terms that are common within the industry or knowledge domain. You don't need to define terms that are common within the knowledge domain you're working in. For example, with a sample Android app, you wouldn't need to define adb (Android Debug Bridge) in your glossary because anyone who develops on Android would presumably already be familiar with adb.

However, if you think listing some industry terms in the glossary would be helpful for users, who might need a little more information, you can do so. Glossaries can easily accommodate dozens or even hundreds of terms. In your definitions, you can also include links to external sites where more information is available.

The glossary is really where so many of the challenges around developer documentation come into focus. Separating your API's terminology from the general knowledge domain gets at the heart of why developer documentation can be so challenging for technical writers (who often aren't experts in the knowledge domain). You'll likely need to rely on engineers to help identify terms that need to be defined.

{: .tip}
I explored glossaries in depth in [Reducing the complexity of technical language](https://idratherbewriting.com/simplifying-complexity/reducing-the-complexity-of-technical-language.html). As a best practice, you can get a good sense as to whether you're using the right terms in a standard way by reading your competitor's documentation.

## Integration of the glossary with documentation

One question to consider is how and where to integrate the glossary definition within your technical content. For example, suppose you have the terms "near field" and "far field" in your content, referring to voice interactions with a device. You might use these terms in a number of sections and different pages. Sure, you could define these terms the first instance in your docs when you use them, but what if they appear on half a dozen pages? Users might not start on the initial page where they're defined.

You could incorporate tooltips (such as these [tooltips from Bootstrap](https://getbootstrap.com/docs/4.1/components/tooltips/)) over the term the first time it's used on each page in your docs. However, on subsequent references, it's probably easiest to link to the glossary definition rather than continually incorporate tooltips. Let users make their way to the glossary when they need help with a term. If the glossary page is in a clearly visible space, you won't have to go to great lengths to link terms to their glossary definitions with each usage.

## Sample glossary pages

The following are sample glossary pages in various APIs.

### Lyft

{% include course_image.html url="https://developer.lyft.com/docs/glossary" filename="glossary_lyft" ext_print="png" ext_web="png" alt="Lyft glossary" caption="Lyft glossary" %}

Lyft's glossary doesn't have a ton of terms (there are about 10), but they're specific to the Lyft API world. You see terms such as "Lyft Line," "Lyft Lux," "Lyft Plus," and so on. I like that the developer documentation takes pains to define terms that might frequently be used on Marketing and Sales spaces. Whenever a company includes a glossary, it demonstrates a sensitivity the company has toward users. The company doesn't assume that their users understand all the company's specialized terms and vocabulary.

### Yext

{% include course_image.html url="http://developer.yext.com/docs/glossary/" filename="glossary_yext"  ext_print="png" ext_web="png" alt="Yext glossary" caption="Yext glossary" %}

Note how in the Yext glossary, when industry standard terms such as "SSO" are defined, the definitions cover the company's specific use of SSO; the general term SSO isn't simply defined. Yext explains, "Single Sign On, which is a feature available to enterprise clients and partners...." And then goes on to explain more details around partners' versus employees of enterprise clients and how they can each use SSO.

When viewing the glossary, the terms also appear in the sidebar, replacing any doc pages listed there. I'm not a fan of this approach because it causes users to lose the context of their documentation sidebar. If the glossary is common to multiple sets of documentation, one would hope the glossary definitions are single-sourced through the authoring tools.

One challenge this Yext example raises is how to distribute glossaries across multiple doc sets. Suppose only some of these terms are relevant to one doc set, and other terms are relevant to another doc set. Do you partition the glossary into multiple specialized glossaries by product, or just have one general glossary across all products?

Use the strategy that makes sense for your docs. For the most part, since users mostly jump down to one specific glossary entry, it probably doesn't matter if other terms (that aren't specific to the doc set in context) are also included. On the other hand, filtering the definitions to a relevant subset would also encourage readers to browse through the definitions.

### Apigee

{% include course_image.html url="https://docs.apigee.com/api-platform/reference/glossary" filename="glossary_apigee" ext_print="png" ext_web="png" alt="Apigee glossary" caption="Apigee glossary" %}

The Apigee glossary provides another good model to follow. One interesting decision with Apigee's glossary is to format the entries as a table. The format probably doesn't matter much, but given that there are official definition list elements in HTML, it seems a bit odd to reject definition lists and use tables instead. Definition lists usually display better on mobile devices such as phones and tablets, and definition lists are easier to work with in general.

Regardless of the format, I'm usually thrilled to see a glossary. All too often, glossaries are neglected in documentation (not just in API documentation). They shouldn't be. Much of the complexity of technical content is due to the high number of specialized terms &mdash; terms that product teams often assume their audiences know (but in reality do not).

## <i class="fa fa-user-circle"></i> Activity with glossaries

With the [open-source project you identified](docapis_find_open_source_project.html), identify the glossary (or lack of one). Then answer the following questions:

1. Does the API include a glossary?
2. If the API lacks a glossary, what terms would you suggest including in a glossary?
3. If the API includes a glossary, do term definitions link to any documentation topics for more information?
4. Are unfamiliar terms defined in the context of topics themselves?
5. Are the terms in the glossary consistent with the same terms used in competitor's documentation?
