---
title: FAQ
permalink: docapis_faq.html
keywords:
course: "Documenting REST APIs"
weight: 5.91
sidebar: docapis
section: docnonref
path1: /docnonref.html
published: false
---
{% include course_image.html size="medium" border="true" filename="nonref_faq" ext_print="png" ext_web="svg" alt="FAQ" caption="FAQ" %}

<img src="/images/faqsversusgoals.png"/>

Although FAQs aren't all the common in API docs, they do tend to be common in documentation in general. I treat them here because sometimes development groups start writing documentation themselves, and they might begin with an FAQ that gets longer and longer. In these situations, it's a good idea to understand how FAQs should be designed.

* TOC
{:toc}

## How the FAQ begins

Here's how the FAQ typically begins. Someone on the team (it could be an engineer or a project manager) decides to add an FAQ that lists out some randomly thought-up questions about the software.

- What does gizmo do? Why was gizmo created?
- How do I publish my gizmo? What configuration options exist for my gizmo?
- How can I create a gizmo account?
- How do I block widgets from appearing in my gizmo?

The team member (again, usually not a technical writer) cranks out quick responses to these random questions with about the same effort as typing an email.

As the project progresses, and especially as the team starts to do beta testing and gathers feedback from actual users, the list of FAQs grows. Now there are 20+ FAQs instead of an original 10. At this point the team member may try to group the FAQs to give them some sense of organization.

{% include random_ad2.html %}

The final week before the release, everyone and their cousin is checking out the software and begins asking many more questions. What the team originally thought was intuitive and obvious is suddenly called into question. More questions are added:

- How do you block unauthorized access to your gizmo?
- How do you monetize your gizmo given the restrictions?
- Can you switch gizmos across accounts if you change profiles?
- How do you see stats about your gizmo's usage?
- Can I save my gizmo theme and overwrite the default?
- How can I download my gimzo's code? What metrics define a successful gizmo?

Based on these incoming questions and feedback, the team starts adding more questions to the FAQ. There are now about 35 questions in the FAQ and they cover everything from important to trivial concerns.

What started out as a quick guide for questions that users might frequently ask has evolved into a laundry list of random details about the app. There's no real order or progression to the questions. Apparently creating documentation is simply an act of listing question after question on the page, each with quick answers.

After the app is released to the world, the questions really start pouring in. After a few weeks of launch, the team decides to add another 20-30 questions to the FAQ, making it an endlessly long wall of randomly asked questions. Pretty soon the FAQ is about 75 questions long and, if printed, would span more than 20 pages. It seemed innocent in the beginning. But in the end it was an embarrassment.

## Why the FAQ format is so annoying

The FAQ is a bad idea for a number of reasons:

1. The laundry list of questions doesn't tell the story of your app or describe a user journey. It simply provides a list of possible questions and answers in random order. The task of a writer is to organize information into a story-like structure &mdash; in this case, to analyze the user's goals and describe how to accomplish them.

2. This question-list approach doesn't scale. The FAQ doesn't have any task-oriented topics where the needed details can be integrated into. As a result, when you have another detail to add, you have to just create another Q&A block to add to your ever-growing list. When you hit a certain point, your list is so long it's ridiculous.

3. There's no hierarchy to the list. Each question is just as important as the others, which means the trivial questions dilute focus from the more important questions.

4. The laundry list of questions, spanning everything from trivial to important, are no longer questions that are "frequently asked." They're just a long string of miscellaneous questions. No one wants to title it "Miscellaneous questions" or "Random questions" or "A bunch of questions in an endless list," but that's what it is.

5. These questions rarely originate from actual users. They're often safe, sanitized, and positive questions imagined by the product team. As such, they're not really "questions" either. The product team  just uses a question-like format to give the impression of answering user's questions. In this light, since the questions are neither "frequent" or actually "asked" by users, the topic is an outright falsehood from the start.

{% include random_ad.html %}

## FAQ is an easy writing model

The FAQ format will probably never go away because the approach provides an easy template that teams can use to fill in. Think of the FAQ as a form with two fields &mdash; question, answer. Like this:

```
- question:
  answer:

- question:
  answer:

- question:
  answer:
```

There's a simple, predictable pattern that non-writers can fill in. If we want to truly get rid of the FAQ, we need to supply non-writers with an alternative template that they can fill in. What might that form for user documentation look like? How about this:

```
- goal:
  steps:

- goal:
  steps:

- goal:
  steps:
```

This approach changes the basic form to think about goals instead of random questions. A question could be anything, but a goal helps focus the direction in more substantial, narrative ways.

Instead of writing documentation around questions such as, "For what purpose were gizmos created?" The goals might be something like these:

- I want to create and deploy a gizmo on my server.
- I want to build a gizmo using an RSS feed.
- I want to style the look and feel of my gizmo to match my corporate branding.

Of course, one could flip around these goal statements into questions &mdash;

- How do I create and deploy a gizmo on my server?
- How do I build a gizmo using an RSS feed?
- How do I style the look and feel of my gizmo to match my corporate branding?

But the difference is that the answer to these goal-oriented questions will entail a heck of a lot more information and detail than the random FAQ (and hence will be broken into separate pages). The random FAQ is extremely granular and narrow:

- How many letters are in the word gizmo?
- How do I restart my gizmo?
- How do I save changes to my gizmo?

There's a difference between questions and goals.

## User stories

Many project teams are already used to writing user stories, and this is really all I'm suggesting here. But the user stories need to be somewhat substantial, that's all. Thinking of questions users ask is not a bad way to approach help, but it should inform larger narratives that organize information around goals.

After you've finished writing the task-oriented documentation based on user goals, you might actually want to add a short FAQ. A true FAQ &mdash; one that pulls highlights from the documentation &mdash; is helpful. A good FAQ should quickly describe the top 5-10 most-asked questions and provide concise 2-3 sentence summaries, followed by a link to the documentation topic for more details. This kind of FAQ can help users get quick answers to immediate questions they probably have, rather than reading the entire documentation.

But don't start your documentation by writing an FAQ. Finish with it.
