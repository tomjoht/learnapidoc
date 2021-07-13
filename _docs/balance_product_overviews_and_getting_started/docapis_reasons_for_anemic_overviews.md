---
title: "Reasons why product overviews are often minimal or nonexistent"
permalink: /docapis_reasons_for_anemic_overviews.html
course: "Documenting REST APIs"
weight: 15.2
sidebar: docapis
section: docstory
path1: /docapis_balance.html
last-modified: 2021-07-12
---

Have you ever found yourself reading documentation for a product and wondered, what exactly is the product? What does it do? Who is this for? Why isn't it more clear? You look for the big picture and higher-level understanding, but every topic seems to assume that you already know more than you actually do. The nature and use of the tool remains muddy.

In general, a product overview should allow users to get a good sense of what the product does, who it's for, why they might use it, the pain point the product solves, requirements and availability, how to get started, how to get help when needed, and other foundational concepts. Ideally, the product overview should give you a solid understanding of the product and what it's used for.

Yet in so many cases, when I start reading through documentation for a product, I'm often left confused and without a clear sense of what it's for or how I might actually use it, let alone how to get started. Other writers I surveyed [share similar frustrations](docapis_overviews_and_getting_started.html#others-experiences) with anemic product overviews that seem to fail in their task of orienting the user. Why are some product overviews so unfulfilling, so brief, disappointing, and weak? In this section, I'll explore several reasons for anemic product overviews.

* TOC
{:toc}

## Best practices for product overviews

Before diving into reasons why product overviews fail, let me first recap a few best practices. I already explored these topics in detail in [product overviews](docapis_doc_overview.html), but it seems right to at least cover best practices at a high-level. Consider including these general sections in a product overview:

*  Description of the product
*  Sample use cases
*  Intended audience and technical level
*  Requirements for use (system requirements, geo-requirements)
*  List of components involved
*  High-level architectural diagram of components, workflow
*  Development effort and scope
*  How to get support
*  Most popular topics
*  Known limitations, release notes
*  Link to getting started tutorial

Every product seems to elicit its own unique sections on the overview, but these sections will give you a good starting point. Now let's explore the reasons why product overviews frequently fail.

{% include random_ad4.html %}

## Cause 1: The reader isn't the intended audience, so overview fails for the wrong reader

Perhaps the main reason that product overviews fail is because the reader (for example, a tech writer reading a product overview about some API for developers) isn't the intended audience for the product. As such, the overview might fail for that particular reader, but actually be fine for the intended audience. This mismatch of actual reader versus intended reader makes it difficult to make judgments about product overviews.

As an example, take a look at some of the product overviews in [Microsoft's Azure docs](https://docs.microsoft.com/en-us/azure/?product=all), which look exemplary to me. You could use any product as an example, but let's start with the first product, the [Anomaly Detector](https://docs.microsoft.com/en-us/azure/cognitive-services/anomaly-detector/). The starting topic is [What is the Anomaly Detector API?](https://docs.microsoft.com/en-us/azure/cognitive-services/anomaly-detector/overview). (In fact, all docs seem to start out with "What is ... [product]?" This frequent pattern creates a nice sense of predictability to the various doc sets in their portal.) The first two paragraphs start as follows:

> The Anomaly Detector API enables you to monitor and detect abnormalities in your time series data without having to know machine learning. The Anomaly Detector API's algorithms adapt by automatically identifying and applying the best-fitting models to your data, regardless of industry, scenario, or data volume. Using your time series data, the API determines boundaries for anomaly detection, expected values, and which data points are anomalies.
>
> Using the Anomaly Detector doesn't require any prior experience in machine learning, and the RESTful API enables you to easily integrate the service into your applications and processes.

Although the sentences seem clear, and there are screenshots, interactive demos, descriptions of features, getting started topics, and more, I'm still lost because I'm not the intended audience for the product. What is "time series data"? What kind of data is appropriate to analyze here? Why would I want to look for abnormalities in my data? What kind of application or process would I integrate this anomaly detection service into? *I dunno...*

{% include image_ad_right.html %}

As good as this product overview is written, it doesn't make sense to me because I'm not the intended audience. I'm not a developer working with large data sets, nor am I involved in machine learning algorithms. It strains my mind to even understand what scenario would make sense where I'd have "time series data" with anomalies that I need to detect as part of a machine learning model that I'm building, even though this scenario is apparently applicable across industries.

It's not the writer's responsibility to bring non-target users up from ground zero here, holding my hand through this knowledge domain and assuming I know nothing. But it would help to perhaps explicitly identify the audience here. Even without identifying it, though, it's pretty clear reading this overview that I'm not user envisioned for this product.

So how do you, as a technical writer, a person who is most likely an outsider to the domain you're working in, especially if you're working in developer documentation &mdash; how do you know if the overview makes sense to the intended audience? This is the whole crux of writing documentation: most of the time, you're an outsider to the knowledge domain, so it's hard to know what the audience already knows or does not know, and what you need to explain or what you can assume.

As technical writers, we usually spin our lack of domain awareness as a positive, because we don't end up assuming our audience knows so much already. We aren't hampered by the curse of knowledge, numb to the jargon and concepts our audience also isn't familiar with. So we explain the basics, we define terms, we start a few rungs lower on the knowledge ladder than people expect. And users often appreciate it.

{% comment %}{% include random_ad3.html %}{% endcomment %}

But without closer interaction with users, we can only guess what users might know or need to know. Typically, we end up relying on feedback from those who do interact closely with users (such as devrel groups). Through them, we try to better understand the user's knowledge level, but even so, many times these groups can only speak from their own limited interactions. Most of us have experienced situations where engineers tell us that users will know this or that concept, only to learn later that users don't and the assumptions confused them. At the end of the day, we find ourselves staring at a product overview and, even if it fails for us, we hope it sort of works for the right audience.

{% include random_ad2.html %}

Overall, as we read through product overviews, we have to remember that we're usually not the intended audience. It might fail to orient us, but does it fail for the intended audience? At the very least, try to be clear about the intended audience, as this will set expectations for knowledge levels. You can also add a "Background Knowledge and Assumptions" section. This section could link out to some preparatory documentation (perhaps on other websites) that users should consult if they get lost.

{: .takeaway}
If the overview doesn't make sense to you, it might not actually be poor. You must determine whether it makes sense to the intended users of the product.

## Cause 2: UX's influence on intuitiveness implies that long overviews run counter to good product design

This cause is sort of an extended discussion on the previous point but a separate facet. Another reason why product overviews are anemic is due to UX's influence with intuitiveness. This scenario is more common with end-user docs, but the idea is that products should be intuitive and naturally address mental models that customers have, without the need for extensive explanations. Why would you need to explain a product in depth to the users who you built it for? If something needs a deep explanation, it probably isn't well-designed and intuitive for that audience. (Fabrizio Ferri mentioned this point during a thread on Write the Docs Slack.)

Achieving intuitiveness in your product is a common goal of UX design. In [What makes intuitive products intuitive?](https://uxdesign.cc/what-makes-intuitive-products-intuitive-52f52f12c3b5), Scott Kitchell argues that a product is intuitive when it matches the mental model of the user. Scott says, "Intuitiveness can be created by designing every part of a product in reference to a mental model, and then promoting the mental model through the UI and marketing."

Mental models are the logic and theories in our heads that make sense of the world around us. For example, in mountain biking, a common product for seats is a "dropper post," which lets bikers dynamically raise or lower the seat post height by pressing a button on the handlebars. Why would one need such a button and the ability to quickly raise or lower the seat height while riding? If you're into mountain biking, you know that climbing dirt/gravel hills requires you to sit back while keeping weight on the back tire for traction, so you might need to lower the seat quickly on the climb, but then revert to regular height for other scenarios.

In short, if you're part of the intended audience, you already have a rationale for the feature and don't need extensive conceptual docs explaining the scenario and reason for the product. You won't see extensive conceptual docs for dropper posts product detail pages. The need is already felt by the intended audience.

The problem in tech comm is that tech writers are usually outsiders to the domain, looking in at the product. We don't share the same mental model as our users. As a result, many details don't immediately make sense. Kitchell says,

> Mental models are literally the logic within our heads, so if it’s in there, you’ll see the logic in it. From the outside however, others will not. Unintuitive mental models are like irregular looking blocks &mdash; They don’t fit well with other mental models which makes them harder to remember, and problem-solve with.

Ideally, the product should just make sense for users, without a need for in-depth explanation. If you don't share the same mental model as your users, it's difficult to assess how much users will actually need the who, what, and why of the product. It might just make sense to them based on their mental model and problem set, like a jigsaw piece that fits perfectly into the space for which the piece was created. To evaluate whether a product needs an overview, you have to evaluate it not from an outsider's mental model, but from the mental model of users.

To assess whether the product fits intuitively within the user's mental model, you have to understand the users. You also have to separate out whether those same users were co-developers with the feature. It could be that you have a variety of users, and perhaps those implementing the product might also be outsiders to the domain &mdash; engineers who know how to code but who lack the domain expertise, and so on.

In other cases, your product might require some new learning, even for the target user. Mark Baker says, "... learning is about rearranging our own mental furniture, finding our way through the thickets of our own minds. The expert can help us enormously at certain key junctures in that process, but most of it we simply have to do for ourselves" ([Chatbots are not the future of Technical Communication](https://everypageispageone.com/2018/01/30/chatbots-are-not-the-future-of-technical-communication/)). It's not always the case that users will intuitively understand the product. Some learning frequently needs to take place, and that learning often involves some mental strain (the furniture being rearranged), even for the target audience.

For more on mental models, see the [Schemas and learning](https://idratherbewriting.com/simplifying-complexity/reducing-complexity-by-shaping-into-schemas-esp-story.html#schemas-and-learning) section in [Principle 5: Conform to the patterns and expectations of the genre and schemas](/simplifying-complexity/reducing-complexity-by-shaping-into-schemas-esp-story.html) *Schemas* are a more scientific term referring to the mental models in our heads that make sense of the world. See also [Script theory](https://idratherbewriting.com/simplifying-complexity/reducing-complexity-by-shaping-into-schemas-esp-story.html#script-theory) in the same article. Script theory argues that if designers create experiences that match the schemas by which users operate, users will naturally know what to do and act in an almost scripted way. For example, Kirk St. Amant says if you design your hospital waiting room in an archetypical, expected way, then users will naturally know what to do when entering the space.

{: .takeaway}

Define the stories that your audience uses to think about the scenario your product addresses. What mental model or schema organizes their thinking about the problem? If your product overview already naturally fits into this mental model, then you might not need to make the details more explicit in an overview &mdash; it might already make sense for the user.

## Cause 3: Overview pages are hard to write (so they're often neglected)

Another reason product overviews often fail for users is because, put simply, they are hard to write, and so they are often poorly executed. The product overview requires you to be thoroughly familiar with the product, comfortable enough to summarize the product at a high level, describe the overall architecture, use cases, how to get started, requirements and limitations, and more.

As technical writers, we're often incrementing our understanding of a complex product little by little &mdash; we're piecing together what it's about, how it works, how to perform various tasks, the reference material about the APIs, and so on, slowly identifying puzzle pieces and trying to fit them together into the right picture. At any given time, there are likely many unidentified and unused puzzle pieces, making the current picture incomplete. It might not be until several weeks or months that we have a light bulb moment and glimpse the full puzzle picture.

To use another metaphor, I often like to think of projects as a [monster that I battle and slay](https://idratherbewriting.com/blog/every-project-is-a-monster-you-battle/). That moment when I slay the monster is when I unlock its secret and suddenly grasp how it ticks, how to unlock its data and have it returned to me. It's at that point, near the end, that I can properly write the overview page. In general, *I usually can't write the first page of your documentation until I write the last page of documentation.*

And when am I writing that last page of documentation? Sometimes right near crunch-time, about two weeks before release.

If you're working more as an editor and publisher rather than an author, the overview might be even more challenging. You might be reliant on general product descriptions from internal documents, without the additional context and details that you get by struggling with the product for months with hands-on exploration and experimentation.

{: .takeaway}
Recognize that you typically acquire the full knowledge to write the overview only after you've written all the other documentation. To avoid last-minute efforts, keep running notes on an overview draft that you keep adding to as you work through the other documentation. Place section holders on the page, and then fill them in as you go.

## Cause 4: Agile's co-development influence makes it difficult to surface higher-level content needs

Another cause for poor product overviews is agile's co-development influence with products. Agile software development prescribes close interactions with users as software teams develop and build out the product. When users are so intimately involved in product development, essentially co-collaborators with each iteration, they don't need the higher level overview, story, and purpose of the product. They need only the technical details for implementing it.

In [Agile Principle 1: Active User Involvement Is Imperative](https://www.101ways.com/2007/02/24/agile-principle-1-active-user-involvement-is-imperative/), Kelly Waters lists out 10 principles of agile and says "active user involvement is the first principle of agile development." Why is active user involvement so fundamental to agile development? User involvement is essential because software teams want to build the product in a way that matches users needs, and you can't do that without closely working with users, checking in regularly with each build to see if it matches their expectations, and course correcting to fine-tune the alignment needed to build the right product.

{% include random_ad1.html %}

But just as product team members become somewhat numb to product jargon and the reasons behind decisions, the docs follow somewhat the same suit. There's no need to explain why the product is needed because, with active user involvement, these needs are communicated from the user from day one and throughout in regular meetings and other interactions. As such, there isn't a strong need for this higher-level overview and understanding. The conceptual basis for the feature is already understood by users because the product team iterated with users to develop the feature.

Once the feature is complete, some brief technical docs get added that explain how to use the feature. But the feature itself, the reason it was created, the problem it solves, the high-level overview and description of the feature, etc., is not documented because the initial user didn't need that high-level. Soon, the documentation follows a similar trend elsewhere, and soon you end up with lots of little building blocks and technical how-to's but no higher-level descriptions and glue between all of these tasks. New users who didn't participate in the feature's development have to try to derive back what the feature is and why/what/who the product is for.

Product overview anemia is a byproduct of the agile development process itself. This is where a technical writer's perspective as an outsider becomes so important. If you're an outsider to both the product and domain, you won't have this co-development history and won't have seen the product evolve from a sketch on a napkin to a fully released product. You'll see the lack of connecting glue between topics, the absence of a larger story that connects with your needs, and more. The problem is, without an audience asking for this higher-level information, you might be facing an uphill battle to generate the content. You might be writing an overview for an imagined future audience that hasn't yet materialized.

{: .takeaway}
If the users were co-developers of the product and features (or frequent sounding boards during the design phase), don't use that group as a barometer for assessing content needs. Find someone who is new to the product.

## Cause 5: Higher-level content is already handled by developer marketing content, making it redundant in docs

Another reason for anemic product overviews is because many of these higher-level questions are usually handled in the developer marketing layer, and tech writers don't usually operate in that pre-sales space. In many doc portals, there's a marketing layer that sits on top of the documentation. This marketing layer is supposed to articulate the larger story of the product &mdash; the problem the product solves, the target audience, use cases, case studies, and more &mdash; to a pre-sales audience.

As an example, see the example with AWS Lambda that I explained in the [product overviews](/learnapidoc/docapis_doc_overview.html#overlap-with-marketing) topic. In fact, the product overviews in the marketing layer pose challenges for overviews in technical documentation because tech writers usually try to avoid redundancy. Since many tech writers assume the marketing layer handles this larger story and overview about the product, this sort of content is often absent or minimized in the documentation's product overview.

Additionally, the higher-level overview often gets more into pre-sales territory than many technical writers are comfortable with. In this space, you're trying to tell the who, what, and how of the product in a way that resonates with user pain points. In [The importance of "how" in developer messaging](https://developerrelations.com/developer-marketing/the-importance-of-how-in-developer-messaging), Matthew Revell argues that developer messaging needs to cover the "what," "how," and "why" &mdash; often starting with the *what* and *how* before the *why*. He touches on the need to build confidence with your audience, to align your goals with theirs. Revell says:

> The origin myth of a product provides a framework that enables people to form their own feelings and thoughts about it. Without 'why' there’s no developer community, no champions, no advocacy.

Origin myths are not typical content that technical writers create. For example, you will not find a tutorial on origin myths in any technical writing handbook.

Developer messaging focuses on building trust with users, finding an emotional connection with them, addressing the developer journey, and telling the product story. Most tech writers don't think about this type of content in docs &mdash; this is the land of content marketing. For example, suppose you worked as a technical writer for Red Bull. Your primary task would be to describe the product's ingredients, not to construct a story about Red Bull being the drink of extreme sports enthusiasts, for as helicopter skiers and daredevil mountain bikers.

As such, if there is not marketing layer for the product, tech writers are unlikely to create one, as this space entails writing that tech writers might not want to dabble in. Or the marketing layer might fully address questions that don't need to be redundantly handled in docs.

However, any good content strategy should have alignment with each content touchpoint, from pre-sales to post-sales. In [Principle 8: Align the product story with the user story](/simplifying-complexity/articulate-invisible-stories-that-influence-action.html), a series on how to simplify complexity, I argued that products often fail because the story the company tells doesn't align with the story the user tells. Developer docs have the added complexity of having three stories: a company story, an end-user story, and a developer story. If all three groups are playing off different stories, the product likely won't succeed.

Even if a technical writer's job is to focus on the how and what, more than the why behind the product, technical writers should have a larger sense of product story that helps structure and direct the technical content. Ideally, the shape of documentation should be constructed around the developer journey, and that journey should connect with the product story.

{: .takeaway}
Look to see if marketing content covers the higher-level content needs in the documentation overview. If so, you could simply link to the marketing content, or alternatively, put a more technical, matter-of-fact spin on the same content. Either way, think about the developer's journey and story they tell themselves, and consider using this journey/story to shape your documentation.

## Cause 6: Tech comm buys in to the "reading to do" paradigm for docs, minimizing the need for longer conceptual docs

Another reason for lack of product overviews, even when outsiders like tech writers create the product docs, is because of tech comm's strategy preference for task-oriented docs. There's a strong belief among most tech writers that users turn to docs only when they have a problem they're trying to solve. As a result, docs are usually problem-oriented, focused on what users want to do and achieve. Conceptual docs are often seen as a sideshow to the task-oriented docs. This idea is so pervasive, it hardly needs explaining. The hallmark of good technical docs, most tech writers believe, is a list of numbered steps that takes users through a complex task.

This more action-oriented, experiential approach to learning has its roots in a movement called "minimalism" that John Carroll, author of the [*Nurnberg Funnel*](https://www.amazon.com/The-Nurnberg-Funnel-Instruction-Communication/dp/0262031639,) identified in the 1980s. Describing John Carroll's minimalism approach, scholars David Farkas and Thomas Williams write:

> The premise behind minimalism is that people learning to use computer software are impatient, mentally active, and curious. They want to begin right away getting their work done; they want to exercise their problem-solving abilities; and they are apt to utterly reject or diverge from highly constraining instruction such as tutorials. Training material, therefore, must not impede the natural impulses of computer users, as systems approach documentation does. It should be as brief as possible, support the accomplishment of real work, help leaners recognize and recover from errors, and, when possible, permit non-sequential reading. Such documentation cannot be generated mechanically from a theory of instruction but requires careful attention to the needs and behavior of the intended users of the software and reiterative testing of the design. (See [John Carroll's *The Nurnberg Funnel* and Minimalist Documentation](https://www.hcde.washington.edu/files/people/docs/farkaswilliamsonnurnbergfunnel.pdf). *IEEE Transactions on Professional Communication*, Vol. 33, Nov. 4, Dec 1990.)

If people are always anxious to do tasks, not read conceptual overviews, then why spend time on these conceptual overviews? What purpose do they solve when users just want a list of steps for the task they're trying to perform? With this mindset, the product overview gets shortchanged.

Don't get me wrong &mdash; I support task-oriented docs and agree that it's generally the right approach. There's merit behind experiential, action-oriented learning (which is explored more in the [Reasons why getting started tutorials  fail](docapis_reasons_for_bad_getting_started_tutorials.html)). Explanation docs without a hands-on sense of the product often fall flat. We need context and experience with a product to better understand it. If you try to learn something without first tinkering with the product, it's really hard because names don't mean much unless you have something to hang them on. I learn best by mixing the two experiences &mdash; tinkering and reading, back and forth.

But task-oriented docs often swing too far toward tasks, resulting in minimal or anemic overview information. When that happens, you often end up confusing users with various tasks and no content that helps their decision-making about which tasks to follow and why.

In [research about how developers use APIs](docapiscode_research_on_documenting_code.html#systematic-versus-opportunistic-behaviors), researchers have identified "opportunistic" behaviors (try-first), "systematic" behaviors (read-first), and hybrids of the two. When users are observed, there's much hybrid behavior that solely opportunistic or systematic. Just because you might be an opportunistic user, it doesn’t mean you always skip conceptual explanations &mdash; it's just that you might not start with concepts. A non-linear reader might start with code, trying it out on their own, and circle back to the introductory conceptual information when the code doesn’t work as expected.

Deciding to cater to one type of behavior at the expense of the other might not be practical, since the learning behaviors and approaches seem to be in constant flux.

{: .takeaway}

Remember that user behavior isn't night and day when it comes to opportunistic versus systematic behavior. Users flip back and forth between these two modes as needed. As such, try to link between the task-based topic and concepts where relevant to accommodate this fluctuating behavior.

## Next topic

Continue on to the next topic, [Reasons why getting started tutorials fail](docapis_reasons_for_bad_getting_started_tutorials.html).
