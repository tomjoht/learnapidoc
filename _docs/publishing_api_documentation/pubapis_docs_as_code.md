---
title: "Docs-as-code tools"
permalink: /pubapis_docs_as_code.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.4
section: publishingapis
path1: /publishingapis.html
---

What authoring tool works best for developer documentation, especially when documenting APIs? I've used a number of authoring tools (Flare, Robohelp, Confluence, Word, Drupal, Google Docs, and others), and while different tools fit different scenarios with varying strengths, if you're writing *developer docs*, nothing works quite so well as static site generators coupled with a docs-as-code publishing workflow.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## What docs-as-code tools means

Docs-as-code tools means to embrace tools that treat docs just like developers treat software code. To treat docs like code generally means doing some of the following:

*  Working in plain text files (rather than binary file formats like FrameMaker or Word).
*  Using an open-source static site generator like Sphinx, Jekyll, or Hugo to build the files locally through the command line (rather than using a commercial program such as FrameMaker or Microsoft Word)
*  Working with files through an IDE such as Atom, Sublime, or another text editor (rather than relying on commercial tools with proprietary, closed systems that function like black boxes).
*  Storing docs in a version control repository (usually a Git repo) similar to how programming code is stored (rather than keeping docs in another space like SharePoint or a shared drive); also if appropriate, potentially storing the docs in the same repository as the code itself.
*  Collaborating with other writers using version control such as Git and GitHub to branch, merge, push, and pull updates (rather than collaborating through large content management systems or SharePoint-like check-in/check-out sites).
*  Automating the site build process to build the web output from the server when you update a particular branch (rather than manually publishing and transferring files from one place to another).
*  Running validation checks using custom scripts to check for broken links, improper terms/styles, and formatting errors (rather than spot checking the content manually)

In short, treating docs like code means to use the same systems, processes, and workflows with docs as you do with programming code.

<img src="images/limitstodocsascode.png"/>

## Advantages to docs-as-code approaches for docs {#docsascode_advantages}

Just because you *can* manage docs like code, should you? What exactly are the advantages of treating docs like code? Here are a few reasons to embrace docs-as-code tools for documentation.


### Collaboration with developers

If you work with developer documentation, chances are you'll be working on a wide variety of deeply technical topics and will be reliant on engineers to contribute and review the docs. By implementing a docs-as-code approach, you'll enable developers to more easily contribute and participate in the documentation.

Most developers are comfortable with Markdown, enjoy being able to work in their existing IDE to edit content, understand how to collaborate in a git repo using branching, merging, and code review tools, and are generally comfortable with the whole code-based process and environment. By using tooling that is familiar to them, you empower them to contribute and participate more fully with the documentation.

### Simplified publishing

When you can build from the server by simply pushing content into a Git repository, it greatly simplifies the act of publishing. You can make edits across a number of docs, commit your code into your doc repo, and when you merge your branch into a gamma or production environment, a server process automatically starts building and deploying the content to your server.

At first, learning the right Git commands might take some time. But after working this way for a few weeks, these commands become second-nature and almost built into your typing memory. Eliminating the hassle of publishing docs allows you to focus more on content, and you can push out updates quickly and easily. Publishing and deploying the output is no longer a step you have to devote time towards.

### Increased collaboration with other tech writers

When your tech writing team collaborates in the same Git repository on content, you'll find a much greater awareness around what your teammates are doing. Before committing your updates into the repo, you run a `git pull` to get any updates from the remote repository. You see the files your team mates are working on, the changes they've made, and you can also more easily work on each other's content. By working out of the same repository, you aren't siloed in separate projects that exist in different spaces.

### Flexibility

Docs-as-code tools give you incredible flexibility to adapt or adjust to your particular environment or company's infrastructure. For example, suppose the localized version of your website requires you to output the content with a particular URL pattern, or you want to deliver the content with a certain layout in different environments, or you want to include custom metadata to process your files in a particular way with your company's authentication or whitelisting mechanisms. With docs-as-code tools, the files are open and can be coded to incorporate the logic you want.

The tools are as flexible and robust as your coding skills allow. At a base level, almost all use HTML, CSS, and JavaScript, so if you are a master at these, there's nothing you can't do. Further, many static site generators allow you to use scripting logic such as Liquid that simplifies JavaScript and makes it easier to perform complex operations (like iterating through files and inserting certain fields into templates).

{: .tip}
To read details about switching to docs as code tools, see [Case study: Switching tools to docs-as-code](pubapis_tools_switching_to_docs_as_code.html).
