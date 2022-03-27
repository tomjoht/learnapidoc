---
title: "5. Publishing (the writing process)"
permalink: docapis_publishing.html
course: "Documenting REST APIs"
weight: 8.96
sidebar: docapis
section: writing_process
path1: writing_process.html
last-modified: 2021-11-19
---

After you've [finished the reviews](docapis_reviewing.html) and your deadline is imminent, it's time to make plans to publish your docs. Hitting that publish button will fill you with a rush of exhilaration, but before that moment arrives, you have a few final considerations.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## 5.1 Understand the larger context where you're publishing {#context}

Hopefully, you already know exactly where the content should be published, as this is something you planned for when writing the content. But in case not, make sure you don't just throw another article over the wall onto your developer portal without *integrating* the content into the larger context.

Notice that I used *integrate* instead of *add* &mdash; the former implies more work to make the new content fit seamlessly into existing content, whereas the latter implies just tacking on the new content without looking closely at how it fits into the existing content.

Where is the most logical context to integrate the content? Make sure you're well-read enough in your content landscape to see the whole and understand the big picture of your docs. One mistake many writers and engineers make when contributing docs is to focus only on their contribution, without reading more broadly to understand if their contribution conflicts, repeats, or otherwise clashes with what's already published.

{% include image_ad_right.html %}

If you have a humanities background, you're probably used to reading long, difficult texts and performing critical analyses on the content. Don't abandon those college reading skills in your corporate job. Instead, use your reading superpower to read through the docs on your developer portal that have a similar theme to what you're publishing. For more on this, see [Principle 3: Ensure information harmony in the larger landscape](https://idratherbewriting.com/simplifying-complexity/ensuring-information-harmony-in-the-larger-documentation-landscape.html).

## 5.2 Cross-reference the new content {#cross_references}

As you read through the larger context on your developer portal, take note of good places to insert cross-references to the new content. If there are similar topics, consider adding cross-references in places where themes overlap. Many times, users search for information and don't always land on the right topic. They might have land close to the needed information, based on the keywords they're searching for, but not on the right page. (This idea aligns with the whole [information scent theory](https://www.nngroup.com/articles/information-scent/) that is part of information foraging.) Include links to help point them to your new content. Conversely, insert cross-references in your new content to other pages.

Some systems have tags that define how related articles surface. If you have a system of tags (defined through a larger taxonomy), make sure your new content has the right taxonomy tags so that it's visible and discoverable in the larger system.

{% include random_ad2.html %}

## 5.3 Include a link in your release notes and what's new {#release_notes}

Most developer portals have two sections new content is publicized:

* **Release notes.** The release notes highlight new features in the APIs and other products that have been released, often with a link to the accompanying documentation for the feature.
* **What's new in docs.** The What's new in docs section indicates new articles or updates in the documentation. This list usually covers doc updates only, as these updates can happen independently of feature releases.

Make sure you list and describe your new content using whatever patterns make sense for your developer portal.  Many times, program managers literally copy and paste the content from release notes and what's new pages into newsletters that they send out to partners.

Alternatively, you might have a developer relations group or developer marketing that actually has a newsletter. If so, reach out to the group and let them know you have content they could include in their next newsletter.

{% include random_ad4.html %}

## 5.4 Add metadata to pages about authors and last-updated {#metadata}

Another task before publishing your new content is to add metadata to the pages about authorship and date last updated. How you do this depends on your authoring system, but hopefully your authoring/publishing system supports two essential fields: author and last-updated. These fields might be in YAML frontmatter if you're using a [static site generator](pubapis_static_site_generators.html), or they could be in more structured fields if using a [CCMS](https://idratherbewriting.com/blog/what-is-a-dita-content-management-system-ccms/).

Don't skip adding metadata. Recognize that right now, at the point of release, everyone is excited about the new content. But it will only be a matter of time before most people forget about this page, before you move on, before the teams that support the content transition to other projects and parts of the org, or before the feature itself is sunset, then deprecated.

{% include random_ad3.html %}

Others who follow you will need to know who wrote the content and when it was last updated. (There's nothing worse than arriving at a new job and not having any history about the content's accuracy, freshness, or authorship.) Sometimes the content metadata is automatically tracked through version control &mdash; if so, great. But the version control metadata often supplements more explicit metadata tagging within the content itself.

## 5.5 Coordinate the timing of the release {#coordinate_timing}

One final consideration is timing. When should you hit that publish button? Usually, you want to coordinate your timing with the release. After your release goes out, then you publish the documentation. Don't push your new documentation out before the release. It sounds like common sense, but this might be harder to coordinate than it seems.

{% include ads.html %}

When I worked at Amazon, for large releases (such as the launch of a new product), there was an elaborate release schedule and a "war room" set up. The release schedule involved a long series of steps required to release the feature, such as turning on services, dialing up the visibility of new features in the UI, launching a general press release and announcement, and more. These release meetings would often start at about 5 am and continue until 9 am. Somewhere in the list of release events was a line item for publishing the documentation. At that planned time, the release manager would say, "Go ahead and publish the docs now."

Our doc publishing process took about 15 minutes to complete, so one time I anticipated my slot a bit early and jumped the gun by publishing about a half-hour early. Due to some other hiccup, the release manager actually wanted me to pull back the docs until some other items had been released. I explained that rolling back the doc release would create all kinds of hassle and havoc, and it wasn't worth it. But after this experience, I was careful to wait my turn to publish and to respect the timing and sequence, even if the publishing task took a long time of just waiting around.

Most doc releases aren't so formal or coordinated, but you should plug into the release process, understand the timing and the expectations about when the docs should go live, and follow it.

## 5.6 Celebrate the exhilaration of publishing {#celebrate}

When you actually hit the publish button (or type `git push` and then press Enter), it can be exhilarating. After months of work, you execute the final step that makes it live. There's a rush in publishing. If you're an engineer and have not published before, this rush of adrenaline might be a new experience. I feel it every time I publish a new blog post or article as well. There's a high associated with sending something out into the world, contributing to a body of knowledge in a new way. Take time to appreciate this moment. Go celebrate in some way. Maybe this means getting a fancy caramel latte at a nearby coffee shop or taking a leisurely stroll around the city at lunch.

After you publish, spend the rest of the afternoon doing something you find rewarding. You'll be giddy and feel like the world is full of rainbows and ponies. It's a natural high not only to publish but to fling that albatross from your neck. No more review cycles and edits for that content &mdash; it's done and live. You can move on to other tasks now. You might have been postponing a host of smaller tasks or errands while focusing on this larger writing project. Now you can take care of those little tasks, or focus on frivolous ones. Go chat with someone in the breakroom for a while, or post a few tweets on Twitter. Celebrate the doc release. At most, this high lasts a day or two. Then you return to earth.

## 5.7 Publicize what you published {#publicize_what_you_published}

After the content is live, you have one more step: publicize what you published. In a documentation newsletter or report, describe what you've recently published or updated in your developer portal, and send this email to the relevant internal email lists who might be interested.

A good cadence for sending this report is monthly, but you could also send it right after publishing if it's a huge release. In a monthly newsletter, I also recommend including some other sections, such as discussions of doc strategies, roadmap, and metrics. For more information on what to include, see [Sending doc status reports &mdash; a tool for visibility and relationship building](docapis_status_reports.html#frequency-format-audience).

If there's one mistake most tech writers commit, it's being too quiet about the documentation they work on. If others don't know you wrote and published the new content, they might not understand your role, your contribution to the product release, or your value. Being overlooked leads tech writers to feeling that they're second-class citizens, that their contributions are marginal, and other negative attitudes.

The fix is simple: publicize what you publish. Really, you're a writer. Just write, only instead of docs, write the meta-docs that explain the details about what you just published. Share your meta-docs in the form of newsletters, doc reports, meeting notes, or other emails. Repeat this process regularly, and soon everyone will know you and your contributions.

## Next steps

This section covered the writing process, including considerations when publishing. The next section, [Publishing API Docs](publishingapis.html), will go into publishing tools and workflows, focusing less on writing and more on publishing technology.
