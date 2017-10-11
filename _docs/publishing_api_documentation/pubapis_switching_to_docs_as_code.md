---
title: "Changing tools to docs-as-code: Challenges and lessons learned"
permalink: /pubapis_switching_to_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.81
section: publishingapis
path1: /publishingapis.html
published: false
---

Changing any doc tooling at a company can be a huge undertaking. Depending on the amount of legacy content to convert, the number of writers to train, the processes you have implement within your corporate environment, and more, switching doc tools can require an immense amount of time and effort.

In this article, I'll describe the challenges I ran into when implementing a docs-as-code approach at Amazon. Note that Amazon has a lot of different tech writing groups and tools. I work in a small group of about 10 writers focused on third-party developer documentation for the Amazon Appstore. We publish content on [developer.amazon.com/documentation](https://developer.amazon.com/documentation).

## Previous processes

Previously, the doc team was publishing content through a content management system called Hippo. Hippo is similar to WordPress or Drupal but is Java-based rather than PHP-based. To publish a page of documentation, writers had to create a new page in the CMS and paste in the HTML for the page. If you had 50 pages of documentation to publish, you would need to paste the HTML into each CMS page one by one. Originally many writers would use tools such as Pandoc to convert their content to HTML and then paste it into the CMS.

When I started, I championed using Jekyll to generate the HTML. I also created a layout in Jekyll that included a sidebar to navigate all the content in the doc set. This layout included a number of styles and scripts to work in the CMS. We also started interacting and managing our Jekyll project content in an internal Git repository. However, our publishing step still involved pasting the generated HTML (after building Jekyll) page by page into the CMS.

One of the tenets of docs-as-code is to build your output from the server. This step was difficult because another engineering group was responsible for the website, and we had to integrate into their build process. Most of the lessons learned here are about this integration point. However, building your output from the server provided the most advantages to us in our doc system.


## Current Solution

In our current setup, we author in Jekyll. Our Jekyll project uses kramdown Markdown to generate the HTML, Liquid for the scripting logic, and rouge to perform the syntax highlighting. We use the latest version of Jekyll but not Bundler.

We store the content in an internal Git repository that is part of a larger Git farm that engineers use for nearly every project. The Git repository is part of a larger internal build management system. When we push content to the master branch, a build pipeline kicks off that builds the Jekyll project from the server. Jekyll builds the pages without any header or footer. The built HTML pages are stored in an AWS S3 bucket. The website makes calls to the content in S3 based on permalink values in the HTML to pull the content into a larger website template that includes the header and footer.

## Advantages of Hooking into a Larger System

At a large company like Amazon, there are plenty of robust, internally developed tools that we wanted to take advantage of. This is why the docs-as-code approach was particularly appealing &mdash; because it would allow us to integrate into this infrastructure.

Other documentation tools are often independent, standalone tools that offer complete functionality (such as version control, search, and deployment) within their system. But their system is a black box, meaning, you can't really open it up and integrate it into another process. With docs-as-code, we had the flexibility to adapt our process to fully integrate in with other infrastructure.

There are several areas that we simply piggybacked on because Amazon already provided this internal tooling:

* Internal test environments
* Authentication for specific pages based on account profiles
* Search and indexing
* Website template
* Analytics
* Server infrastructure
* Media CDN

All we really needed to do was generate out the body HTML along with the sidebar and make it available for the existing processes to consume. The engineering team that supported the website already had a process in place for managing and deploying content on the site. We wanted to use similar processes rather than coming up with an entirely different approach.

## Challenges we faced

Here are the main challenges we faced in the project.

### Inability to do it ourselves

Probably my biggest weakness as a technical writer is my desire to do everything myself. It's hard for me to relinquish control and have another team do the work. We had to wait about a year for the overworked engineering team's schedule to clear up so they would have the bandwidth to do the project. During this wait time, we refined our Jekyll theme and process, ramped up on our Git skills, and migrated all of the content out of the old CMS. Even so, as project timelines kept getting pushed out, I wanted to jump ship and just publish everything myself through the S3_website plugin. As I researched domain policies, server requirements, and other environment standards and workflows, it became clear that this would involve a lot more engineering knowledge and time than I had, so I had to wait. We wanted to get this right, because we probably wouldn't get bandwidth from the engineering team again for some time. In the end, waiting turned out to be the right approach.

### Understanding each other

Another challenge was that the engineering team implementing the server-build pipeline and workflow didn't really understand our Jekyll authoring process and needs that well. Few engineering teams understand tech doc tooling or workflows, and we had to keep the lines of communication especially open about this.

On the flip side, I didn't understand the engineer's world very well either. To me, it seemed all they needed to do was upload HTML files to a web server, which seemed a simple task. I felt they were overcomplicating the process with unnecessary workflows. But whereas I had in mind a doghouse, they had in mind a full skyscraper. So their processes were probably scaled and scoped to the business needs and requirements.

Still, we lived in different worlds, and so we had to constantly communicate about what each other needed. It didn't help that they were in Seattle and I was in Sunnyvale.

### Figuring out repo size

Another challenge was figuring out the correct size for the repos. Was it better to store each product in its own repo, or to store all products in one giant repo? I flipped my thinking on this several times. Storing content in multiple repos requires you to somehow source the same theme files across repos. At the same time, build times are quick, there's no visual clutter with so many other files, no merge conflicts, no size warnings, etc. However, storing all content in the same repo simplifies single sourcing of content across projects, link management, and more.

We started out storing content in separate repos. When I had updates to the Jekyll theme, I though I could simply explain what files to modify, and each tech writer would make the update. This turned out to be more slow and painful -- tech writers didn't like making these updates. I then championed consolidating all content in the same repo. The long build times (1-2 minutes) became painful as well, and we ran into size warnings in our repo (all images were included there), and sometimes merge conflicts happened.

I then came up with creative ways (first through git submodules, then when submodules failed architecturally in our build management system, through git subtrees) to push the theme files out to small repos, so I championed the idea of one product per repo. We went through the time consuming process of separating content into different repos.

However, what constituted a "product" was somewhat unclear, and even a small product that had just a few pages was stored in its own repo. When the engineering team started counting up all the separate build pipelines they'd have to create and maintain for each of these separate repos (around 30), they said this wasn't a good idea from a maintenance point of view.

Not understanding all the work involved around building pipelines for each Git repo, there was quite a bit of frustration here. Eventually we settled on two Git repos and two pipelines. We had to reconsolidate all the separate repos back into two, which caused a bit of frustration. But in the end, this was the right decision. In fact, I wouldn't have minded just having one repo for everything.

Each repo has its own Jekyll project. If I have an update to any theme files (e.g., layouts or includes), I duplicate the update manually in both repos. This is easier than trying to device some automated method.

Later in the project I realized this was the right decision. When I realized this, my respect and trust in the engineering team's decisions grew considerably. In the future, I started to take the recommendations and advice about various decisions much more seriously.

## Limitations in the build management system

Another challenge was in dealing with limitations in the build management system. The build management system is an engineering tool used to build outputs or other artifacts from source code stored in git repositories. My understanding of the build management system was severely limited, as this is an engineering-heavy tool used for managing software and other code. It is not a documentation management tool.

Engineers had trouble running Bundler in the build process on the server. Bundler is a tool that automatically gets the right RubyGems for your Jekyll project based on the Jekyll version you are using.

Additionally, at one point I wanted to use submodules to management theme dependencies across multiple repos, but the build management tool couldn't handle submodule dependencies in the same way that it could handle dependencies with code.

Ideally, you want everyone using the same version of Jekyll (specifically, the jekyll gem in RubyGems) to build their projects. This ensures that their local builds match the builds on the server. First, the latest supported version of Jekyll in the build management system was an older version of Jekyll (3.4.3, which had a dependency on an earlier version of Liquid that was considerably slower). When we upgraded to Jekyll 3.5.2, we could leverage Liquid 4.0. This reduced the build time from about 5 minutes to 1.5 minutes.

Still, Jekyll 3.5.2 has a dependency on an older version of the rouge gem, which was giving us issues with some code syntax highlighting scenarios. The process of updating the gem within the build management system was foreign territory to me, and we had another team (that maintained the jekyll gem) update the gem for us.

To keep everyone in sync, we asked that each writer check their version of Jekyll and manually upgrade to the latest version. Theoretically this could have been automated through Bundler, which would have specified the version of Jekyll to use and then automatically downloaded the right version of the gem to execute the build. However, this turned out not to be much of an issue, since there wasn't much of a difference from one Jekyll gem version to the next.

## Figuring out translation workflows

Figuring out the right process for translation was also difficult. I believe this process still has room to evolve and mature as well. We started out translating the Markdown source. Translation vendors affirmed they could handle Markdown as a source format, and we did tests to confirm. However, after a few translation projects, it turned out that they couldn't handle content that mixed Markdown with HTML, such as a Markdown document with an HTML table. They would count each HTML element as a Markdown entity, which would balloon the cost estimates.

Further, the number of translation vendors that could handle Markdown was limited, and so this created risks around who could even handle the content. We decided to revert to sending only HTML to vendors.

However, if you send only HTML to vendors, it makes it difficult to apply updates. If you add a new page to your sidebar, and your sidebar is packaged into each of your individual doc pages (as most static site generates do), it complicates any necessary updates.

In the end, the process for handling translation content involves manually inserting the translated HTML into pages in the Jekyll project, and then having these pages build into the output like the other Markdown pages.

However, the URLs for translated content needed to have a different base URL. Rather than outputting content in the /docs/ folder, translated content needed to be output into /ja/docs/ (for Japanese) or /de/docs/ (for German). However, a single Jekyll project can have only one `baseurl` value as defined in the default \_config.yml file. As a result, I have to incorporate a nuumber of hacks to prepend language prefixes into this path and adjust the permalink settings in each translated page to build the file into the right `ja` directory in the output.

Overall, translation remains one of the trickier aspects to handle with static site generators, as these tools are rarely designed with translation in mind. One particular challenge was how to handle partially translated doc sets. We built server logic to first check for the localized file, and if not available, to fall back on the English file but to display a note at the top in the language telling the user the page was not translated.

Given the extreme flexibility and open nature of static site generators, we were able to adapt to the translation requirements and needs on the site. Note that satisfying the requirements from the engineeering team required us to create workarounds and hacks in our Jekyll theme. I don't think the engineering team would have been able to do this without someone on our doc team modifying the Jekyll theme and logic to build out what the engineering team needed to process translation content.

To see translated content on the Dev Portal site, go to a doc set such as Fire App Builder and switch the language to Japanese.

## Other challenges

There were a handful of other challenges worth mentioning but not worth full development in their own sections.

* **Moving content out of the legacy CMS.** We probably have about 1,500 pages of documentation between our team teams. Moving all of this content out of the old CMS was challenging. Additionally, we decided to leave some deprecated content in the CMS, as it wasn't worth migrating. Creating redirect scripts that would correctly re-route all the content to the new URLs (especially with changed file names) while not routing away from the deprecated CMS pages was challenging.
* **Implementing new processes while still supporting the old.** While the new process was in development (and not yet rolled out), we had to continue supporting the ability for writers to generate outputs for the old system (pasting content page by page into the legacy CMS). Any change we made had to also include the older logic to support the older system. This was particularly difficult with translation content, since it required such a different workflow.
* **Constantly changing the processes for documentation.** We had to constantly change the processes for documentation to fit what did or did not work with the development processes. For example, git submodules, subtrees, small repos, large repos, frontmatter, file names, translation processes, etc., all fluctuated as we finalized the process and worked around issues or incompatibilities. Each change created some frustration and stress for the tech writers, who felt that processes were too much in flux and didn't like to hear about updates or changes they would need to make or learn. And yet, it's hard to know the end from the beginning, especially when working with unknowns around engineering constraints and requirements. Knowing that the processes you lay down now will likely be cemented into the pipeline build and workflow was stressful. I wanted to make sure we got things right, which might mean adjusting our process, but I didn't want to do that too much because each time it weakened the confidence in the writing team about our direction and expertise about what we were doing.
* **Styling the tech docs within a larger site.** The engineering team didn't have resources to handle our tech doc styling, so I ended up creating a stylesheet (3,000 lines long) with all CSS namespaced to a class of `docs`. The engineers pretty much incorporated this stylesheet into the build process. With JavaScript, however, we ran into namespace collisions and had to wrap our jQuery functions in a special name to avoid collisions (which would end up breaking the initialization of some jQuery scripts). These namespace collisions with the scripts weren't apparent locally and were only visible after deploying on the server, so the test environment constantly flipped between breaking or not breaking the sidebar (which uses jQuery). As a result, seeing broken components created a sense of panic from the engineers and dismay among the tech writers. The engineers weren't happy that we had the ability to break the display of content if we borked our layout code. At the same time, we wanted the ability to push out content that relied on jQuery or other scripts.
* **Transitioning to a git-based workflow.** While it may seem like Jekyll was the authoring tool to learn, actually a greater challenge is becoming familiar with git-based workflows for your content. This required some learning and familiarity. Some writers already had this background, while others had to learn it. We ended up learning the git commands we need. Even so, I'm not sure everyone uses the same processes for pulling, pushing, and merging content. There are plenty of times where someone accidentally merged a development branch into the master, or found that two branches wouldn't merge, or where they had to remove content from the master and put it back into development, etc. Figuring out the right process in Git is not an insignificant challenge.
* **Striking a balance between simplicity and robustness in doc tooling.** We had to support a nearly impossible requirement: keeping doc processes simple enough for non-technical people to make updates (similar to how they did in the old CMS) while also providing enough robustness in the doc tooling to satisfy the needs of tech writers, who often need to single source content, implement variables, output to PDF, and more. In the end, given that our main audience and contributors were developers, we favored tools that developers would be familiar with. To contribute in the docs, you do have to understand Git and Markdown. For non-technical users, we directed them to a GUI they could interact with (similar to GitHub) to make edits in the repository.

## Conclusion

I'm happy about the way our doc solution has turned out. Of course, there are always areas for improvement. But the existing solution is head and shoulders above the previous processes. After the new system was rolled out, a writer had a release where she had 40 new pages to publish. She simply merged her development branch into the master and pushed the content. The build pipeline kicked off, and within 15 minutes all the pages were live without any more effort on her part. In the past, she would have had to manually copy and paste page after page into a CMS. The new process was not only more efficient, it was also less prone to error.

Implementing docs-as-code is no small undertaking. It doesn't have to be an endeavor that takes months, but at a large company, if you're integrating with engineering infrastructure and building out a process that will scale and grow, it can require a decent amount of expertise and effort. If you're implementing it at a small company, you can simplify processes and use a system that meets your needs.

Finally, the ability to scale is perhaps the most promising aspect of the system. Because the content uses Markdown as the format, anyone can easily learn it (unlike DITA, which requires more ramp-up time that engineers are unlikely to do). And because we use standard git processes and tooling, engineers can more easily plug into the system.

We already have some engineering teams interacting in the repo. Our goal is to empower lots of engineering teams with the ability to author plug into this system and begin authoring. Ideally, we can have dozens of different engineering groups owning and contributing content. We can act more like facilitators and editors rather than primary and exclusive authors. Also significant is that no licenses or seats are required to scale out the authoring. A writer just uses Atom editor, which is free (or another IDE that they may be comfortable in).

## Additional docs-as-code posts

To read some other docs-as-code posts on my blog, see the following:

* [Discoveries and realizations while walking down the Docs-as-Code path](http://idratherbewriting.com/2017/08/23/content-architecture-and-repo-sizes/)
* [Limits to the idea of treating docs as code](http://idratherbewriting.com/2017/06/02/when-docs-are-not-like-code/)
* [Will the docs-as-code approach scale? Responding to comments on my Review of Modern Technical Writing](http://idratherbewriting.com/2016/08/01/responding-to-feedback-on-modern-tech-writing-review/)
