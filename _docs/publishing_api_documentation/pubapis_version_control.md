---
title: Version control systems
permalink: /pubapis_version_control.html
course: "Documenting REST APIs"
weight: 8.41
sidebar: docapis
section: publishingapis
path1: /publishingapis.html
---

Pretty much every IT shop uses some form of version control with their software code. Version control is how developers collaborate and manage their work. When you use docs-as-code tools, you'll probably also use version control such as Git. Version control is such an important element to learn, we'll dive more deeply into it here. To provide variety from the [GitHub wikis tutorial](pubapis_github_wikis.html), in this section we'll use the GitHub Desktop client instead.

* TOC
{:toc}

## Plugging into version control

If you're working in API documentation, you'll most likely need to plug into your developer's version control system to get code. Or you may be creating branches and adding or editing documentation there.

{% include random_ad.html %}

Many developers are extremely familiar with version control, but typically these systems aren't used much by technical writers because technical writers have traditionally worked with binary file formats, such as Microsoft Word and Adobe Framemaker. Binary file formats are readable only by computers, and version control systems do a poor job in managing binary files because you can't easily see changes from one version to the next.

If you're working in a text file format, you can integrate your doc authoring and workflow into a version control system. When you do, a whole new world will open up to you.

## Different types of version control systems

There are different types of version control systems. A _centralized_ version control system requires everyone to check out or synchronize files with a central repository when editing them. This setup isn't so common anymore, since working with files on a central server tends to be slow.

More commonly, software shops use _distributed_ version control systems. The most common system is Git (probably because GitHub provides Git repositories for free on the web) so we'll be focusing on it here. Other version control systems include Mercurial, Subversion (SVN), and Perforce. However, Git is used most of the time, so we'll focus on it exclusively.

<figure><a href="http://github.com" class="noExtIcon"><img src="images/githubhomepage.png" alt="Github" /></a><figcaption>Github is a site that built tooling around Git."</figcaption></figure>

Note that GitHub provides online repositories and tools for Git. However, Git and GitHub aren't the same. GitHub is simply a platform for managing Git projects.

[Bitbucket](https://bitbucket.org/) is Altassian's version of GitHub. Bitbucket lets you use either Git or Mercurial, but most of the Bitbucket projects use Git.

## The idea of version control

When you install version control software such as Git and initialize a repository in a folder, an invisible folder gets added to the repository. This invisible folder handles the versioning of the content in that folder. (If you want to move the Git tracking to another folder, you can simply move the invisible git folder to that other folder.)

{% include random_ad2.html %}

When you add files to Git and commit them, Git takes a snapshot of the committed files at that point in time. When you commit another change, Git creates another snapshot. If you decide to revert to an earlier version of the file, you just revert to the particular snapshot. This is the basic idea of versioning content.

## Basic workflow with version control

There are many excellent tutorials on version control on the web, so I'll defer to those tutorials for more details. In short, Git provides several stages for your files. Here's the general workflow:

1. You must first add any files that you want Git to track. Just because the files are in the initialized Git repository doesn't mean that Git is actually tracking and versioning their changes. Only when you officially "add" files to your Git project does Git start tracking changes to that file.
2. Any modified files that Git is tracking are said to be in a "staging" area.
3. When you "commit" your files, Git creates a snapshot of the file at that point in time. You can always revert to this snapshot.
4. After you commit your changes, you can "push" your changes to the master. Once you push your changes to the master, your own working copy and the master branch are back in sync.

## Branching

Git's default repository is the "master" branch. When collaborating with others on the same project, usually people branch the master, make edits in the branch, and then merge the branch back into the master.

If you're editing doc annotations in code files, you'll probably follow this same workflow &mdash; making edits in a special doc branch. When you're done, you'll create a pull request to have developers merge the doc branch back into the master.

With that brief introduction to docs-as-code and version control, let's jump into a host of [authoring and publishing options for developer documentation](pubapis_docs_as_code_tool_options.html).
