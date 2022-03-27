---
title: Measuring documentation quality through user feedback
permalink: docapis_measuring_impact.html
course: "Documenting REST APIs"
weight: 13.1
sidebar: docapis
section: metrics
path1: docapis_metrics_and_measurement.html
last-modified: 2022-02-07
---

As you set goals for your role or team, you might want to measure your impact on documentation quality in some way. The main reason for measuring your impact should be to evaluate your progress against documentation improvement goals. If you don't have any data to provide feedback on your efforts, it's hard to know if you're making a difference.

Also, metrics are essential for business reasons: upper management will invariably ask you for metrics of some kind (because what you can't measure, you can't manage). Metrics will also be key if you're making the case for a promotion (leveling up) or defending your performance during annual review time. Ultimately, though, you need metrics to answer this question: Is what I'm doing making a difference?

Despite the importance of metrics about documentation quality, they are an elusive, holy-grail type task that almost no one in the industry has nailed down. How do you know if your docs are any good? The first response people usually give is that you measure documentation quality through user feedback. In this section, I'll explain why trying to measure documentation by collecting user feedback is problematic.

* TOC
{:toc}

## The problem with doc surveys

The first inclination many have when measuring documentation quality (how good your docs are) is to conduct surveys with users. After all, it doesn't matter what the technical writer thinks of the documentation; it's what the user thinks, and how successful the documentation was in helping the user in some task, right?

{% include random_ad4.html %}

To a degree, yes, you can only really evaluate the usefulness of documentation from the perspective of a user going through the documentation with some tasks in mind. However, surveys are a difficult, inefficient way to go about measuring documentation quality for several reasons:

* Survey responses aren't usually actionable
* Users aren't regularly available for surveys
* Survey questions are difficult to formulate
* Users are sometimes unreliable

## Survey responses aren't usually actionable

First, feedback from users about documentation is often too general and unactionable to be helpful. If you do a satisfaction survey and find that only 30% of users would recommend the documentation to a friend, what can you do with that information? If surveys indicate that your docs are poor and need improvement, can you act on that? Which docs? Which parts need improvement? Are they "confusing and useless"? What's confusing or unhelpful about them? All of the docs, or just parts? Is the feedback a general impression overall, or focused on a specific user scenario from a single documentation topic?

{% include ads.html %}

Without more specifics, the information falls flat and doesn't lead to any actionable follow-up. If you can't identify the friction points and areas that need to be fixed, what good are the survey results? They might only serve to depress the technical writers.

In looking into ways to measure information quality, I found Yoel Strimling's article [Beyond Accuracy: What Documentation Quality Means to Readers](https://www.researchgate.net/publication/331088095_Beyond_Accuracy_What_Documentation_Quality_Means_to_Readers) to be spot on in identifying the issues with surveys. Strimling says that questions in all types of feedback (whether asked in surveys, focus groups, face-to-face interactions, or other) need to be specific to be actionable. Echoing the conclusions of other researchers, Yoel explains:

> ... it is not enough for us to collect meaningful feedback about our documentation from our readers. We also need to be able to use the information we collect to take actions that will help us directly address and prioritize the issues that are important to them.

In other words, surveys alone, without actionable feedback, aren't enough. A user might provide general feedback, saying that the docs felt like they needed polish, or that they had trouble understanding/following them, or that they seemed incomplete. But without more specifics, this feedback isn't all that actionable.

{% include random_ad2.html %}

## Users aren't available for surveys

Another problem with surveys is that most technical writers don't have direct and continued access to users to survey them on a regular basis. I wrote about the challenge of [reconstructing the absent user](https://idratherbewriting.com/simplifying-complexity/reconstructing-the-absent-user.html) in my series on Simplifying Complexity. It's unfortunate but the norm that technical writers have very little contact with their target users &mdash; not just access to users for surveys, but access to users through support interactions, training, presales, onboarding, or other situations. If users aren't available to survey, collecting their feedback becomes difficult.

## Unbiased survey questions are difficult to formulate

Let's say you do have access to users, another challenge with surveys is how to formulate the questions. You have to be skilled in the way you pose survey questions to avoid bias in the responses. Strimling dives into research about survey formulation and lists the characteristics of a good survey. For example, questions must be "long enough to be useful, and short enough to encourage participation" (quoting Barnum). They need to be unambiguous, non-threatening, easily answerable, clear, unassuming, etc. Overall, survey questions are hard to formulate.

{% include random_ad3.html %}

If you're a regular reader of my blog, you've probably seen a lot of small surveys I include with each article. I've learned that formulating survey questions is an art, and questions need to be simple, unambiguous, and easy to answer. At the same time, you have to consider what the actual goals of the survey are and what you plan to do with the feedback. Surveys are hard to do right.

## Users are sometimes unreliable

Another problem with surveys is audience unreliability. We base the value of our docs around the user's perspective, but what if users are unreliable or unhelpful? There's a lot of variation, subjectivity, and unreliability with survey responses. Sometimes people use docs as a scapegoat for other issues related to poor product design, company dissatisfaction, or other frustrations. Often when I'm taking a survey, I base my responses on one part of the product or docs that I've been using, not on the whole. One bad topic can taint the user's response about the entire docs, distorting the quality measure.

{% include image_ad_right.html %}

Additionally, people who respond negatively in satisfaction surveys might not be your target audience. You might have been writing for an audience already familiar with a certain framework, but your survey might include someone new to the framework who found the docs worthless because they don't have the needed background. Other times, users might respond so hastily that their responses are cryptic and vague.

## What can replace surveys?

I'm not entirely dismissive of surveys &mdash; I'm only being realistic. They have rarely worked for me. If the survey's purpose is to highlight the importance of documentation in general, e.g., how critical it is for complete and accurate documentation to help users complete tasks, great. But that's a different purpose than measuring documentation quality. A metric about the importance of docs would support resourcing for doc efforts or other goals for establishing tech comm's importance. But to make improvements with quality, you need information that is much more specific and actionable, and that's where general surveys tend to fall short.

Rather than sink too much time and energy into surveys as the only way to measure doc effectiveness, I propose a much more concrete and realistic approach to measuring doc quality: assessing the documentation against a detailed quality checklist. The checklist can take the general qualities of measurement (e.g., clarity, accuracy, relevance, findability, etc.) and make concrete what these abstract qualities mean and how they can be implemented.

Also, while many scholars have defined characteristics for information quality, I've yet to see a checklist specifically focused on developer documentation. In the sections that follow, I'll go into specific detail for describing information quality with developer docs, moving beyond high-level abstract definitions of quality to focus on more tangible, concrete ideas.

*Continue on to the next section, [Assessing information quality](docapis_metrics_assessing_information_quality.html).*
