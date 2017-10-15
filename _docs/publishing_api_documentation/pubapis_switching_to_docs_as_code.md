---
title: "Case study: Switching tools to docs-as-code"
permalink: /pubapis_tools_switching_to_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.84
section: publishingapis
path1: /publishingapis.html
---

{: .tip}
For an overview of the docs as code approach, see [Docs-as-Code Tools](pubapis_docs_as_code.html)

Changing any documentation tooling at a company can be a huge undertaking. Depending on the amount of legacy content to convert, the number of writers to train, and the restrictions and processes you have to work against in your corporate environment, and more, it can require an immense amount of time and effort to switch tools from the status quo to a new approach, such as docs as code.

Additionally, you will likely need to make this change outside your normal documentation work, and you will need to develop the new system while still updating and publishing content in the old system.

In this article, I'll describe the challenges I faced into when implementing a docs-as-code approach within Amazon's Appstore and Alexa publishing group. Note that Amazon has a lot of different tech writing groups and tools. At the time of this writing, I worked in a small group of about 10 writers focused on third-party developer documentation for the Amazon Appstore. We published content on [developer.amazon.com/documentation](https://developer.amazon.com/documentation). (This is not the same group as AWS or the groups that create end-user documentation for products.)

## Previous processes

Previously, the Appstore doc team published content through a content management system called Hippo (now called "Bloomreach".) Hippo was similar to WordPress or Drupal but was Java-based rather than PHP-based (which made it attractive to Java-centric enterprise).

To publish a page of documentation, we tech writers had to create a new page in the Hippo CMS and then paste in our HTML for the page (or try to use the WYSIWYG editor in the CMS, which was disastrous). If you had 50 pages of documentation to publish, you would need to paste the HTML into each CMS page one by one. Originally, many writers would use tools such as Pandoc to convert their content to HTML and then paste it into the Hippo CMS. It was painstaking, prone to error, and primitive.

When I started, I championed using Jekyll to generate and manage the HTML, and I started storing the Jekyll projects in internal Git repositories. I also created a layout in Jekyll that was designed specifically for Hippo. The layout included a documentation-specific sidebar (previously absent in Hippo) to navigate all the content in a particular set of documentation. This Jekyll layout included a number of styles and scripts to override settings in the CMS.

Despite this innovation, our publishing process still involved pasting the generated HTML (after building Jekyll) page by page into the Hippo CMS. Thus, we were half way with our docs-as-code approach but still had room to go. One of the tenets of docs-as-code is to build your output directly from the server. In other words, you incorporate the publishing logic on the server rather than running the publishing process from your local computer. This last step, publishing directly from the server, was difficult because another engineering group was responsible for the website and server, and we couldn't just rip Hippo out and start uploading the Jekyll-generated files onto a web server ourselves.

It would take another year or more before the engineering team had bandwidth for the project. Once it started, the project was a wild ride of mismatched expectations and understandings. In the end, we succeeded. Most of the lessons learned here are about this process, specifically how we transitioned to building Jekyll directly from the Git repo, the decisions we made and the reasoning behind those decisions, the compromises and other changes of direction, and so on.

## Advantages of Hooking into a Larger System

Why did we want to move to docs as code in the first place? At a large company like Amazon, there are plenty of robust, internally developed tools that we wanted to take advantage of. The docs-as-code approach would allow us to integrate into this infrastructure.

Other documentation tools are often independent, standalone tools that offer complete functionality (such as version control, search, and deployment) within their system. But their system is a black box, meaning, you can't really open it up and integrate it into another process or system. With docs-as-code, we had the flexibility to adapt our process to fully integrate in with Amazon's infrastructure. Some of this infrastructure included the following:

* Internal test environments
* Authentication for specific pages based on account profiles
* Search and indexing
* Website templating
* Analytics
* Secure servers with the amazon.com domain
* Media CDN for distributing images
* Git repositories and GUI for managing code
* Build pipelines and build management system

All we really needed to do was generate out the body HTML along with the sidebar and make it available for the existing processes to consume. The engineering team that supported the website already had a process in place for managing and deploying content on the site. We wanted to use similar processes rather than coming up with an entirely different approach.

{: .tip}
See the [docs-as-code topic](pubapis_docs_as_code.html#docsascode_advantages) for more general reasons.

## End Solution

In the end, here's what we produced. We stored the Jekyll project in an internal Git repository &mdash; the same farm of Git repositories other engineers used for nearly every software project, and which hooked into a build management system. When we pushed our Jekyll doc content to the master branch of our Git repository, a build pipeline would kick off and build the Jekyll project from the server (similar to GitHub Pages).

Our Jekyll layout omitted any header or footer. The built HTML pages were then pulled into an S3 bucket in AWS. This bucket acted somewhat like a flat-file database for storing content. Our website would make calls to the content in S3 based on permalink values in the HTML to pull the content into a larger website template that included the header and footer.

The build process from the Git repo to the deployed website took about 15 minutes, but tech writers didn't need to do anything during that time. After you typed a few commands in your terminal, the process kicked off and ran all by itself.

From the first release, pretty much everyone loved this new approach. The first day in launching our new system, a team had to publish 40 new pages of documentation. Had we still been in Hippo, this would have taken several hours. Even more painful, their release timeframe was an early morning pre-dawn hour, so the team would have had to publish 40 pages in Hippo CMS at around 4am to 6am, copying and pasting the HTML frantically to meet the release push and hoping they didn't screw anything up.

Instead, with the new process, the writer just merged her development branch into the master branch, merged the master to production. Fifteen minutes later, all 40 pages were live on the site. She was floored! We knew this was the beginning of a new chapter in our team's processes. We all felt like a huge burden had been lifted off our shoulders.

## Challenges we faced

Transitioning to the new system was challenging on a number of levels. I'll detail the main challenges in the following sections.

### Inability to do it ourselves

The biggest challenge, ironically, was probably with myself &mdash; dealing with my own perfectionist, controlling tendencies to do everything on my own. This is probably my biggest weakness as a technical writer. It's hard for me to relinquish control and have another team do the work. We had to wait about a year for the overworked engineering team's schedule to clear up so they would have the bandwidth to do the project.

During this wait time, we refined our Jekyll theme and process, ramped up on our Git skills, and migrated all of the content out of the old CMS. Even so, as project timelines kept getting delayed and pushed out, and we weren't sure if the engineering team's bandwidth would ever lighten up, I wanted to jump ship and just deploy/publish everything myself through the S3_website plugin on AWS S3.

But as I researched domain policies, server requirements, and other environment standards and workflows, I realized that a do-it-myself approach wouldn't work (unless I possessed a lot more engineering knowledge than I currently did). Given our developer.amazon.com domain, corporate policies required us to host the content on a tier 1 server. It became clear that this would involve a lot more engineering knowledge and time than I had, so we had to wait. We wanted to get this right, because we probably wouldn't get bandwidth from the engineering team again for some time. In the end, waiting turned out to be the right approach.

### Understanding each other

When we did finally begin the project, working with the engineering team, another challenge was in understanding each other. The engineering team (the ones implementing the server build pipeline and workflow) didn't really understand our Jekyll authoring process and needs.

Conversely, we didn't understand the engineer's world very well either. To me, it seemed all they needed to do was upload HTML files to a web server, which seemed a simple task. I felt they were overcomplicating the process with unnecessary workflows and layouts. But whereas I had in mind a doghouse, they had in mind a skyscraper. So their processes were probably scaled and scoped to the business needs and requirements.

Still, we lived in different worlds, and we had to constantly communicate about what each other needed. It didn't help that they were in Seattle and I was in Sunnyvale.

### Figuring out repo size

Another challenge was to figure out the correct size for the documentation repos. Across our teams, we probably had 30 different products, each with their doc navigation and pages. Was it better to store each product in its own repo, or to store all products in one giant repo? I flipped my thinking on this several times.

Storing content in multiple repos led to quick build times, reduced visual clutter, resulted in fewer merge conflicts, didn't introduce warnings about repo sizes, and had other benefits.

However, storing all content in the same repo simplified single sourcing of content across projects, made link management easier, reduced maintenance efforts, and more. (What I didn't realize was the work required to hook each repo into a build pipeline, because I was unfamiliar with the build management workflows.)

We started out storing content in separate repos. When I had updates to the Jekyll theme, I thought I could simply explain what files needed to be modified, and each tech writer would make the update to their theme's files. This turned out not to really work &mdash; tech writers didn't like making updates to theme files. The Jekyll projects became out of date, and then when someone reported an issue, I had no idea what version of the theme they were on.

I then championed consolidating all content in the same repo. We migrated all of these separate, autonomous repos into one master repo. This worked well for making theme updates, of course. But soon the long build times (1-2 minutes for each build) became painful. We also ran into size warnings in our repo (all images were included in the repos), and sometimes merge conflicts happened.

The long build times were so annoying, we eventually decided to switch back to individual repos. I came up with creative ways (first through git submodules, then through git subtrees) to push the theme files out to small repos in a semi-automated way. However, what constituted a "product" was somewhat unclear, and even a small product that had just a few pages was stored in its own repo.

When the engineering team started counting up all the separate build pipelines they'd have to create and maintain for each of these separate repos (around 30), they said this wasn't a good idea from a maintenance point of view.

Not understanding all the work involved around building publishing pipelines for each Git repo, there was quite a bit of frustration here. Eventually we settled on two Git repos and two pipelines. We had to reconsolidate all the separate repos back into two repos. There was a lot of content and repo adjustment, but in the end, two large repos was the right decision. (In fact, in retrospect, I wouldn't have minded just having one repo for everything.)

Each repo had its own Jekyll project. If I had an update to any theme files (e.g., layouts or includes), I copied the update manually in both repos. This was easier than trying to devise an automated method.

Although I grumbled about having to consolidate all content into two repos, I realized it was the right decision. Recognizing this, my respect and trust in the engineering team's judgment grew considerably. In the future, I started to take the recommendations and advice about various decisions much more seriously. I didn't assume they misunderstood our authoring needs and requirements so much, and instead followed their direction more respectfully.

## Limitations in the build management system

Another challenge was in dealing with limitations in the build management system. Our build management system was an engineering tool used to build outputs or other artifacts from source code stored in git repositories. My understanding of the build management system was limited, since this was an engineering-heavy tool used for managing software and other code. It was not a documentation management tool.

Engineers had trouble running Bundler in the build process on the server. Bundler is a tool that automatically gets the right RubyGems for your Jekyll project based on the Jekyll version you are using. Without Bundler, each writer just installed the jekyll gem locally and built their Jekyll project that way.

Ideally, you want everyone on the team using the same version of Jekyll to build their projects (specifically, the jekyll gem used from RubyGems). This ensures that local builds match the builds from the server. However, the latest supported version of Jekyll in the build management system was an older version of Jekyll (3.4.3, which had a dependency on an earlier version of Liquid that was considerably slower in building out the Jekyll site).

The engineers finally upgraded to Jekyll 3.5.2, which allowed us to leverage Liquid 4.0. This reduced the build time from about 5 minutes to 1.5 minutes. Still, Jekyll 3.5.2 had a dependency on an older version of the rouge gem, which was giving us issues with some code syntax highlighting for JSON. The process of updating the gem within the build management system was foreign territory to me, and it was also a new process for the engineers.

To keep everyone in sync, we asked that each writer check their version of Jekyll and manually upgrade to the latest version. (Bundler would have helped us stay in sync with Jekyll versions.) However, this turned out not to be much of an issue, since there wasn't much of a difference from one Jekyll gem version to the next.

Ultimately, I learned that it's one thing to update all the Jekyll gems and other dependencies on your own machine. But it's an entirely different effort to update these gems within a build management server in an engineering environment you don't own. In theory, getting everyone to sync both their local build processes with the way the server builds is key to avoiding surprises when the server builds your output. You don't want to later discover the some lists didn't render correctly or some code samples didn't highlight correctly because of a mismatch of gems.

## Figuring out translation workflows

Figuring out the right process for translation was also difficult. (I believe this process still has room to evolve and mature as well.) We started out translating the Markdown source. Our translation vendor affirmed they could handle Markdown as a source format, and we did tests to confirm it. However, after a few translation projects, it turned out that they couldn't handle content that *mixed* Markdown with HTML, such as a Markdown document with an HTML table (and we almost always used HTML tables in Markdown). The vendors would count each HTML element as a Markdown entity, which would balloon the cost estimates.

Further, the number of translation vendors that could handle Markdown was limited, which created risks around which vendors could even be used. Eventually, we decided to revert to sending only HTML to vendors.

However, if you send only the HTML output from Jekyll to vendors, it makes it difficult to apply updates. With Jekyll (and most static site generatos), your sidebar and layout is packaged into each of your individual doc pages. If you add a new page to your sidebar, or update any aspect of your layout, you would need to edit each individual file instance to make those updates across the documentation.

In the end, the process we developed for handling translation content involved manually inserting the translated HTML into pages in the Jekyll project, and then having these pages build into the output like the other Markdown pages. A bit of manual labor, but acceptable.

The URLs for translated content also needed to have a different `baseurl`. Rather than outputting content in the `/docs/` folder, translated content needed to be output into `/ja/docs/` (for Japanese) or `/de/docs/` (for German). However, a single Jekyll project can have only one `baseurl` value as defined in the default \_config.yml file. I had this `baseurl` value automated in a number of places in the theme.

To account for the new `baseurl`, I had to incorporate a number of hacks to prepend language prefixes into this path and adjust the permalink settings in each translated sidebar to build the file into the right `ja` or `de` directory in the output.

Overall, translation remains one of the trickier aspects to handle with static site generators, as these tools are rarely designed with translation in mind. But we made it work. Another challenge with translation was how to handle partially translated doc sets &mdash; I won't even get into this here.

Given the extreme flexibility and open nature of static site generators, we were able to adapt to the translation requirements and needs on the site. Satisfying the requirements from the engineering team required us to create workarounds and hacks in our Jekyll theme.

## Other challenges

There were a handful of other challenges worth mentioning (but not worth full development in their own sections). I'll list them here so you know what you might be getting into when adopting a docs-as-code approach.

* **Moving content out of the legacy CMS.** We probably had about 1,500 pages of documentation between our writers. Moving all of this content out of the old CMS was challenging. Additionally, we decided to leave some deprecated content in the CMS, as it wasn't worth migrating. Creating redirect scripts that would correctly re-route all the content to the new URLs (especially with changed file names) while not routing away from the deprecated CMS pages was challenging. Engineers handled these redirects at the server level. I created a script that iterated through out sidebars and generated out a list of old and new URLs in a JSON format.
* **Implementing new processes while still supporting the old.** While the new process was in development (and not yet rolled out), we had to continue supporting the ability for writers to generate outputs for the old system (pasting content page by page into the legacy CMS). Any change we made had to also include the older logic and layouts to support the older system. This was particularly difficult with translation content, since it required such a different workflow. Being able to migrate your content into a new system while continuing to publish in the older system, without making updates in both places, is a testament to the flexibility of Jekyll.
* **Constantly changing the processes for documentation.** We had to constantly change the processes for documentation to fit what did or did not work with the engineering processes. For example, git submodules, subtrees, small repos, large repos, frontmatter, file names, translation processes, etc., all fluctuated as we finalized the process and worked around issues or incompatibilities. Each change created some frustration and stress for the tech writers, who felt that processes were too much in flux and didn't like to hear about updates or changes they would need to make or learn. And yet, it was hard to know the end from the beginning, especially when working with unknowns around engineering constraints and requirements. Knowing that the processes we were laying down now would likely be cemented into the pipeline build and workflow for long into the distant future was stressful. I wanted to make sure we got things right, which might mean adjusting our process, but I didn't want to do that too much adjustment because each time there was a change, it weakened the confidence among the other tech writers about our direction and expertise about what we were doing.
* **Styling the tech docs within a larger site.** The engineering team didn't have resources to handle our tech doc styling, so I ended up creating a stylesheet (3,000 lines long) with all CSS namespaced to a class of `docs` (for example, `.docs p, .docs ul`, etc). The engineers pretty much incorporated this stylesheet into their other styles for the website. With JavaScript, however, we ran into namespace collisions and had to wrap our jQuery functions in a special name to avoid conflicts (the conflicts would end up breaking the initialization of some jQuery scripts). These namespace collisions with the scripts weren't apparent locally and were only visible after deploying on the server, so the test environment constantly flipped between breaking or not breaking the sidebar (which used jQuery). As a result, seeing broken components created a sense of panic from the engineers and dismay among the tech writers. The engineers weren't happy that we had the ability to break the display of content with our layout code. At the same time, we wanted the ability to push out content that relied on jQuery or other scripts.
* **Transitioning to a git-based workflow.** While it may seem like Jekyll was the authoring tool to learn, actually the greater challenge was becoming familiar with git-based workflows for doc content. This required some learning and familiarity on the command line and version control workflows. Some writers already had this background, while others had to learn it. Although we all ended up learning the git commands, I'm not sure everyone actually used the same processes for pulling, pushing, and merging content (there's a lot of variety you can choose from). There were plenty of times where someone accidentally merged a development branch into the master, or found that two branches wouldn't merge, or they had to remove content from the master and put it back into development, etc. Figuring out the right process in Git is not a trivial undertaking.
* **Striking a balance between simplicity and robustness in doc tooling.** We had to support a nearly impossible requirement: keep doc processes simple enough for non-technical people to make updates (similar to how they did in the old CMS) while also providing enough robustness in the doc tooling to satisfy the needs of tech writers, who often need to single source content, implement variables, output to PDF, and more. In the end, given that our main audience and contributors were developers, we favored tools and workflows that developers would be familiar with. To contribute substantially in the docs, you would have to understand Git, Markdown, and Jekyll. For non-technical users, we directed them to a GUI they could interact with (similar to GitHub's GUI) to make edits in the repository. Then we would merge in and deploy their changes.
* **Building a system that scales**. Although we were using open source tools for this solution, the system had to be able to scale in an enterprise way. I think our system will scale nicely. Because the content used Markdown as the format, anyone can easily learn it. And because we used standard git processes and tooling, engineers can more easily plug into the system. We already had some engineering teams interacting in the repo. Our goal was to empower lots of engineering teams with the ability to plug into this system and begin authoring. Ideally, we could have dozens of different engineering groups owning and contributing content, with the tech writers acting more like facilitators and editors. Also significant is that no licenses or seats are required to scale out the authoring. A writer just uses Atom editor (or another IDE). The writer opens up the project and works with the text, treating docs like code.

## Conclusion

Almost everyone on the team was happy about the way our doc solution turned out. Of course, there were always areas for improvement. But the existing solution was head and shoulders above the previous processes.

I outline the challenges here to reinforce that implementing docs-as-code is no small undertaking. It doesn't have to be an endeavor that takes months, but at a large company, if you're integrating with engineering infrastructure and building out a process that will scale and grow, it can require a decent amount of engineering expertise and effort.

If you're implementing docs-as-code at a small company, you can simplify processes and use a system that meets your needs. For example, you could use the [S3_website plugin](https://github.com/laurilehmijoki/s3_website) to publish on AWS S3, or better yet, host your docs on GitHub and publish through GitHub Pages. I might have opted for either of these approaches if allowed and if we didn't have an engineering support team to implement the workflow I described.

## Additional docs-as-code posts

To read some other docs-as-code posts on my blog, see the following:

* [Discoveries and realizations while walking down the Docs-as-Code path](http://idratherbewriting.com/2017/08/23/content-architecture-and-repo-sizes/)
* [Limits to the idea of treating docs as code](http://idratherbewriting.com/2017/06/02/when-docs-are-not-like-code/)
* [Will the docs-as-code approach scale? Responding to comments on my Review of Modern Technical Writing](http://idratherbewriting.com/2016/08/01/responding-to-feedback-on-modern-tech-writing-review/)
