---
title: "3. Writing (the writing process)"
permalink: /docapis_writing.html
course: "Documenting REST APIs"
weight: 8.94
sidebar: docapis
section: writing_process
path1: /writing_process.html
last-modified: 2021-11-14
---

In this section, I'll dive into practical tips and strategies for writing the content.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## 3.1 Separate content into similar groups {#laundry}

Now that you've gathered information, read through it, and interviewed a handful of people related to the feature, you probably have a large pile of content. For example, you might have a single doc where you've been collecting all of this information. That doc might be 20+ pages long.

Start by sorting the content into different piles &mdash; put the socks together, the shirts together, the pants together, etc. I liken this process to sorting laundry in [Writing is like sorting laundry &mdash; practical advice for tackling documentation projects](/2015/01/29/writing-is-like-sorting-laundry-practical-advice-for-tackling-documentation-projects/). Just group like information together. Most likely, each pile will become a separate page in your content.

## 3.2 Create an outline for each group {#outline}

Now that you have different groups of content, create outlines for each group.  I described the general shape of different documentation types in the [Conceptual topics section](/learnapidoc/docconceptual.html). For more documentation projects, you'll need several sections:

* [Product overview](/learnapidoc/docapis_doc_overview.html) &mdash; high-level description of the feature, requirements, prerequisites, geographic availability, components involved, workflow implementation, how to get help, etc.
* Concepts &mdash; foundational concepts related to using the feature. Might include diagrams or other visuals to assist with understanding.
* [Reference](/learnapidoc/docendpoints.html) &mdash; the Javadoc or other reference documentation.
* How-tos &mdash; descriptions of how to implement the API and handle various scenarios.

Creating an outline precedes the actual writing of content. An outline is a list of section headings and bullet points to cover in each section. A good outline can reduce the fear of the blank page.

You can even review the outline with other groups you interviewed before you begin writing, if you want. It depends on how confident you are and how extensive the documentation is. The outline is basically your content plan.

{% include random_ad1.html %}

It might be worth calling out some other fundamentals to tech writing here. In a creative writing project, you might have only a general sense of how you'll get from your starting point to the conflict to the resolution. As creative writers start writing, they get into a flow and sometimes the story takes them in directions they didn't intend.

Some writers talk about how the characters dictate the shape of the story, and a kind of muse takes over and they just start describing the story that the characters themselves write. The story takes them in directions they can't anticipate or don't expect. This flow state might last hours and take them along unfamiliar paths and directions. Some creative writers start with outlines but then ditch them based on where the story takes them.

Writing documentation is a much different experience. You're operating in an _explanatory_ mode, not a _discovery_ mode. It's unlikely that your content will deviate much from the outline. Sure, to some degree, as you begin writing, the flow of concepts and sentences might veer from the outline or list of bullet points, but not by any means similar to a creative writing endeavor.

So the outline is your friend. In an outline, the initial bullet points don't need to be polished or have strong coherence. You're just sketching out the plan, and you can rearrange sections and bullet points as much as you want. If the documentation is extensive and you're unsure about the approach, you can set up meetings with the same people previously described to talk them through the outline.

{% include random_ad2.html %}

Note that unlike other forms of writing, documentation uses a lot of section headings. An academic essay might not have any subheadings, but documentation uses section headings every few paragraphs. Section headings reduce the need for a more formal order and flow to the content, so in some ways writing documentation is easier than other forms of writing. You can always just tack on information in another section heading.

Most users will jump around from section to section and also skim content non-linearly anyway, so the way users read and consume the documentation fits this more section-dominant organization. Your outline can list all of these sections.

## 3.3 Set up meetings with reviewers far in advance {#set_up_meetings}

Before you start writing, take a few minutes to set up some review meetings. Get on their calendars now. Most reviewers like to have a few others reviewing the document at the same time, and if you wait until you actually have a draft ready, chances are there won't be any open time slots when those reviewers are all free. But if you schedule it 2-3 weeks in advance, you can ensure their availability and a room if necessary.

In the review meeting details, indicate that you'll later update the event with a link to the draft. However, as I'll explain later, most reviewers won't read anything until the actual meeting anyway.

Won't be able to get all the people you want in a room. Put a placeholder on their calendar 2-3 weeks out. This will also give you a target deadline to aim for.

## 3.4 Write the first draft {#first_draft}

Now that you've got an outline, you're ready to start writing. This is one area that's difficult to give instruction for, but I'll do my best, sharing what works for me.

First, before I begin writing, I usually look for anything else to do &mdash; check email, Twitter, Slack, browse Amazon, and so on. It's easy to suddenly think of all the other things I have to do and to focus my energy there because the task of writing requires a lot of brain bandwidth. Writing isn't something I can sustain for long periods of time, so I maximize the part of my day when I have the most energy for this task: mornings.

After I wake up and have some coffee and breakfast, check email and news, I devote this time to writing. As the day wears on, my energy gets lower and lower, and by evening, I'm usually spent. Most people have an optimal time where their energy is at max productivity. When I was in college and didn't have kids or a full-time job, my writing energy peaked from about 8 to 11 pm. But now, during those same evening hours, I'm usually cruising in escape mode.

The second strategy I use is to set a four-hour timer using a Focus app. This is just an app that keeps track of time on task, similar to the Pomodoro technique. I find that four hours of writing is the most that I can squeeze out during a day. I set 4 one-hour sessions, and if I find myself getting off task during the session, I pause it. (For more on this technique, see [Writing productivity tip: Focus sessions](/blog/writing-productivity-through-focus-sessions/).)

{% include random_ad4.html %}

With the timer set, I look at the outline, and then I just dive right into it. I allow myself to veer from the specific outline if the flow of the content dictates it. As a best practice, I try to connect the ideas from one sentence to another in a flow-like way. The general pattern is that a sentence ends on an idea that the next one begins on. If you keep that flow, from old-to-new information, it will provide more of a flow to your sentences.

I also keep my paragraphs relatively short, usually several sentences each and focusing on a single main idea. After several paragraphs, I start a new subheading that encapsulates the focus of the next paragraphs.

I like to listen to music while I write because it reduces my sense of hypercorrectness and allows me to access the part of my brain that is more focused on creating than on grammar and accuracy.

It's good to get the first draft of content on the page. After that, I can begin shaping it and refining it in a much less demanding way.

Even though I've been a professional writer for many years, I don't have a lot of writing stamina. After I can get several hours of writing in, I often tap out. Writing is somewhat like exercising. I can't just sit down for hours on end writing documentation. Very few can. Instead, if I chip away at a larger content project a little bit each day over a series of weeks, I'm usually much more successful.

{% comment %}{% include random_ad4.html %}{% endcomment %}

## 3.5. Make a running list of questions you have {#questions}

While you're writing, you'll have plenty of questions regarding things you're unsure about or which are unclear. Make a list of these questions and use them later as you proceed through the review process. It's painful for reviewers to read docs from beginning to end, and they will much prefer to be asked questions, as it's much easier. This also lets you zero in on those gray areas that you're unsure about, maximizing your review time.

For now, as you write, just throw the questions into the questions doc. You could also put them in brackets directly in the documentation draft, though I find this clutters things up more than I like. Later, when you're done with the draft and ready to tackle the questions, you can sort and organize them into logical groups.

## 3.6 Editing {#editing}

Assuming you have a first draft of content (no matter how bad), you're ready to start editing. I try to space out my edits. Prior to writing new content, I spend time reading over and revising the previous chunk of content I wrote. I find this helps reorient me about the content I've already written and allows me to fix or polish it with semi-fresh eyes.

Additionally, many days I don't feel like writing, but if I rev up my brain by reading and editing the previous chunk of content I wrote (for 30 minutes to an hour), I'm usually ready to push forward and write new content. This time for editing also primes up my writing engine and makes it easier for me to write.

Editing requires a fresh perspective, so I allow myself some space between edits &mdash; usually about a day. If I just keep editing the same content over and over, especially content that I've only recently written, I become blind to so many aspects of it. I can't see all the problems. Somehow allowing myself 24 hours of otherly focus enlivens my ability to see issues and fix errors in the content.

Ideally, if I can space out edits each day over the course of a week, that gives me 5 separate editing sessions. I'm usually amazed at how much I can fix the content and make it look professional during this time period. It's really the secret to good writing. I've found that if I crank out the content the day before and release it, the content isn't nearly as good as putting it through a cycle of edits spaced out with a day between edits. Think of it like bread that you have to let rise, followed by a session of kneading. When you make bread from scratch, you might need to let it rise a few times and punch it down to get it into the right shape.

## 3.7 Supplement confusing concepts with visuals and code examples {#visuals_and_code_examples}

The nature of writing technical documentation is that the concepts are complicated. The nature of the writing task is to simplify this complexity. You might find that words alone fall short of this task. To simplify complexity, leverage these two tools:

* Visuals
* Code examples

### Visuals {#visuals}

Simple conceptual diagrams are easy to create. You don't need to be a graphic artist to draw boxes and arrows in a simple diagram to illustrate a concept. Download a program like Sketch and create some simple conceptual diagrams to illustrate technical concepts. Keep the diagrams simple, focusing on the dimension you're trying to explain. You can pepper your conceptual sections with multiple conceptual diagrams, each elucidating some element you're trying to explain.

If you keep the graphics simple, you'll maintain control over the graphic assets and be empowered to create them as needed. In contrast, if you ask a graphic designer to create the graphics, you might find that it's impossible for you to create more graphics matching this same style and brand. I highly recommend reading [The Back of the Napkin](/2009/05/19/drawing-as-a-tool-for-thinking/) (see also my post [Drawing as a Tool for Thinking: The Back of the Napkin](/2009/05/19/drawing-as-a-tool-for-thinking/)).

{% include image_ad_right.html %}

Get rid of the idea that graphics can only be rendered by professional artists. Use graphics as a tool for thinking. The hard part about creating the graphic is coming up with an idea for depicting a concept. When that's your focus, simple diagrams are okay. Little boxes with text below them, and some arrows to other boxes showing relationships between things is okay. If the graphic accomplishes its purpose &mdash; to help clarify a confusing concept &mdash; then it achieves its purpose.

* Awareness of some techniques, like showing side by side with a slight difference. This will communicate something different.
* Another technique: communicate in as few lines as possible
* Use a change in color to draw attention to things &mdash; one subtle color change makes it clear what you're trying to highlight
* Creating visuals is a welcome change from writing, still working but not taxing the same part of the brain; it's like taking a break and drawing.

For more on creating visuals, see [Creating professional looking graphics in the easiest, simplest way possible](/2016/05/05/visualcommunication_noun_project/).

### Code examples {#code_examples}

Code samples are another way that confusing concepts take on more clarity. I explored code samples more fully in [Code samples](/learnapidoc/docapis_codesamples_bestpractices.html), so I won't repeat everything there except to summarize the main reasons why code helps clarify details. You can write a ton of content trying to describe technical concepts and techniques, but sometimes a simple code sample can speak for itself.

For example, suppose you're trying to explain a technique for getting certain data using a combination of APIs. You could list a few bullets explaining the overall process, but users might get a lot more out of viewing a code sample showing the technique.

Ask engineers for code samples demonstrating how to approach various tasks. This might be something QA already has, and you just need to request it. Also, engineers are usually more than happy to supply code samples here and there. They sometimes underestimate their utility in conceptual documentation. In sum, your life gets a lot easier when you can just briefly explain a process and then say here, see this code for an example.

## 3.8 Run content through a spell checker {#spellchecker}

At some point when the content is more or less finalized, run it through a spell checker. My favorite spellchecker is Grammarly, though this service tends to be blocked in most companies due to the way Grammarly stores data on its servers. See [Is Premium Grammarly worth it for identifying style and grammar issues in tech docs?](/2018/12/28/evaluating-grammarly-as-a-style-checker/) for more details.

Other options could be the spellchecker in Microsoft Word or Google Docs, or if you have access to the [HyperSTE plugin](/2017/01/25/hyperste-simplified-technical-english-asd-ste100/) to check for simplified technical English, or Acrolinx to check grammar and style as well, use those tools.

You might be amazed by how many errors these services catch, especially in lengthy content. I personally prefer to leverage as many of these services as possible. I almost always use Grammarly to check new blog posts and articles on my site. A small grammar or spelling error calls attention to itself and can be like having your fly down while you're wearing a tuxedo, as one writing teacher put it.

### Don't try to eat an elephant in one day {#elephant}

As you write content, don't get frustrated if you tap out long before the task is done. As I'm writing the content for this section, I've written it little by little over the course of two weeks. I try to squeeze out some writing time at the beginning and end of my day. I might spend one day writing a new section, another day reviewing a different section, another day adding new details to the previous section, another day sketching out section headings for an unwritten section, and more.

I don't try to write everything at once. In fact, I don't think I really could. Writing is kind of like a nitro boost  &mdash; it requires massive amounts of energy, and I can only tap into this energy periodically for short bursts of time.

If you get exhausted, take a break. Watch Netflix for a while or something. Then when your energy rebuilds, start typing again. Getting that first draft is the hard part. You can iterate endlessly on it afterward as you edit and review the content for weeks following. But without some starting point, you won't have anything to edit or review. NaNoWriMo (National Novel Writing Month) is a good model for this. The goal of NaNoWriMo is to generate an initial draft of a novel in one month. It might be crap, but you can then spend the next year editing and fixing it.

## Next steps

Continue on to [4. Reviewing](docapis_reviewing.html).
