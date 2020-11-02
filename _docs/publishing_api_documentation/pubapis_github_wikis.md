---
title: "Activity: Manage content in a GitHub wiki"
permalink: /pubapis_github_wikis.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.7
section: publishingapis
path1: /publishingapis.html
last-modified: 2020-11-02
---

In this tutorial, we'll walk through a publishing workflow with one of the most common developer platforms: GitHub. When you create a repository on GitHub, the repository comes with a wiki that you can add pages to. This wiki can be convenient if your source code is stored on GitHub. Although GitHub might not be a platform where you publish your docs, understanding how to interact with it can be important for understanding [version control](pubapis_version_control.html).

Learning GitHub will allow you to become familiar with the version control workflows that are common with many [docs-as-code tools](pubapis_docs_as_code.html). For this reason, I have a detailed tutorial for using GitHub in this course. Regardless of whether you use GitHub as a publishing tool, this tutorial will introduce you to Git workflows with content.

* TOC
{:toc}

## About GitHub Wikis

You could actually use the default GitHub wiki as your doc site. Here's an example of the Basecamp API, which is housed on GitHub.

{% include course_image.html url="https://github.com/basecamp/bc3-api" size="large" filename="basecampapi" ext_print="png" ext_web="png" alt="Basecamp API" caption="Basecamp API" %}

{% include random_ad3.html %}

Unlike other wikis, the GitHub wiki you create is its own repository that you can clone and work on locally. (If you look at the "Clone this wiki locally" link, you'll see that it's a separate repo from your main code repository.) You can work on files locally and then commit them to the wiki repository when you're ready to publish. You can also arrange the wiki pages into a sidebar.

{% include random_ad2.html %}

{% include image_ad_right.html %}

With GitHub, you write wiki pages in Markdown syntax. There's a special flavor of Markdown syntax for GitHub wikis called [Github-flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), or GFM. The GitHub Flavored Markdown allows you to create tables, add classes to code blocks (for proper syntax highlighting), and more.

Because you can work with the wiki files locally, you can leverage other tools (such as static site generators, or even DITA) to generate the Markdown files if desired. Working locally, you can handle all the re-use, conditional filtering, and other logic outside of the GitHub wiki. You can then output your content as Markdown files and commit them to your GitHub repository.

{: .warning}
Use Git only to track text files. Don't start tracking large binary files, such as audio files, video files, Microsoft Word files, or Adobe PDF files. Version control systems really can't handle that kind of format well, and your repo size will increase exponentially. If you use Git to manage your documentation, exclude these files through your [.gitignore file](https://git-scm.com/docs/gitignore). You might also consider excluding images, as they bloat your repo size as well.

{% include random_ad.html %}

## Limitations with GitHub wikis

GitHub wikis have some limitations:

* **Limited branding**. All GitHub wikis pretty much look the same.
* **Open access on the web**. If your docs need to be private, GitHub probably isn't the place to store them (private repos, however, are an option).
* **No structure**. The GitHub wiki pages give you a blank page and allow you to add sections. You won't be able to do any advanced styling or more attractive-looking interactive features.

{: .note}
I'm specifically talking about the built-in wiki feature with GitHub, not [GitHub Pages](https://pages.github.com/). You can use tools such as Jekyll to brand and auto-build your content with whatever look and feel you want. I explore GitHub Pages with more depth in the tutorial on [Jekyll](pubapis_jekyll.html).

## Install Git {#git_install}

Before you start working with GitHub, you need to set up Git and install any necessary tools and credentials to work with GitHub (especially if you're on Windows).

**Mac**:

To install Git on a Mac, see [Installing on Mac](https://git-scm.com/download/mac). Once installed, you can use Git in several ways:

* Open the default Terminal application by doing to **Applications > Utilities > Terminal**.
* Install [iTerm](https://www.iterm2.com/), a separate terminal app.
* Use [PlatformIO IDE Terminal](https://atom.io/packages/platformio-ide-terminal) in [Atom](https://atom.io/) (this is my preferred method when working with projects).

**Windows**:

On Windows, install Git using the installer here: [Git for Windows](https://gitforwindows.org/).

This installer includes a Git BASH terminal emulator that will allow you to use Git and Unix commands from the terminal.

You can check to see if you have Git already installed by opening a terminal and typing the following:

```bash
git --version
```

## Set up automatic GitHub authentication

You can configure Git so that when you push changes to GitHub, you won't need to type your username and password each time. See the following topics to set this up:

* [Set up Git](https://help.github.com/articles/set-up-git/).
* [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
* [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
* [Associating text editors with Git](https://help.github.com/articles/associating-text-editors-with-git/)

After you make these configurations, close and re-open your terminal.

{: .note}
GitHub and Git are not the same. Git provides [distributed version control](pubapis_version_control.html). GitHub is a platform that helps you manage Git projects. GitHub also provides a GUI interface that allows you to execute a lot of Git commands, such as pull requests.

{% include content/activities/create_github_wiki.md %}

{% include content/activities/clone_repo_locally.md %}

{% include content/activities/push_local_to_remote.md %}


## Avoiding merge conflicts when editing online and locally

The visual editor on GitHub.com might be an easy way for subject matter experts to contribute, whereas tech writers will probably want to clone the repo and work locally. If some people make edits in the browser while others edit locally, you might encounter merge conflicts. To avoid merge conflicts, always run `git pull` before running `git push`. If two people edit the same content simultaneously between commits, you will likely need to [resolve merge conflicts](https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/).
