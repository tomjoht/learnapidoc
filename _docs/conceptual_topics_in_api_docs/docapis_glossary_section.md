---
title: API glossary
permalink: docapis_glossary_section.html
keywords:
course: "Documenting REST APIs"
weight: 7.90
sidebar: docapis
section: docconceptual
path1: docconceptual.html
no_newsletter: true
last-modified: 2022-03-20
---

The glossary defines all the terms that might be helpful for users to know &mdash; and especially all terms unique to your company or product. Glossaries are often overlooked or skipped, but their importance should not be understated since much of the user's understanding of API documentation depends on the clarity and alignment of specific terms. A glossary will help you, as a writer, be more precise about terminology. Additionally, sourcing definitions from a central glossary file can make authoring more efficient and consistent.

* TOC
{:toc}

## Defining specialized terms

Unlike most other professional writing disciplines, tech docs are notorious for the number of specialized terms in their content. We have unique terms specific to our company as well as industry and business domain jargon.

{% include ads.html %}

API evangelist Kin Lane noted his frustration with an API's language when he encountered an undefined acronym in some API docs he was browsing. Lane explains,

> I came across a set of API resources for managing a DEG the other day. You could add, updated, delete and get DEGs. You can also pull analytics, history, and other elements of a DEG. I spent about 10-15 minutes looking around their developer portal, documentation, and even Googling, but never could figure out what a DEG was. Nowhere in their documentation did they ever tell consumers what a DEG was, you just had to be in the know I guess. The API designer (if that occurred) and developer had never stopped to consider that maybe someone would stumble across their very public API and not know what a DEG was. ([Using Plain Language In Your API Paths](https://apievangelist.com/2018/07/09/use-plain-language-in-api-paths/))

In this case, DEG must have been an acronym specific to the developer's API. In these cases, there's no excuse for not defining your own pet acronyms and unique vocabulary.

{% include random_ad3.html %}

But many times, acronyms and unfamiliar terms are an unavoidable part of a specialized domain. As a technical writer, using the correct terms for your knowledge domain and your product is necessary, and those terms are often appropriate for that particular knowledge domain.

To simplify the language, you can't just omit the necessary terminology for the domain and substitute in more friendly names. You have to teach the user the right language so they can participate in the conversation. One approach for teaching users how to speak this language involves defining unfamiliar words for the user by way of a glossary.

<figure><img class="docimage medium border" src="{{site.media}}/{% if site.format == "kindle" %}nonref_glossary.png{% else %}nonref_glossary.svg{% endif %}" alt="Glossary" /><figcaption>Glossaries not only provide clarity about terms for users but also help the writers think more clearly and consistently about the topic.</figcaption></figure>

{: .tip}
I provide an [API glossary here](api-glossary.html) that defines many terms related to API documentation. If you run into unfamiliar jargon that I don't define in the topic, you can always consult the glossary.

## Should you provide a glossary?

Usually, providing a glossary in your documentation seems like going above and beyond the call of duty. However, defining these terms has tremendous benefit for the writer too, not just for the users.

{% include random_ad4.html %}

Defining terms helps you recognize the specialized terminology that might be used with your API &mdash; terms that you may have become immune to by hearing them so frequently in project meetings. By defining the terms, you ensure that you're using these terms more precisely and accurately (rather than switching around with synonyms for variety).

{% include image_ad_right.html %}

## Localization requirements and glossaries

If you're planning to localize your API documentation, most translators will require a glossary. Especially with API documentation, there are many technical terms that translators need to to be aware of so they can decide whether the terms should be translated.

For example, suppose in your sample Android app, you have terms like `PlaybackState` and "media session" and "callback" and `BroadcastReceiver`. Translators need to be technical enough to know whether these terms should be translated or left as is. Terms set off in `code` tags normally wouldn't be translated, but many other terms referring to technical elements might also best be left untranslated. It can be a tricky judgment call when the technical term isn't set off as code but refers to a technical concept or class (such as "MediaSession").

After translators finish translating the content, the translation needs to be checked over by a subject matter expert in that language &mdash; usually by a field engineer who works with clients in that locale. The glossary will also assist the subject matter experts who review the translation.

## Specialized versus non-specialized terms

One challenge in coming up with a glossary is distinguishing between specialized terms unique to your API and terms that are common within the industry or knowledge domain. You don't need to define terms that are common within the knowledge domain you're working in. For example, with a sample Android app, you wouldn't need to define adb (Android Debug Bridge) in your glossary because most anyone who develops on Android would presumably already be familiar with adb.

However, if you think listing some industry terms in the glossary would be helpful for users, who might need a little more information, you can do so. Glossaries can easily accommodate dozens or even hundreds of terms. In your definitions, you can also include links to external sites where more information is available.

Separating your API's terminology from the general knowledge domain gets at the heart of why developer documentation can be so challenging for technical writers (who often aren't experts in the knowledge domain). You'll likely need to rely on engineers to help identify terms that need to be defined.

{: .tip}
I explored glossaries in depth in [Reducing the complexity of technical language](https://idratherbewriting.com/simplifying-complexity/reducing-the-complexity-of-technical-language.html). As a best practice, you can get a good sense as to whether you're using the right terms in a standard way by reading your competitor's documentation.

## Integration of the glossary with documentation

One question to consider is how and where to integrate the glossary definition within your technical content. For example, suppose you have the terms "near field" and "far field" in your content, referring to voice interactions with a device. You might use these terms in a number of sections and different pages. Sure, you could define these terms the first instance in your docs when you use them, but what if they appear on half a dozen pages? Users might not start on the initial page where they're defined.

You could incorporate tooltips (such as these [tooltips from Bootstrap](https://getbootstrap.com/docs/4.1/components/tooltips/)) over the term in places where you don't define it in-context. You could also link to the glossary definition rather than continually incorporating tooltips.

One principle to consider with connecting terms to glossary definitions is Fitt's Law, which asserts that "the distance between a user’s task/attention area and the task-related button should be kept as short as possible" ([What is Fitts' Law?](https://www.interaction-design.org/literature/topics/fitts-law)). In other words, the more distance between your glossary definition and the term, the harder it is for users to locate the definition. Users have to leave their context to go hunting for the definition, and then return. This context switching is often skipped by users because it's a drag on their efficiency.

In the worst case scenario, the term might not have a tooltip or link, and the glossary page link might not be visible at all in the page's context. In this case, it becomes even harder for a user to locate the definition, requiring more time out of context. In the best case scenario, the term is defined within the context and flow of the sentence; or it has a tooltip that, on mouseover, shows the definition. The tradeoff of the latter scenario, however, is that making too many words styled into tooltip links distracts the user. Each link the user sees presents the user with the question of whether to click the link, which provides more cognitive load on the reading experience. If you do use tooltips, style them in a way that distinguishes them from regular hyperlinks.

## Reusing glossary definitions

To reuse glossary definitions, consider storing glossary terms and definitions in a structured file that acts like a database for glossary terms. For example, on my [glossary page](api-glossary.html), the data source is a YAML file here: [_data/glossary.yml](https://github.com/tomjoht/learnapidoc/blob/main/_data/glossary.yml). Each definition follows a structure like this:

```yaml
api:
  term: API
  def: "Application Programming Interface. Enables different systems to interact with each other programmatically. Two types of APIs are REST APIs (web APIs) and native-library APIs."
  link: See <a href='docapis_what_is_a_rest_api.html'>What is a REST API?</a>
```

By storing the data in a structured way like this, I can get the data out and re-use it in different ways. For example, to show all terms in the glossary, I created some for loops here to get the info and format it in the display you see on the glossary page: [_includes/glossary_full.html](https://github.com/tomjoht/learnapidoc/blob/main/_includes/glossary_full.html). The logic here is specific to Jekyll, but other docs-as-code solutions have similar templating options available. A lot of these templating languages operate in similar ways.

You could also get the same definition and insert it into a [Bootstrap tooltip](https://getbootstrap.com/docs/4.0/components/tooltips/). To do this, first initialize the Bootstrap code:

```js
<script>
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
</script>
```

Then populate the tooltip like this to get info from the glossary YAML file:

```html
{% raw %}Learning how to document <a href="#" data-toggle="tooltip" title="{{site.data.glossary.api.def}}">APIs</a> is essential in a tech landscape that has shifted to an information economy, with the buying and selling of information more than physical goods.{% endraw %}
```

The result:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/docapis_glossary_section.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<div style="margin: 20px 0px 20px 100px">Learning how to document <a href="javascript://" data-toggle="tooltip" title="{{site.data.glossary.api.def}}">APIs</a> is essential in a tech landscape that has shifted to an information economy, with the buying and selling of information more than physical goods.</div>

{% endif %}

Tooltips appear when you mouse over a link and disappear when you move your mouse off the link. Because of this behavior, don't include any links in tooltip text. If you want to link to text, use a [Bootstrap popover](https://getbootstrap.com/docs/4.0/components/popovers/). Just like with tooltips, popovers must also be initialized:

```js
<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>
```

You can then populate the popover with info from the glossary YAML file:

```html
{% raw %}Learning how to document <a data-html="true" href="javascript://" title="{{site.data.glossary.api.term}}" data-toggle="popover" data-placement="top" data-content="{{site.data.glossary.api.def}} {{site.data.glossary.api.link}}">APIs</a> is essential in a tech landscape that has shifted to an information economy, with the buying and selling of information more than physical goods.{% endraw %}
```

The result:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/docapis_glossary_section.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<div style="margin: 20px 0px 20px 100px">Learning how to document <a data-html="true" href="javascript://" title="{{site.data.glossary.api.term}}" data-toggle="popover" data-placement="top" data-content="{{site.data.glossary.api.def}} {{site.data.glossary.api.link}}">APIs</a> is essential in a tech landscape that has shifted to an information economy, with the buying and selling of information more than physical goods.</div>

{% endif %}

Notice that I separated out the link into its own property in [_data/glossary.yml](https://github.com/tomjoht/learnapidoc/blob/main/_data/glossary.yml). I did this to provide flexibility as to whether I wanted the link included. Including the link would be problematic if the link pointed to the same page where the popover appears. Also, since tooltips don't support links, I didn't want to always include the links there. If you're using popovers, note the following:

* The Bootstrap popover code has an attribute required to enable html: `data-html="true"`
* In YAML, it's easier to code links in HTML rather than Markdown. Converting the Markdown link to HTML using the `markdownify` filter will include `<p>` tags around the content (which are problematic in popover formatting).
* If clicking the popover link makes the page focus jump to the top, use `javascript://` instead of `#` for the link target.

Finally, to style the link in a distinct way from normal HTML links, add some CSS to links with the `tooltip` and `popover` data attributes:

```css
a[data-toggle=tooltip], a[data-toggle=popover] {
    color: cadetblue;
    border-bottom: dashed;
    border-bottom-color: darkgray;
    border-bottom-width: thin;
    font-style: italic;
}

a[data-toggle=tooltip]:hover, a[data-toggle=popover]:hover {
  border-bottom: solid;
  border-bottom-color: darkgray;
  border-bottom-width: thin;
}
```

## Glossary style

As you're preparing your glossary source, note a few common stylistic conventions:

* **Definition length**. Definitions should be short enough to appear conveniently in a tooltip (hence should be about the length of a tweet).
* **Definition tense**. Definitions should not repeat the word being defined at the beginning of the definition but should follow a dictionary-style definition.
* **Capitalization**. Capitalization should be consistent. Decide whether to capitalize the first letter of the word. Also note that although acronyms are fully capitalized, the same word spelled out is not always capitalized.

## Benefits to writers

I mentioned earlier that one main benefit of a glossary is the heightened precision and awareness around language for the writers. As you write documentation, you'll be more attuned to the language that appears in the articles, and unfamiliar words will stand out more prominently. Add these words to your glossary, and then use them consistently. Word usage might prompt more discussions about whether you're using these unfamiliar terms consistently. For example, people may be using HAL and VHAL interchangeably, but as you add the term to the glossary, it forces you to clarify the difference. In clarifying the difference, you then become more aware as to the correctness of your usage.

## Sample glossary pages

The following are sample glossary pages in various APIs.

### Lyft

<figure><a target="_blank" class="noExtIcon" href="https://developer.lyft.com/docs/glossary"><img class="docimage" src="{{site.media}}/glossary_lyft.png" alt="Lyft glossary" /></a><figcaption>Lyft glossary</figcaption></figure>

Lyft's glossary doesn't have a ton of terms (there are about 10), but they're specific to the Lyft API world. You see terms such as "Lyft Line," "Lyft Lux," "Lyft Plus," and so on. I like that the developer documentation takes pains to define terms that might frequently be used on Marketing and Sales spaces. Whenever a company includes a glossary, it demonstrates a sensitivity the company has toward users. The company doesn't assume that their users understand all the company's specialized terms and vocabulary.

{% include random_ad2.html %}

### Apigee

<figure><a target="_blank" class="noExtIcon" href="https://docs.apigee.com/api-platform/reference/glossary"><img class="docimage" src="{{site.media}}/glossary_apigee.png" alt="Apigee glossary" /></a><figcaption>Apigee glossary</figcaption></figure>

The Apigee glossary provides another good model to follow. One interesting decision with Apigee's glossary is to format the entries as a table. The format probably doesn't matter much, but given that there are official definition list elements in HTML, it seems a bit odd to reject definition lists and use tables instead. Definition lists usually display better on mobile devices such as phones and tablets, and definition lists are easier to work with in general.

Regardless of the format, I'm usually thrilled to see a glossary. All too often, glossaries are neglected in documentation (not just in API documentation). They shouldn't be. Much of the complexity of technical content is due to the high number of specialized terms &mdash; terms that product teams often assume their audiences know (but in reality do not).

## Other glossaries

* [Squiz](https://docs.squiz.net/matrix/version/latest/glossary/index.html)
* [AWS glossary](https://docs.aws.amazon.com/general/latest/gr/glos-chap.html)
* [RapidAPI](https://rapidapi.com/blog/api-glossary/)
* [Microsoft Teams](https://docs.microsoft.com/en-us/microsoftteams/platform/get-started/glossary)

## <i class="fa fa-user-circle"></i> Activity with glossaries {#activity_with_glossaries}

With the [open-source project you identified](docapis_find_open_source_project.html), identify the glossary (or lack of one). Then answer the following questions:

1. Does the API include a glossary?
2. If the API lacks a glossary, what terms would you suggest including in a glossary?
3. If the API includes a glossary, do term definitions link to any documentation topics for more information?
4. Are unfamiliar terms defined in the context of topics themselves?
5. Are the terms in the glossary consistent with the same terms used in competitor's documentation?

## More reading on glossaries

For more articles on glossaries, see the following:

* [Chapter 13. Glossary Guidelines](https://learning.oreilly.com/library/view/read-me-first/0131428993/ch13.html). *Read Me First! A Style Guide for the Computer Industry, Second Edition*. Sun Technical Publications. May 2003.

* [Defining Glossaries](https://www.ingentaconnect.com/content/stc/tc/2005/00000052/00000004/art00003), Michelle Kidd Tackabery. *Technical Communication.* Volume 52, Number 4, November 2005.

* [Techniques for Introducing Unfamiliar Terms](https://www.ingentaconnect.com/content/stc/tc/2020/00000067/00000001/art00006), David K. Farkas. *Technical Communication.* Volume 67, Number 1, February 2020.

* [The ABCs of Writing a Technical Glossary](https://www.ingentaconnect.com/contentone/stc/tc/1998/00000045/00000001/art00003), Evie Gray, William Ingram, and Dennis Bodson. *Technical Communication.* Volume 45, Number 1, February 1998.

* [Principle 7: Reduce the complexity of technical language](https://idratherbewriting.com/simplifying-complexity/reducing-the-complexity-of-technical-language.html), Tom Johnson. *Simplifying complexity series*. Idratherbewriting.com.
