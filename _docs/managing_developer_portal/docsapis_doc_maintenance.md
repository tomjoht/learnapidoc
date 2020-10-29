---
title: Processes for maintaining existing documentation
permalink: /docapis_doc_maintenance_processes.html
course: "Documenting REST APIs"
weight: 12.8
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
---

As soon as new docs are published, docs begin a trajectory of decay. The natural progression of technology makes documentation outdated within a matter of months or years. New versions of web browsers, operating systems, supporting utilities and tools, etc., are released, and the whole technology landscape keeps moving forward, evolving, improving, and adjusting &mdash; all while documentation remains static. Most documentation efforts focus on creating *new* documentation, but what happens to all the *existing* documentation that is decaying? In this section, I cover ways to maintain existing documentation.

* TOC
{:toc}

## Working on new docs versus maintaining existing docs

If documentation isn't actively maintained, it rots (becomes Redundant, Outdated, Trivial), loses ownership, and turns into "legacy documentation." The tech writers who created the initial content transition elsewhere, and the product team members move on to other areas of the org or disband. Soon no one knows the history of the content &mdash; it was just there when writers arrived. As such, tech writers new to the team might prefer to avoid and neglect, it being unfamiliar with it. The neglected docs begin a downward spiral of decay as no one actively looks after the docs anymore. The docs are like orphaned children, without a caregiving parent.

As more time passes, the amount of legacy documentation becomes more and more abundant. The rate of new documentation the tech writers create versus the amount of documentation the tech writers retire tends to be an uneven ratio: you create much more than you retire. Most documentation requests that come in from product teams relate to new documentation, as everyone is focused on the shiny and new, the possibilities of a new feature, and so forth. Few want to take responsibility for documentation related to products or features that fizzled.

It's easy to get caught up in constantly creating new content. After all, this what requests to the documentation team usually consist of &mdash; product managers say, *we're releasing a new product/feature, and we need docs!* Product teams rarely reach out to you to review two-year-old docs, or to update docs against support cases to see if better docs could have prevented the support efforts. Once you publish that doc out there, major content updates or overhauls are rare except with major product updates.

Updating and maintaining existing content isn't sexy or exciting, but it's essential if you want to stay on top of docs. When you look at your documentation repository and see hundreds of docs that look unfamiliar to you, that you can't vouch for (identifying owners, the last time it was reviewed, who worked on it, how current it is, etc.), this is unsettling.

Rather than stay heads down in always creating new content, with each sprint, doc teams need to regularly cycle in maintenance tickets &mdash; even though no product teams request the maintenance. Regular maintenance should be part of any content strategy to maintain a healthy set of documentation. But with hundreds of pages in your repository, where do you begin? How do you approach it in any sane way, especially when you can barely keep ahead of the incoming requests for new content? The following sections list possible maintenance activities you can do with docs. Although I numbered the sections, they are no particular order.

## 1. Define priority docs

First, identify which docs are a priority. If some products have been sunset or abandoned internally, don't waste too much time improving those docs. Just establishing which docs are a priority can help you with planning. You can identify which docs are a priority by looking at at the page views category in your analytics. Additionally, you should have a sense of your organization's priorities that are independent of site traffic. When you know which docs are a priority, you can weight them higher in the other tasks. Try to identify your top 20 documentation pages. This way, if other efforts have to be triaged, you can at least focus your attention where it matters.

## 2. Identify broken links

Identifying broken links is a time-honored tradition in the doc community, and it's an easy place to start. Fixing broken links is a straightforward, concrete task that doesn't require much effort. Put on your favorite Netflix show in the background, and slip into a mind-numbing afternoon of fixing links. There are different tools and scripts for identifying broken links. For example, you could linking-checking tools (like [Dr. Link Checker](https://www.drlinkcheck.com/)), custom scripts, or even Chrome extensions (like [Broken Link Checker](https://chrome.google.com/webstore/detail/broken-link-checker/nibppfobembgfmejpjaaeocbogeonhch?hl=en)) to identify broken links.

We often look within our own documentation repositories for errors, but what about content outside of the documentation? How about all the marketing pages, blog posts, and other content that link to your documentation? If your documentation portal has a lot of other content in blog posts, marketing pages, forums, white papers, and other content assets, consider running link checkers across those pages to identify broken links. Broken links might point to outdated information. Fortunately, you might not have to fix broken links on these pages. You could simply print the report and hand it off to the content owners in these areas.

## 3. Identify broken or outdated images

Identifying broken, outdated images is another task that you can tackle by running scripts or other validators. Broken images are much less common than broken links; more often, the issue is that existing images become outdated. If you're familiar with all the interfaces, you can glance through screens and identify older designs. Alternatively, you can revisit workflows, retracing your steps through tasks, to see if the screens have changed. This would give you a chance to check the accuracy of the steps as well. There's nothing that signals "this documentation is old" than having outdated screenshots.

## 4. Delete unused branches

How often have you looked at your list of branches in origin and found half a dozen or more old branches, or branches you no longer recognize? Long-lived branches outside of your production environment are rarely a good thing, as the branch usually becomes more and more divergent. If you've already merged the branch, get rid of it. If the content is unpublished, consider merging it anyway (assuming it's a new page and doesn't update existing pages), and then use other techniques to enforce access control, or hide the content inside production in other ways.

There might be other maintenance tasks to perform on your Git repository as well, such as pruning large files to reduce the size, verifying permissions, or running other Git maintenance tasks.

## 5. Identify unpublished files

In our documentation repo, there are quite a few files that I've started and then abandoned. Sometimes I started working on a file only to have the product team ghost me before launch; other times I might have set about an idea that I eventually forgot about. In many cases, I set the page as unpublished and move on. However, when I do searches in the repository to look for phrases or instances of something, those unpublished files get included and slow down the updates. Look through your repo and identify all the unpublished content. Assess whether it still needs to remain. If you don't anticipate actually working on the content, delete it. Or copy it into a ticket and archive it. Someone can always find and retrieve it.

## 6. Identify files or doc sets ready for deletion

You might have some files in your repo that you can just wholesale delete. For example, suppose you deprecated a product two years ago, and all the remaining files just have a banner indicating the deprecation. At some point, you can just delete them. Or maybe you have files and doc sets related to products that never launched. Maybe docs were written for a feature that was canned at the last moment and the product team long since disbanded. Or maybe you have leftover files from a previous migration, or old scripts that are no longer used, and such. At a regular cadence, look at each doc set and ask whether you might actually get rid of it.

Note that I'm not recommending that you delete actively used content. Almost always, when you deprecate documentation, you add a banner announcing the deprecation and include a migration path. I'm instead encouraging you to think about the "removal" part of the content life cycle. In Kristina Halvorson's definition of content strategy, she says, "Content strategy guides decisions about content throughout its lifecycle, from discovery to deletion." Think about that last stage in the content life cycle: *deletion*.

Deleting content can be scary. What if people complain about broken links? What if it turns out we need that content? You know what? The great thing about managing content in Git is that it's nearly always retrievable. You could always resurrect content that you've deleted.

## 7. Identify content owners for each doc set

Understanding who owns all the documentation content, especially the legacy documentation, is a huge task. In the moment that you're creating new documentation, this kind of content ownership metadata hardly seems necessary. But as soon as the docs are published, teams evolve, people leave, and before too long, support might reach out to you with questions about a specific doc, and you won't have any idea who to contact for questions. Content ownership usually doesn't need to be granular at the page-level granular, but the general doc sets should have some metadata about which team owns the related product. Team ownership of products doesn't change so often as the team members. Remember that the average lifespan of an employee at many companies [less than 2 years](https://www.businessinsider.com/employee-retention-rate-top-tech-companies-2017-8).

## 8. Identify last-reviewed dates

Probably the most significant metadata for your docs is the last-reviewed date. Although Git timestamps your edits, Git won't distinguish between a single character update and a major doc overhaul that was reviewed by SMEs. In your page metadata, consider maintaining two fields: "last modified" and "last reviewed." Last modified is helpful to quickly see who recently worked on the file. You can implement a Git hook to print the Git user email into a value on the page, as well as the last modified date.

Based on this metadata, you could conceivably create reports that identify docs that haven't been updated for years. However, as I said, if you change one character (e.g., fixing a broken link, or fixing a typo), it could give the false impression that the doc has been updated. To address this issue, incorporate a "last-reviewed" date in the page metadata. This date can't easily be automated, but even if you have a general date like Q1 2020, Q2 2020, and so on, it will probably be fine.

After you add this last reviewed date to your docs, consider taking the bold step of printing the timestamp on each page (perhaps in the footer). If users see that the page hasn't been updated since 2016, it can be a red flag that perhaps the content is old.

## 9. Require content owners to periodically review docs

Probably the most powerhouse technique you can do to keep docs updated is flag them at regular intervals (e.g., every year) and submit a ticket to the product team to review the content. As long as your "last reviewed" dates are accurate, you could create scripts to identify these pages and then automate notifications or tickets to content owners to complete reviews. This regular "baselining" is common with security teams and permission settings. These notifications could similarly be sent to engineers to review content.

However, it would be easy for engineers or other reviewers, no doubt busy with other projects, to half-heartedly click through the review notifications to confirm that the content is up-to-date. In contrast, it's much easier to ignore a human. A genuine outreach to a team to review their docs, followed by a meeting where you actually step page by page through content the team owns, might be the only way to get attention from engineers.

I admit that, although I've had intentions of doing this for years, it's never been something I've actually implemented. I'm usually too busy creating new content, and why bother to spend time fixing content that no one is complaining about? Aren't there more efficient starting points for identifying friction points, such as looking at support logs? Sure, there's validity to this argument, but I don't think these doc reviews need to be extensive. Product owners can quickly glance through doc headings and flag whether features are still valid, even if they don't verify each individual step. Also, this meeting will help establish contacts with product teams so they know who to contact when they do have updates. You could consider this a training and awareness campaign (assuming you want teams to reach out to you).

## 10. Identify docs that are missing metadata

Another maintenance activity is to look through all the metadata in your pages to make sure each page is properly tagged. Your metadata might simply require fields like this:

* Title
* Description
* Keywords
* Last modified
* Last reviewed
* Content owner

Unless you're working with a tool that enforces structured metadata, I find that maintaining a long list of custom fields in the header is a real challenge. At some point, I plan to implement a wrapper like [Netlify CMS](https://www.netlifycms.org/) on my docs so that I'm forced to choose metadata from a structured list (this would allow for taxonomies and related pages, for example), but I haven't yet.)

If you're working in a static site generator, you can fairly easily generate a list of all the metadata for each page in your doc directory. Although keywords might not be important for Google's search, many times your site search uses keywords.

## 11. Identify top articles in knowledge bases that aren't in the documentation

Unless you work closely with your support team, the support agents might create KB articles related to trending topics without informing the doc team about these trends. (I find this lack of communication kind of mind-blowing, but silos seem to be the norm in most places.) Glance through the top KB articles in your support site or system and see if some of the information should be added to your documentation. This analysis might highlight gaps that you previously missed.

## 12. Identify docs with the highest bounce rate and shortest visit time

Bounce rate refers to the number of visitors that land on a page and then bounce off your site domain to some other site, without visiting any other pages on your site. If users land on a page and then immediately bounce off, it could indicate that the content has an SEO-optimized title but lacks the answer users are looking for. Look at your top 10 pages with the highest bounce rate to see if the information looks right. Maybe some of these pages need to be re-titled, or maybe the information needs more development. Or maybe the page is actually working well and allowing users to zero-in on exactly what they're looking for in less than five seconds.

## 13. Review doc commit logs to check commits from people you don't recognize

If you share permissions to your doc repo with a large number of people, you might want to periodically review your commit logs to see what people are committing. Especially if you have many engineers or other roles writing and publishing docs, they might not be familiar with your conventions or writing styles. This is an easy way for poor content to slip into your repo undetected. Unless someone is actively monitoring commit logs for repos, it can be easy for people to submit content with incorrect formatting or other issues.

## 14. Check engineering commit dates against release notes

If you're tracking different engineering repositories for various projects, you might want to look at the latest commits to see if they track with your latest release notes. This might let you identify changes to the code that you've missed. Not every engineer knows how to contact tech writers for changes, and many might be unaware of the impact of code changes on docs. Granted, keeping aware of which repositories correspond to which docs sets is a feat in itself, but if the repo details are available, they can be helpful. Just look at the commit logs and glance at the titles to see if anything looks recent or relevant.

## 15. Look for broken documentation formatting

If you write docs in Markdown, I guarantee that somewhere, on some page, your Markdown is broken. There are many Markdown linters that will look for broken Markdown syntax. Or you could look for common error patterns in full text searches.

Few things are as embarrassing as finding Git conflict markers in your published documentation content, as this makes you look like a Git novice and also leads to interesting formatting in Markdown files. You can easily catch Git conflict markers from commits by adding a [pre-commit hook](https://pre-commit.com/hooks.html) into your Git files that looks for the markers. See this [sample from Patrick Vacek](https://github.com/patrickvacek/git-reject-binaries-and-large-files/blob/master/pre-commit) (just drop the code into your `pre-commit` file inside .git > hooks). This can help prevent these conflict markers from polluting your repo going forward.
