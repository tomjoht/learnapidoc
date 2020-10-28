---
title: Processes for maintaining existing documentation
permalink: /docapis_doc_maintenance_processes.html
course: "Documenting REST APIs"
weight: 12.8
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
published: false
---

## New versus existing docs

Most documentation efforts focus on creating *new* documentation, but what happens to all the *existing* documentation? As soon as new docs are published, docs begin a trajectory of decay. The natural progression of technology will make documentation outdated within a matter of months or years. New versions of web browsers, operating systems, supporting utilities and tools, etc., are released, and the whole technology landscape keeps moving forward, evolving, improving, and adjusting &mdash; all while documentation remains static.

If documentation isn't actively maintained, it rots (becomes Redundant, Outdated, Trivial), loses clear ownership, and becomes a liability. The tech writers who created the initial content transition elsewhere, the product team members move on to other areas of the org or disband, and that documentation soon becomes "legacy documentation" that tech writers new to the team tend to avoid and neglect, being unfamiliar with it. The neglected docs begin a downward spiral of decay as no one actively looks after the docs anymore.

As more time passes, the amount of legacy documentation becomes more and more abundant. The rate of new documentation the tech writers create versus the amount of documentation the tech writers actively retire tends to be an uneven ratio: you create more than you retire. Most documentation requests that come in from product teams relate to new documentation, not updating or enhancing existing docs. Maybe you add a new FAQ or correct an error here and there, but nothing significant.

It's easy to get caught up in constantly creating new content. After all, this is all anyone usually asks you to do &mdash; *we're releasing a new product/feature, and we need docs*. Product teams rarely reach out to you to review two-year-old docs, or to update docs against support cases to see if better docs could have prevented the support efforts. Once you publish that doc out there, major content updates or overhauls are rare.

Updating and maintaining existing content isn't sexy or exciting, but it's essential if you want to stay on top of docs. When you look at your documentation repository and see hundreds of docs that look unfamiliar to you, that you can't vouch for (identifying owners, the last time it was reviewed, who worked on it, how current it is, etc.), this is unsettling.

Rather than stay heads down in always creating new content, with each sprint, doc teams need to regularly cycle in maintenance tickets &mdash; even though no product teams request it. Regular maintenance should be part of any content strategy to maintain a healthy set of documentation. But with hundreds of pages in your repository, where do you begin? How do you approach it in any sane way? The following sections list possible maintenance activities you can do with docs. They are no particular order.

## Define priority docs

First, identify which docs are a priority. If some products have been sunset or abandoned internally, don't waste too much time improving those docs. You can identify which docs are a priority by looking at at the page views category in your analytics. Additionally, you should have a sense of your organization's priorities that are independent of site traffic. When you know which docs are a priority, you can weight them higher in the other tasks. Try to identify your top 20 documentation pages. This way, if other efforts have to be triaged, you can at least focus your attention where it matters.

## Check for Git conflict markers

Few things are as embarrassing as finding Git conflict markers in your published documentation content, as this makes you look like a Git novice and also leads to interesting formatting in Markdown files. You can easily catch Git conflict markers from commits by adding a [pre-commit hook](https://pre-commit.com/hooks.html) into your Git files that looks for the markers. See this [sample from Patrick Vacek](https://github.com/patrickvacek/git-reject-binaries-and-large-files/blob/master/pre-commit) (just drop the code into your `pre-commit` file inside .git > hooks). This can help prevent these conflict markers from polluting your repo going forward.

## Avoid duplicate content

If you have duplicate content that isn't single-sourced in your docs, chances are that duplicate content has become out of sync. You can usually generate multiple instances of content from the same source using a variety of documentation tools and techniques. These areas are ripe for focus and are an easy win to merge and streamline.

## Check engineering commit dates against release notes

If you're tracking different engineering repositories for various projects, you might want to look at the latest commits to see if they track with your latest release notes. This might let you identify changes to the code that you've missed. Not every engineer knows how to contact tech writers for changes, or might be unaware of the impact of code changes on docs.

## Identify broken links

Identifying broken links is a time-honored tradition in the doc community. Fixing broken links is a straightforward, concrete task that doesn't require much effort. Put on your favorite Netflix show in the background, and slip into a mind-numbing afternoon of fixing links. There are different tools and scripts for identifying broken links. For example, you could linking-checking tools (like [Dr. Link Checker](https://www.drlinkcheck.com/)), custom scripts, or even Chrome extensions (like [Broken Link Checker](https://chrome.google.com/webstore/detail/broken-link-checker/nibppfobembgfmejpjaaeocbogeonhch?hl=en)) to identify broken links.

## Identify broken and outdated images

Identifying broken, outdated images is another task that you can tackle by running scripts or other validators. Broken images are much less common than broken links; more often is that images become outdated. You can revisit workflows to see if the screens have changed. This would give you a chance to check the accuracy of the steps as well. Granted, retracing your steps through tasks isn't as easy, but there's nothing that signals "this documentation is old" than having outdated screenshots.

## Delete unused branches

How often have you looked at your list of branches in origin and found half a dozen or more old branches, or branches you no longer recognize? Long-lived branches outside of your production environment are rarely a good thing, as the branch usually becomes more and more divergent. If you've already merged the branch, get rid of it. If the content is unpublished, consider merging it anyway (assuming it's a new page and doesn't update existing pages), and then use other techniques to enforce access control, or hide the content inside production in other ways.

## Identify unpublished files

In my repo, there are quite a few files that I've started and then abandoned. I set the page as unpublished, and then directions or projects change and I move on. However, when I do searches in the repository to look for phrases or instances of something, those unpublished files get included and slow down the updates. Look through your repo and identify all the unpublished content. Assess whether it still needs to remain.

## Identify content owners

Understanding who owns which content is a huge task. In the moment that you're creating new documentation, this kind of content ownership metadata hardly seems necessary. But as soon as the docs are published, teams evolve, people leave, and before too long, support might reach out to you with questions about a specific doc, and you won't have any idea who to contact for questions. Content ownership usually doesn't need to be page-level granular, but the general doc sets should have some metadata about which team owns the related product.

## Identify last-reviewed dates

Probably the most significant detail on the page is the last-reviewed date. Although Git timestamps your edits, Git won't distinguish between a single character update versus a major doc overhaul that was reviewed by SMEs. In your page metadata, you could maintain two fields: "last modified" and "last reviewed." Last modified is helpful to quickly see who recently worked on the file. You can implement a Git hook to print the Git user email into a value on the page, as well as the last modified date. Based on this metadata, you could conceivably create reports that identify docs that haven't been updated for years. However, as I said, if you change one character (e.g., fixing a broken link, or fixing a typo), it could give the false impression that the doc has been updated.

It's better if you can incorporate a last-reviewed date in the page metadata. However, if this data isn't automated, it's easy to neglect it, and then you end up with missing dates or incorrect dates. The challenge is to incorporate some enforcing mechanism that requires you to keep the file updated. I'm still trying to figure this area out, but I know it's critical to wrangling large doc sets to identify routine reviews.

## Require content reviews of old docs

Probably the most strategic technique you can do to keep docs updated is flag them at regular intervals (e.g., every year) and submit a ticket to the product team to review the content. As long as your "last reviewed" dates are accurate, you could create scripts to identify these pages and then automate notifications or tickets to content owners to complete reviews. This is common with security teams and permission settings. Every so often, I receive notifications to "baseline" the people I have given access permissions for various services. These notifications could similarly be sent to engineers to review content. However, it would be easy for engineers or other reviewers, no doubt busy with other projects, to half-heartedly click through the review notifications to confirm that the content is up-to-date. In contrast, it's much easier to ignore a human.

## Identify docs that are missing metadata

Another technique is to look through all the metadata in your pages to make sure each page is properly tagged. Your metadata might simply require fields like this:

* Title
* Description
* Keywords
* Last modified
* Last reviewed
* Content owner

Unless you're working with a tool that enforces structured metadata, I find that maintaining a long list of custom fields in the header is a real challenge. At some point, I plan to implement a wrapper like [Netlify CMS](https://www.netlifycms.org/) on my docs so that I'm forced to choose metadata from a structured list (this would allow for taxonomies and related pages, for example), but I haven't yet.)

## Identify top articles in knowledge bases that aren't in the documentation

Unless you work closely with your support team, the support agents might create KB articles related to trending topics without informing the doc team about these trends. (I find this lack of communication kind of mind-blowing, but silos seem to be the norm in most places.) Glance through the top KB articles in your support site or system and see if some of the information should be added to your documentation. This analysis might higlight gaps that you previously missed.

## Identify docs with the highest bounce rate and shorted visit time

Bounce rate refers to the number of visitors that land on a page and then bounce off your site domain to some other site, without visiting any other pages on your site. If users land on a page and then immediately bounce off, it could indicate that the content has an SEO-optimized title but lacks the answer users are looking for. Look at your top 10 pages with the highest bounce rate to see if the information looks right.

## Review doc commit logs

If you share permissions to your doc repo with a large number of people, you might want to periodically review your commit logs to see what people are committing. Especially if you have many engineers or other roles writing and publishing docs, they might not be familiar with your conventions or writing styles. This is an easy way for poor content to slip into your repo undetected.

## Review documentation formatting


## Identify backlinks for each page

## Check links in external systems (e.g., Marketing pages)

## Identify impact of new product releases on existing products
