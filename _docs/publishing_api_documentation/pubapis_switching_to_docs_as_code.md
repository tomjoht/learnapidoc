---
title: "Case study: Switching tools to docs-as-code"
permalink: /pubapis_switching_to_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.81
section: publishingapis
path1: /publishingapis.html
published: false
---

{: .tip}
For an overview of the docs as code approach, see [Docs-as-Code Tools](pubapis_docs_as_code.html)

Changing any documentation tooling at a company can be a huge undertaking. Depending on the amount of legacy content to convert, the number of writers to train, and the processes you have implement within your corporate environment, it can require an immense amount of time and effort to change tools.

In this article, I'll describe the challenges I faced into when implementing a docs-as-code approach within Amazon's Appstore and Alexa publishing group. Note that Amazon has a lot of different tech writing groups and tools. At the time of this writing, I worked in a small group of about 10 writers focused on third-party developer documentation for the Amazon Appstore. We published content on [developer.amazon.com/documentation](https://developer.amazon.com/documentation). (Don't confuse this group with AWS or the groups that create end-user documentation for products.)

## Previous processes

Previously, the Appstore doc team published content through a content management system called Hippo (now called "Bloomreach".) Hippo was similar to WordPress or Drupal but was Java-based rather than PHP-based (which made it attractive to Java-centric enterprise).

To publish a page of documentation, the tech writers had to create a new page in the CMS and then paste in the HTML for the page. If you had 50 pages of documentation to publish, you would need to paste the HTML into each CMS page one by one. Originally many writers would use tools such as Pandoc to convert their content to HTML and then paste it into the Hippo CMS. It was painstaking, prone to error, and primitive.

When I started, I championed using Jekyll to generate the HTML, and I started storing the Jekyll projects in internal Git repositories. I also created a layout in Jekyll that was designed specifically for Hippo. The layout included a documentation-specific sidebar (previously absent in Hippo) to navigate all the content in a particular set of documentation. This Jekyll layout included a number of styles and scripts to to override settings in the CMS and provide the sidebar.

However, despite this innovation, our publishing step still involved pasting the generated HTML (after building Jekyll) page by page into the CMS. One of the tenets of docs-as-code is to build your output from the server. This step was difficult because another engineering group was responsible for the website, and we couldn't just rip it out and start uploading the Jekyll-generated files onto a web server.

It would take another year or more before we could get rid of the Hippo CMS and start publishing Jekyll's output directly. Most of the lessons learned here are about how we transitioned to building Jekyll directly from the Git repo and deploying to the server. This aspect of docs-as-code provided the most advantages for our team.

## Advantages of Hooking into a Larger System

At a large company like Amazon, there are plenty of robust, internally developed tools that we wanted to take advantage of. This is why the docs-as-code approach was particularly appealing &mdash; it would allow us to integrate into this infrastructure.

Other documentation tools are often independent, standalone tools that offer complete functionality (such as version control, search, and deployment) within their system. But their system is a black box, meaning, you can't really open it up and integrate it into another process. With docs-as-code, we had the flexibility to adapt our process to fully integrate in with Amazon's infrastructure. Some of this infrastructure we wanted to take advantage of included the following:

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

## End Solution

In the end, here's what we produced. We stored the Jekyll project in an internal Git repository (the same farm of Git repositories other engineers used for nearly every project, and which hooked into a build management system). When we pushed content to the master branch of our Git repository, a build pipeline would kick off and  builds the Jekyll project from the server (similar to GitHub Pages).

Our Jekyll layout omitted any header or footer. The built HTML pages would be stored in an AWS S3 bucket. The website would then make calls to the content in S3 based on permalink values in the HTML to pull the content into a larger website template that includes the header and footer. The build process from the Git repo to the deployed website took about 15 minutes, but tech writers didn't need to do anything during that time. After you typed a few commands in your terminal, the process kicked off and ran all by itself.

From the first release, pretty much everyone loved this new approach. The first day in launching our new system, a team had to publish 40 new pages of documentation. Had we still been in Hippo, this would have taken all afternoon. Even more painful, their release timeframe was an early morning pre-dawn hour, so the team would have had to painstaking publish 40 pages in Hippo CMS, copying and pasting the HTML frantically to meet the release push.

Instead, the writer just merged her development branch into the master branch, merged the master to production. And 15 minutes later, all 40 pages were live on the site. She was floored. We knew this was the beginning of a new chapter in our team's processes.

## Challenges we faced

Transitioning to the new system was challenging on a number of levels. Many of the challenges were obstacles or concepts that I had no idea I would encounter. I'd like to detail them in the sections below.

### Inability to do it ourselves

Probably my biggest weakness as a technical writer is my desire to do everything myself. It's hard for me to relinquish control and have another team do the work. We had to wait about a year for the overworked engineering team's schedule to clear up so they would have the bandwidth to do the project.

During this wait time, we refined our Jekyll theme and process, ramped up on our Git skills, and migrated all of the content out of the old CMS. Even so, as project timelines kept getting pushed out, I wanted to jump ship and just publish everything myself through the S3_website plugin on AWS S3.

But as I researched domain policies, server requirements, and other environment standards and workflows, I learned this approach wasn't allowed. I had to host the content on a bona fide tier 1 server. It became clear that this would involve a lot more engineering knowledge and time than I had, so I had to wait. We wanted to get this right, because we probably wouldn't get bandwidth from the engineering team again for some time. In the end, waiting turned out to be the right approach.

### Understanding each other

Another challenge was that the engineering team implementing the server-build pipeline and workflow didn't really understand our Jekyll authoring process and needs that well. Few engineering teams understand tech doc tooling or workflows, and we had to keep the lines of communication especially open about this.

On the flip side, I didn't understand the engineer's world very well either. To me, it seemed all they needed to do was upload HTML files to a web server, which seemed a simple task. I felt they were overcomplicating the process with unnecessary workflows and layouts. But whereas I had in mind a doghouse, they had in mind a full skyscraper. So their processes were probably scaled and scoped to the business needs and requirements.

Still, we lived in different worlds, and so we had to constantly communicate about what each other needed. It didn't help that they were in Seattle and I was in Sunnyvale.

### Figuring out repo size

Another challenge was figuring out the correct size for the repos. Was it better to store each product in its own repo, or to store all products in one giant repo? I flipped my thinking on this several times. Storing content in multiple repos led to quick build times, reduced visual clutter, fewer merge conflicts, no repo size warnings, etc. However, storing all content in the same repo simplified single sourcing of content across projects, made link management easier, reduced maintenance efforts, and more.

We started out storing content in separate repos. When I had updates to the Jekyll theme, I thought I could simply explain what files needed to be modified, and each tech writer would make the update. This turned out to be more slow and painful -- tech writers didn't like making these updates to theme files. I then championed consolidating all content in the same repo. Soon the long build times (1-2 minutes) became painful, and we ran into size warnings in our repo (all images were included there), and sometimes merge conflicts happened.

So it was back to individual repos. I came up with creative ways (first through git submodules, then through git subtrees) to push the theme files out to small repos. However, what constituted a "product" was somewhat unclear, and even a small product that had just a few pages was stored in its own repo. When the engineering team started counting up all the separate build pipelines they'd have to create and maintain for each of these separate repos (around 30), they said this wasn't a good idea from a maintenance point of view.

Not understanding all the work involved around building publishing pipelines for each Git repo, there was quite a bit of frustration here. Eventually we settled on two Git repos and two pipelines. We had to reconsolidate all the separate repos back into two repos. There was a lot of content and repo adjustment, but in the end, two large repos was the right decision. (In fact, I wouldn't have minded just having one repo for everything.)

Each repo had its own Jekyll project. If I had an update to any theme files (e.g., layouts or includes), I copied the update manually in both repos. This was easier than trying to device some automated method.

Although I grumbled about having to consolidate all content into two repos, I realized it was the right decision. Recognizing this, my respect and trust in the engineering team's judgment grew considerably. In the future, I started to take the recommendations and advice about various decisions much more seriously. I didn't assume they misunderstood our authoring needs and requirements so much, and instead followed their direction more respectfully.

## Limitations in the build management system

Another challenge was in dealing with limitations in the build management system. The build management system was an engineering tool used to build outputs or other artifacts from source code stored in git repositories. My understanding of the build management system was limited, since this was an engineering-heavy tool used for managing software and other code. It was not a documentation management tool.

Engineers had trouble running Bundler in the build process on the server. Bundler is a tool that automatically gets the right RubyGems for your Jekyll project based on the Jekyll version you are using.

Additionally, at one point I wanted to use submodules to manage theme dependencies across multiple repos, but the build management tool couldn't handle submodule dependencies for content in the same way that it could handle dependencies with code.

Ideally, you want everyone on the team using the same version of Jekyll  to build their projects (specifically, the jekyll gem used from RubyGems). This ensures that local builds match the builds from the server. However, the latest supported version of Jekyll in the build management system was an older version of Jekyll (3.4.3, which had a dependency on an earlier version of Liquid, pre 4.0, that was considerably slower in building out the Jekyll site).

We finally upgraded to Jekyll 3.5.2, which allowed us to leverage Liquid 4.0. This reduced the build time from about 5 minutes to 1.5 minutes.

Still, Jekyll 3.5.2 had a dependency on an older version of the rouge gem, which was giving us issues with some code syntax highlighting for JSON. The process of updating the gem within the build management system was foreign territory to me, and we had another team (that maintained the jekyll gem) update the gem for us.

To keep everyone in sync, we asked that each writer check their version of Jekyll and manually upgrade to the latest version. Theoretically this could have been automated through Bundler, which would have specified the version of Jekyll to use and then automatically downloaded the right version of the gem to execute the build. However, this turned out not to be much of an issue, since there wasn't much of a difference from one Jekyll gem version to the next.

Ultimately, I learned that it's one thing to update all the Jekyll gems and other dependencies on your own machine. But it's an entirely different effort to update these gems within a build management server in an environment you don't own. And yet, getting everyone to sync both their local build processes with the way the server builds was key to avoiding surprises when the server builds your output. You didn't want to later discover the some lists didn't render correctly or some code samples didn't highlight correctly because of a mismatch of gems.

## Figuring out translation workflows

Figuring out the right process for translation was also difficult. I believe this process still has room to evolve and mature as well. We started out translating the Markdown source. Translation vendors affirmed they could handle Markdown as a source format, and we did tests to confirm. However, after a few translation projects, it turned out that they couldn't handle content that mixed Markdown with HTML, such as a Markdown document with an HTML table. The vendors would count each HTML element as a Markdown entity, which would balloon the cost estimates.

Further, the number of translation vendors that could handle Markdown was limited, and so this created risks around who could even handle the content. We decided to revert to sending only HTML to vendors.

However, if you send only the HTML output to vendors, it makes it difficult to apply updates. If you add a new page to your sidebar, and your sidebar is packaged into each of your individual doc pages (as most static site generates do), it complicates any updates you need to make. Sure, you could just edit the HTML. But remember that when Jekyll builds the output, it packages in both the layout and sidebar into each file (this is the model of static site generators -- pre-building the page ahead of time rather than at view time).

In the end, the process we developed for handling translation content involved manually inserting the translated HTML into pages in the Jekyll project, and then having these pages build into the output like the other Markdown pages. A bit of manual labor, but acceptable.

However, the URLs for translated content nalso eeded to have a different base URL. Rather than outputting content in the /docs/ folder, translated content needed to be output into /ja/docs/ (for Japanese) or /de/docs/ (for German). However, a single Jekyll project can have only one `baseurl` value as defined in the default \_config.yml file. I had this `baseurl` value automated in a number of palces in the theme.

To account for the new `baseurl`, I had to incorporate a number of hacks to prepend language prefixes into this path and adjust the permalink settings in each translated page to build the file into the right `ja` or `de` directory in the output.

Overall, translation remains one of the trickier aspects to handle with static site generators, as these tools are rarely designed with translation in mind.

Another challenge with translation was how to handle partially translated doc sets. We built server logic to first check for the localized file, and if not available, to fall back on the English file but to display a note at the top in the language telling the user the page was not translated.

Given the extreme flexibility and open nature of static site generators, we were able to adapt to the translation requirements and needs on the site. Satisfying the requirements from the engineering team required us to create workarounds and hacks in our Jekyll theme.

## Other challenges

There were a handful of other challenges worth mentioning but not worth full development in their own sections.

* **Moving content out of the legacy CMS.** We probably had about 1,500 pages of documentation between our team teams. Moving all of this content out of the old CMS was challenging. Additionally, we decided to leave some deprecated content in the CMS, as it wasn't worth migrating. Creating redirect scripts that would correctly re-route all the content to the new URLs (especially with changed file names) while not routing away from the deprecated CMS pages was also challenging.
* **Implementing new processes while still supporting the old.** While the new process was in development (and not yet rolled out), we had to continue supporting the ability for writers to generate outputs for the old system (pasting content page by page into the legacy CMS). Any change we made had to also include the older logic to support the older system. This was particularly difficult with translation content, since it required such a different workflow.
* **Constantly changing the processes for documentation.** We had to constantly change the processes for documentation to fit what did or did not work with the development processes. For example, git submodules, subtrees, small repos, large repos, frontmatter, file names, translation processes, etc., all fluctuated as we finalized the process and worked around issues or incompatibilities. Each change created some frustration and stress for the tech writers, who felt that processes were too much in flux and didn't like to hear about updates or changes they would need to make or learn. And yet, it was hard to know the end from the beginning, especially when working with unknowns around engineering constraints and requirements. Knowing that the processes you were laying down now would likely be cemented into the pipeline build and workflow for the future was stressful. I wanted to make sure we got things right, which might mean adjusting our process, but I didn't want to do that too much adjustment because each time there was a change, it weakened the confidence among the other tech writers about our direction and expertise about what we were doing.
* **Styling the tech docs within a larger site.** The engineering team didn't have resources to handle our tech doc styling, so I ended up creating a stylesheet (3,000 lines long) with all CSS namespaced to a class of `docs` (for example, `.docs p, .docs ul`, etc). The engineers pretty much incorporated this stylesheet into their other styles for the website. With JavaScript, however, we ran into namespace collisions and had to wrap our jQuery functions in a special name to avoid conflicts (which would end up breaking the initialization of some jQuery scripts). These namespace collisions with the scripts weren't apparent locally and were only visible after deploying on the server, so the test environment constantly flipped between breaking or not breaking the sidebar (which used jQuery). As a result, seeing broken components created a sense of panic from the engineers and dismay among the tech writers. The engineers weren't happy that we had the ability to break the display of content with our layout code. At the same time, we wanted the ability to push out content that relied on jQuery or other scripts.
* **Transitioning to a git-based workflow.** While it may seem like Jekyll was the authoring tool to learn, actually the greater challenge is becoming familiar with git-based workflows for doc content. This required some learning and familiarity on the command line. Some writers already had this background, while others had to learn it. Although we ended up learning the git commands, I'm not sure everyone used the same processes for pulling, pushing, and merging content. There were plenty of times where someone accidentally merged a development branch into the master, or found that two branches wouldn't merge, or they had to remove content from the master and put it back into development, etc. Figuring out the right process in Git is not a trivial undertaking.
* **Striking a balance between simplicity and robustness in doc tooling.** We had to support a nearly impossible requirement: keep doc processes simple enough for non-technical people to make updates (similar to how they did in the old CMS) while also providing enough robustness in the doc tooling to satisfy the needs of tech writers, who often need to single source content, implement variables, output to PDF, and more. In the end, given that our main audience and contributors were developers, we favored tools and workflows that developers would be familiar with. To contribute substantially in the docs, you would have to understand Git and Markdown. For non-technical users, we directed them to a GUI they could interact with (similar to GitHub's GUI) to make edits in the repository. Then we would merge in and deploy their changes.

## Conclusion

Without question, everyone on the team was happy about the way our doc solution turned out. Of course, there were areas for improvement. But the existing solution was head and shoulders above the previous processes.

I outlined the challenges here to reinforce that implementing docs-as-code is no small undertaking. It doesn't have to be an endeavor that takes months, but at a large company, if you're integrating with engineering infrastructure and building out a process that will scale and grow, it can require a decent amount of expertise and effort. If you're implementing it at a small company, you can simplify processes and use a system that meets your needs.

The ability to scale is perhaps the most promising aspect of the system. Because the content used Markdown as the format, anyone could easily learn it. And because we used standard git processes and tooling, engineers could more easily plug into the system.

We already had some engineering teams interacting in the repo. Our goal was to empower lots of engineering teams with the ability to plug into this system and begin authoring. Ideally, we could have dozens of different engineering groups owning and contributing content, with the tech writers acting more like facilitators and editors.

Also significant is that no licenses or seats are required to scale out the authoring. A writer just uses Atom editor (or another IDE that they may be comfortable in). The writer opens up the project and works with the text, treating docs like code.

## Additional docs-as-code posts

To read some other docs-as-code posts on my blog, see the following:

* [Discoveries and realizations while walking down the Docs-as-Code path](http://idratherbewriting.com/2017/08/23/content-architecture-and-repo-sizes/)
* [Limits to the idea of treating docs as code](http://idratherbewriting.com/2017/06/02/when-docs-are-not-like-code/)
* [Will the docs-as-code approach scale? Responding to comments on my Review of Modern Technical Writing](http://idratherbewriting.com/2016/08/01/responding-to-feedback-on-modern-tech-writing-review/)
