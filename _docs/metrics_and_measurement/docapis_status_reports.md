---
title: Status reports -- a tool for visibility and relationship building
permalink: /docapis_status_reports.html
course: "Documenting REST APIs"
weight: 13.9
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-08-07
---

Sending regular status reports to business stakeholders can help create visibility, trust, and awareness with your doc team. A status report provides an update on documentation efforts and usually covers a monthly period. The business stakeholders might be the core leadership within your organization, or they might simply be your management chain the next level up.

Sending status reports is a highly underrated technique for increasing your visibility, building relationships with others, and giving yourself cadence for self-assessment. These reports are fun to write and send as well.

{: .note}
In my post [Some good decisions and minor mistakes](/blog/good-decisions-and-mistakes/), I noted the following in my Good decisions section: "Sharing out updates to the wider group. Broadcasting all the recent doc updates made during the past month or so did an amazing job at increasing the visibility of our team. This had more impact than any doc-related metrics." In the comments, a lot of people asked me to expand on this point with more details. This article provides a follow-up about that point.

* TOC
{:toc}  

## Sample status report

A sample status report has sections such as these:

* Report's purpose/intro
* About your team and where you publish docs
* Recently published docs
* Upcoming doc work
* Support deflection efforts
* Doc metrics
* Strategic initiatives

Here's a bit more about each of these sections.

### Report's purpose/intro

Provide a few lines that introduces the report, such as "This documentation report covers such and such time period and includes information about newly published docs, doc metrics, efforts to deflect support costs, a review of strategic initiatives, and more."

### About your team and where you publish docs

Explain a bit about your team, such as "The documentation team consists of X number of writers supporting external documentation on X site. The team works with engineers across A, B, C product teams to provide documentation for such and such products. We also help edit and publish contributions written by engineers directly."

Although these details might seem obvious to you, in any large organization, there are usually many groups that aren't aware of each other, despite working under the same organizational umbrella. In my experiences in big tech companies, only about half (or fewer) of the engineers have ever worked with technical writers, and of those, many have only a vague idea of what we do.

### Recently published docs

In this section, list out what your team has recently published. Ideally, you should be able to copy and paste this content from your release notes. (If your doc site lacks release notes, be sure to start adding them.) In the list of published docs, include the article titles, short descriptions, and when they were published. The docs should link to the actual content so that people can read more.

If you don't have many recently published docs, you could link to some drafts in progress. However, I find that this section helps keep me accountable. I know that if it comes time to write this report and our team didn't publish anything for the month, it's going to look bad. I want to have a handful of articles to show each month. It makes me feel like I'm earning my salary.

### Upcoming doc work

In this section, you could list a few high-priority projects you're currently or soon to be working on, so that people know where you're headed. Describe your roadmap more or less, focusing at a high level. Sometimes readers want to know if such and such project is on your radar, and this section provides that.

### Support deflection efforts

In this section, report about how documentation is reducing the drain on your support team, whether that support team consists of support engineers, partner engineers, or some other contact point when users/partners/developers have issues.

This activity forces you to regularly review the ticket log and see what frictions the users/partners/developers are having. For example, you might have an issue tracking system with hundreds of bugs logged each month. Look through the bugs and pick out bugs that could potentially have been averted had the information been available in the documentation. For example, support a partner says they are confused about some data element and its availability within an API. That ticket should likely never have been filed; the partner should have been able to find and identify the issue within the documentation directly.

In my experience, support groups and product teams are blind at identifying tickets that are preventable through better documentation. Extrapolating potential doc work from the ticket is usually only something a tech writer can do.

In this section of the report, comment on trends you see within the tickets filed. Create doc tickets related to the bug tickets. Then you can report on progress against those tickets.

This activity &mdash; looking through bugs at a monthly basis &mdash; is one of the best ways to stay connected to user pain points and frictions.

### Doc metrics

In the doc metrics section, report on some aspect of your site's traffic and analytics. For example, you could report on your core metrics: pageviews, users, sessions, pageviews per session, time on page, and bounce rate. You could also describe user profile characteristics (if available), such as location, age, gender, operating system, and browser. The location can be particularly useful in deciding about localization.

You could also list the most popular pages in your documentation and explore reasons why. Especially if the pages are surprises, it could be good fodder for analysis.

If you're clever enough, you could also provide insights about the metrics. For example, analyze why there are spikes or dips. Look at trends about user growth or shrinkage over time and probe why. Look at search keyword hits and analyze whether the searches connect with docs. Look at your average time on page and assess whether it's too long or short. Look at flows that users take within your site, and why users might be going to the pages they navigate to (for example, why are users going to Requirements after the Overview instead of the Getting Started tutorial?), and more.

Warning: Analytics can be a rabbit hole that can consume a lot of time without leading to actionable results. For example, whether your average time on page is 3 minutes or 5 minutes, is that going to dictate your information architecture strategy? Probably not. The most valuable metrics are usually your top 10 pages, which can give you a sense of where to prioritize your content development efforts.

Even if analytics aren't always actionable, it's worth periodically reviewing them to try glean as many insights as possible. Every year, I regularly review analytics on my blog. See the section [Posts analyzing site analytics](https://idratherbewriting.com/analytics/). The biggest action item to come from looking at my analytics was to see the traffic going to my API doc site, which prompted me to focus more efforts in this direction. At Amazon, when I looked at analytics, I realized that specification information trended as the most popular pages, so I put a lot of effort in into [Fire TV device specifications](https://developer.amazon.com/docs/fire-tv/device-specifications.html).

### Strategic initiatives

In this section, discuss a few points of your strategy at a high level. Remember, many people might not realize that technical writers have a strategy or what it could possibly be for docs. You can comment on a few high-level goals, such as making sure each product has a well-developed overview and getting started tutorial. Or your strategy might be to allow for more hands-on testing of content by technical writers in an effort to improve quality. Or your strategy might be to fill in some content gaps according to your critical user journeys. Or maybe you're trying to align better across product areas with other teams.

If desired, you could also add a section on issues and obstacles.

## Other sections you could include

For other ideas, see some of the following suggestions from Saul Carliner in [Eight Tips Healthy Contractor for with Clients Relationships](https://www.stc.org/intercom/2018/04/eight-tips-for-healthy-contractor-relationships-with-clients/). Saul is addressing status reports from contractors to clients, but this isn't too different from full-time employees and stakeholders. Saul writes:

> ... provide reports anyway to address the natural concern of clients that you will complete their work on time and within budget. Take the initiative to send reports. The reports should identify:
>
> * Most recently completed milestone and whether that occurred on time, early, or late (and if late, why).
* Next milestone, who has responsibility for meeting it, and whether it is likely to occur on schedule, early, or late (and if late, once again, explain why).
* Major issues that need to be resolved. (March/April 2018, *Intercom*)

Saul says that these reports build confidence with the employer that you, as a contractor, will be able to meet the project's documentation goals on time and on budget. He also notes that the initial reports might take longer, but once you've created a few, you have an established format and routine, and the effort is less time intensive.

## Frequency, format, audience

Now that you have a sense of what the status update involves, you have some other decisions to make:

* **Frequency**: I recommend sending out a status report on a monthly basis. Biweekly is too frequent for all the sections noted above, and quarterly is too long for people to remember anything from the previous report.

* **Format**: You could package the content up into a snazzy newsletter format, but a simple email is fine. I start the doc report in Google Docs and then just paste it into an email when I'm ready to send it.

* **Audience**: Send the report to your business leadership groups, your team's alias, other adjacent writing teams working in the same general space, and more. You don't want to spam everyone, of course, but within an enterprise setting, people more or less expect these reports. Look at other reports being sent by other groups, and perhaps copy the same groups listed in their "To" list.

## Addressing the uncomfortable factor

Sending these emails is usually something that makes writers feel uncomfortable. You might feel like you're tooting your own horn, and most writers, often somewhat introverted, tend to prefer not to call attention to themselves. Many writers like to stay in the shadows.

This attitude is something you need to learn to put aside. As a popular blogger, I often feel uncomfortable sharing posts on Twitter, Linkedin, and in a newsletter. Every couple of weeks, I'm basically shouting "Hey, look at what I wrote here. Read my thoughts. See what I have to say." This isn't my nature. I'm not overtly charismatic, extroverted, social, or prone to transparency. At a party, I don't naturally introduce myself to strangers nor jump into the middle of conversations. But if you fail to promote your team in reports like this, your team will suffer invisibility, reduced status, and marginalization.

Tech writers have been complaining about being marginalized in the workplace for years. See these posts:

* [Guest post: Why are technical writers often treated as such an unimportant part of a company?](/blog/why-technical-writers-treated-as-unimportant/)
* [Value arguments for docs and tech comm](/2017/12/28/value-of-tech-comm-in-company-part1/)
* [Reflecting seven years later about why we were laid off](/blog/reflecting-seven-years-later-about-layoff-intro/)

Can sending monthly doc reports that cover the sections above fix the devaluation of the tech writer role? Maybe not entirely, but this is certainly a space for you to address issues you're facing. If your team is struggling to get engineers to review content, identify it in the report. If you don't have access to test the content you're documenting, identify it in the report. If you want to promote just how many people are reading your docs, identify it in the report. Business leaders usually read these things, as they try to gather input from many different groups under their leadership to inform decisions and directions.

Your monthly report gives you a direct channel to leadership for you to exploit. Especially if your upper leaders don't understand documentation (because they're in another business role), these reports can help educate and inform those leaders. But more importantly, these monthly reports give you a time and cadence for self-assessment, reflection, course correction, and planning.

## Outcomes of regularly sending status reports

What are the outcomes of regularly sending status reports? If you do this regularly, and the content is insightful and well-presented, you can expect the following to happen:

* People who you didn't know previously will suddenly reach out to you
* Your manager's manager will love it and will reply to the report with praise
* You'll become more visible to the people around you
* People will reach out to ask if certain docs or projects are on your radar
* You do better at planning and anticipating long-term doc work and needs
* When it comes time to write your annual review, you'll already have a body of work to draw from

## Feedback

I'd like to collect feedback about your experiences with doc reports. Can you take this [short survey to answer a few questions](https://www.questionpro.com/t/AOaGwZn5CW). You can see the [ongoing results here](https://www.questionpro.com/t/7BmeCkZn5CW).