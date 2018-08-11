---
title: "Activity: Manage content in a GitHub wiki"
permalink: /pubapis_github_wikis.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.8
section: publishingapis
path1: /publishingapis.html
---

In this tutorial, we'll walk through a publishing workflow with one of the most common developer platforms: GitHub. When you create a repository on GitHub, the repository comes with a wiki that you can add pages to. This wiki can be convenient if your source code is stored on GitHub. Although GitHub might not be a platform where you publish your docs, understanding how to interact with it can be important for understanding [version control](pubapis_version_control.html).

Learning GitHub will allow you to become familiar with the version control workflows that are common with many [docs-as-code tools](pubapis_docs_as_code_tool_options.html). For this reason, I have a detailed tutorial for using GitHub in this course. Regardless of whether you actually use GitHub as a publishing tool, this tutorial will introduce you to Git workflows with content.

* TOC
{:toc}

## About GitHub Wikis

You could actually use the default GitHub wiki as your doc site. Here's an example of the Basecamp API, which is housed on GitHub.

{% include course_image.html url="https://github.com/basecamp/bc3-api" size="large" filename="basecampapi" ext_print="png" ext_web="png" alt="Basecamp API" caption="Basecamp API" %}

Unlike other wikis, the GitHub wiki you create is its own repository that you can clone and work on locally. (If you look at the "Clone this wiki locally" link, you'll see that it's a separate repo from your main code repository.) You can work on files locally and then commit them to the wiki repository when you're ready to publish. You can also arrange the wiki pages into a sidebar.

{% include random_ad2.html %}

One of the neat things about using a GitHub repository is that you treat the [docs as code](pubapis_docs_as_code.html), editing it in a text editor, committing it to a repository, and packaging it up into the same area as the rest of the source code. Because the content resides in a separate repository, technical writers can work in the documentation right alongside project code without getting merge conflicts.

With GitHub, you write wiki pages in Markdown syntax. There's a special flavor of Markdown syntax for GitHub wikis called [Github-flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), or GFM. The GitHub Flavored Markdown allows you to create tables, add classes to code blocks (for proper syntax highlighting), and more.

Because you can work with the wiki files locally, you can leverage other tools (such as static site generators, or even DITA) to generate the Markdown files if desired. This means you can handle all the re-use, conditional filtering, and other logic outside of the GitHub wiki. You can then output your content as Markdown files and commit them to your GitHub repository.

{% include random_ad.html %}

GitHub wikis have some limitations:

* **Limited branding**. All GitHub wikis pretty much look the same.
* **Open access on the web**. If your docs need to be private, GitHub probably isn't the place to store them (private repos, however, are an option).
* **No structure**. The GitHub wiki pages give you a blank page and basically allow you to add sections. You won't be able to do any advanced styling or more attractive-looking interactive features.

{: .note}
I'm specifically talking about the built-in wiki feature with GitHub, not [GitHub Pages](https://pages.github.com/). You can use tools such as Jekyll to brand and auto-build your content with whatever look and feel you want. I explore GitHub Pages with more depth in the tutorial on [Jekyll](pubapis_jekyll.html).

## Set up Git and GitHub authentication {#set_up_git_and_github}

Before you start working with GitHub, you need to set up Git and install any necessary tools and credentials to work with GitHub (especially if you're on Windows).

1.  If you don't already have Git, set it up on your computer.

    You can check to see if you have Git already installed by opening a terminal and typing `git --version`.

    {: .tip}
    On Windows, it might be easiest to install Git by <a href="https://desktop.github.com">installing GitHub Desktop</a>. Installing GitHub Desktop will include all the Git software as well. However, I recommend using the command line rather than the GitHub Desktop GUI tool.

    If you're installing the Windows version of GitHub Desktop, after you install GitHub, you'll get a special GitHub Shell shortcut that you can use to work on the command line. Use that special GitHub Shell rather than the usual command line prompt. When you use that GitHub Shell, you can also use more typical Unix commands, such as `pwd` for present working directory instead of `dir` (though both commands will work).

    You can also install Git on Windows by following the instructions here: [Installing on Windows](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#_installing_on_windows).

    To install Git on a Mac, see [Installing on Mac](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#_installing_on_mac). On a Mac, however, you don't need a special Git Shell. You can open Terminal by doing to **Applications > Utilities > Terminal**. Or install [iTerm](https://www.iterm2.com/), or use [PlatformIO IDE Terminal](https://atom.io/packages/platformio-ide-terminal) in [Atom](https://atom.io/) (my preferred method).

2.  Create a GitHub account by going to [GitHub.com](http://github.com).

    {: .note}
    GitHub and Git are not the same. Git provides [distributed version control](pubapis_version_control.html). GitHub is a platform that helps you manage Git projects. GitHub also provides a GUI interface that allows you to execute a lot of Git commands, such as pull requests.

3.  Configure Git with GitHub authorization. This will allow you to push changes without entering your username and password each time. See the following topics to set this up:
    * [Set up Git](https://help.github.com/articles/set-up-git/). Note that when you configure your username, use your GitHub username, which will be something like `tomjoht` instead of `Tom Johnson`.
    * [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
    * [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
    * [Associating text editors with Git](https://help.github.com/articles/associating-text-editors-with-git/)

    After you make these configurations, close and re-open your terminal.

## Create a GitHub wiki and publish content on a sample page

In this section, you will create a new GitHub repo and publish a sample file there.

1.  Go to [GitHub](https://github.com) and sign in. After you're signed in, click the **+** button in the upper-right corner and select **New repository**.

    {% include course_image.html url="https://github.com/new" size="medium" filename="newrepositorygithub" ext_print="png" ext_web="png" alt="Creating a new GitHub repository" caption="Creating a new GitHub repository" %}

2.  Give the repo a **Repository name**, a short **Description**, select **Public**, select **Initialize the repo with a README**, and then click **Create repository**. (Don't worry about selecting the license or gitignore settings for this test.)
3.  Click the **Wiki** tab on the top navigation bar of your new repository.
4.  Click **Create the first page**.
5.  In the default page ("Home"), insert your own sample documentation content, preferably using Markdown syntax. Or grab the sample Markdown page of a <a href="https://idratherbewriting.com/learnapidoc/assets/files/surfreportendpointdoc.md">fake endpoint called surfreport here</a> and insert it into the page.
6.  In the **Edit message** box, type a description of what you updated (your commit message).
7.  Click **Save Page**.

    Notice how GitHub automatically converts the Markdown syntax into HTML and styles it in a readable way. You could work with this GitHub wiki entirely in the browser as a way for multiple people to collaborate and edit content. However, you can also take all the content offline and edit locally, and then commit your changes and push the changes back online.

## Save the GitHub repository locally

So far you've been working with GitHub in the browser. Now we'll take the same content and work with it locally.

1.  While viewing your the GitHub wiki in your browser, look to the right to the section that says **Clone this wiki locally**. Click the clipboard <img src="images/githubcopybutton.png" style="max-width="20px"> button. (This copies the clone URL to your clipboard.)

    {% include course_image.html size="medium" filename="clone-this-wiki-locally" ext_print="png" ext_web="png" alt="Clone this wiki locally" caption="Clone this wiki locally" %}

	  {: .note}
    The wiki is a separate clone URL than the project's repository. Make sure you're viewing your wiki and not your project. The clone URL will include `.wiki`.

	  In contrast to the "Clone this wiki locally" section, the "Clone in Desktop" button launches the GitHub Desktop client and allows you to manage the repository and your modified files, commits, pushes, and pull through the GitHub Desktop client.

4.  If you're a Windows user, open the **Git Shell**, which should be a shortcut on your Desktop or should be available in your list of programs. (This shell gets installed when you installed GitHub Desktop &mdash; see [Set Up Git and GitHub authentication](#set_up_git_and_github) above). On a Mac, open a terminal.
3.  In your terminal, either use the default directory or browse (`cd`) to a directory where you want to download your repository.
4.  Type the following, but replace the git URL with your own git URL that you copied earlier (it should be on your clipboard). The command should look something like this:

    ```bash
	  git clone https://github.com/tomjoht/weatherapi.wiki.git
    ```

	  {: .note}
    To paste content into the Git Shell on Windows, right-click and select <b>Paste</b>.

    Cloning the wiki gives you a copy of the content on your local machine. Git is *distributed* version control software, so everyone has his or her own copy. When you clone the repo, you create a copy on your local machine; the version in the cloud on GitHub is referred to as "origin." Thus, you have two instances of the content.

    More than just copying the files, though, when you clone a repo, you initialize Git in the folder where you clone the repo. Initializing Git means Git will create an invisible Git folder in that directory, and Git will start tracking your edits to the files, providing version control. With Git initialized, you can run `pull` commands to get updates from the online repository (origin) pulled down to your local copy. You can also `commit` your changes and then `push` your changes back up to origin.

5.  Navigate to the directory where you cloned the repo (either using standard ways of browsing for files on your computer or via the terminal with `cd`) to see the files you downloaded. For example, type `cd weatherapi.wiki` and then `ls` to see the files.

    {: .tip}
    You don't have to type the full directory name. Just start typing the first few letters and then press your **Tab** key to autocomplete the rest.

    You might also want to browse to this folder via Finder or Explorer. If you can view invisible files on your machine (for instructions on making hidden files visible, see one of the following: [Windows](https://support.microsoft.com/en-us/help/14201/windows-show-hidden-files) or [Mac](https://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/)), you will also see a git folder.

## Make a change locally, commit it, and push the commit to the GitHub repository

1.  In a text editor, open the Markdown file you downloaded in the GitHub repository.

    On a Mac, you can type `open Home.md` in your Terminal, and the file will open in the default text editor.

    For instructions on configuring Git to open the text editor you want, see [Associating text editors with Git](https://help.github.com/articles/associating-text-editors-with-git/).

2.  Make a small change to the content and save it.
3.  In your terminal, make sure you're in the directory where you downloaded the GitHub project.

    To look at the directories under your current path, type `ls`. Then use `cd {directory name}` to drill into the folder, or `cd ../` to move up a level.

4.  Add all the files to your staging area:

    ```bash
	  git add .
    ```

	  Git doesn't automatically track all files in the same folder where the invisible Git folder has been initialized. Git tracks modifications only for the files that have been "added" to Git. By selecting ` . ` or `--all`, you're adding all the files in the folder to Git. You could also type a specific file name here instead, such as `git add Home.md`, to just add a specific file (rather than all files changed) to Git's tracking.

	  {: .warning}
    Use Git only to track text (that is, non-binary) files. Don't start tracking large binary files, especially audio or video files. I don't even recommend tracking Microsoft Word or Adobe PDF files. Version control systems really can't handle that kind of format well and your repo size will increase exponentially. If you use Git to manage your documentation, exclude these files through your [.gitignore file](https://git-scm.com/docs/gitignore). You might also consider excluding images, as they bloat your repo size as well.

4.  See the changes set in your staging area:

    ```bash
	  git status
    ```

	  The staging area lists all the files that have been added to Git that you have modified in some way. It's a good practice to always type `git status` before committing files, because you might realize that by typing `git add .`, you might have accidentally added some files you didn't intend to track. You can always back out a change to a file by typing `git checkout Home.md`, where Home.md is the file you in which want to undo changes and Git staging.

5.  Commit the changes:

    ```bash
	  git commit -m "updated some content"
    ```

    When you commit the changes, you're creating a snapshot of the files at a specific point in time for versioning.

    The `git commit -m` command is a shortcut for committing and typing a commit message in the same step. It's much easier to commit updates this way.

    If you just type `git commit`, you'll be prompted with another window to describe the change. On Windows, this new window will be a Notepad window. Describe the change on the top line, and then save and close the Windows file.

    On a Mac, a new window doesn't open. Instead, the [Vim editor](https://en.wikipedia.org/wiki/Vi) mode opens up. ("vi" stands for visual and "m" for mode, but it's not a very visual editor.) To use this mode, you have to know a few simple Unix commands:

    * **Arrow keys:** You use your arrow keys to move around. You don't use your mouse.
    * **Insert mode:** If you start typing, vi enters the Insert mode.
    * **Escaping out of Insert Mode:** To escape out of Insert mode, press your **Escape** key.
    * **Saving** To save your edits, you need to do a "write quit." Press **Escape** to exit Insert mode. Then Press **Ctrl + :**. Then type **wq** for "write quit." If you made changes but don't want to save them, type <b>q!</b> for "quit override."

    You can also use [other vim commands](http://www.cs.rit.edu/~cslab/vi.html). Overall, I don't like the Vi[m] editor and prefer using Sublime Text as my default editor associated with Git. See [Associating text editors with Git](https://help.github.com/articles/associating-text-editors-with-git/) for details.

6.  Push the changes to your repository:

    ```bash
    git push
    ```

    If you didn't [set up GitHub authentication](#set_up_git_and_github), you may be prompted for your GitHub user name and password.

    Note that when you type `git push` or `git pull` and don't specify the branch, GitHub uses the default branch from origin. The default branch on GitHub is called `master`. Thus the command actually passed is `git push origin master` or `git push origin master`. Some developers prefer to specify the repository and branch to ensure they are interacting with the right repositories and branches.

    Your terminal window probably looks something like this:

    {% include course_image.html size="medium" filename="terminalupdates" ext_print="png" ext_web="png" alt="Terminal window with git commands" caption="Terminal window with git commands" %}

7.  Now verify that your changes took effect. Browse to your GitHub wiki repository and look to see the changes.

## GitHub workflows for online and local edits

The visual editor on GitHub.com might be an easy way for subject matter experts to contribute, whereas tech writers will probably want to clone the repo and work locally. If some people make edits in the browser while others edit locally, you might encounter merge conflicts. To avoid merge conflicts, always run `git pull` before running `git push`. If two people edit the same content simultaneously between commits, you will likely need to [resolve merge conflicts](https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/).
