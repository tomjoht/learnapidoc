---
title: Glossary
permalink: docapis_glossary_section.html
keywords:
course: "Documenting REST APIs"
weight: 5.91
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

The glossary defines all the terms that might be unique to your company or API. Glossaries are often overlooked or skipped, but their importance should not be understated, since much of the user's understanding of API documentation depends on the clarity and alignment of specific terms.

* TOC
{:toc}

## Should you provide a glossary?

Usually, providing a glossary in your documentation seems like going above and beyond the call of duty. However, simply defining these terms has tremendous benefit for the writer too, not just the users. Defining terms helps you recognize the special terminology that might be used with your API &mdash; terms that you may have become immune to by hearing them so frequently in project meetings. By defining the terms, you ensure that you're using these terms more precisely and accurately (rather than switching around with synonyms for variety).

{% include course_image.html size="medium" border="true" filename="nonref_glossary" ext_print="png" ext_web="svg" alt="Glossary" caption="Glossaries not only provide clarity about terms for users, they also help the writers think more clearly and consistently about the topic" %}

## Localization requirements and glossaries

If you're planning to localize your API documentation, most translators will require a glossary. Especially with API documentation, there are many technical terms that translators need to to be aware of so they can decide whether the terms should be translated.

For example, suppose in your sample Android app, you have terms like `PlaybackState` and "media session" and "callback" and `BroadcastReceiver`. Translators need to be technical enough to know whether these terms should be translated or left as is. Terms set off in `code` tags normally wouldn't be translated, but many other terms referring to technical components might also best be left untranslated. It can be a tricky judgement call when the technical term isn't set off as code but refers to a class (such as "MediaSession").

After translators finish translating the content, the translation needs to be QA'd by a subject matter expert in that language &mdash; usually by a field engineer who works with clients in that locale.

## Specialized versus non-specialized terms

One challenge in coming up with a glossary is distinguishing between specialized terms unique to your API and terms that are common within the industry or knowledge domain. You don't need to define terms that are common within the knowledge domain you're working in. For example, with a sample Android app, you wouldn't need to define adb (Android Debug Bridge) in your glossary because anyone who developers with Android would presumably already be familiar with adb.

However, if you think listing some industry terms in the glossary would be helpful for users, who might need a little more information, you can do so. Glossaries can easily accommodate dozens or even hundreds of terms. In your definitions, you can also include links to external sites where more information is available.

The glossary is really where so many of the challenges around developer documentation come into focus. Separating your API's terminology from the general knowledge domain gets at the heart of why developer documentation can be so challenging for technical writers (who often aren't experts in the knowledge domain). You'll likely need to rely on engineers to help identify terms that need to be defined.

{: .tip}
I explored glossaries in depth in [Reducing the complexity of technical language](http://idratherbewriting.com/simplifying-complexity/reducing-the-complexity-of-technical-language.html). As a best practice, you can get a good sense as to whether you're using the right terms in a standard way by reading your competitor's documentation.

## Integration of the glossary with documentation

One question to consider is how and where to integrate the glossary definition within your technical content. For example, suppose you have the terms "near field" and "far field" in your content, referring to voice interactions with a device. You might use these terms in a number of sections and different pages. Sure, you could define these terms the first instance in your docs when you use them, but what if they appear on half a dozen pages? Users might not start on the initial page where they're defined.

You could incorporate tooltips (such as these [tooltips from Bootstrap](https://getbootstrap.com/docs/4.1/components/tooltips/)) over the term the first time it's used on each page in your docs. However, on subsequent references, it's probably easiest to link to the glossary definition rather than continually incorporate tooltips. Let users make their own way to the glossary when they need help with a term. If the glossary page is in a clearly visible space, you won't have to go to great lengths to link terms to their glossary definitions with each usage.

## Sample glossary pages

The following are sample glossary pages in various APIs.

### Lyft

{% include course_image.html url="https://developer.lyft.com/docs/glossary" filename="glossary_lyft" ext_print="png" ext_web="png" alt="Lyft glossary" caption="Lyft glossary" %}

Lyft's glossary doesn't have a ton of terms (there are about 10), but they're specific to the Lyft API world. You see terms such as "Lyft Line," "Lyft Lux," "Lyft Plus," and so on. I like that the developer documentation takes pains to actually define terms that might normally be used on Marketing and Sales spaces. Whenever a company includes a glossary, it demonstrates a sensitivity the company has toward users. The company doesn't assume that their users understand all the company's special terms and vocabulary.

### Yext

{% include course_image.html url="http://developer.yext.com/docs/glossary/" filename="glossary_yext"  ext_print="png" ext_web="png" alt="Yext glossary" caption="Yext glossary" %}

Note how in the Yext glossary, when industry standard terms such as "SSO" are defined, the definitions cover the company's specific use of SSO; the general term SSO isn't simply defined. Yext explains, "Single Sign On, which is a feature available to enterprise clients and partners...." And then goes on to explain more details around partners' versus employees of enterprise clients and how they can each use SSO.

When viewing the glossary, the terms also appear in the sidebar, replacing any doc pages listed there. I'm not a fan of this approach because it causes users to lose the context of their documentation sidebar. If the glossary is common to multiple sets of documentation, one would hope the glossary definitions are single-sourced through the authoring tools.

One challenge this Yext example brings up is how to distribute glossaries across multiple doc sets. Suppose only some of these terms are relevant to one doc set, and other terms are relevant to another doc set. Do you partition the glossary into multiple specialized glossaries by product, or just have one general glossary across all products?

Use the strategy that makes sense for your docs. For the most part, since users just jump down to one specific glossary entry, it probably doesn't matter if other terms (that aren't specific to the doc set in context) are also included. On the other hand, filtering the definitions to a relevant subset would also encourage readers to actually browse through the definitions.

### Apigee

{% include course_image.html url="https://docs.apigee.com/api-platform/reference/glossary" filename="glossary_apigee" ext_print="png" ext_web="png" alt="Apigee glossary" caption="Apigee glossary" %}

The Apigee glossary provides another good model to follow. One interesting decision with Apigee's glossary is to format the entries as a table. The format probably doesn't matter much, but given that there are official definition list elements in HTML, it seems a bit odd to reject definition lists and use tables instead. Definition lists usually display better on mobile devices such as phones and tablets, and definition lists are easier to work with in general.

Regardless of the format, I'm usually thrilled to see a glossary. All too often, glossaries are neglected in documentation (not just in API documentation). They shouldn't be. Much of the complexity of technical content is due to the high number of specialized terms &mdash; terms that product teams often assume their audiences know (but in reality do not).
