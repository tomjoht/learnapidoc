---
title: "Principle 3: Ensure information harmony in the larger landscape"
permalink: simplifying-complexity/ensuring-information-harmony-in-the-larger-documentation-landscape.html
sidebar: simplifying_complexity
description: "Before adding new topics to an information landscape, look to see how the new information will fit in with the existing information &mdash; across all information forms, from docs to blogs, forums, white papers, and more. Synthesizing information to harmonize with the larger information landscape requires wide reading and analysis but is essential for the user experience, since users often bounce from one information source to another as they consume information."
published: false
---

In [Overcomplicated: Technology at the Limits of Comprehension](https://www.amazon.com/Overcomplicated-Technology-at-Limits-Comprehension/dp/0143131303), Samuel Arbesman explores why technology has become increasingly complex. He covers a variety of factors throughout the book, but two factors I want to call attention are **specialization** and **interconnectedness**, as these two factors have a direct relevance to documentation.

Both specialization and interconnectedness contribute to a high degree of complexity in a system. When these two elements are pushed to extremes, the result can be a scenario where few understand the full scale of how something works, and almost no one understands what happens when the various elements interact. Disaster scenarios can develop swiftly and catastrophically.

With documentation systems, when subject matter experts contribute specialized articles into a larger system without understanding how their individual articles interact with other information in the system, the result is often a redundant, contradictory, and ever-increasing jumble of content. In this article, I'll explore ways to solve this problem through better metadata.

## Specialization and interconnectedness

Let's start with the trend of specialization, as this is already a familiar concept. (Later, we'll show how specialization combines with interconnectedness to create complex problems.) Arbesman explains:

> As knowledge grew beyond the bounds of any one continent, or culture, or mind, to have confident grasp of the systems around us we would have to specialize&mdash;to understand a small field very well, say, advanced weaponry, or some subfield of science .... knowledge has grown far beyond any single person's capacity to master it. To build models of the world and new technological systems at the frontiers of what we know, we have had to learn "more and more about less and less"&mdash;to specialize in different domains.  

I'll give an example of specialization by describing one of the domains I document at work &mdash; app development for Fire TV. Fire TV is based on the [Android operating system](https://developer.android.com/index.html), which provides a rich, robust landscape of Java-based APIs for developers to build apps for all types of devices.

<figure style="max-width: 200px; float: right; padding: 0px 20px">
<a class="noCrossRef" href="https://www.amazon.com/Overcomplicated-Technology-at-Limits-Comprehension/dp/0143131303"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/overcomplicated.png"></a><figcaption>Overcomplicated explores the complex entanglement that technology has become, where no one understands all the pieces yet they are all interacting together as a whole.</figcaption></figure>Apart from the Android foundation, Fire TV itself has various components that have different specializations. Some specialists are responsible for audio focus handling. Understanding how apps handle audio focus when you change from app to app is critical, especially when you introduce voice commands that have to interrupt the app that is currently handling audio. Playing Pandora, asking what the weather is like, and then playing Netflix all within the same sequence require a complex understanding of how to manage audio focus within your app. (If you've ever had a situation on your smartphone where the audio wouldn't stop playing after you closed the app, you know what failure in this area looks like.)

Another area of specialization involves how apps can populate the Fire TV home screen through recommendations. Apps can leverage Android's recommendations API to send recommended titles, but Amazon also provides a host of "extras" for additional information, such as rating and IMDB information. How does the Fire TV home screen decide which recommendations to handle, the limits of recommended tiles, the order, placement, and other handling of content on the home screen? What algorithms drive the content that different audiences see on the home screen, from the featured media, the ads, special rows for Netflix and HBO, and more (including both Prime and non-Prime audiences, the U.S. and international audiences, etc.)? How do you decide what content to highlight in the top banner for users across regions and marketplaces? Again, this involves another layer of specialization.

When you link your Echo or another Alexa-enabled device to your Fire TV, this creates more complexity. Voice commands transition into directives passed through a middleware layer to your Fire TV device, and so on. Voice commands can initiate from near-field (your remote) or far-field (an Alexa-powered device like an Echo). Suppose you have both an Echo and Echo Dot, and both are linked to your Fire TV. What logic decides which Echo responds?  How does the microphone array inside each Echo decide determine which device is closer to the sound source?

These are just a few examples of specialized knowledge around a single device, but there are hosts of others. Consider the hardware elements (the system on chip and graphics properties), the physical elements of the device, such as its size and the way it connects to your TV, which in the case of Gen 3 models was a "pendant"), and more. The multimedia team has an extremely geeky knowledge of codecs, refresh rates, bit rates, media players, and other details. They ensure correct audio/video syncing with 4k content and more. If you're ever watching a movie and the sounds don't match the actor's mouth movements, the audio/video is out of sync.

Fire TV is one example of a product that involves many different specialists all providing deeply technical input that is not understood in its entirety by any single team. A complex product might involve 20 different specialist teams each contributing to it in important ways. Commonly, each specialist joins a stage of other actors working in a carefully choreographed play rather than giving a solo, independent performance. Each specialist must act *in harmony with the other actors* on stage, but each specialist usually has only a superficial understanding of the other actors' roles and parts.

To gain **in-depth** knowledge, the specialist has to sacrifice **breadth** of knowledge. The ability to go both deep *and* broad (playing the Renaissance role where you're a master of everything from physics to art to medicine and poetry) ended long ago. We live in an era of specialization, and this specialization contributes to scenarios where systems become complex.

## When specialists contribute to docs

To provide documentation for a complex product, one strategy is to have the specialists contribute the content related to their area of expertise. For example, the audio focus engineer contributes best practices for handling audio within an app, the multimedia team contributes best practices for syncing audio-video streams with playback rates, the Alexa team handles the voice interactions, the localization team handles the language preferences and string options, and more.

However, here's where this model breaks down. If each expert team contributes their knowledge in a siloed, independent way, how do they know if their contributions overlap, contradict, or harmonize with the contributions that the other experts make?

This is the problem with any kind of multi-authored documentation effort &mdash; contributing experts have tunnel vision in the system. They often look (in a myopic way) at their own piece of the information landscape, because that's the area they understand in depth. When the engineer contributes a specialized article, does he or she read the other information on the developer portal to understand if the content he or she is contributing harmonizes with other information on the site? Does the contributor even read the information on the site in any depth? Suppose the site has thousands of pages of documentation. How does the contributor even know what other pages are relevant, and whether the information he or she is contributing contradicts, harmonizes, or integrates well with the other information?

<figure><img class="medium" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/distillation_and_integration_integration.svg"/><figcaption>Integrating a small unit of information into a larger body of information requires you to be familiar with the larger information landscape and what else has been written on a topic.</figcaption></figure>

A contributor's myopia would be acceptable if each of the documentation components functioned independently of each other. For many topics, this is indeed the case. But increasingly, one element interacts with other elements, one system interacts with other systems, and so on. The nature of the web is trending toward an interconnected web of APIs, where multiple systems interact and influence each other. This is where specialization and interconnected systems create a risk of unpredictability and lack of interoperability.

Arbesman explains,

> Specialization is required in order to understand more and more about the intricate systems around us, such as the human body, now divided up among numerous specialties in medicine. But at the same time, the systems we are building&mdash;the technologies that run our world&mdash;are not only intricate and complicated, but also stitch together field after field. We have systems in the world of finance that require an understanding of physics; there are economists involved in the development of computer systems. The design of driverless cars is a good example, requiring collaboration among those with expertise in software, lasers, automotive engineering, digital mapping, and more.
>
> In other words, even as specialization aids us in making advances, we are ever more dependent on systems that draw from many different areas, and require an understanding of each of these. Yet a single person can no longer possess all the necessary knowledge. To any one person, these systems as a whole are truly incomprehensible.

Arbesman says that it's not uncommon for unexpected interactions to result when these systems (which no single individual understands) interoperate. When this happens, there's a high risk of massive failure that few can solve. As an example, Arbesman describes a day in 2015 when both the United Airlines grounded its planes and the New York Stock Exchange halted trading, both due to separate computer glitches that were thought to be related. Arbesman later explores the value that generalists bring, and how necessary it can be for an individual to have several areas of expertise.

From a documentation point of view, I want to solve the issue of content interoperability, that is, finding a way to ensure content harmony within a vast system of information, especially when engineers act as contributing authors (as is often the case with developer portals). When the expert wants to contribute a topic, how can we look into our documentation landscape and know what else has been said about that topic? What other topics does this new topic affect? How can we know if the new topic will contradict, overlap, or otherwise influence these other topics?

You can be sure that readers bounce from topic to topic, landing on search results that list all pages with the common keyword the user searched for (from docs to blog to forum and more). For example, suppose a user searches for "MediaSession," and the results return topics from 6 different areas of the site. What is the user's experience in navigating all of this [potentially conflicting] information?

We can't expect contributing experts to be familiar with all the documentation on a site, but couldn't we present a list of related topics for the specialist contributor to consult? By surfacing all content written on a similar topic, the contributing expert can get an enlarged view of the context for the information he or she is contributing to.

Additionally, if we know the owners of the other topics, they can evaluate the appropriateness of the new information being added. Like an elephant herd deciding to accept a new elephant to the herd, this group of content owners, connected by a similar topic theme, can choose to accept or reject the new [content] elephant.

## Strategies to surface similar-themed content

The ability to surface similar information returns us to the topic of metadata, which we touched on in the previous topic ([Discoverability through metadata &mdash; strategies to guide users through complex, non-linear systems](/simplifying-complexity/discoverability-through-metadata.html)). In that previous section, I kept the discussion fairly high-level, but now we'll get a bit deeper. First, each topic should have a clearly identify owner (identified through an `owner` tag).

The owner is easy enough to identify. For each topic, we merely identify a primary person who owns the feature, service, or approach. This owner can help be identified in a gating workflow with the introduction of new content &mdash; that is, before content on the page is published or updated, the owner is consulted and signs off.

However, the larger task is to see how this information fits into the broader information landscape. This task is what separates the contributing specialist from the higher-level analysist and thinker. One must survey what else has been written on the topic and evaluate whether the new information harmonizes with it.

One approach for this might be to develop a taxonomy for the products and terms in your company, and then meticulously tag each piece of content with the terms from this taxonomy. Tags would need to align with a controlled vocabulary to prevent them from going in 10 different directions. For example, without a controlled vocabulary specified in a taxonomy, content related to "media session" could be tagged as "media-session," "MediaSession," "Media Session," "mediasession," "mediaSession," and more.

However, this approach is fraught with error for a number of reasons:

* Creating an enterprise taxonomy takes a lot of effort in gathering consensus across organizational boundaries. The taxonomy would need to be maintained and updated in a central place.
* Enforcing the taxonomy is difficult. Everyone would need to be working in a similar system to provide any kind of consistent enforcement of the taxonomy.
* The same taxonomy term might be interpreted in different ways by different groups.
* Tagging content across documentation, marketing, support, and other channels is a task so arduous few will have bandwidth to do this.

I consulted the WTD community for any experiences with tagging. One WTD member said her experience with tagging required a tremendous amount of work for a relatively small doc set (100 pages) and didn't seem worth the effort.

Further, rather than consulting a terminology glossary or index to look for content, users will probably default to searches based on keywords and phrases from their own heads. Even if a user were to locate a term, such as "mediasession," and click it to see all topics tagged with that term, the user would probably distrust the comprehensiveness of the topic list and simply perform a search for the information anyway. (At least I know *I* would.)

As a result, even though this topic-tagging effort might be noble and well-intentioned, tagging all content with an agreed-upon taxonomy of terms probably won't work in a practical scenario.

It is important to tag content, though. But the "tagging" that needs to be done is to infuse the content (the title, headings, opening paragraphs, etc.) with the right keywords and language that users will search for. This search engine optimization of the content will ensure the content surfaces correctly in search engines when users search for it.

The reality is that, in this digital age, indexing is largely an abandoned activity, replaced with searches. In fact, analytics usually indicate that 75% or more of traffic comes from Google. Why bother to consult an index when you can just search for the same keyword? If that's the behavior, why fight it? Instead, let's align with this searching behavior and provide strategies around it.

## An approach for seeing what users see

In my documentation topics, I added a field called `queries` in the frontmatter. In `queries`, I list various keywords and phrases that I think users would search for to locate the topic. Then I have a reports script that url-encodes the queries and inserts them into URL strings that execute searches. For example, in a topic, I might have this property (among many others) in the frontmatter:

```yaml
queries: mediasession, enable voice playback, integrate alexa into app, alexa-enable app
```

The specific topic here is [Alexa Integration (Fire App Builder)](https://developer.amazon.com/docs/fire-app-builder/alexa-integration.html).

In my reports scripts (used for the writer only, not the reader), here's how these query strings get inserted into searches:

```liquid
{% raw %}{% for doc in site.docs %}
<b>queries:</b> {% if doc.queries == "none" or doc.queries == null %} Missing {% else %}
{% assign queries = doc.queries | split: ", " %}
<ul>{% for query in queries %} {% assign queryEncoded = query | url_encode %}
  <li>
      "{{query}}" → <a target="\_blank" href="http://www.google.com/search?q=site%3Adeveloper.amazon.com+{{queryEncoded}}">Google</a>,
      <a target="\_blank" href="https://developer.amazon.com/public/search?query={{queryEncoded}}">Dev Portal</a>,
      <a target="\_blank" href="https://forums.developer.amazon.com/search.html?f=&type=question+OR+kbentry+OR+idea&redirect=search%2Fsearch&sort=relevance&q={{queryEncoded}}">Forums</a>
</li>
    {% endfor %}</ul>{% endif %} </div>
{% endfor %}{% endraw %}
```

This script looks for the `queries` tag in the frontmatter of a page. It converts the comma-separated values into an array, and then uses a `for` loop to iterate through each item in the array. For each item, it [url-encodes](https://shopify.github.io/liquid/filters/url_encode/) the query term (making it safe to populate in the address bar as a URL), and executes searches in three search forms: [Google](https://google.com), the [Developer Portal](https://developer.amazon.com/), and the [Knowledge Base](https://forums.developer.amazon.com/index.html).

The report's output looks like this:

<div class="metadataProperty" style="padding: 20px; background-color: #f0f0f0;"><b>queries:</b> <ul>
<li>
"mediasession" → <a target="\_blank" href="http://www.google.com/search?q=site%3Adeveloper.amazon.com+mediasession">Google</a>,
<a target="\_blank" href="https://developer.amazon.com/public/search?query=mediasession">Dev Portal</a>,
<a target="\_blank" href="https://forums.developer.amazon.com/search.html?f=&amp;type=question+OR+kbentry+OR+idea&amp;redirect=search%2Fsearch&amp;sort=relevance&amp;q=mediasession">Forums</a></li>

<li>
"enable voice playback" → <a target="\_blank" href="http://www.google.com/search?q=site%3Adeveloper.amazon.com+enable+voice+playback">Google</a>,
<a target="\_blank" href="https://developer.amazon.com/public/search?query=enable+voice+playback">Dev Portal</a>,
<a target="\_blank" href="https://forums.developer.amazon.com/search.html?f=&amp;type=question+OR+kbentry+OR+idea&amp;redirect=search%2Fsearch&amp;sort=relevance&amp;q=enable+voice+playback">Forums</a></li>

<li>
"integrate alexa into app" → <a target="\_blank" href="http://www.google.com/search?q=site%3Adeveloper.amazon.com+integrate+alexa+into+app">Google</a>,
<a target="\_blank" href="https://developer.amazon.com/public/search?query=integrate+alexa+into+app">Dev Portal</a>,
<a target="\_blank" href="https://forums.developer.amazon.com/search.html?f=&amp;type=question+OR+kbentry+OR+idea&amp;redirect=search%2Fsearch&amp;sort=relevance&amp;q=integrate+alexa+into+app">Forums</a></li>

<li>
"alexa-enable app" → <a target="\_blank" href="http://www.google.com/search?q=site%3Adeveloper.amazon.com+alexa-enable+app">Google</a>,
<a target="\_blank" href="https://developer.amazon.com/public/search?query=alexa-enable+app">Dev Portal</a>,
<a target="\_blank" href="https://forums.developer.amazon.com/search.html?f=&amp;type=question+OR+kbentry+OR+idea&amp;redirect=search%2Fsearch&amp;sort=relevance&amp;q=alexa-enable+app">Forums</a></li>
</ul> </div>

I can now click each search URL and see if the search actually returns my page. If not, then the content is not appropriately surfacing based on the keywords and phrases I think users would use to search for it. (In other words, I haven't "tagged" the content appropriately.)

I can also see what else is returned with this search. I can browse what is returned (from the blog, from forum articles, and other sources) and see if the information harmonizes well. Granted, one still has to read through this other information and determine the information's integration into this larger whole. But that is the task required for good documentation. A poor technical writer creates one-off articles and sends them over the documentation wall, hoping they are instructive. A good technical writer reads all the information on the site (narrowed by the search queries) and evaluates the information harmony of each piece of content. It's a higher-level activity that you gain often through advanced college degrees where you learn to crunch through large amounts of information, read extensively and widely, and synthesize information into larger, coherent narratives.

## Questions for ensuring information harmony in the larger landscape

* What else has been written about this topic on our site?
* What has been written about this topic on other sites?
* What do users see when they search for these keywords? Do other articles on our site appear beside this article?
* Does this article contradict, repeat, or harmonize with the other information about the topic?
