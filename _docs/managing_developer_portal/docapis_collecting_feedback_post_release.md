---
title: Processes for collecting feedback post-release
permalink: /docapis_collecting_feedback_post_release.html
course: "Documenting REST APIs"
weight: 12.9
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
last-modified: 2020-11-02
---

After you've published your docs, you should have a strategy for collecting feedback users. Mostly likely you already [reviewed the doc](docapis_review_processes.html) extensively prior to release, but now you need to pivot more to collecting feedback from external users. Collecting feedback involves a host of new challenges and processes that haven't been covered here yet, such as how to account for random externally driven requests across your dev portal, how to optimize your feedback form, the process for responding to incoming requests, and so on.

* TOC
{:toc}


## What's different about collecting feedback post-release

When you're working on documentation prior to release, you have the full attention of the product team for reviewing and approving the doc. You have a present group of product managers, engineers, and others at your disposal. But when you receive feedback on docs post-release, that same group of people might no longer be present, or they might be hard to locate, especially if you're updating docs you didn't work on. You might have to assess feedback on products you know next to nothing about, and reach out to people you've never interacted with before. You also have the challenge of sifting through feedback from unknown people &mdash; the feedback might be from a different audience than the doc was intended. Finally, there's no built-in mechanism to provide bandwidth to tasks like this, so you'll likely have to deal with these random requests on top of a full project load. Because of all these factors, handling feedback post-release presents a new dynamic to deal with.

## Optimizing your feedback form

Let's start by talking about the feedback form. There are many different approaches here, some better than others. In general, most web articles typically have a comment form below them, particularly if they're blog articles. Readers are used to scrolling to the bottom of a web page and finding some feedback form, such as Disqus or other commenting systems. You'll have the most success with your feedback form if you follow this general web pattern for providing feedback.

For example, you might be tempted to put your feedback form as a floating button on the side of your docs. Here's a sample with the feedback button on the side:

<a class="noCrossRef" href="https://developer.amazon.com/docs/fire-tv/toolkits-for-building-fire-tv-apps.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/feedback_button_on_side.png" alt="Feedback on the side" /></a>

This is somewhat common, but in tests that I've done, the comment form at the bottom was used much more than the feedback button on the side.

<a class="noCrossRef" href="https://developer.amazon.com/docs/fire-tv/toolkits-for-building-fire-tv-apps.html"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/feedback_button_on_bottom.png" alt="Feedback form at the bottom" /></a>

Additionally, if you can lower the friction required for developers to provide feedback, you'll get more feedback. If your feedback form requires developers to log in, or to proceed through a series of screens, or do anything else requiring more than 5-10 seconds of their time, your engagement rate will go down.

The problem with reducing friction, however, is that the easier you make it, the more you open yourself up to spam. Without any spam prevention controls, you'll be overrun with random spam comments in a form. Try to find a good balance between controls that prevent spam but which don't challenge users too much.

## Process for handling feedback

Just collecting feedback is only the first step. The next step is to implement a process for sorting, assessing, and taking action on the feedback. This might sound easy but can be especially challenging if no one is asking you to take action on this feedback. Product teams usually submit requests to doc teams for upcoming features and releases; they are often quiet when it comes to documentation for existing features.

A process for handling could look like this:

1.  Every time you do sprint planning (e.g., every two weeks), look through the feedback you've received and identify any feedback that is detailed and actionable. Create tickets for each of these actionable items.

2.  Decide which tickets you want to work on for the sprint (e.g., due to priority, ease of handling, or other reasons) and assign them to the sprint during your sprint planning.

    {: .tip}
    Given that these tickets will rarely be a priority, to avoid neglecting and forgetting them, considering making it a requirement that each team member takes on at least one feedback ticket per sprint.

3.  Reach out to product teams to keep them aware of the incoming tickets. The product owner should be Cc'd as a watcher on the ticket so they are aware of what's going on with the user experience of their product.

    {: .note}
    For each documentation set on your developer portal, maintain a contact point in a document somewhere so that if someone has a question, there's a clear person for outreach.




{% comment %}
process for internal contributors, for technical and non-technical users
{% endcomment %}
