---
title: Hierarchy
permalink: hierarchy.html
published: false
---

## Action 1: Group topics in product sidebars

When I started at my current company, the content was organized in a flat way on a web CMS. By flat, I mean each page existed as an independently floating page, without any structure in a sidebar navigation (apart from a general category) that would show various groupings of content in parent-child trees. It was kind of like a knowledge base, only the content consisted of documentation, not standalone support articles.

The lack of this sidebar was mainly due to the platform &mdash; as a general web CMS, the platform didn't support granular navigation of tech docs in a sidebar.

I found the lack of a sidebar challenging as I tried to use the content. How big was the documentation for each product? 5 pages? 500 pages? What pages and topics were included or relevant in the documentation? In other words, what was there to know about the topic?

I decided that each product needed a sidebar that would show the general pages in that collection of documentation. It wasn't too much trouble to hack a sidebar in there to serve this purpose.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/amazondevportalsidebar.png"/>

There wasn't room on the left, since the general category sidebar occupied that space. So I added it on the right.

### Design principle: Hierarchy

One of principles of design in [Universal Principles of Design](https://www.amazon.com/Universal-Principles-Design-William-Lidwell/dp/1592530079) is hierarchy.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/wtd_doc_navigation_hierarchy.svg"  class="vectorStyle"/>

<div class="bs-callout bs-callout-primary"><b>Hierarchy:</b> "Hierarchical organization is the simplest structure for visualizing and understanding complexity." &mdash; [Universal Principles of Design](https://www.amazon.com/Universal-Principles-Design-William-Lidwell/dp/1592530079)</div>

When we organize our documentation, we usually create a hierarchical outline of the content to help users both understand and visualize the body of information. We usually have a sidebar navigation feature that lists the topics in the documentation (within a particular product scope). The documents are often grouped in parent-child trees.

A good example of hierarchy in a sidebar is with Google.

<a href="https://developers.google.com/actions/develop/conversation"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/googlevoicedoc.png"/>
</a>

Here you can see that the various topics appear in the left, divided into different groups.

Creating a hierarchical sidebar is nothing new in documentation, for sure. It's odd *not* to have one, and only when your content is more like a knowledge base repo or endless wiki (with single page encyclopedic entries) do you usually omit the sidebar. But getting the sidebar right is tough.

### Right-sizing the sidebar

When you create your sidebar menu, right-size the doc navigation so that it's not too massive, nor too small, but rather provides meaningful at-a-glance context at a defined scope. In the Google example, there aren't so many topics that you can't get meaningful information at a glance about the whole.

Here's another example of a sidebar menu from Sentry:

<a href="https://docs.sentry.io/"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/sentry.png"/></a>

I like these examples because you can easily scan the sidebar to get a sense of the whole. The nav menu is just two levels, so it's not overwhelming. There aren't a million topics that would make it difficult to grasp the whole. Being able to get a sense of the whole is one of the main purposes of this hierarchy.

### Can you get rid of the sidebar nav?

Although the sidebar navigation is fairly common in docs, it's also somewhat controversial. Some people think the sidebar nav is detritus from another era (e.g., dated tripane help). They argue that it's not something people frequently use, so why bother with it?

But I think if you remove the sidebar from your docs, users end up disoriented and in need of more context and grounding. In a comment on my site, [Barry Grennon](https://www.linkedin.com/in/barrygrenon/) [explains](https://idratherbewriting.com/2017/05/01/write-the-docs-podcast-episode-5-where-do-we-belong/#comment-3288347593):

> ... We also tried getting rid of TOCs, and people hated it. However, our web analytics show that users almost never interact with the TOC. And if they do, it is usually only with the few proximate pages in the TOC to the page they happen to be on.
>
> From our observations and discussions with users, we feel that the TOC provides a psychological or metaphorically physical sense of space, a sense of a "whole", that consumers of "canonical source" technical content seem to want.

In other words, the sidebar menu grounds users with a sense of the whole, even if they don't always use that whole to navigate. If there isn't a "whole" to grasp, such as is the case with a knowledge base site, the sidebar nav isn't necessary. But when there is a whole, users like having it visible at a glance.

## The necessity of seeing the whole

To better understand why we need this sense of the whole, think of this sidebar as a *list of parts*.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/wtd_doc_navigation_listofparts.svg" style="border: 1px solid #dedede;"/>

Breaking down a complex system into a list of parts helps simplify the system for users.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/wtd_doc_navigation_wholevspart.svg" style="border: 1px solid #dedede;"/>

If you think about it, with just about any complex system or object, to understand it, you break down the whole into a list of parts. It's the first step in wrangling complexity &mdash; converting a complex entity into smaller parts to better understand what's going on. That's what the design principle asserts &mdash; "Hierarchical organization is the simplest structure for visualizing and *understanding complexity*."

Notice that the definition doesn't say hierarchy is a simple structure for organizing complexity. It's a simple structure for *understanding* complexity. Hierarchy is a semantic tool that communicates meaning. It's not just a grouping mechanism; grouping itself is semantic.

We regularly break down complex systems into hierarchies that list out the parts. This listing of parts aids in our understanding of the complex whole. Here are some examples:

* To understand a philosophical theorem, you break it down into assumptions, premises, and conclusions.
* To understand a company's organization, you break it down into different departments, groups, and managers.
* To understand a product to assemble, you check out the list of parts, tools, and tasks.
* To understand a story, you break it down into exposition, rising action, climax, and denouement.
* To understand a conference, you look at the speakers, venue, and schedule.
* To understand an API, you look at the authentication mechanism, the base URL, a sample request, a sample response.
* To understand the animal kingdom, you classify animals into birds, fish, reptiles, amphibians, anthropods, mammals, and other groups.

Our natural action in understanding any complex system is to break the system down into a list of parts, and then analyze how those parts work together. That's basically what a sidebar navigation menu is, only instead of one long flat list, the list of parts are often organized into parent-child trees (in other words, smaller hierarchies) as it makes sense to do so.

When users have this larger map of the whole system, with each of its parents logically grouped, this whole can provide meaning to users. According to James Kalbach,

<blockquote>Navigation provides a narrative for people to follow on the web. <small><br/>&mdash; <a href="https://www.amazon.com/Designing-Web-Navigation-Optimizing-Experience/dp/0596528108/ref=sr_1_1?s=books&ie=UTF8&qid=1483721104&sr=1-1&keywords=designing+web+navigation+kalbach">Designing Web Navigation: Optimizing the User Experience</a></small>
</blockquote>

A narrative is a story. Your hierarchy can tell the story of your information by communicating to users how each part relates to the others.

### Avoid deep hierarchies

As you structure your sidebar, try to avoid deep hierarchies. Deep hierarchies are folders that contain folders that contain folders, etc. Deep hierarchical nesting prevents users from grasping the whole at a glance and undercuts the purpose of the sidebar.

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/simplifying-complexity/wtd_doc_navigation_flatdeephierarchies.svg" style="border: 1px solid #dedede;"/>

Some examples of deep hierarchical nesting would be [Wikipedia's category hierarchies](https://en.wikipedia.org/wiki/Portal:Contents/Categories) or [Yahoo's hierarchy directory](https://arstechnica.com/information-technology/2014/09/yahoo-killing-off-yahoo-after-20-years-of-hierarchical-organization/). Beyond 1-2 levels, the deep hierarchies become difficult to process. Our brains aren't wired for it.
