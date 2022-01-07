---
title: Quantifying your progress
permalink: docapis_metrics_quantifying_progress.html
course: "Documenting REST APIs"
weight: 13.4
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-02-15
---

*This section continues from the previous page, [Second-level checklist for API documentation](docapis_metrics_second_level_checklist.html).*

* TOC
{:toc}  

## Analysis and quantitative metrics

It's hard to imagine that documentation that checks all of the boxes in the [first-level checklist](docapis_metrics_first_level_checklist.html) and [second-level checklist](docapis_metrics_second_level_checklist.html) wouldn't also score highly with user satisfaction surveys. Can you honestly see any documentation that legitimately satisfies all of these criteria as falling short with users?

And yet, to achieve the level of information quality, we didn't have to rely on constant user surveys to gather feedback. By identifying best practices for content design (specifically for API/developer documentation), we're able to increase the documentation quality in more self-sufficient, self-directed ways.

{% include random_ad1.html %}

{: .note}
Sometimes poor API design will make even good docs problematic. If the API has inconsistent naming, incomplete parameters, doesn't map to user journeys, and is cumbersome to use, then documentation also becomes more cumbersome to follow and implement. Good docs can't fix bad API design, though docs can try to salvage the user experience. If you have to explain the equivalent of String Theory and Lagrange Multipliers in your docs, give yourself extra points even if clarity is still debatable.

## Moving towards quantification

Now that we have a set of criteria, we can start to quantitatively measure documentation. To allow for some flexibility with each checkbox, you might give documentation a score of 0 to 5 for each item. For example, if the documentation partially implements one of the criteria (e.g., some great code examples for one topic but missing in another), this is a way to give some credit without giving full credit.

It doesn't matter how many criteria you use, or whether you're using just one of the checklists. Some points will be more applicable than others, and by no means am I suggesting a universal list of golden attributes that serve all types of information. Also remember, I'm specifically focusing on developer docs. You might decide to add your own criteria, remove some of my points, or make other modifications.

Based on how many criteria you have and how you decide to score things, you'll have a total number of possible points. You can then calculate the percentage accordingly. If you add up the score and find that the documentation scores 60/80, then this is 75%, or an C. By assigning documentation a grade that aligns with school grades, it provides a familiar assessment of the documentation quality.

You can also provide two scores: a score on the first-level checklist, and another score on the second-level checklist. As I described earlier, some characteristics can only be assessed when you're much more familiar with the documentation.

{% include random_ad2.html %}

Taking the metrics one step further, you could give your documentation a grade point average by calculating the average of all the individual grades. For example, suppose you have 10 sets of documentation for 10 different products. The cumulative score would simply be the average. This could give you your documentation GPA. Quantitative metrics can be more fun to measure. One key point here is that we've moved from qualitative to quantitative measurements using a set of consistent criteria for evaluation. You could chart and graph your progress now.

Granted, there are some assumptions here. Not all categories are equally important. This was one of the main goals of Strimling's research &mdash; to identify what matters most to users, not to writers. Users can probably overcome issues with readability as long as the content is accurate. Irrelevant content (e.g., the wrong user journeys) might make the content useless, no matter how well the tasks are described. Code samples in the wrong language might not be a dealbreaker if they are well commented, etc. Passive voice might not be an issue unless the entire documentation is saturated with it.

In the [spreadsheet template for scoring criteria](docapis_metrics_templates.html), I included a weighting value from 1 to 3. This weight is multiplied by the score to give more value to the more important criteria. You can easily adjust the weighting in the templates as you see fit. Overall, in my first experiments with this approach, I initially scored docs without weighting at 46%; with weighting, it changed only to 41%. This wasn't as dramatic a difference as I anticipated.

## Measuring progress

As you work on improving documentation, you could quantitatively say that you improved the documentation from a score of 75% to 90%, or something similar. For this quantitative progress to make sense, you need to use a consistent set of criteria applied in a similar way across docs.

{% include random_ad4.html %}

Also, keep in mind that adding user satisfaction surveys to corroborate the improvements would be a good idea. But even without the corroboration, at least this rubric provides a more action-oriented way of addressing more fuzzy issues that users might report in a survey (e.g., docs are incomplete, confusing), and it provides a quantitative metric for measurement. If you're a team editor, this checklist lets you audit your documentation to assess quality.

## Objections to "Tom's criteria"

My goal here was to find a way to assess documentation quality without relying solely on surveys and to pin down the criteria for developer docs to a list of actionable, easy-to-understand criteria. I recognize that my list has no official research backing or data to support it &mdash; instead, these best practices come from experience in the industry and from best practices that I and others have observed within the realm of developer documentation.

This is likely the problem with my approach: who's to say that documentation needs each of these criteria to succeed? It's possible that documentation might still be findable, accurate, relevant, and clear without many of these more concrete components, which would seemingly invalidate the approach here. I don't have any user-based research to say that docs should be this way, that they should have an overview, that reference material should follow a consistent structure, that tasks should be detailed in steps, or that error messages should be documented, etc. As such, critics could dismiss a documentation's "score" as being meaningless, relying only on user feedback for their evaluation of docs.

{% include image_ad_right.html %}

If this is the feeling regarding reported metrics, remember that user surveys should both complement and confirm the approach here. User surveys specifically for docs that score highly should also rate higher in satisfaction surveys than surveys for docs that score more poorly. But again, to establish a kind of correlation through surveys relies on a host of factors (objective, unbiased, unambiguous survey questions from a large sample of a representative audience across domains), which is likely difficult to pull off on a regular basis.

Overall, I am confident that few would object to most of the criteria here. Most of the rubric's criteria would be agreed upon by both readers and writers with enough common ground as to be a practical guide for improving documentation quality. Also, the criteria should be seen as a first draft, a starting point that can be refined and improved, checked against industry standards, confirmed against docs that are loved by users, refined through constant feedback, and more.

{% comment %}{% include random_ad3.html %}{% endcomment %}

*Continue on to the next topic, [Templates for working with metrics](docapis_metrics_templates.html).
