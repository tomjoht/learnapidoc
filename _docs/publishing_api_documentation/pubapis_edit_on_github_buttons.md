---
title: "Edit on GitHub buttons"
permalink: /pubapis_edit_on_GitHub_buttons.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.21
section: publishingapis
path1: /publishingapis.html
---

One common feature in API docs (potentially a [design pattern](pubapis_design_patterns.html) but probably not used widely enough to count as a pattern) is a button or link on each page that says "Edit on GitHub." For example, [Jekyll's docs](http://jekyllrb.com/docs/home/) include this link (titled "Improve this page"), as do [many other docs](#sample_edit_on_github_docs). This link takes users to the source file on GitHub, where they can edit the content.

* TOC
{:toc}

## My Edit on GitHub Experiment

Having seen the Edit on GitHub button on a number of sites, at one point I decided to give it a try with my own docs. Here's what my docs looked like with the Edit on GitHub button:

<img src="images/myeditongithubbutton.png"/>

When I announced the new GitHub integration to my project team, the project manager responded enthusiastically about the potential for "crowdsourcing docs."

The term "crowdsource" hadn't been in my mind when putting my docs on GitHub, but I nevertheless welcomed the idea. It seemed that I was setting up a collaboration engine for documentation. With Amazon's strong developer community, I expected developers to start logging issues, submitting pull requests, and more in the documentation.

But after a few months, almost no one made an edit, logged an issue, or contributed any pull requests. A few people noted broken links, and one person opened a PR when he struggled to set up the project, but otherwise the Edit on GitHub button didn't get much action.

When I asked some champions of this collaborative approach on [WTD Slack](http://slack.writethedocs.org/) how they cultivated community involvement on docs, their responses included suggestions to build up a culture that cares about documentation, and then encourage developers to help. They said developers are more likely to contribute to docs when the docs co-exist in the same repos as the code, and so on.

Getting developers to contribute to docs is not a change that happens overnight. Culture is always hard to transition. Even so, unless you work on an open source project where members are expected to contribute, and GitHub is the default and only platform for contributing, you likely won't find much success with "Edit on GitHub" buttons.

## Comparisons to hype with wikis

Let's turn back the clock a bit. The idea that we can add a button on a page that allows users to edit the content closely parallels the hype around wikis.  About 8 years ago, many people in tech comm were excited about wikis because they offered the same collaborative possibilities. Wikis allowed anyone to contribute to a body of information, without knowledge of anything more than a simple wiki syntax. Wikis decentralized docs by enabling push-button collaboration and publishing.

Sites like Wikipedia showed us the power of collaboration on a massive scale, and wiki platforms took off. Wikis would turn everyone into a technical writer. Docs would no longer be the exclusive domain of a priestly class of people with official "technical writer" titles.

In [My Journey To and From Wikis: Why I Adopted Wikis, Why I Veered Away, and a New Model][1], I explained why I embraced wikis. I implemented wikis because didn't have the needed perspective or bandwidth to address all the information needs that users would have. I wanted to tap into the users' insights and knowledge to complete the gaps in my docs. I wrote:

> When the community owns the content, community members can also keep content up to date when the original author flounders. Many times the original author isn't aware of all the places that content is out of date. As community members use the documentation, they often find places that need updating. Because the content is on a wiki, they can quickly and easily make these updates.

![Shared ownership](images/shared-ownership.png)

Additionally, I wanted to iterate continuously on the docs. Wikis removed the need to build, publish, and deploy content. It all happened magically in the browser when you hit save.

I also noticed that every interesting site online had a massive community driving it:

> The potential reward in collaborating with the masses is an idea that shouldn't be underestimated. Almost everything interesting happening on the web comes about through community. Think of any well-known site. Its innovation isn't the technical features of the platform but rather the community.

## My efforts to wrangle volunteer writers

During the height of wikis, I built my docs with [Mediawiki](https://www.mediawiki.org/wiki/MediaWiki) and also wrangled the efforts of a large volunteer community. I worked for a non-profit in Utah at the time, and many volunteers wanted to help out with writing. Although docs were on a wiki and editable by anyone, we primarily tried to crowdsource our blog. We had dozens of volunteers who indicated they wanted to write, and I started assigning articles on various topics to them.

To manage 60+ different non-specialized volunteer writers, I used a lot of index cards pinned up into various quadrants on my cube walls. I invited volunteers to tackle specific subjects they had some knowledge about, and then helped connect them with the right info to write it.

I found the [90-9-1][2] rule about volunteers to be true. 90% of the people on any community project remain quiet lurkers; 9% contribute moderately, and 1% contribute actively. With 9% + 1% of people contributing, the volunteer writing effort showed some fruits. We generated about 18 articles in total over a period of about 6 months. It seemed superficially successful.

## Trough of disillusionment sets in

Despite the meager success, I started measuring management time and effort. I began to realize that the overhead of getting volunteers to write outweighed the time I spent managing the volunteers. If it took 2-3 hours to manage a volunteer through the writing cycle, or an equivalent 2-3 hours for me to write the article myself, what was I gaining except management overhead?

One barrier the volunteers struggled against was access to knowledge behind the firewall. Volunteers didn't have access to the insider resources they needed &mdash;

* JIRA sites
* SharePoint sites
* Test environments
* Internal contacts
* Product roadmaps
* Team standups and other meetings

In short, they lacked the information, resources, and contacts to actually get the information they needed to write the articles. But if I had to get all this info and somehow transfer it to the volunteer writer, I felt I'd done most of the work already.

![Access to insider knowledge](images/knowledge-needed600.png)

Besides contributing to the blog, some people also made edits to documentation on the wiki. But the same problems existed. Without access to the insider information, all contributions happened **post-release**, so their edits were applied to existing docs. Additionally, the people who made edits to existing docs usually did so in awkward ways that required me to fix the content.

I also realized how difficult it is for an outside volunteer to make a simple edit. To make an addition to docs, you can't just add a paragraph wherever you want. You have to understand the whole so you know what exists and where it exists. You also have to understand doc style and conventions and voice so that your content can fit seamlessly in. It's not so easy, especially for someone who might not want to dedicate much time to this effort. I don't remember more than 10 small edits to tech docs overall.

Eventually, the efforts to crowdsource the blog and wiki fizzled out. I explained why the effort failed:

> I tried the volunteer writing model for more than a year. I kept thinking that if I just figured out the right approach, it could take off into endless productivity. With 100+ writers creating content on a regular basis, we could publish new blog posts daily. We could translate documentation overnight. We could sketch out a skeleton of tasks to write about, and then have volunteers fill in the details. It didn't happen.
>
> The reasons, as I have stated, can be summarized in three bullet points:
>
> * Writing requires insider knowledge that volunteers lack.
> * Professional writing standards are usually beyond volunteer capabilities.
> * The management overhead in coordinating volunteer writing barely outperforms the return.

## How to make crowdsourcing work

To make crowdsourcing work, I concluded, you have to chunk tasks into a little, almost effortless pieces of work. And if you could multiply that tiny effort by thousands of contributors, you would suddenly have something significant. It's like a moving project, where a bunch of optimistic volunteers show up to help someone move from one house to another. If the serve project host puts everything in boxes, each volunteer can easily grab and carry a box. But if everything isn't already packed up in easy-to-transport boxes, the volunteers flounder.

![Effortless chunks of content](images/moving-service-project-600.png)

The problem is that content can't be granularized into little effortless chunks/boxes like that, so these collaborative volunteer efforts fail. *You can't ask 100 people to each write 1 sentence in an article.*

## Fear of having contributions automatically published

I also found that you don't need a wiki to enable collaboration. In fact, volunteers preferred to make edits to Microsoft Word documents shared via Dropbox. I wrote:

> Many volunteers who write articles are uncomfortable publishing them directly on the wiki. They prefer to write in Microsoft Word and upload the articles to Dropbox or JIRA.....When I started to realize that wikis weren't a necessary platform for interacting with volunteers, I started to rethink the wiki as a platform. You can have a lot of success with community and collaboration without using a wiki at all. In fact, because the content is not being published live, for the whole world to see and immediately interact with, volunteers actually feel more comfortable contributing.

In my experience, most engineers don't want their content to make it directly into production either, without an editorial workflow. Having their content published directly was their worst fear, actually. They wanted to do quick brain dumps on internal wiki pages (or in Word docs) and send them to tech writers to clean up, verify, and polish before publishing.

## Back to the Edit on GitHub button

With the context of wikis and their failure in mind, let's look again at the Edit on GitHub button. Suppose you're implementing this button with idea of crowdsourcing docs among engineers. If writing docs isn't the engineers' main job, the result will likely be the same as crowdsourcing efforts with wikis -- *dismal*.

Sure, there will be some shimmering lights here and there. Just like some wikis had some high points here and there. But in general, the majority of tech writers who try to crowdsource their docs will find a lack of significant contributions. The contributions they do get will demand editorial and management overhead.

## Wikis as a platform to simplify publishing

Wikis may have died out as a crowdsourcing tool, but they didn't die out as a corporate platform. Wikis, in fact, have become the **standard corporate platform** for employees to share and publish information. Wikis such as Confluence have largely replaced SharePoint.

In my last 3 jobs, wikis were used across the company for employees to write and publish internal information. In my current job at Amazon, there are at least a million internal wiki pages (across multiple wiki platforms -- Mediawiki, Confluence, and XWiki). Why? Because wikis give people *easy tools to do their jobs*. (Or at least it simplifies the part of their job that involves sharing information.)

An editorial workflow on GitHub can have similar gains. It can empower engineers to do their jobs as far as documentation is concerned. If it's the engineer's **job** or **role** to document something, the engineer will be more likely to do it using the coding tools and workflows familiar to them.

Even for non-engineers, giving people a simple tool and publishing workflow can help people author and distribute content. The simple tool might be Markdown syntax and a repository that automatically builds and deploys the content.

Again, forget about crowdsourcing. [GitHub](pubapis_github_wikis.html) (and [docs-as-code tooling](pubapis_docs_as_code.html)) gives people simple, free, open-source tools to do the writing/publishing tasks they need to do. For that purpose alone, GitHub has the power to move beyond just being a fad. There is real value in empowering common people to author and publish content without expensive help authoring tools, without knowledge of XML syntax, without years of professional tech writing know-how, etc.

<img src="images/simplifiedauthoringtools-01.png" />

Simplicity has its own tradeoffs, though. In exchange for simpler tools, you give up more robust doc functionality. 

## Sample docs with "Edit on GitHub" button {#sample_edit_on_github_docs}

* [Smartthings developer cocumentation](http://docs.smartthings.com/en/latest/getting-started/overview.html)
* [Apache MyNewt documentation](https://mynewt.apache.org/latest/os/introduction/)
* [Quill documentation](https://quilljs.com/docs/quickstart/)
* [Jekyll documentation](https://jekyllrb.com/docs/home/)
