---
title: "3. Writing (the writing process)"
permalink: docapis_writing.html
course: "Documenting REST APIs"
weight: 8.94
sidebar: docapis
section: writing_process
path1: writing_process.html
last-modified: 2021-11-19
---

In this section, I'll dive into practical tips and strategies for writing the content. Before you get to this point, I assume you've already done some [planning](docapis_planning.html) and [information gathering](docapis_information_gathering.html).

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## 3.1 Separate content into similar groups {#laundry}

Now that you've gathered information and interviewed a handful of people related to the feature, you probably have a large pile of content. For example, you might have a single doc where you've been collecting all of this information (copying and pasting nuggets of information from various docs). That doc might be 20+ pages long.

You must now begin organizing the information. I think of this task like sorting laundry. Start by sorting the content into different piles &mdash; put the socks together, the shirts together, the pants together, etc. (See [Writing is like sorting laundry &mdash; practical advice for tackling documentation projects](https://idratherbewriting.com/2015/01/29/writing-is-like-sorting-laundry-practical-advice-for-tackling-documentation-projects/) for a full elaboration of this analogy.) Just group like information together. Each pile will probably   become a separate page in your final content output (but maybe not).

## 3.2 Create an outline for each group {#outline}

Now that you have different groups of content, create outlines for each group.  I described the general shape of different documentation types in the [Conceptual topics section](docconceptual.html). For more documentation projects, you'll need several sections:

* [Product overview](docapis_doc_overview.html) &mdash; high-level description of the feature, requirements, prerequisites, geographic availability, components involved, workflow implementation, how to get help, etc.
* [Concepts](docapis_conceptual_topics_overview.html) &mdash; foundational concepts related to using the feature. These topics might include diagrams or other visuals to assist with understanding.
* [Reference](docendpoints.html) &mdash; the Javadoc or other reference documentation.
* How-tos &mdash; descriptions of how to implement the API and handle various scenarios.

An outline is a list of section headings and bullet points to cover in each section. Creating an outline precedes the actual writing of content. A good outline can reduce the fear of the blank page.

{: .tip}
For inspiration about the right sections to include in different content types, check out the [Good Docs Project](https://thegooddocsproject.dev/) for templates.

You can even review the outline with other groups you interviewed before you begin writing, if you want. It depends on how confident you are and how extensive the documentation is. The outline is basically your content plan.

{% include ads.html %}

It might be worth calling out some other fundamentals to tech writing here. In a creative writing project, you might have only a general sense of how you'll get from your starting point to the conflict to the resolution. As creative writers start writing, they get into a flow state, and sometimes the story takes them in directions they didn't intend.

Some novelists talk about how the characters dictate the shape of the story, and a kind of muse takes over and they just start describing the story that the characters themselves write. The story takes them in directions they can't anticipate or don't expect. This flow state might last hours and take them along unfamiliar paths and directions.

Writing documentation is a much different experience. You're operating in an _explanatory_ mode, not a _discovery_ mode. It's unlikely that your content will deviate much from the outline. Sure, to some degree, as you begin writing, the flow of concepts and sentences might veer from the outline or list of bullet points, but not like a creative writing flow.

(Despite all the differences from creative writing, at the heart of most types of writing is conflict. Story is the path taken to overcome conflict. So at this foundational level, there is still some parallel between creative writing and technical writing, but not a ton.)

No matter the type of writing, an outline is your friend. In an outline, the initial bullet points don't need to be polished or have strong coherence. You're just sketching out the plan, and you can rearrange sections and bullet points as much as you want. If the documentation is extensive and you're unsure about the approach, you can set up meetings with the same people previously described to talk them through the outline.

{% include random_ad2.html %}

Your outline should call out major sections. Note that unlike other forms of writing, documentation uses a lot of section headings. An academic essay might not have any subheadings, but documentation uses section headings every few paragraphs. The idea is that users skim and jump around rather than reading linearly, so this section-dominant style fits the user behavior about how people read documentation.

Section headings  also reduce the need for a more formal order and flow to the content, so in some ways writing documentation is easier than other forms of writing. You can always just tack on information in another section heading.

## 3.3 Set up meetings with reviewers far in advance {#set_up_meetings}

Before you start writing, take a few minutes to set up some review meetings. Get on the calendars of your reviewers now. Most reviewers like to have a few others reviewing the document at the same time, and if you wait until you actually have a draft ready, chances are there won't be any open time slots when those reviewers are all free. But if you schedule it 2-3 weeks in advance, you can ensure their availability and a room if necessary. Scheduling a review meeting also gives you a deadline.

In the review meeting details, indicate that you'll later update the event with a link to the draft. However, as I'll explain in [Reviewing](docapis_reviewing.html), most reviewers won't read anything until the actual meeting anyway.

## 3.4 Write the first draft {#first_draft}

Now that you have an outline, you're ready to start writing. This is one area that's difficult to give instruction for, but I'll do my best, sharing what works for me.

When I have writing to do, I often find myself looking around for anything else to do &mdash; check email, Twitter, Slack, browse Amazon, and so on. It's easy to suddenly think of all the other things I have to do and to focus my energy there because the task of *writing requires a lot of mental energy*. Writing isn't something I can sustain for long periods of time, especially if I'm already fatigued. As a result, to find the time and energy for writing, I maximize the part of my day when I have the most energy for this task: mornings.

After I wake up and have some coffee and breakfast, check email and news, I devote this time to writing. As the day wears on, my energy gets lower and lower, and by evening, I'm usually spent. Most people have an optimal time where their energy is at max productivity. When I was in college and didn't have kids or a full-time job, my writing energy peaked from about 8 to 11 pm. But now, during those same evening hours, I'm usually cruising in escape mode. Figure out when your mental energy is at full capacity, and then plan to write during that time.

The second strategy I use is to set a four-hour timer using a [Focus app](https://apps.apple.com/us/app/focus-time-management/id777233759?mt=12). This is just an app that keeps track of time on task, following the strategy of the [Pomodoro technique](https://francescocirillo.com/pages/pomodoro-technique). I find that four hours of writing is the most that I can squeeze out during a day. I set 4 one-hour sessions, and if I find myself getting off task during the session, I pause the timer. (For more on this technique, see [Writing productivity tip: Focus sessions](https://idratherbewriting.com/blog/writing-productivity-through-focus-sessions/).)

{% include random_ad4.html %}

With the timer set, I look at the outline, and then I just dive right into it. Even if the words don't flow at first, I just start typing and usually after a few paragraphs, I'm in a rhythm. (If you really struggle to start, just follow a stream-of-consciousness approach until your brain gets in gear.)

I allow myself to veer from the specific outline if the flow of the content dictates it. As a best practice, I try to connect the ideas from one sentence to another in a flow-like way. The general pattern is that a sentence ends on an idea that the next one begins on. If you keep that flow, from old-to-new information, it will provide more of a coherence and readability to your sentences.

I also keep my paragraphs relatively short, usually several sentences each and focusing on a single main idea. After several paragraphs, I start a new subheading that encapsulates the focus of the next paragraphs.

I like to listen to music while I write because it reduces my sense of hyper-correctness and allows me to access the part of my brain that is more focused on creating than on grammar and accuracy.

It's good to get the first draft of content on the page. After that, I can begin shaping it and refining it in a much less demanding way.

Even though I've been a professional writer for many years, I don't have a lot of writing stamina. After I get several hours of writing in, I often tap out. Writing is somewhat like exercising &mdash; after a couple of good hours max, I'm done. I can't just sit down for hours on end writing documentation. Very few can, especially given how much preparation is required to get the knowledge to write technical documentation. Instead of spending long hours writing, I try to chip away at larger content projects a little bit each day over a series of weeks. This approach (writing a little each day) usually ends up being more successful.

{% include random_ad3.html %}

## 3.5. Make a running list of questions you have {#questions}

While I'm writing, I usually have plenty of questions regarding things I'm unsure about or which are unclear. I make a list of these questions and use them later as I proceed through the review process. It's painful for reviewers to read docs from beginning to end, and reviewers will much prefer to be asked questions, as it's much easier. This also lets me zero in on those gray areas that I'm unsure about, maximizing the review time.

But for now, as I write, I just throw the questions into the questions doc. (I also sometimes put them in brackets directly in the documentation draft, though I find this clutters things up more than I like.) Later, when I'm done with the draft and ready to tackle the questions, I sort and organize the questions into logical groups.

## 3.6 Editing {#editing}

Once I have a first draft of content (no matter how bad), I'm ready to start editing. I try to space out my edits across multiple days. Prior to writing new content, I spend time reading over and revising the previous chunk of content I wrote. I find this helps reorient me about the content I've already written and allows me to fix or polish it with semi-fresh eyes.

Additionally, many days I don't feel like writing, but if I rev up my brain by reading and editing the previous chunk of content I wrote (for 30 minutes to an hour), I'm usually ready to push forward and write new content. This time for editing also helps reconstruct the context of what I was previously writing, bringing many of the details into focus so they're accessible when I begin writing again. (Writing is easier when you have this context fresh in your mind.)

Editing requires a fresh perspective, so I allow myself some space between edits &mdash; usually about a day. If I just keep editing the same content over and over all day long, especially content that I've only recently written, I become blind to so many aspects of it. I can't see all the problems. Somehow, allowing myself 24 hours focusing on other things enlivens my ability to see issues and fix errors in the content.

Ideally, if I can space out edits each day over the course of a week, that gives me 5 separate editing sessions. I'm usually amazed at how much I can fix and polish during this time period. It's really the secret to good writing. In contrast, if I crank out the content the day before and release it, the content isn't nearly as good as putting it through a cycle of edits spaced out like this. Think of it like bread that you have to let rise, followed by a session of kneading. When you make bread from scratch, you might need to let it rise a few times and punch it down to get it into the right shape.

## 3.7 Supplement confusing concepts with visuals and code examples {#visuals_and_code_examples}

The nature of writing technical documentation is to simplify and communicate complex concepts and techniques. You might find that words alone fall short of this task. To simplify complexity, leverage these two tools:

* [Visuals](#visuals)
* [Code examples](#code_examples)

### Visuals {#visuals}

Simple conceptual diagrams are easy to create. You don't need to be a graphic artist to draw boxes and arrows in a simple diagram to illustrate a concept. Download a program like [Sketch](https://www.sketch.com/) and create some basic visuals to illustrate technical concepts. Keep the diagrams simple, focusing on the aspect you're trying to explain.

If you keep the graphics simple, you'll maintain control over the graphic assets and be empowered to create them as needed. In contrast, if you ask a graphic designer to create the graphics, you might find that it's impossible for you to create more graphics matching their same style and brand. I highly recommend reading [The Back of the Napkin](https://idratherbewriting.com/2009/05/19/drawing-as-a-tool-for-thinking/) by Dan Roam (and my related post [Drawing as a Tool for Thinking: The Back of the Napkin](https://idratherbewriting.com/2009/05/19/drawing-as-a-tool-for-thinking/). See also [Creating professional looking graphics in the easiest, simplest way possible](https://idratherbewriting.com/2016/05/05/visualcommunication_noun_project/).

{% include image_ad_right.html %}

Overall, Roam argues that you should get rid of the idea that graphics can only be rendered by professional artists. Use graphics as a tool for thinking and for articulating complex ideas. The hard part about creating the graphic is coming up with an idea for depicting a concept. When that's your focus, simple diagrams are okay. Little boxes with text below them and some arrows to other boxes showing relationships between the boxes might be all you need to get your point across. If the graphic accomplishes its purpose &mdash; to help bring a confusing concept into focus &mdash; then it succeeds.

Here are some general techniques to follow when creating visuals:

* To show a difference between two things, consider showing graphics side by side with a slight difference between them.
* To keep the minimalist focus, try to communicate your ideas by showing as few lines as possible. Check out [Jean-luc Doumont's Trees, maps, and theorems](https://idratherbewriting.com/2009/06/25/page-layout-and-design-tips-from-jean-luc-doumonts-trees-maps-and-theorems/) for inspiration. Or read about how [Edward Tufte despises chart junk](https://idratherbewriting.com/2010/11/01/what-is-chartjunk-visual-imagination-2/).
* Use a change in color to draw attention to something; one subtle color change in an element can bring the reader's focus to what you're trying to highlight. (This is a tip from Doumont's book.)

Overall, creating visuals might be a welcome change from writing. You're still working but not taxing the same part of the brain.

### Code examples {#code_examples}

Code examples are another way that confusing concepts take on more clarity. I explored code samples more fully in [Code samples](docapis_codesamples_bestpractices.html), so I won't repeat everything there except to summarize the main reasons why code helps clarify details. You can write a ton of content trying to describe technical concepts and techniques, but sometimes a simple code sample can speak for itself because it's in a language that the reader understands.

For example, suppose you're trying to explain a technique for getting certain data using a combination of APIs. You could list a few bullets explaining the overall process, but users might get a lot more out of viewing a code sample showing the technique. Code presents the idea in ways that natural language (e.g., English) simply can't do, no matter how you describe it. Code brings with it a story in itself with classes, methods, and other logic. Code examples take a lot of pressure off of you to explain concepts. It's a win-win &mdash; easier for you, and better for the reader.

In fact, in nearly every [survey about APIs from SmartBear](https://smartbear.com/state-of-software-quality/api/documentation/), "examples" ranks number one in terms of the type of docs users want. So don't be shy. Ask engineers for code samples demonstrating how to approach various tasks. This might be something QA already has, and you just need to request it. I've found that engineers are usually more than happy to supply code samples here and there. They sometimes underestimate the power of code examples in conceptual documentation, so let them know you want them. As you're writing, include little placeholders here and there for code examples.

I chose to highlight the top two techniques for clarifying complex information: visuals and code samples. My larger point is to not rely entirely on writing to do the work. Use these other tools to help simplify complexity.

### Don't try to eat an elephant in one day {#elephant}

As you write content, don't get frustrated if you tap out long before the task is done. As I'm writing the content for this section, I've written it little by little over the course of two to three weeks. I try to squeeze in some writing time at the beginning and end of my day. I might spend one day writing a new section, another day reviewing a different section, another day adding new details to the previous section, another day sketching out section headings for an unwritten section, and so on.

I don't try to write everything at once. In fact, as I explained above, I don't think I really could. Writing is kind of like a nitro boost &mdash; it requires massive amounts of energy, and I can only tap into this energy periodically for short bursts of time.

If I get exhausted, I take a break. I watch Netflix for a while or walk around a bit. When my energy rebuilds, I start writing again. Getting that first draft is the hard part. If I absolutely can't get going, I just spend 15 minutes typing anything. Eventually, my writing brain usually resolves into focus and the words will take shape. (I might have to delete the first page, but that's okay.) If after 15 minutes I'm still not feeling it, then I bag the effort for the day and try again in the morning.

Once you get that first draft, you can iterate endlessly afterward as you edit and review the content for weeks following. But without some starting point, you won't have anything to shape. [NaNoWriMo](https://nanowrimo.org/) (National Novel Writing Month) is a good model for getting the first draft out. The goal of NaNoWriMo is to generate an initial draft of a novel in one month. It might be crap, but you can then spend the next year editing and fixing it. You at least have a starting point, a draft to read and evaluate.

### Run content through a spell checker {#spellchecker}

At some point when the content is more or less finalized, run it through a spell checker. You might prefer to do this later, after the reviews, but using a spellchecker now can help eliminate superficial errors so that reviewers aren't distracted by the typos and misspellings but can instead focus on substance.

My favorite spell checker is [Grammarly](https://app.grammarly.com/), though this service tends to be blocked in most companies due to the way Grammarly stores data on its servers. See [Is Premium Grammarly worth it for identifying style and grammar issues in tech docs?](https://idratherbewriting.com/2018/12/28/evaluating-grammarly-as-a-style-checker/) for more details.

Other options could be the spell checker in Microsoft Word, Google Docs, [HyperSTE plugin](https://idratherbewriting.com/2017/01/25/hyperste-simplified-technical-english-asd-ste100/) (to check for simplified technical English), or Acrolinx (if your company has it).

You might be amazed by how many errors these services catch, especially in lengthy content. I personally prefer to leverage as many of these services as possible. I almost always use Grammarly to check new blog posts and articles on my site. One writing teacher explained that a small grammar or spelling error calls attention to itself and can be like having your fly down while you're wearing a tuxedo. Imagine finishing writing 2,000 words of content, sending it to your entire department, and getting feedback from a higher-up executive that you misspelled a word. That kind of superficial feedback can be deflating.

## Next steps

Continue on to [4. Reviewing](docapis_reviewing.html).
