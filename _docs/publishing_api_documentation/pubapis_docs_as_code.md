---
title: "Docs-as-code tools"
permalink: pubapis_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.3
section: publishingapis
path1: publishingapis.html
last-modified: 2019-08-21
---

One of the first considerations to make when you think about API doc tooling is who will be doing the writing. If technical writers will create all the documentation, the choice of tools may not matter as much. But if developers will be contributing to the docs, it's generally advantageous to integrate your authoring and publishing tools into the developer's toolchain and workflow. Developer-centric tools for documentation are often referred to as docs-as-code tools. Docs-as-code tools are much more common than traditional help authoring tools (HATs) with API documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Integrating into engineering tools and workflows

Riona Macnamara, a technical writer at Google, says that several years ago, internal documentation at Google was scattered across wikis, Google Sites, Google Docs, and other places. In internal surveys at Google, many employees said the inability to find accurate, up-to-date documentation was one of their most significant pain points. Despite Google's excellence in organizing the world's external information online, organizing it internally proved to be difficult.

{% include random_ad3.html %}

Riona says they helped solve the problem by integrating documentation into the engineer's workflow. Rather than trying to force-fit writer-centric tools onto engineers, they fit the documentation into developer-centric tools. Developers now write documentation in Markdown files in the same repository as their code. The developers also have a script to display these Markdown files in a browser directly from the code repository.

{% include random_ad2.html %}

The method quickly gained traction, with hundreds of developer projects adopting the new method. Now instead of authoring documentation in a separate system (using writer-centric tools), developers simply add the doc in the same repository as the code. This location ensures that anyone who is using the code can also find the documentation. Engineers can either read the documentation directly in the Markdown source, or they can read it displayed in a browser.

If you plan to have developers write, definitely check out Riona Macnamara's Write the Docs 2015 presentation: [Documentation, Disrupted: How two technical writers changed Google engineering culture](https://www.youtube.com/embed/EnB8GtPuauw).

## What docs-as-code tools means

Having developers write or contribute to documentation should inform your tool choice with API documentation. If you plan to involve developers in writing and editing, you'll naturally choose more of a docs-as-code tools approach. Docs-as-code means to treat docs just like developers treat code. To treat docs like code generally means doing some of the following:

*  **Working in plain text files** (rather than binary file formats like Adobe FrameMaker or Microsoft Word).
*  **Using an open-source static site generator** like [Sphinx](pubapis_static_site_generators.html#sphinx), [Jekyll](pubapis_static_site_generators.html#jekyll), or [Hugo](pubapis_static_site_generators.html#hugo) to build the files locally through the command line (rather than using a commercial program such as FrameMaker or Word).
*  **Working with files through a text editor** such as Atom or Sublime Text (rather than relying on commercial tools with proprietary, closed systems that function like black boxes).
*  **Storing docs in a version control repository** (usually a Git repo) similar to how programming code is stored (rather than keeping docs in another space like SharePoint or a shared drive); also if appropriate, potentially storing the docs in the same repository as the code itself.
*  **Collaborating with other writers using version control** such as Git to branch, merge, push, and pull updates (rather than collaborating through large content management systems or SharePoint-like check-in/check-out sites).
*  **Automating the site build process with continuous delivery** to build the web output from the server when you update a particular branch (rather than manually publishing and transferring files from one place to another).
*  **Running validation checks** using custom scripts to check for broken links, improper terms/styles, and formatting errors (rather than spot checking the content manually).
*  **Managing docs using processes similar to engineers (e.g., agile scrum)**, such as chunking out doc work in an issue manager (such as JIRA), assigning the issues to bi-weekly sprints, and reporting to stakeholders on the doc work completed (showing demos). (For more on this point, see [Following agile scrum with documentation projects](pubapis_agile_scrum_for_docs.html).)

In short, treating docs like code means to use the same systems, processes, and workflows with docs as you do with programming code.

<figure><img class="docimage large" src="{{site.media}}/{% if site.format == "kindle" %}limitstodocsascode.png{% else %}limitstodocsascode.svg{% endif %}" alt="Treating docs like code" /><figcaption>Treating docs like code</figcaption></figure>

## Advantages to docs-as-code approaches for docs {#docsascode_advantages}

Just because you *can* manage docs like code, should you? What exactly are the advantages of treating docs like code? Here are a few reasons to embrace docs-as-code tools for documentation.

### Collaboration with developers {#collaboration_with_developers}

{% include image_ad_right.html %}

If you work with developer documentation, chances are you'll be working on a wide variety of deeply technical topics and will be reliant on engineers to contribute and review the docs. Many times developer documentation is so complex, only developers can really write and review it. Unless you have a background in engineering, understanding all the details in programming, server configuration, or other technical platforms may be beyond your ability to document (without a lot of research, interviewing, and careful note taking).

{: .tip}
See my post [What technical writing trends will we see in 2018?](https://idratherbewriting.com/2018/01/02/technical-writing-trends-2018-and-2017-review/) for a description of how specialization is forcing technical writers to play more of a generalist role with content.

Additionally, some developers prefer just to write the doc themselves. If a developer is the audience, and another developer is the writer, chances are they can cut through some of the guesswork about assumptions, prerequisite knowledge, and accuracy. In short, in some API documentation contexts, developers write the content. This fact alone is enough to make the case for adopting a docs-as-code approach.

Most developers are comfortable with Markdown, enjoy being able to work in their existing text editor or IDE (integrated development environment) to edit content, prefer to collaborate in a Git repo using branching, merging, and code review tools, and are generally comfortable with the whole code-based process and environment. By using tooling that is familiar to them, you empower them to contribute and participate more fully with the documentation authoring and publishing.

{% include random_ad4.html %}

Granted, engineers who write documentation often fall prey to the [curse of knowledge](https://idratherbewriting.com/2007/01/24/the-curse-of-knowledge-the-more-you-know-the-worse-communicator-you-become/). That is, the more they know about a topic, the more assumptions and background information they have getting in the way of clear communication. Even so, technical writers may not always have the time to write documentation for engineering topics. In many cases, a development group that has an API might not even have a technical writer available. Developers might handle everything, from coding to docs.

{% include ads.html %}

If tech writers are available, API documentation is usually a collaborative effort between developers and technical writers. Developers tend to focus more on writing the [reference documentation](docendpoints.html), while technical writers focus more on the [conceptual documentation](docconceptual.html). Regardless of the division of labor, both technical writers and developers tend to work with each other in a close way. As such, docs-as-code tools become essential.

### Continuous delivery

Continuous delivery with docs means rebuilding your output by simply committing and pushing content into a Git repository, which then detects and change and triggers a build and publishing job. Continuous delivery greatly simplifies the act of publishing. You can make edits across dozens of pages and commit your code into your doc repo. When you merge your branch into a gamma or production environment, a server process automatically starts building and deploying the content to your server. You don't have to FTP files to a server or follow some other manual deployment process.

At first, learning the right Git commands might take some time. But after working this way for a few weeks, these commands become second-nature and almost built into your typing memory. Eliminating the hassle of publishing and deploying docs allows you to focus more on content, and you can push out updates quickly and easily. Publishing and deploying the output is no longer a step you have to devote time towards. Continuous delivery is the killer feature that makes docs-as-code so much more effortless (when it comes to publishing) compared to other solutions.

### Increased collaboration with other contributors

When your tech writing team collaborates in the same Git repository on content, you'll find a much greater awareness around what your teammates are doing. Before committing your updates into the repo, you run a `git pull` to get any updates from the remote repository. You see the files your teammates are working on, the changes they've made, and you can also more easily work on each other's content. You can also use the diffs and commits for metrics.

By working out of the same repository, you aren't siloed in separate projects that exist in different spaces. Docs-as-code tools encourage collaboration.

### Flexibility and control

Docs-as-code tools give you incredible flexibility and control to adjust to your particular environment or company's infrastructure. For example, suppose the localized version of your website requires you to output the content with a particular URL pattern, or you want to deliver the content with a special layout in some environments, or you want to include custom metadata to process your files in a particular way with your company's authentication or whitelisting mechanisms. With docs-as-code tools, the files are open and can be customized to incorporate the logic you want. This openness and flexibility can be especially important if you're integrating your docs into a website rather than generating a standalone output (see [Pattern 2: A single seamless website](pubapis_design_patterns.html#website_platform)).

The docs-as-code tools are as robust as your coding skills allow. At a base level, almost all docs-as-code tools use HTML, CSS, and JavaScript. So if you are a master with these web technologies, there's almost nothing you can't do.

Further, many static site generators allow you to use scripting logic such as Liquid that simplifies JavaScript and makes it easier to perform complex operations (like iterating through files and inserting particular fields into templates). The scripting logic gives you the ability to handle complex scenarios. You can use variables, re-use content, abstract away complex code through templates, and more.

{: .tip}
To read details about switching to docs as code tools, see [Case study: Switching tools to docs-as-code](pubapis_switching_to_docs_as_code.html).

## Not just tools, but processes too {#processes}

Historically, discussions about docs-as-code have centered on tools rather than processes. But I think a good case can be made for expanding the definition of docs-as-code to involve implementing engineering processes for managing docs as well. By far the most common approach for software development is agile scrum. I expand on this topic at length in [Following agile scrum with documentation projects](pubapis_agile_scrum_for_docs.html).

## Dealing with more challenging factors

A lot of the docs-as-code solutions aren't built with robust technical documentation needs in mind. Suppose you have some of the following requirements:

* Localization
* Content re-use
* Versioning
* Authentication
* PDF

You can often find ways to handle these challenges with non-traditional tools, but it's not going to be a push-button experience. It might require some creativity or a higher degree of technical skill and coding.

At one company where I used Jekyll, we had requirements around both PDF output and versioning. We singled sourced the content into about 8 different outputs (for different product lines and programming languages). It was double that number if you included PDF output for the same content.

Jekyll provides a templating language called Liquid that allows you to do conditional filtering, content re-use, variables, and more, so you can fill these more robust requirements. I used this advanced logic to single source the output without duplicating the content. Other static site generators (like Hugo or Sphinx) have similar templating and scripting logic that lets you accomplish advanced tasks.

To handle PDF with Jekyll, I integrated a tool called [Prince](http://www.princexml.com/), which converts a list of HTML pages into a PDF document, complete with running headers and footers, page numbering, and other print styling (it even uses CSS for the styling) You could also use [Pandoc](https://pandoc.org/) to fill simpler PDF requirements. PDF is possible, just not usually an out-of-the-box feature (except with [Sphinx](http://www.sphinx-doc.org/en/master/)).

You can handle these more challenging factors with non-traditional tools, but it might require more expertise and creativity.

## Conclusion

In the developer documentation space, static site generators dominate the authoring and publishing landscape. HATs and other traditional technical writing tools aren't used nearly as much. This focus on unique, non-traditional publishing tools is why I've dedicated an entire section to publishing in this documentation course.
