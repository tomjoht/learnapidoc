---
title: "Docs-as-code tools"
permalink: /pubapis_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.3
section: publishingapis
path1: /publishingapis.html
---

One of the first considerations to make when you think about API doc tooling is who will be doing the writing. If technical writers will create all the documentation, the choice of tool may not matter as much. But if developers will be contributing to the docs, you should integrate your authoring and publishing tools into the developer's toolchain and workflow. Developer-centric tools for documentation are often referred to as docs-as-code tools. Docs-as-code tools are much more common than traditional help authoring tools (HATs) with API documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Integrating into engineering tools and workflows

Riona Macnamara, a technical writer at Google, says that several years ago, internal documentation at Google was scattered across wikis, Google Sites, Google Docs, and other places. In internal surveys at Google, many employees said the inability to find accurate, up-to-date documentation was one of the biggest pain points. Despite Google's excellence in organizing the world's external information online, organizing it internally proved to be difficult.

Riona says they helped solve the problem by integrating documentation into the engineer's workflow. Rather than trying to force-fit writer-centric tools onto engineers, they fit the documentation into developer-centric tools. Developers now write documentation in Markdown files in the same repository as their code. The developers also have script to display these Markdown files in a browser directly from the code repository.

{% include random_ad2.html %}

The method quickly gained traction, with hundreds of developer projects adopting the new method. Now instead of authoring documentation in a separate system (using writer-centric tools), developers simply add the doc in the same repository as the code. This ensures that anyone who is using the code can also find the documentation. Engineers can either read the documentation directly in the Markdown source, or they can read it displayed in a browser.

If you plan to have developers write, definitely check out Riona Macnamara's Write the Docs 2015 presentation: [Documentation, Disrupted: How two technical writers changed Google engineering culture](https://www.youtube.com/embed/EnB8GtPuauw).

## What docs-as-code tools means

Having developers write or contribute to documentation should inform your tool choice with API documentation. If you plan to involve developers in writing and editing, you'll naturally choose more of a [docs-as-code tools](pubapis_docs_as_code.html) approach. Docs-as-code means to embrace tools that treat docs just like developers treat software code. To treat docs like code generally means doing some of the following:

*  **Working in plain text files** (rather than binary file formats like FrameMaker or Word).
*  **Using an open-source static site generator** like [Sphinx](pubapis_docs_as_code_tool_options.html#sphinx), [Jekyll](pubapis_docs_as_code_tool_options.html#sphinx), or [Hugo](pubapis_docs_as_code_tool_options.html#sphinx) to build the files locally through the command line (rather than using a commercial program such as FrameMaker or Microsoft Word).
*  **Working with files through an IDE** such as Atom, Sublime, or another text editor (rather than relying on commercial tools with proprietary, closed systems that function like black boxes).
*  **Storing docs in a version control repository** (usually a Git repo) similar to how programming code is stored (rather than keeping docs in another space like SharePoint or a shared drive); also if appropriate, potentially storing the docs in the same repository as the code itself.
*  **Collaborating with other writers using version control** such as Git and GitHub to branch, merge, push, and pull updates (rather than collaborating through large content management systems or SharePoint-like check-in/check-out sites).
*  **Automating the site build process with continuous delivery** to build the web output from the server when you update a particular branch (rather than manually publishing and transferring files from one place to another).
*  **Running validation checks** using custom scripts to check for broken links, improper terms/styles, and formatting errors (rather than spot checking the content manually).

In short, treating docs like code means to use the same systems, processes, and workflows with docs as you do with programming code.

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/limitstodocsascode.png"/>
{% else %}
<img src="images/limitstodocsascode-01.svg"/>
{% endif %}

## Advantages to docs-as-code approaches for docs {#docsascode_advantages}

{% include random_ad.html %}

Just because you *can* manage docs like code, should you? What exactly are the advantages of treating docs like code? Here are a few reasons to embrace docs-as-code tools for documentation.

### Collaboration with developers {#collaboration_with_developers}

If you work with developer documentation, chances are you'll be working on a wide variety of deeply technical topics and will be reliant on engineers to contribute and review the docs. Many times developer documentation is so complex, only developers can really write and review it. Unless you have a background in engineering, understanding all the details in programming, server configuration, or other technical platforms may be beyond the technical writers' ability to document (without a lot of research, interviewing, and careful note taking).

{: .tip}
See my post [What technical writing trends will we see in 2018?](http://idratherbewriting.com/2018/01/02/technical-writing-trends-2018-and-2017-review/) for a description of how specialization is forcing technical writers to play more of a generalist role with content.

Additionally, some developers prefer to just write the doc themselves. If a developer is the audience, and another developer is the writer, chances are they can cut through some of the guesswork about assumptions, prerequisite knowledge, and accuracy. It might be more efficient than trying to transmit the information to a technical writer.

Most developers are comfortable with Markdown, enjoy being able to work in their existing text editor or IDE (integrated development environment) to edit content, prefer to collaborate in a Git repo using branching, merging, and code review tools, and are generally comfortable with the whole code-based process and environment. By using tooling that is familiar to them, you empower them to contribute and participate more fully with the documentation.

Granted, engineers who write documentation often fall prey to the [curse of knowledge](http://idratherbewriting.com/2007/01/24/the-curse-of-knowledge-the-more-you-know-the-worse-communicator-you-become/). That is, the more you know about a topic, the more assumptions and background information you have that get in the way of clear communication. Even so, technical writers may not always have the time to write documentation for engineering topics. In many cases, a development group that has an API might not even have a technical writer available. Developers handle everything, from coding to docs.

If tech writers are available, API documentation is usually a collaborative effort between developers and technical writers. Developers tend to focus more on writing the [reference documentation](docendpoints.html), while technical writers focus more on the [non-reference documentation](docnonref.html). Regardless of the division of labor, both technical writers and developers tend to work with each other in a close way. As such, docs-as-code tools become essential.

### Continuous delivery

Continuous delivery with docs means rebuilding your output by simply committing and pushing content into a Git repository. This greatly simplifies the act of publishing. You can make edits across a number of docs and commit your code into your doc repo. When you merge your branch into a gamma or production environment, a server process automatically starts building and deploying the content to your server.

At first, learning the right Git commands might take some time. But after working this way for a few weeks, these commands become second-nature and almost built into your typing memory. Eliminating the hassle of publishing and deploying docs allows you to focus more on content, and you can push out updates quickly and easily. Publishing and deploying the output is no longer a step you have to devote time towards.

### Increased collaboration with other contributors

When your tech writing team collaborates in the same Git repository on content, you'll find a much greater awareness around what your teammates are doing. Before committing your updates into the repo, you run a `git pull` to get any updates from the remote repository. You see the files your teammates are working on, the changes they've made, and you can also more easily work on each other's content. You can also use the diffs and commits for metrics.

By working out of the same repository, you aren't siloed in separate projects that exist in different spaces. Docs-as-code tools encourage collaboration.

### Flexibility and control

Docs-as-code tools give you incredible flexibility and control to adjust to your particular environment or company's infrastructure. For example, suppose the localized version of your website requires you to output the content with a particular URL pattern, or you want to deliver the content with a certain layout in different environments, or you want to include custom metadata to process your files in a particular way with your company's authentication or whitelisting mechanisms. With docs-as-code tools, the files are open and can be coded to incorporate the logic you want. This can be especially important if you're integrating your docs into a website rather than generating a standalone output.

The docs-as-code tools are as flexible and robust as your coding skills allow. At a base level, almost all docs-as-code tools use HTML, CSS, and JavaScript, so if you are a master with these web technologies, there's almost nothing you can't do.

Further, many static site generators allow you to use scripting logic such as Liquid that simplifies JavaScript and makes it easier to perform complex operations (like iterating through files and inserting certain fields into templates). The scripting logic gives you the ability to handle complex scenarios. You can use variables, re-use content, abstract away complex code through templates, and more.

{: .tip}
To read details about switching to docs as code tools, see [Case study: Switching tools to docs-as-code](pubapis_switching_to_docs_as_code.html).

## What about help authoring tools (HATS) {#hats}

What about help authoring tools? Did I dismiss them too easily?

Help authoring tools (HATs) refer to the common toolset often used by technical writers. Common HATs include MadCap Flare, Adobe Robohelp, Author-it, and more. You can, in fact, use these tools to create API documentation, but almost no one does.

Some advantages of using a HAT might include the following:

* **Comfortable authoring environment for writers.** If writers will be creating and publishing the documentation, using a tool technical writers are familiar with is a good idea.
* **Handles the toughest tech comm scenarios.** When you have to deal with versioning, translation, content re-use, conditional filtering, authoring workflows, and PDF output, you're going to struggle to make this work with the other tools mentioned in this course.

However, with developer docs, HATs have more disadvantages and are much less common than docs-as-code tools. Here are a few reasons why.

### Dated UI won't help sell the product

The output from a help authoring tool usually looks dated. Here's a sample help output from Flare for the Photobucket API:

<a href="http://bit.ly/photobucketlongurl" class="noExtIcon"><img src="images/hatphotobucket.png" alt="Publishing API docs" /></a>

The problem with the dated tripane look and feel is that API documentation *is* the product interface that users navigate. There isn't a separate GUI interface that the help opens up next to. The help is front and center as the information product that users purchase or use.

If you want to promote the idea that your API is modern and awesome, you want a website that looks modern and awesome. In fact, you might have a UX developer create the website itself. If you lead with an outdated tripane site that loads frames, developers may not be as excited to use your API.

In Flare's latest release, you *can* customize the display in pretty significant ways, so maybe it will help end the dated tripane output's appearance. Even so, the effort and process of skinning a HAT's output is usually drastically different from customizing the output from a static site generator. Web developers will be much more comfortable with the latter.

Additionally, many of the API doc sites are single-website experiences, or at least skinned to have similar branding as the main company site. The API docs are usually integrated as part of the main website, not a link that opens in its own window and frame, separate from the other content. If you split and divide the user into separate sites (with the HAT output looking notably different and dated), you're following a less common pattern with API doc sites. Because of the tight integration, skinning the output with the same modern web framework ranks as a top priority.

### Removes authoring capability from developers

If you're hoping for developers to contribute to the documentation, it's going to be hard to get buy-in if you're using a HAT. HATs are tools for writers, not developers. I covered this point earlier in [Collaboration with developers](#collaboration_with_developers), so I won't repeat the argument here. But in developer doc spaces, you collaborate heavily with engineers. As such, you need to use tools that engineers understand and can easily plug into.

Additionally, almost no HAT runs on a Mac. Many developers and designers prefer Macs because they have a much better development platform (the command line is much friendlier and functional, for example).

If most developers use Macs but you use a PC (to accommodate your HAT), you may struggle to install developer tools or to follow internal tutorials to get set up and test out content.

Additionally, HATs often have steep license restrictions, whereas docs-as-code tools are often open source and can therefore scale across the company without budgetary funding and approval.

## Dealing with more challenging factors

A lot of the solutions we've looked at tend to break down when you start applying more difficult requirements in your tech comm scenario. You may have to resort to more traditional tech comm tooling if you have to deal with some of the following:

* Translation
* Content re-use
* Versioning
* Authentication
* PDF

You can often find ways to handle these challenges with non-traditional tools, but it's not going to be a push-button experience. It will require a higher degree of technical skill and coding.

At one company where I used Jekyll, we had requirements around both PDF output and versioning. We singled sourced the content into about 8 different outputs (for different product lines and programming languages). It was double that number if you included PDF output for the same content.

Jekyll provides a templating language called Liquid that allows you to do conditional filtering, content re-use, variables, and more, so you can fill these more robust requirements. I used this advanced logic to single source the output without duplicating the content. Other static site generators (like Hugo or Sphinx) have similar templating and scripting logic that lets you accomplish advanced tasks.

To handle PDF with Jekyll, I integrated a tool called [Prince](http://www.princexml.com/), which converts a list of HTML pages into a PDF document, complete with running headers and footers, page numbering, and other print styling. You could also use [Pandoc](https://pandoc.org/) to fill simpler PDF requirements.

My point is that you can handle these more challenging factors with non-traditional tools, but it requires more expertise.

## Conclusion

In the developer documentation space, static site generators dominate the authoring and publishing landscape. HATs and other traditional technical writing tools aren't used nearly as much. This is why I've dedicated an entire section to publishing in this course on API documentation.
