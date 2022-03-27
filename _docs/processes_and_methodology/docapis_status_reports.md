---
title: Sending doc status reports -- a tool for visibility and relationship building
permalink: docapis_status_reports.html
course: "Documenting REST APIs"
weight: 12.6
sidebar: docapis
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2021-08-15
---

Sending documentation status reports can help foster trust and awareness with your business stakeholders. These stakeholders might be the core leadership within your organization or simply your management chain the next level up. Besides building visibility and relationships with these stakeholders, creating these status reports each month gives you a regular cadence for doc assessment and analysis, which is also helpful.

{: .note}
In my post [Some good decisions and minor mistakes](https://idratherbewriting.com/blog/good-decisions-and-mistakes/), I said one of my good decisions at Amazon was sending regular doc reports to our business leadership. Here's a passage from the post: "Broadcasting all the recent doc updates made during the past month or so did an amazing job at increasing the visibility of our team. This had more impact than any doc-related metrics." In the post's comments, a lot of people asked me to expand on this point with more details. This article provides a follow-up about that point.

* TOC
{:toc}  

## Sample status report

A sample status report has sections such as these:

* Purpose and intro
* About your team
* Recently published docs
* Upcoming doc work
* Support deflection efforts
* Doc metrics
* Strategic initiatives

Here's a bit more about each of these sections.

### Purpose and intro

This section provides a few lines about the report and its purpose, and might start out like this: "This documentation report covers such and such time period and includes information about newly published docs, metrics, support deflection efforts, a review of strategic initiatives, and more. The purpose is to keep others updated about doc efforts and strategies to ensure alignment across groups, etc." Hopefully, you can make your intro more exciting than this, but you get the point.

### About your team and where you publish docs

This section explains a bit about your team, such as "The documentation team consists of X number of writers supporting external documentation on X site. The team works with engineers across A, B, C product teams to provide documentation for such and such products. We also help edit and publish contributions written by engineers directly."

{% include image_ad_right.html %}

Although these details might seem obvious to you, in any large organization, there are usually many groups that aren't aware of each other, despite working under the same organizational umbrella. In my experiences in big tech companies, only about half of the engineers have ever worked with technical writers, and of those, many have only a vague idea of what we do or even where the docs are published. They also don't know the process for requesting doc work, so you could include a line about that workflow too.

### Recently published docs

List out what your team has recently published. Ideally, you should be able to copy and paste this content from your release notes. In the list of published docs, include the article titles, short descriptions, and when they were published. The docs should link to the actual content so that people can read more.

{% include random_ad4.html %}

If you don't have many recently published docs, you could link to some drafts in progress. However, I find that this section helps keep me accountable. I know that if it comes time to write this report and our team didn't publish anything for the month, it's going to look bad. I want to have a handful of articles to show each month. It makes me feel like I'm earning my keep.

### Upcoming doc work

List a few high-priority projects you're currently or soon-to-be working on, so that people know where you're headed. Describe your roadmap more or less, focusing at a high level. Sometimes readers want to know if such and such project is on your radar, and this section provides describes that horizon.

### Support deflection efforts

Through an analysis of ticket logs, explain how documentation is reducing the drain on your support team, whether that support team consists of support engineers, partner engineers, or some other contact point when users/partners/developers have issues.

This activity forces you to regularly review the ticket log and see what frictions the users/partners/developers are having. For example, you might have an issue tracking system with hundreds of bugs logged each month. Look through the bugs and pick out bugs that could potentially have been averted had the information been available in the documentation.

{% include random_ad3.html %}

For example, suppose a partner says they are confused about some data element and its availability within an API. That ticket should likely never have been filed; the partner should have been able to find the information within the documentation directly.

In my experience, support groups and product teams are blind at identifying tickets that are preventable through better documentation. Extrapolating potential doc work from the ticket log (as tedious as it may be) is something tech writers excel at. Others are typically blind about how a ticket might relate to documentation additions.

{% include random_ad2.html %}

In this section of the report, comment on trends you see for the tickets filed. Create doc tickets related to the bug tickets. Then you can report on your progress against those tickets. This activity &mdash; looking through bugs at a monthly cadence &mdash; is one of the best ways to stay connected to user pain points and frictions. This section also presents an implicit argument about the value of tech comm &mdash; reducing the workload of engineers and support groups.

### Doc metrics

Report on some aspect of your site's traffic and analytics. For example, you could report on your core metrics: pageviews, users, sessions, pageviews per session, time on page, and bounce rate. You could also describe user profile characteristics (if available), such as location, age, gender, operating system, and browser. The location can be particularly useful in deciding about localization.

You could also list the most popular pages in your documentation and explore reasons why. Especially if the pages have unexpectedly high traffic, it could be good fodder for analysis.

If you have an aptitude for metrics analysis, you could also provide insights about these numbers. For example, analyze why there are spikes or dips. Look at trends about user growth or shrinkage over time and probe why. Look at search keyword hits and analyze whether the searches connect with docs. Look at your average time on page and assess whether it's too long or short. Look at flows that users take within your site, and why users might be going to the pages they navigate to (for example, why are users going to Requirements after the Overview instead of the Getting Started tutorial?), and more. Showcase your ability to crunch and interpret data.

**Warning:** Analytics can be a rabbit hole that can consume a lot of time without leading to actionable results. For example, whether the average time on page is 3 minutes or 5 minutes, is that going to dictate your information architecture strategy? Probably not. The most valuable metrics are usually your top 10 pages, which can give you a sense of where to prioritize your content development efforts. Dive into metrics, but come up for air soon after.

Even if analytics aren't always actionable, it's worth periodically reviewing the numbers to try glean as many insights as possible. Every year, I regularly review analytics on my blog. See the section [Posts analyzing site analytics](https://idratherbewriting.com/analytics/).

The biggest action item to come from these blog analytics assessments has been to see the large traffic going to this API doc site, which prompted me to focus more efforts in this direction. At Amazon, when I looked at analytics, I realized that device specifications regularly trended as the most popular pages, so I put a lot of effort in into [Fire TV device specifications](https://developer.amazon.com/docs/fire-tv/device-specifications.html). In short, your most popular pages can indicate where you should prioritize your time.

### Strategic initiatives

Discuss a few points of your doc strategy at a high level. Remember, many people might not realize that technical writers even have a strategy or what it could possibly be for docs. You can comment on a few high-level goals, such as making sure each product has a well-developed overview and getting started tutorial. Or your strategy might be to allow for more hands-on testing of content by technical writers in an effort to improve documentation quality. Or your strategy might be to fill in some content gaps according to your critical user journeys. Or maybe you're trying to align better across product areas with other teams with more consistent structure and naming. Whatever your strategic goals, comment briefly on your progress against them. This reinforces the idea that tech writers are strategic thinkers, not just content creators.

{% include ads.html %}

## Other sections you could include

For other ideas about doc report content, see the suggestions from Saul Carliner in [Eight Tips Healthy Contractor for with Clients Relationships](https://www.stc.org/intercom/2018/04/eight-tips-for-healthy-contractor-relationships-with-clients/). Saul addresses status reports from contractors to clients, so it's a bit different from full-time employees and stakeholders, but not so much. Saul writes:

> ... provide reports anyway to address the natural concern of clients that you will complete their work on time and within budget. Take the initiative to send reports. The reports should identify:
>
> * Most recently completed milestone and whether that occurred on time, early, or late (and if late, why).
> * Next milestone, who has responsibility for meeting it, and whether it is likely to occur on schedule, early, or late (and if late, once again, explain why).
> * Major issues that need to be resolved. (March/April 2018, *Intercom*)

Saul says that these reports build confidence with the employer that you, as a contractor, will be able to meet the project's documentation goals on time and on budget. Business stakeholders also want to know that you'll finish the docs by the expected release schedules.

Saul also notes that the initial reports might take a while, but once you've created a few, you'll have an established format and routine, and the effort will be less time intensive. With each report you send, you can fine tune your structure, language, and style in these reports.

Finally, as Saul notes in his last point, you could also add a section on issues and obstacles. Be careful of throwing other teams under the bus in a public way here, though. For example, if your biggest obstacle is that engineers don't review docs, or that you're understaffed for the amount of work, or that your company's culture is anti-collaborative when it comes to docs ("docs aren't my job!"), you could call this out in the report, but do it tactfully, without laying blame with any particular group or person.

## Frequency, format, audience

Now that you have a sense of what the status update involves, you have some other decisions to make:

* **Frequency**: I recommend sending out a status report on a monthly basis. Biweekly is too frequent for all the sections noted above, and quarterly is too long for people to remember anything from the previous report.

* **Format**: You could package the content up into a snazzy newsletter format, but a simple text email is fine. I start the doc report in Google Docs and then just paste it into an email when I'm ready to send it. I think people respond better to raw email rather than shiny newsletter templates.

* **Audience**: Send the report to your business leadership groups, your team's alias, other adjacent writing teams working in the same general space, and more. You don't want to spam everyone, of course, but within an enterprise setting, people more or less expect to receive these reports unsolicited. Look at other reports being sent by other groups, and perhaps copy the same groups listed in their "To" list. The risk of *not informing others* is worse than inappropriately including them. A frequent complaint in most tech orgs is poor communication. People prefer to be informed.

## Addressing the discomfort factor

Sending these emails (which might go to hundreds of people depending on the email lists) is usually something that makes writers feel uncomfortable. You might feel like you're tooting your own horn, and most writers, often somewhat introverted, tend to prefer not to call attention to themselves. Many writers like to stay in the shadows.

Staying in the shadows is an approach to avoid if you want to get ahead at work. As a blogger, I often feel uncomfortable sharing posts on Twitter, Linkedin, and in a newsletter. Every couple of weeks, I'm basically saying "Hey, look at what I wrote here! Read my thoughts! See what *I* have to say." This isn't my nature. I'm not overtly charismatic, extroverted, social, or prone to transparency. At a party, I don't naturally introduce myself to strangers or jump into the middle of conversations. But if you fail to promote your team in reports like this at work, your team will suffer from invisibility, reduced status, and marginalization (to a degree, anyway).

I've written previously about this topic, as these themes have characterized the tech writing profession for years. See these posts for elaboration on this topic:

* [Guest post: Why are technical writers often treated as such an unimportant part of a company?](https://idratherbewriting.com/blog/why-technical-writers-treated-as-unimportant/)
* [Value arguments for docs and tech comm](https://idratherbewriting.com/2017/12/28/value-of-tech-comm-in-company-part1/)
* [Reflecting seven years later about why we were laid off](https://idratherbewriting.com/blog/reflecting-seven-years-later-about-layoff-intro/)

Can sending monthly doc reports fix the devaluation of the tech writer role? Maybe not, but this is certainly a way to help address visibility. The formula for visibility and recognition on the web with blogging is more or less the same as within an enterprise: write and promote, write and promote, write and promote, and so on.

Also, know that business leaders like to read these reports because they usually try to gather input and data from many different groups under their leadership to inform their decision-making. Especially if your upper leaders don't understand documentation (because they're in another business role), these reports can help educate and inform them. It's a way to influence up.

## A time for self-reflection on your docs

Another important aspect of writing these reports is the time and space they give you for reflection, planning, strategizing, course correction, and more. Without the report, when do you review these things? When do you look at metrics? When do you take stock of what everyone on the team is publishing, and how your work aligns with the upcoming roadmap? When do you look to see if the doc-related tickets are increasing or decreasing? When do you assess how you're doing with your doc strategies? Creating the report benefits you as much as anyone else. (Same as with writing blog posts &mdash; these posts help me refine my thoughts and perspectives more than they might help anyone else.)

So even if you create a lengthy report that few read, that's okay. The report is for you as much as anyone else.

## Outcomes of regularly sending status reports

What are the outcomes of regularly sending status reports? If you send regular status reports, and the content is insightful and well-presented, you can expect the following to happen:

* People who you didn't know previously will suddenly reach out to you.
* Your manager's manager will love it and will reply to the report with praise.
* You'll become more visible to the people around you, especially if you're the one sending the report on behalf of your team.
* People will reach out to ask if certain docs or projects are on your radar.
* You get better at planning and anticipating long-term doc work and needs.
* When it comes time to write your annual review, you'll already have a body of content to draw from.

{: .tip}
See also [Broadcasting your meeting notes to influence a wider audience](docapis_meeting_notes.html) for another approach to influencing those around you by sharing documentation topics and issues you face.
