---
title: "Docs-as-code tools"
permalink: /pubapis_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.4
section: publishingapis
path1: /publishingapis.html
---

One of the first considerations to make when you think about API doc tooling is who will be doing the writing. If technical writers will create all the documentation, the choice of tool may not matter as much. But if developers will be contributing to the docs, you should integrate your authoring and publishing tools into the developer's toolchain and workflow. Developer-centric tools for documentation are often referred to as docs-as-code tools.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Integrating into engineering tools and workflows

Riona Macnamara, a technical writer at Google, says that several years ago, internal documentation at Google was scattered across wikis, Google Sites, Google Docs, and other places. In internal surveys at Google, many employees said the inability to find accurate, up-to-date documentation was one of the biggest pain points. Despite Google's excellence in organizing the world's external information online, organizing it internally proved to be difficult.

Riona says they helped solve the problem by integrating documentation into the engineer's workflow. Rather than trying to force-fit writer-centric tools onto engineers, they fit the documentation into developer-centric tools. Developers now write documentation in Markdown files in the same repository as their code. The developers also have script to display these Markdown files in a browser directly from the code repository.

{% include random_ad.html %}

The method quickly gained traction, with hundreds of developer projects adopting the new method. Now instead of authoring documentation in a separate system (using writer-centric tools), developers simply add the doc in the same repository as the code. This ensures that anyone who is using the code can also find the documentation. Engineers can either read the documentation directly in the Markdown source, or they can read it displayed in a browser.

If you plan to have developers write, definitely check out Riona Macnamara's Write the Docs 2015 presentation: [Documentation, Disrupted: How two technical writers changed Google engineering culture](https://www.youtube.com/embed/EnB8GtPuauw).

## What docs-as-code tools means

Having developers write or contribute to documentation should inform your tool choice with API documentation. If you plan to involve developers in writing and editing, you'll naturally choose more of a [docs-as-code tools](pubapis_docs_as_code.html) approach. Docs-as-code means to embrace tools that treat docs just like developers treat software code. To treat docs like code generally means doing some of the following:

*  Working in plain text files (rather than binary file formats like FrameMaker or Word).
*  Using an open-source static site generator like Sphinx, Jekyll, or Hugo to build the files locally through the command line (rather than using a commercial program such as FrameMaker or Microsoft Word).
*  Working with files through an IDE such as Atom, Sublime, or another text editor (rather than relying on commercial tools with proprietary, closed systems that function like black boxes).
*  Storing docs in a version control repository (usually a Git repo) similar to how programming code is stored (rather than keeping docs in another space like SharePoint or a shared drive); also if appropriate, potentially storing the docs in the same repository as the code itself.
*  Collaborating with other writers using version control such as Git and GitHub to branch, merge, push, and pull updates (rather than collaborating through large content management systems or SharePoint-like check-in/check-out sites).
*  Automating the site build process to build the web output from the server when you update a particular branch (rather than manually publishing and transferring files from one place to another).
*  Running validation checks using custom scripts to check for broken links, improper terms/styles, and formatting errors (rather than spot checking the content manually).

In short, treating docs like code means to use the same systems, processes, and workflows with docs as you do with programming code.

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/limitstodocsascode.png"/>
{% else %}
<img src="images/limitstodocsascode-01.svg"/>
{% endif %}

## Advantages to docs-as-code approaches for docs {#docsascode_advantages}

Just because you *can* manage docs like code, should you? What exactly are the advantages of treating docs like code? Here are a few reasons to embrace docs-as-code tools for documentation.

### Collaboration with developers

If you work with developer documentation, chances are you'll be working on a wide variety of deeply technical topics and will be reliant on engineers to contribute and review the docs. Many times developer documentation is so complex, only developers can really write and review it. Unless you have a background in engineering, understanding all the details in programming, server configuration, or other technical platforms may be beyond the technical writers' ability to document (without a lot of research, interviewing, and careful note taking).

Additionally, some developers prefer to just write the doc themselves. If a developer is the audience, and another developer is the writer, chances are they can cut through some of the guesswork about assumptions, prerequisite knowledge, and accuracy. It might be more efficient than trying to transmit the information to a technical writer.

Most developers are comfortable with Markdown, enjoy being able to work in their existing IDE to edit content, prefer to collaborate in a Git repo using branching, merging, and code review tools, and are generally comfortable with the whole code-based process and environment. By using tooling that is familiar to them, you empower them to contribute and participate more fully with the documentation.

Granted, engineers who write documentation often fall prey to the [curse of knowledge](http://idratherbewriting.com/2007/01/24/the-curse-of-knowledge-the-more-you-know-the-worse-communicator-you-become/). That is, the more you know about a topic, the more assumptions and background information you have that get in the way of clear communication. Even so, technical writers may not always have the time to write documentation for engineering topics.

In most cases, API documentation is a collaborative effort between developers and technical writers. Developers tend to focus more on writing the [reference documentation](docendpoints.html), while technical writers focus more on the [non-reference documentation](docnonref.html). Regardless of the division of labor, both technical writers and developers tend to work with each other in a close way.

### Simplified publishing

When you can build from the server by simply pushing content into a Git repository (as is the case with docs-as-code tools), it greatly simplifies the act of publishing. You can make edits across a number of docs and commit your code into your doc repo. When you merge your branch into a gamma or production environment, a server process automatically starts building and deploying the content to your server.

At first, learning the right Git commands might take some time. But after working this way for a few weeks, these commands become second-nature and almost built into your typing memory. Eliminating the hassle of publishing docs allows you to focus more on content, and you can push out updates quickly and easily. Publishing and deploying the output is no longer a step you have to devote time towards.

### Increased collaboration with other tech writers

When your tech writing team collaborates in the same Git repository on content, you'll find a much greater awareness around what your teammates are doing. Before committing your updates into the repo, you run a `git pull` to get any updates from the remote repository. You see the files your teammates are working on, the changes they've made, and you can also more easily work on each other's content. By working out of the same repository, you aren't siloed in separate projects that exist in different spaces. Docs-as-code tools encourage collaboration.

### Flexibility

Docs-as-code tools give you incredible flexibility to adapt or adjust to your particular environment or company's infrastructure. For example, suppose the localized version of your website requires you to output the content with a particular URL pattern, or you want to deliver the content with a certain layout in different environments, or you want to include custom metadata to process your files in a particular way with your company's authentication or whitelisting mechanisms. With docs-as-code tools, the files are open and can be coded to incorporate the logic you want. This can be especially important if you're integrating your docs into a website rather than generating a standalone output.

The docs-as-code tools are as flexible and robust as your coding skills allow. At a base level, almost all docs-as-code tools use HTML, CSS, and JavaScript, so if you are a master at these, there's almost nothing you can't do. Further, many static site generators allow you to use scripting logic such as Liquid that simplifies JavaScript and makes it easier to perform complex operations (like iterating through files and inserting certain fields into templates).

{: .tip}
To read details about switching to docs as code tools, see [Case study: Switching tools to docs-as-code](pubapis_switching_to_docs_as_code.html).
