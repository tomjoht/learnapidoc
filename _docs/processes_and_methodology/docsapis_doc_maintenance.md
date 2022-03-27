---
title: Maintaining existing documentation
permalink: docapis_doc_maintenance_processes.html
course: "Documenting REST APIs"
weight: 12.7
sidebar: docapis
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2020-10-30
---

As soon as new docs are published, docs begin a trajectory of decay. The natural progression of technology makes documentation outdated within a matter of months or years. New versions of web browsers, operating systems, supporting utilities and tools, etc., are released, and the whole technology landscape keeps moving forward, evolving, improving, and adjusting &mdash; all while documentation remains static. The more your documentation relies on third-party components, the faster it goes out of date.

Most documentation efforts focus on creating *new* documentation, but what happens to all the *existing* documentation that is decaying? In this section, I cover ways to maintain existing documentation and prevent it from rotting.

* TOC
{:toc}

## Working on new docs versus maintaining existing docs

If documentation isn't actively maintained, it rots (becomes Redundant, Outdated, Trivial), loses ownership, and turns into "legacy documentation." The tech writers who created the initial content transition elsewhere, and the product team members move on to other areas of the org or leave. Soon no one knows the history of the content &mdash; it was just there when writers arrived. As such, tech writers new to the team might prefer to avoid and neglect it, being unfamiliar with the docs. The neglected docs begin a downward spiral of decay as no one actively looks after the docs anymore. The docs are like orphaned children, without a caregiving parent.

As more time passes, the amount of legacy documentation becomes more and more abundant. The rate of new documentation that tech writers create versus the amount of documentation the tech writers retire tends to be an uneven ratio: you create more than you retire. Most documentation requests that come in from product teams relate to new documentation, as everyone is focused on the shiny and new, the possibilities of a new feature, the excitement of a release, and so forth. Few want to take responsibility for documentation related to products or features that fizzled but are still used.

{% include ads.html %}

It's easy to get caught up in constantly creating new content. After all, this is what requests to the documentation team usually consist of &mdash; product managers say, *We're releasing a new product/feature, and we need docs!* Product teams rarely reach out to you to review two-year-old docs, or to update docs against support cases to see if better docs could have prevented the support efforts. Once you publish your docs, major content updates or overhauls are rare except with major product updates.

Updating and maintaining existing content isn't sexy or exciting, but it's essential if you want to stay on top of your docs. When you look at your documentation repository and see hundreds of docs that look unfamiliar to you, that you can't vouch for (identifying owners, the last time it was reviewed, who worked on it, how accurate it is, etc.), this is unsettling.

Rather than stay heads down in always creating new content, doc teams should regularly cycle in a few maintenance tickets with each sprint &mdash; even though no product teams request the maintenance. Regular maintenance should be part of any content strategy to maintain a healthy set of documentation. But with hundreds of pages in your repository, where do you begin? How do you approach maintenance in any sane way, especially when you can barely keep ahead of the incoming requests for new content? The following sections list possible maintenance activities you can do with docs. (Although I numbered the sections, they are in no particular order.)

## 1. Define priority docs

First, identify which docs are a priority. If some products have been sunset or abandoned internally, don't waste too much time improving those docs. Just establishing which docs are a priority can help you with planning. You can identify which docs are a priority by looking at page views in your analytics. Additionally, you should have a sense of your organization's priorities that are independent of site traffic. When you know which docs are a priority, you can weight them higher in the maintenance tasks. Try to identify your top 5 documentation sets. This way, if other efforts have to be triaged, you can at least focus your attention where it matters.

{% include random_ad2.html %}

## 2. Identify broken links

Identifying broken links is a time-honored tradition in the doc community, and it's an easy place to start. Fixing broken links is a straightforward, concrete task that doesn't require outreach to other teams. Put on your favorite Netflix show in the background, and slip into a mind-numbing afternoon of fixing links. There are different tools and scripts for identifying broken links. For example, you could use linking-checking tools (like [Dr. Link Checker](https://www.drlinkcheck.com/)), custom scripts, or even Chrome extensions (like [Broken Link Checker](https://chrome.google.com/webstore/detail/broken-link-checker/nibppfobembgfmejpjaaeocbogeonhch?hl=en)) to identify broken links.

We often look within our own documentation repositories for errors, but what about content outside of the documentation? How about all the marketing pages, blog posts, support threads, and other content that link to your documentation? If your documentation portal has a lot of other pages, consider running link checkers across those pages to identify broken links. Fortunately, you might not have to fix broken links on these pages. You could simply print the report and hand it off to the content owners in these areas.

## 3. Identify broken or outdated images

As with broken links, identifying broken images is another task that you can tackle by running scripts or other validators. Broken images are much less common than broken links. More often, the issue is that existing images become outdated. If you're familiar with all the interfaces, you can glance through screens and identify older designs. Alternatively, you can revisit workflows, retracing your steps through tasks to see if the screens have changed. This would give you a chance to check the accuracy of the steps as well. There's nothing that signals "this documentation is old" than having outdated screenshots.

## 4. Delete unused branches

How often have you looked at your list of branches in origin and found half a dozen or more old branches or branches you no longer recognize? Long-lived branches outside of your production environment are rarely a good thing, as the branch usually becomes more and more divergent. If you've already merged the branch, get rid of it. If the content is unpublished, consider merging it anyway (assuming it's a new page and doesn't update existing pages), and then use other techniques to enforce access control. You could even set the page as unpublished.

{% include random_ad4.html %}

There might be other maintenance tasks to perform on your Git repository as well, such as pruning large files to reduce the repo's size, verifying permissions, or running other maintenance tasks.

## 5. Identify unpublished files

In our documentation repo, there are quite a few files that I've started and then abandoned. Sometimes I started working on a file only to have the product team ghost me before launch. Other times I might have set about an idea that I eventually forgot about. In many cases, I set the page as unpublished and move on. However, when I do searches in the repository to look for phrases or instances of something, those unpublished files get included and slow me down. Look through your repo and identify all the unpublished content. Assess whether it still needs to remain. If you don't anticipate actually working on the content, delete it. Or copy it into a ticket and archive it. Someone can always find and retrieve it.

## 6. Identify files or doc sets ready for deletion

You might have some files in your repo that you can just delete. For example, suppose you deprecated a product two years ago, and all the remaining files just have a banner indicating the deprecation. At some point, you can just delete the files. Or maybe you have files and doc sets related to products that never launched. Maybe docs were written for a feature that was canned at the last moment and the product team long since disbanded. Or maybe you have leftover files from a previous migration, or old scripts that are no longer used, and such. At a regular cadence, look through your docs and ask what you can remove.

Note that I'm not recommending that you delete actively used content. Almost always, when you deprecate documentation, you add a banner announcing the deprecation and include a migration path. I'm instead encouraging you to think about the "deletion" part of the content life cycle. In Kristina Halvorson's definition of content strategy, Halvorson says, "Content strategy guides decisions about content throughout its lifecycle, from discovery to deletion." Think about that last stage in the content life cycle: *deletion*.

{% include random_ad3.html %}

Deleting content can be scary &mdash; *what if people complain about broken links? What if it turns out we need that content? Before removing it, shouldn't we get approval from all the product team members (who are no longer there)?*

You know what? The great thing about managing content in Git is that it's nearly always retrievable. You can usually resurrect content that you've deleted. If you delete something and no one complains about its absence, you probably made a good choice.

## 7. Identify content owners for each doc set

Understanding who owns all the documentation content, especially legacy documentation, is a huge task. In the moment that you're creating new documentation, this kind of content ownership metadata hardly seems necessary. But as soon as the docs are published, teams evolve, people leave, and before too long, support might reach out to you with questions about a specific doc, and you won't have any idea who to contact about it. Content ownership usually doesn't need to be granular at the page-level, but the general doc sets should have some metadata about which team owns the product. Team ownership of products doesn't change so often as the team members. (The average lifespan of an employee at many companies is [less than 2 years](https://www.businessinsider.com/employee-retention-rate-top-tech-companies-2017-8).) The engineers and PMs that seem so present and thriving one month might vanish the next.

## 8. Identify last-reviewed dates

Probably the most significant metadata for your docs is the last-reviewed date. Although Git timestamps your edits, Git won't distinguish between a single-character update and a major doc overhaul that was carefully reviewed by SMEs. In your page metadata, consider maintaining two fields: "last modified" and "last reviewed." *Last modified* is helpful to quickly see who recently worked on the file. You can implement a Git hook to print the Git user email into a value on the page, as well as the last modified date. The "last reviewed" metadata can't easily be automated, but even if you have a general date like Q1 2020, Q2 2020, and so on, it will probably be fine.

After you add this *last reviewed* date to your docs, consider taking the bold step of printing the timestamp on each page (perhaps in the footer). If users see that the page hasn't been updated since 2016, it can be a red flag to users that perhaps the content is old. You can create scripts and reports and automate other processes as long as you have these dates on your files.

## 9. Require content owners to periodically review docs

Probably the most powerhouse technique you can do to keep docs updated is identify docs that haven't been reviewed for a long time and submit a ticket to the product team to review the content. As long as your "last reviewed" dates are accurate, you could create scripts to identify these pages at a regular cadence (e.g., yearly) and then automate notifications or tickets to content owners to complete reviews. This regular "baselining" is common with security teams and permission settings.

{% include image_ad_right.html %}

However, it would be easy for engineers or other reviewers, no doubt busy with other projects, to half-heartedly click through automated review notifications to confirm that the content is up-to-date. In contrast, it's much harder to ignore a human. A genuine outreach to a team to review their docs, followed by a meeting where you actually step page by page through content that the team owns, might be the only way to get attention from engineers.

I admit that, although I've had intentions of doing this for years, it's never been something I've actually implemented. I'm usually too busy creating new content, and why bother to spend time fixing content that no one is complaining about? Aren't there more efficient starting points for identifying friction points, such as looking at support logs? Sure, there's validity to this argument, but I don't think these doc reviews need to be extensive. Product owners can quickly glance through doc headings and flag whether features are still valid, even if they don't read through each individual step. Also, this meeting will help establish contacts with product teams so they know who to reach out to when they do have updates. You could consider this a training and awareness campaign (assuming you want teams to reach out to you).

## 10. Identify docs that are missing metadata

Another maintenance activity is to look through all the metadata in your pages to make sure each page is properly tagged. Your metadata might require fields like this:

* Title
* Description
* Keywords
* Last modified
* Last reviewed
* Content owner

Unless you're working with a tool that enforces structured metadata, I find that maintaining a long list of custom fields in the header is a real challenge. (At some point, I plan to implement a wrapper like [Netlify CMS](https://www.netlifycms.org/) on my docs so that I'm forced to choose metadata from a structured list, but I haven't yet.)

If you're working in a static site generator, you can easily generate a list of all the metadata for each page in your docs. Although keywords might not be important for Google's search, many times your site search uses keywords. Audit this metadata as a way of performing routine doc repository maintenance.

## 11. Identify top articles in knowledge bases that aren't in the documentation

Unless you work closely with your support team, the support agents might create KB articles related to trending topics without informing the doc team about these trends. (I find this lack of communication kind of mind-blowing, but silos seem to be the norm in most places.) Glance through the top KB articles in your support site or system and see if some of the information should be added to your documentation. This analysis might highlight content gaps that you previously missed.

## 12. Identify docs with the highest bounce rate and shortest visit time

Bounce rate refers to the number of visitors that land on a page and then bounce off your site domain to some other site, without visiting any other pages on your site. If users land on a page and then immediately bounce off, it could indicate that the content has an SEO-optimized title but lacks the answer users are looking for. Look at your top 10 pages with the highest bounce rate to see if the information looks right. Maybe some of these pages need to be re-titled, or maybe the information needs more development. Or maybe the page is actually working well and allowing users to zero-in on exactly what they're looking for.

## 13. Review doc commit logs to check commits from people you don't recognize

If you share permissions to your doc repo with a large number of people, you might want to periodically review your commit logs to see what people are committing. Especially if you have many engineers or people in other roles writing and publishing docs, they might not be familiar with your documentation conventions or writing styles. This is an easy way for poor content to slip into your repo undetected. Unless someone is actively monitoring commit logs for repos, it can be easy for people to submit content with incorrect formatting or other issues. While you're at it, revisit your repo's permissions to make sure they're current and don't include people you added long ago for temporary purposes.

## 14. Check engineering commit dates against release notes

If you're tracking different engineering repositories for various projects, you might want to look at the latest commits to see if they track with your latest release notes. This might let you identify changes to the code that you've missed. Not every engineer knows how to contact tech writers for changes, and many engineers might be unaware of the impact of code changes on docs. Granted, keeping aware of which repositories correspond to which docs sets is a feat in itself, but if the code repo details are available, they can be helpful. Just look at the commit logs and glance at the titles to see if anything looks recent or relevant.

## 15. Look for broken documentation formatting

If you write docs in Markdown, I guarantee that somewhere, on some page, your Markdown is broken. There are many Markdown linters that will look for broken Markdown syntax. You could also look for common error patterns in full-text searches.

One easy formatting issue to check for is Git conflict markers in your content. Few things are as embarrassing having these markers exposed in your content, as this makes you look like a Git novice and also leads to interesting formatting in Markdown files. You can easily catch Git conflict markers from commits by adding a [pre-commit hook](https://pre-commit.com/hooks.html) into your Git files that looks for the markers. See this [sample code from Patrick Vacek](https://github.com/patrickvacek/git-reject-binaries-and-large-files/blob/master/pre-commit) (just drop the code into your `pre-commit` file inside .git > hooks). This can help prevent these conflict markers from polluting your repo going forward.

## Conclusion

The above items might seem daunting to tackle all at once, but if you can cycle in at least one maintenance ticket during each sprint, you can make maintenance a more strategic activity and make progress over a period of time.
