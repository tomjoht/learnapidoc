---
title: "Case study: Switching tools to docs-as-code"
permalink: pubapis_switching_to_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.97
section: publishingapis
path1: publishingapis.html
redirect_from:
- /learnapidoc/pubapis_hats.html
last-modified: 2018-12-25
---

Changing any documentation tooling at a company can be a massive undertaking. Depending on the amount of legacy content to convert, the number of writers to train, the restrictions and processes you have to work against in your corporate environment and more, it can require an immense amount of time and effort to switch tools from the status quo to docs-as-code.

Additionally, you will likely need to make this change outside your regular documentation work, and you'll probably need to develop the new system *while still updating and publishing content in the old system*. Essentially, this means you'll be laying down a new highway while simultaneously driving down it.

For an overview of the docs-as-code approach, see [Docs-as-code tools](pubapis_docs_as_code.html). In this article, I describe the challenges we faced in implementing a docs-as-code approach within a tech writing group at a large company.

* TOC
{:toc}

## Previous processes

Previously, our team published content through a content management system called [Hippo](https://www.bloomreach.com/en/products/experience/hippo-cms) (by Bloomreach). Hippo is similar to WordPress or Drupal but is Java-based rather than PHP-based (which made it attractive to a Java-centric enterprise that restricted PHP but still needed a CMS solution for publishing).

To publish a page of documentation, tech writers had to create a new page in the Hippo CMS and then paste in the HTML for the page (or try to use the WYSIWYG editor in the Hippo CMS). If you had 50 pages of documentation to publish, you would need to paste the HTML into each CMS page one by one. Originally, many writers would use tools such as [Pandoc](https://pandoc.org/) to convert their content to HTML and then paste it into the Hippo CMS. This copy-and-paste approach was tedious, prone to error, and primitive.

When I started, I championed using Jekyll to generate and manage the HTML, and I started storing the Jekyll projects in internal Git repositories. I also created a layout in Jekyll that was explicitly designed for Hippo publishing. The layout included a documentation-specific sidebar (previously absent in Hippo on a granular level) to navigate all the content in a particular set of documentation. This Jekyll layout included several styles and scripts to override settings in the CMS.

Despite this innovation, our publishing process still involved pasting the generated HTML (after building Jekyll) page by page into the CMS. Thus, we were only partially using docs-as-code and still had a long way to go. One of the tenets of docs-as-code is to build your output directly from the server (called "continuous deployment"). In other words, you incorporate the publishing logic on the server rather than running the publishing process from your local computer.

{% include random_ad2.html %}

This last step, publishing directly from the server, was difficult because another engineering group was responsible for the website and server, and we couldn't just rip Hippo out and start uploading the Jekyll-generated files onto a web server ourselves. It would take another year or more before the engineering team had the bandwidth for the project. Once it started, the project was a wild ride of mismatched expectations and assumptions. But in the end, we succeeded.

Most of the lessons learned here are about this process, specifically how we transitioned to building Jekyll directly from an internal Git repo, the decisions we made and the reasoning behind those decisions, the compromises and other changes of direction, and so on. My purpose here is to share lessons learned so that other writers embarking on similar endeavors can benefit from understanding what might be on the road ahead.

## Advantages of integrating into a larger system

Why did we want to move to docs as code in the first place? At most large companies, there are plenty of robust, internally developed tools that tech writers can take advantage of. The docs-as-code approach would allow us to integrate into this robust enterprise infrastructure that developers had already created.

{% include random_ad4.html %}

Documentation tools are often independent, standalone tools that offer complete functionality (such as version control, search, and deployment) within their own system. But these systems are often a black box, meaning, you can't really open them up and integrate them into another process or system. With the docs-as-code approach, we had the flexibility to adapt our process to fully integrate within the company's infrastructure and website deployment process. Some of this infrastructure we wanted to hook into included the following:

* Internal test environments (a gamma environment separate from production)
* Authentication for specific pages based on account profiles
* Search and indexing
* Website templating (primarily a complex header and footer)
* Robust analytics
* Secure servers to satisfy Information Security policies with the corporate domain
* Media CDN for distributing images
* Git repositories and GUI for managing code
* Build pipelines and a build management system

All we really needed to do was to generate out the body HTML along with the sidebar and make it available for the existing infrastructure to consume. The engineering team that supported the website already had a process in place for managing and deploying content on the site. We wanted to use similar processes rather than coming up with an entirely different approach.

## End solution

In the end, here's the solution we implemented. We stored our Jekyll project in an internal Git repository &mdash; the same farm of Git repositories other engineers used for nearly every software project, and which connected into a build management system. After we pushed our Jekyll doc content to the master branch of the Git repository, a build pipeline would kick off and build the Jekyll project directly from the server (similar to [GitHub Pages](https://pages.github.com/)).

Our Jekyll layout omitted any header or footer in the theme. The built HTML pages were then pulled into an S3 bucket in AWS through an ingestion tool (which would check for titles, descriptions, and unique permalinks in the HTML). This bucket acted as a flat-file database for storing content. Our website would make calls to the content in S3 based on permalink values in the HTML to pull the content into another website template that included the header and footer.

The build process from the Git repo to the deployed website took about 10 minutes, but tech writers didn't need to do anything during that time. After you typed a few commands in your terminal (merging with the `gamma` or `production` branch locally and then pushing out the update to origin), the deployment process kicked off and ran all by itself.

The first day in launching our new system, a team had to publish 40 new pages of documentation. Had we still been in Hippo, this would have taken several hours to publish. Even more painful, their release timeframe was an early morning, pre-dawn hour, so the team would have had to publish 40 pages in Hippo CMS at around 4 am to 6 am, copying and pasting the HTML frantically to meet the release push and hoping they didn't screw anything up.

Instead, with the new process, the writer just merged her `development` branch into the `production` branch and pushed the update to the repo. Ten minutes later, all 40 pages were live on the site. She was floored! We knew this was the beginning of a new chapter in the team's processes. We all felt like a considerable publishing burden had been lifted off our shoulders.

{% include random_ad3.html %}

## Challenges we faced

I've summarized the success and overall approach, but there were a lot of questions and hurdles in developing the process. I'll detail these main challenges in the following sections.

{% include image_ad_right.html %}

### Inability to do it ourselves

The biggest challenge, ironically, was probably with myself &mdash; dealing with my own perfectionist, controlling tendencies to do everything on my own, just how I wanted. (This is probably both my biggest weakness and strength as a technical writer.) It's hard for me to relinquish control and have another team do the work. We had to wait *about a year* for the overworked engineering team's schedule to clear up so they would have the bandwidth to do the project.

During this wait time, we refined our Jekyll theme and process, ramped up on our Git skills, and migrated all of the content out of the old CMS into [kramdown Markdown](https://kramdown.gettalong.org/). Even so, as project timelines kept getting delayed and pushed out, we weren't sure if the engineering team's bandwidth would ever lighten up. I wanted to jump ship and just deploy everything myself through the [S3_website plugin](https://github.com/laurilehmijoki/s3_website) on [AWS S3](https://aws.amazon.com/s3/).

But as I researched domain policies, server requirements, and other corporate standards and workflows, I realized that a do-it-myself approach wouldn't work (unless I possessed a lot more engineering knowledge than I currently did). Given our corporate domain, security policies required us to host the content on an internal tier 1 server, which had to pass security requirements and other standards. It became clear that this would involve a lot more engineering and server knowledge and time than I had, as well as maintenance time if I managed the server post-release. So we had to wait.

We wanted to get this right because we probably wouldn't get bandwidth from the engineering team again for a few years. In the end, waiting turned out to be the right approach.

### Understanding each other

When we did finally begin the project and start working with the engineering team, another challenge was in understanding each other. The engineering team (the ones implementing the server build pipeline and workflow) didn't understand our Jekyll authoring process and needs.

Conversely, we didn't understand the engineer's world well either. To me, it seemed all they needed to do was upload HTML files to a web server, which seemed a simple task. I felt they were overcomplicating the process with unnecessary workflows and layouts. And what was the deal with storing content in S3 and doing dynamic lookups based on matching permalinks? But they already had a process for publishing content to the existing site, so they were more or less following the same build flow.

Despite the common goal, we lived in seemingly different worlds, and we had to continually communicate about what each other needed. It didn't help that we were located in different states and had to interact virtually, often through chat and email.

### Figuring out repo size

Probably the primary challenge was to figure out the correct size for the documentation repos. Across our teams, we had 30 different products, each with their doc navigation and content. Was it better to store each product in its own repo, or to store all products in one giant repo? I flipped my thinking on this several times.

Storing content in multiple repos led to quick build times, reduced visual clutter, resulted in fewer merge conflicts, didn't introduce warnings about repo sizes, and had other benefits with autonomy.

On the other hand, storing all content in one repo simplified content re-use, made link management and validation easier, reduced maintenance efforts, and more. Most of all, it made it easier to update the theme in a single place rather than duplicating theme file updates across multiple repos.

Originally, our team started out storing content in separate repos. When I had updates to the Jekyll theme, I thought I could simply explain what files needed to be modified, and each tech writer would make the update to their theme's files. This turned out not to work &mdash; tech writers didn't like making updates to theme files. The Jekyll projects became out of date, and then when someone experienced an issue, I had no idea what version of the theme they were on.

I then championed consolidating all content in the same repo. We migrated all of these separate, autonomous repos into one master repo. This worked well for making theme updates. But soon the long build times (1-2 minutes for each build) became painful. We also ran into size warnings in our repo (images and other binary files such as Word docs were included in the repos). Sometimes merge conflicts happened.

The long build times were so annoying, we decided to switch back to individual repos. There's nothing worse than waiting 2 minutes for your project to build, and I didn't want the other tech writers to hate Jekyll like they did Hippo. The lightning-fast auto-regenerating build time with Jekyll is part of its magic.

## Creative solutions for theme distribution across repos

I came up with several creative ways to push the theme files out to multiple small repos in a semi-automated way. My first solution was to distribute the theme through [RubyGems](https://rubygems.org/), which is Jekyll's official [solution for theming](https://jekyllrb.com/docs/themes/). I created a theme gem, open-sourced it and the theme (see [Jekyll Doc Project](https://github.com/amzn/jekyll-doc-project)), and practiced the workflow to push out updates to the theme gem and pull them into each repo.

{% include ads.html %}

It worked well (just as designed). However, it turns out our build management system (an engineering system used to build outputs or other artifacts from code repositories) couldn't build Jekyll from the server using [Bundler](http://bundler.io/), which is what RubyGems required. (Bundler is a tool that automatically gets the right gems for your Jekyll project based on the Jekyll version you are using. Without Bundler, each writer installs the [jekyll gem](https://rubygems.org/gems/jekyll/versions/3.3.1) locally and builds the Jekyll project based on that gem version.)

My understanding of the build management system was limited, so I had to rely on engineers for their assessment. Ultimately, we had to scrap using Bundler and just build using `jekyll serve` because the engineers couldn't make Bundler work with the build system. So I still had the problem of distributing the same theme across multiple repos.

My second attempt was to distribute the theme through [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules). This approach involved storing the theme in its own Git repo that other Git repos would pull in. However, our build management system couldn't support Git submodules either, it turned out.

I then came up with a way to distribute the theme through [Git subtrees](https://www.atlassian.com/blog/git/alternatives-to-git-submodule-git-subtree). Git subtrees worked in our build system (although the commands were strange), and it preserved the short build times. However, when the engineering team started counting up all the separate build pipelines they'd have to create and maintain for each of these separate repos (around 30), they said this wasn't a good idea from a maintenance point of view.

Not understanding all the work involved around building publishing pipelines for each Git repo, there was quite a bit of frustration here. It seemed like I was going out of my way to accommodate engineering limitations, and I wasn't sure if they were modifying any of their processes to accommodate us. But eventually, we settled on two Git repos and two pipelines. We had to reconsolidate all of our separate repos back into two repos. You can probably guess that moving around all of this content, splitting it out into separate repos and then re-integrating it back into consolidated repos, etc., wasn't a task that the writers welcomed.

There was a lot of content and repo adjustment, but in the end, an architecture consisting of two large repos was the right decision. In fact, in retrospect, I wouldn't have minded just having one repo for everything.

Each repo had its own Jekyll project. If I had an update to any theme files (e.g., layouts or includes), I copied the update manually into both repos. Copying the files was easier than trying to devise an automated method. It also allowed me to test updates in one repo before rolling them out to the other repo. To reduce the slow build times, I created project-specific config files that would cascade with the default configuration file and build only one directory rather than all of them. This project-specific config technique reduced the build time to the normal lightning-fast times of less than 5 seconds.

Let me provide a little more details here on how we shortened the build times, because this is a reason many adopt Hugo instead of Jekyll. To reduce the build times, we created a project-specific configuration file (e.g., acme-config.yml) that sets, through the `defaults`, all the directories to `publish: false` but lists one particular directory (the one with content you're working on) as `publish: true`. Then to build Jekyll, you cascade the config files like this:

```bash
jekyll serve --config _config.yml,acme-config.yml
```

The config files on the right overwrite the config files on the left. It works quite well.

Also, although at the time I grumbled about having to consolidate all content into two repos, as the engineers required, I eventually came to agree with the engineers' decision. Recognizing this, my respect and trust in the engineering team's judgment grew considerably. In the future, I started to treat the engineers' recommendations and advice about various processes with much more respect. I didn't assume they misunderstood our authoring needs and requirements so much, and instead followed their direction more readily.

## Ensuring everyone builds with the same version of Jekyll

Another challenge was ensuring everyone built the project using the same version of Jekyll. Normally, you include a Gemfile in your Jekyll project that specifies the version of Jekyll you're using, and then everyone who builds the project with this Gemfile runs Bundler to make sure the project executes with this version of Jekyll. However, since our build pipeline had trouble running Bundler, we couldn't ensure that everyone was running the same version of Jekyll.

Ideally, you want everyone on the team using the same version of Jekyll to build their projects, and you want this version to match the version of Jekyll used on the server. Otherwise, Jekyll might not build the same way. You don't want to later discover that some lists don't render correctly or that some code samples don't highlight correctly because of a mismatch of gems. Without Bundler, everyone's version of Jekyll probably differed. Additionally, the latest supported version of Jekyll in the build management system was an older version of Jekyll (at the time, it was 3.4.3, which had a dependency on an earlier version of Liquid that was considerably slower in building out the Jekyll site).

The engineers finally upgraded to Jekyll 3.5.2, which allowed us to leverage Liquid 4.0. This version upgrade reduced the build time from about 5 minutes to 1.5 minutes. Still, Jekyll 3.5.2 had a dependency on an older version of the [rouge gem](https://rubygems.org/gems/rouge), which was giving us issues with some code syntax highlighting for JSON. The process of updating the gem within the build management system was foreign territory to me, and it was also a new process for the engineers.

To keep everyone in sync, we asked that each writer check their version of Jekyll and manually upgrade to the latest version. This request (which some ignored) turned out not to be much of an issue since there wasn't much of a difference from one Jekyll gem version to the next (at least not for the features we were using).

Ultimately, I learned that it's one thing to update all the Jekyll gems and other dependencies on your own machine, but it's an entirely different effort to update these gems within a build management server in an engineering environment you don't own. We relied on the engineering team to make these updates (but often had to plead and beg them to do it).

## Figuring out translation workflows

Figuring out the right process for translation was also tricky. We started out translating the Markdown source. Our translation vendor affirmed that their ingestion process could handle Markdown as a source format, and we did tests to confirm it. However, after a few translation projects, it turned out that they couldn't handle content that *mixed* Markdown with HTML, such as a Markdown document with an HTML table (and we almost always used HTML tables in Markdown). The vendors would count each HTML element as a Markdown entity, which would balloon the cost estimates.

Further, the number of translation vendors that could handle Markdown was limited, which created risks around the vendors that we could use. For example, our localization managers often wanted to work with translation agencies in their own time zones. But if we were reliant on a particular vendor for their ability to process Markdown, we restricted our flexibility with vendors. If we wanted to scale across engineering, we couldn't force every team to use the same translation vendors, which might not be available in the right time zones. Eventually, we decided to revert to sending only HTML to vendors.

However, if we sent only the HTML output from Jekyll to vendors, it made it difficult to apply updates. With Jekyll (and most static site generators), your sidebar and layout are packaged into *each* of your doc pages. Assuming that you're just working with the HTML output (not the Markdown source), if you have to add a new page to your sidebar, or update any aspect of your layout, you would need to edit each individual HTML file instance to make those updates across the documentation. That wasn't something we wanted to do.

In the end, the process we developed for handling translation content involved manually inserting the translated HTML into pages in the Jekyll project and then having these pages build into the output like the other Markdown pages. We later evolved the process to create container files that provided the needed frontmatter metadata but which used includes to pull the body content from the returned HTML file supplied by the translation vendors. It was a bit of manual labor, but acceptable given that we didn't route content through translation all that often.

The URLs for translated content also needed to have a different `baseurl`. Rather than outputting content in the `/docs/` folder, translated content needed to be output into `/ja/docs/` (for Japanese) or `/de/docs/` (for German). However, a single Jekyll project can have only one `baseurl` value as defined in the default \_config.yml file. I had this `baseurl` value automated in a number of places in the theme.

To account for the new `baseurl`, I had to incorporate a number of hacks to prepend language prefixes into this path and adjust the permalink settings in each translated sidebar to build the file into the right `ja` or `de` directory in the output. It was confusing, and if something breaks in the future, it will take me a while to unravel the logic I implemented.

Overall, translation remains one of the trickier aspects to handle with static site generators, as these tools are rarely designed with translation in mind. But we made it work. (Another challenge with translation was how to handle partially translated doc sets &mdash; I won't even get into this here.)

Overall, given the extreme flexibility and open nature of static site generators, we were able to adapt to the translation requirements and needs on the site.

## Other challenges

There were a handful of other challenges worth mentioning (but not worth full development as in the previous sections). I'll briefly list them here so you know what you might be getting into when adopting a docs-as-code approach.

### Moving content out of the legacy CMS

We probably had about 1,500 pages of documentation between our 10 writers. Moving all of this content out of the old CMS was challenging. Additionally, we decided to leave some deprecated content in the CMS, as it wasn't worth migrating. Creating redirect scripts that would correctly re-route all the content to the new URLs (especially with changed file names) while not routing away from the deprecated CMS pages was challenging. Engineers wanted to handle these redirects at the server level, but they needed a list of old URLs and new URLs.

To programmatically create redirect entries for all the pages, I created a script that iterated throughout each doc sidebar and generated out a list of old and new URLs in a JSON format that the engineering team could incorporate into their redirect tool. It worked pretty well, but migrating the URLs through comprehensive redirects required more analysis and work.

### Implementing new processes while still supporting the old

While our new process was in development (and not yet rolled out), we had to continue supporting the ability for writers to generate outputs for the old system (pasting content page by page into the legacy Hippo CMS). Any change we made had to also include the older logic and layouts to support the older system. Accommodating multiple templates and scripts was particularly difficult with translation content since it required such a different workflow. Being able to migrate our content into a new system while continuing to publish in the older system, without making updates in both places, was a testament to the flexibility of Jekyll. We created separate layouts and configuration files in Jekyll to facilitate these needs.

One of the biggest hacks was with links. Hippo CMS required links to be absolute links if pasting HTML directly into the code view rather than using the WYSIWYG editor (insane as this sounds, it's true). We created a script in our Jekyll project to populate links with either absolute or relative URLs based on the publishing targets. It was a non-standard way of doing links (essentially we treated them as variables whose values we defined through properties in the config file). It worked. Again, Jekyll's flexibility allowed us to engineer the needed solution.

### Constantly changing the processes for documentation

We had to constantly change the processes for documentation to fit what did or did not work with the engineering processes and environment. For example, git submodules, subtrees, small repos, large repos, frontmatter, file names, translation processes, etc., all fluctuated as we finalized the process and worked around issues or incompatibilities.

Each change created some frustration and stress for the tech writers, who felt that processes were changing too much and didn't like to hear about updates they would need to make or learn. And yet, it was hard to know the end from the beginning, especially when working with unknowns around engineering constraints and requirements. Knowing that the processes we were laying down now would likely be cemented into the pipeline build and workflow for long into the distant future was stressful.

I wanted to make sure we got things right, which might mean adjusting our process, but I didn't want to make too many adjustments because each time there was a change, it weakened the confidence among the other tech writers about our direction and expertise about what we were doing.

During one meeting, I somewhat whimsically mentioned that updating our permalink path wouldn't be a bad idea (to have hierarchy in the URLs). One of the tech writers noted that she was already under the gun to meet deadlines for four separate projects and wasn't inclined to update all the permalinks for each page in these projects. After that, I was cautious about introducing any change without having an extremely compelling reason for it.

The experience made me realize that the majority of tech writers don't like to tinker around with tools or experiment with new authoring approaches. They've learned a way to write and publish content, and they resent it when you modify that process. It creates an extreme amount of stress in their lives. And yet, I kind of like to try new approaches and techniques. How do you know, without experimenting, if there isn't a better way of doing something?

In the engineering camp, I also took some flak for changing directions too frequently, particularly with the repo sizes. But from my perspective, I had to change directions to try to match the obscure engineering requirements. In retrospect, it would have helped if I had visited the engineers for a week to learn their workflow and infrastructure in depth.

### Styling the tech docs within a larger site

Another challenge was with tech doc styles. The engineering team didn't have resources to handle our tech doc styling, so I ended up creating a stylesheet (3,000 lines long) with all CSS namespaced to a class of `docs` (for example, `.docs p, .docs ul`, etc.). I implemented namespacing to ensure the styles wouldn't alter other components of the site. Much of this CSS I simply copied from [Bootstrap](https://getbootstrap.com/). The engineers pretty much incorporated this stylesheet into their other styles for the website.

With JavaScript, however, we ran into namespace collisions and had to wrap our jQuery functions in a unique name to avoid conflicts (the conflicts would end up breaking the initialization of some jQuery scripts). These namespace collisions with the scripts weren't apparent locally and were only visible after deploying on the server, so the test environment constantly flipped between breaking or not breaking the sidebar (which used jQuery). As a result, seeing broken components created a sense of panic from the engineers and dread among the tech writers.

The engineers weren't happy that we had the ability to break the display of content with our layout code in Jekyll. At the same time, we wanted the ability to push out content that relied on jQuery or other scripts. In the end, we got it to work, and the returned stability calmed down the writers.

### Transitioning to a Git-based workflow

While it may seem like Jekyll was the authoring tool to learn, the more taxing challenge was becoming familiar with Git-based workflows for doc content. Git required some learning and familiarity with the command line and version control workflows.

Some writers already had a background with Git, while others had to learn it. Although we all ended up learning the Git commands, I'm not sure everyone actually used the same processes for pulling, pushing, and merging content (there's a lot of ways to do similar tasks).

There were plenty of times where someone accidentally merged a development branch into the master or found that two branches wouldn't merge, or they had to remove content from the master and put it back into development, etc. Figuring out the right process in Git is not a trivial undertaking. Even now, I'll occasionally find a formatting error because Git's conflict markers `>>>>>>>` and `<<<<<<<` find their way into the content, presumably from a merge gone wrong. We don't have any validation scripts (yet) that look for marker stubs like this, so it's a bit disheartening to suddenly come across them.

### Striking a balance between simplicity and robustness in doc tooling

Overall, we had to support a nearly impossible requirement in accommodating less technical contributors (such as project managers or administrators outside our team) as well as advanced authors. The requirement was to keep doc processes simple enough for non-technical people to make updates (similar to how they did in the old CMS), while also providing enough robustness in the doc tooling to satisfy the needs of tech writers, who often need to single-source content, implement variables, re-use snippets, output to PDF, and more.

In the end, given that our primary audience and contributors were developers, we favored tools and workflows that developers would be familiar with. To contribute substantially in the docs, we decided that you would have to understand, to some extent, Git, Markdown, and Jekyll. For non-technical users, we directed them to a GUI (similar to GitHub's GUI) they could interact with to make edits in the repository. Then we would merge in and deploy their changes.

However, even the less technical users eventually learned to clone the project and push their updates into a development branch using the command line. It seems that editing via the GUI is rarely workable as a long-term solution.

### Building a system that scales

Although we were using open source tools, our solution scaled for the enterprise. Because the content used Markdown as the format, anyone could quickly learn it. And because we used standard Git processes and tooling, engineers can more easily plug into the system.

We already had some engineering teams interacting in the repo. Our goal was to empower lots of engineering teams with the ability to plug into this system and begin authoring. Ideally, we could have dozens of different engineering groups owning and contributing content, with the tech writers acting more like facilitators and editors.

No licenses or seats were required to scale out the authoring. A writer just used Atom editor (or another IDE). The writer would open up the project and work with the text, treating docs like code.

Within the first few weeks of launching our system, we found that engineers liked to contribute updates using the same code review tools they used with software projects. This use of code review tools simplified the editing workflow. But it also created more learning on our part, because it meant we would need to learn these code review tools, how to push to the code review system, how to merge updates from the reviews, and so forth. Trying to evaluate a doc contribution by looking at a diff file in a code review tool is more annoying than helpful. I prefer to see the content in its whole context, but engineers typically just want to focus in on what has changed.

Additionally, empowering these other groups to author required us to create extensive instructions, which was an entire documentation project in itself. I created around 30+ topics in our guide that explained everything from setting up a new project to publishing from the command line using Git to creating PDFs, navtabs, inserting tooltips and more. Given that this documentation was used internally only and wasn't documentation consumed externally, business executives didn't see a high value in creating it, nor did they want us devoting much bandwidth to it. Yet it consumed *a lot* of time. Making good documentation is hard, and given the questions and onboarding challenges, I realized just how much the content needed to be simplified and fine-tuned. (If writers couldn't follow it, they pinged me for help, draining even more of my time.)

Unfortunately, when we began the project, we didn't secure resourcing and funding for its ongoing maintenance and support. In many ways, working on the project was like working on an open-source project. Although much work still needed to be done in documenting our toolset and workflows, our official priorities always focused on externally facing documentation content. Almost no one wanted to acknowledge the time and energy required to support internal tooling process and documentation. While much of this hassle could have been eliminated through third-party hosting and deployment solutions (like CloudCannon), the company preferred to build its own tools but not fully dedicate resourcing for tool maintenance and documentation.

## Conclusion

Almost everyone on the team was happy about the way our doc solution turned out. Of course, there are always areas for improvement, but the existing solution was head and shoulders above the previous processes. Perhaps most importantly, Jekyll gave us an incredible degree of flexibility to create and adapt to our needs. It was a solution we could build on and make fit our infrastructure and requirements.

I outlined the challenges here to reinforce the fact that implementing docs-as-code is no small undertaking. It doesn't have to be an endeavor that takes months, but at a large company, if you're integrating with engineering infrastructure and building out a process that will scale and grow, it can require a decent amount of engineering expertise and effort.

If you're implementing docs-as-code at a small company, you can simplify processes and use a system that meets your needs. For example, you could use [GitHub Pages](https://pages.github.com/), or use the [S3_website plugin](https://github.com/laurilehmijoki/s3_website) to publish on AWS S3, or better yet, use a continuous deployment platform like [CloudCannon](https://cloudcannon.com/) or [Netlify](https://www.netlify.com/). (I explore these tools in more depth in [Hosting and deployment options](pubapis_hosting_and_deployment.html).) I might have opted for either of these approaches if allowed and if we didn't have an engineering support team to implement the workflow I described.

Also, tools implementation is somewhat of a mixed experience for me. Intimate knowledge of doc tools is critical *when you're implementing your solution.* After you're finished, you no longer need that depth of knowledge, and I find it somewhat fading from my awareness. The ephemeral need for tool knowledge is probably why so many consultants specialize in tools &mdash; they ride into town, set things up, and then drive their wagons to the next town to repeat the show. But if you're a full-time employee, and your primary job is developing content, not tools, then how do you find the time and support to develop the needed tool knowledge for the temporary period when you're implementing a system, only to abandon the knowledge later, after everything is implemented and running smoothly?

I enjoy getting my hands in the code of docs-as-code tools, but I'm pretty sure both the other tech writers and engineering teams are happy to see the sense of stability and normalcy return. They don't like it when I continually experiment and develop on the platform because it inevitably means change. It means occasionally things break. Or I discover that a particular approach wasn't optimal. In some way, it causes a bit of stress.

And yet, platforms and tools are rarely static for any duration of time. Even Jekyll continually releases new versions, responding to changes in the Internet landscape and trending technology needs. So maybe in a few years, we'll go through this whole process again. Even so, I have a propensity and facility with doc tools, and I like getting my hands dirty in the code.

## Slides and links to republished content

For a slide presentation that covers the topics listed in this article, see the following:

<a class="noCrossRef" href="https://github.com/tomjoht/docs-as-code-tools-and-workflows"><img src="{{site.media}}/docsascodepresotitle.png"/></a>.

Additionally, note that this content was also republished in the [Developer Portals e-Magazine Winter 2018](https://pronovix.com/e-books/developer-portals-e-magazine-winter-2018), by Pronovix:

<a href="https://pronovix.com/e-books/developer-portals-e-magazine-winter-2018" class="noCrossRef"><img src="{{site.media}}/devportalswinter2018.png" class="small" /></a>

It was also republished in Anne Gentle's [Docs Like Code: Case Studies](https://www.docslikecode.com/articles/change-case-study/):

<a href="https://www.docslikecode.com/articles/change-case-study/" class="noCrossRef"><img src="{{site.media}}/docslikecodeannegentlecasestudies.png" class="small" /></a>

I also [gave a presentation on Docs-as-code tools and workflows](https://idratherbewriting.com/2018/03/09/docs-as-code-tools-and-workflows-denver-presentation/) to the STC Rocky Mountain and WTD Denver group.

{% if site.format == "kindle" or site.format == "pdf" %}

{: .note}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/pubapis_overview.html] to view the content.*
{% elsif site.format == "web" %}

<iframe  width="640" height="360" src="https://www.youtube.com/embed/Z3e_38WS-2Q" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

{% endif %}

To read some other docs-as-code posts on my blog, see the following:

* [Discoveries and realizations while walking down the Docs-as-Code path](https://idratherbewriting.com/2017/08/23/content-architecture-and-repo-sizes/)
* [Limits to the idea of treating docs as code](https://idratherbewriting.com/2017/06/02/when-docs-are-not-like-code/)
* [Will the docs-as-code approach scale? Responding to comments on my Review of Modern Technical Writing](https://idratherbewriting.com/2016/08/01/responding-to-feedback-on-modern-tech-writing-review/)

To Learn more about docs as code in general, see Anne Gentle's book [Docs Like Code](https://www.amazon.com/Docs-Like-Code-Anne-Gentle/dp/1365816079/ref=sr_1_1?ie=UTF8&qid=1508090523&sr=8-1&keywords=docs+like+code).
