---
title: Glossary section
permalink: docapis_glossary_section.html
keywords:
course: "Documenting REST APIs"
weight: 5.9
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

The glossary defines all the terms that might be unique to your company or API.

* TOC
{:toc}

## Should you provide a glossary?

Usually, providing a glossary in your documentation seems like going above and beyond the call of duty. However, simply defining these terms has tremendous benefit for the writer too, not just the users. Defining terms helps you recognize the special lingo that might be used with your API &mdash; terms that you may have become immune to by hearing them so frequently in project meetings. By defining the terms, you ensure you're using them more precisely and accurately (rather than switching around with synonyms for simple variety).

{% include course_image.html size="medium" border="true" filename="nonref_glossary" ext_print="png" ext_web="svg" alt="Glossary" caption="Glossary" %}

## Localization

If you're planning to localize your API documentation, most translators will require a glossary. Especially with API documentation, there tends to be a lot of technical terms that translators need to know so they can decide whether the terms should be translated or left alone.

For example, suppose in your sample Android app, you have terms like `PlaybackState` and "media session" and "callback" and "BroadcastReceiver." Translators need to be technical enough to know whether these terms should be translated or left as is. Terms set off in `code` tags wouldn't normally be translated, but many other terms refer to technical components might be best left untranslated.

After translators finish translation, the content needs to be QA'd by a subject matter expert in that language &mdash; usually a field engineer who works with clients in that region.

## Specialized versus non-specialized terms

One challenge in coming up with a glossary is distinguishing between specialized terms unique to your API or domain, and terms that are common within the industry. You don't need to define terms that are common within the knowledge domain you're working in. For example, with a sample Android app, you wouldn't need to define adb (Android Debug Bridge) in your glossary because anyone who developers with Android would presumably already be familiar with adb.

However, if you think listing some industry terms in the glossary would be helpful for users, who might need a little more information, you can do so. Be sure to include a link to an external URL where more information is available.

The glossary is really where so many of the challenges around developer documentation come into focus. Separating your API's terminology from the general knowledge domain gets at the heart of why developer documentation can be so challenging for technical writers (who presumably aren't experts in the knowledge domain). You'll likely need to rely on engineers to help identify terms that need to be defined.

## Integration

One question to consider is how and where to integrate the glossary definition within your technical content. For example, suppose that you have the terms "near field" and "far field" in your content, referring to voice interactions with a device. You might use these terms in a number of sections and different pages. You could incorporate tooltips (such as these [tooltips from Bootstrap](https://getbootstrap.com/docs/4.1/components/tooltips/)) over the term the first time it's used on each page in your docs.

However, it's probably easiest to simply the term to the glossary definition the first time you use it, and then let users make their own way to the glossary when they need help. As long as the glossary page is in a clearly visible and easy to access space, you don't have to go to great lengths to link terms everywhere.

## Sample glossary pages

**Lyft**

{% include course_image.html url="https://developer.lyft.com/docs/glossary" filename="glossary_lyft" ext_print="png" ext_web="png" alt="Lyft glossary" caption="Lyft glossary" %}

Lyft's glossary doesn't have a ton of terms (there are about 10), but they're specific to the Lyft API world. You see terms such as "Lyft Line," "Lyft Lux," "Lyft Plus," and so on. I like that the developer documentation takes pains to actually define terms that might normally be bandied about in Marketing and Sales pages. Whenever a company includes a glossary, it demonstrates a sensitivity the company has toward users in not assuming that the user automatically knows all the company's special terms and vocabulary.

**Yext**

{% include course_image.html url="" filename="http://developer.yext.com/docs/glossary/" ext_print="png" ext_web="png" alt="Yext glossary" caption="Yext glossary" %}

Note how in the Yext glossary, when industry standard terms such as "SSO" are defined, the definitions cover the company's specific use of SSO; the general term SSO isn't simply defined. Yext explains, "Single Sign On, which is a feature available to enterprise clients and partners." And then goes on to explain more details around partners' versus employees of enterprise clients and how they can each use SSO.

When viewing the glossary, the terms also appear in the sidebar, replacing any doc pages listed there. I'm not a fan of this approach, because it causes users to lose the doc context to view definitions. If the glossary is common to multiple sets of documentation, one would hope the glossary definitions are single-sourced through the authoring tools.

One challenge this Yext example brings up is how to distribute glossaries across multiple doc sets. Suppose only some of these terms are relevant to one doc set, and other terms are relevant to another doc set. Do you partition the glossary into multiple specialized glossaries or just have one general glossary for the entire site? Use the strategy that makes sense for your docs. For the most part, since users just jump down to one specific glossary entry, it doesn't matter if other terms (that aren't specific to the doc set in context) are also included.

**Apigee**

{% include course_image.html url="https://docs.apigee.com/api-platform/reference/glossary" filename="glossary_apigee" ext_print="png" ext_web="png" alt="Apigee glossary" caption="Apigee glossary" %}

The glossary provides another good model to follow. One interesting decisions with Apigee's glossary is to format the entries as a table. It probably doesn't matter much, but given that there are official definition list elements in HTML, it seems a bit odd to reject them and use tables instead. Definition lists usually display better on mobile devices such as phones and tablets, and the definition lists are easier to work with in general.
