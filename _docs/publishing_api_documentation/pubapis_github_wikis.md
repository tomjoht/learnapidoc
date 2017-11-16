---
title: "GitHub wikis"
permalink: /pubapis_github_wikis.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.5
section: publishingapis
path1: /publishingapis.html
---

One of the easiest toolchains to implement with developer docs is a GitHub wiki. Learning GitHub will also allow you to become familiar with the version control workflows that are common with many docs-as-code tools. For this reason, I have a detailed tutorial for using GitHub in this course.

When you create a repository on GitHub, the repository comes with a wiki that you can add pages to. This wiki can be really convenient if your source code is stored on GitHub.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## GitHub example

Here's an example of the Basecamp API, which is housed on GitHub.

<a href="https://github.com/basecamp/bcx-api" class="noExtIcon"><img src="images/basecampapi.png" alt="Basecamp API" /></a>

## Markdown syntax

You write wiki pages in Markdown syntax. There's a special flavor of Markdown syntax for GitHub wikis. The [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/) allows you to create tables, add classes to code blocks (for proper syntax highlighting), and more.

## The wiki repository

Unlike other wikis, the GitHub wiki you create is its own repository that you can clone and work on locally. (If you look at the "Clone this wiki locally" link, you'll see that it's a separate repo from your main code repository.) You can work on files locally and then commit them to the wiki repository when you're ready to publish. You can also arrange the wiki pages into a sidebar.

## Treating doc as code

One of the neat things about using a GitHub repository is that you treat the doc as code, editing it in a text editor, committing it to a repository, and packaging it up into the same area as the rest of the source code. Because it's in its own repository, technical writers can work in the documentation right alongside project code without getting merge conflicts.

{% include random_ad.html %}

## Working locally allows you to leverage other tools

Because you can work with the wiki files locally, you can leverage other tools (such as static site generators, or even DITA) to generate the Markdown files. This means you can handle all the re-use, conditional filtering, and other logic outside of the GitHub wiki. You can then output your content as Markdown files and then commit them to your GitHub repository.

## Limitations with GitHub wikis

There are some limitations with GitHub wikis:

* **Limited branding**. All GitHub wikis look the same.
* **Open access on the web**. If your docs need to be private, GitHub isn't the place to put them.
* **No structure**. The GitHub wiki pages give you a blank page and basically allow you to add sections. You won't be able to do any advanced styling or more attractive-looking interactive features.

## Set up Git and GitHub authentication {#set_up_git_and_github}

Before you start working with GitHub, you need to set up Git and install any necessary tools and credentials to work with GitHub (especially if you're on Windows).

1. If you don't already have it, set up Git on your computer.

   You can check to see if you have Git already installed by opening a terminal and typing `git --version`.

	{: .tip}
  It's easiest to install Git by <a href="https://desktop.github.com">installing GitHub Desktop</a>. Installing GitHub Desktop will include all the Git software as well.

	If you're installing the Windows version of GitHub Desktop, after you install GitHub, you'll get a special GitHub Shell shortcut that you can use to work on the command line. You should use that special GitHub Shell rather than the usual command line prompt.

	Note that when you use that GitHub Shell, you can also use more typical Unix commands, such as `pwd` for present working directory instead of `dir` (though both commands will work).

  You can also install Git on Windows by following the instructions here: [Installing on Windows](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#_installing_on_windows).

  To install Git on a Mac, see [Installing on Mac](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#_installing_on_mac). On a Mac, however, you don't need a special Git Shell. Open the Terminal in the same way &mdash; go to **Applications > Utilities > Terminal**.

2. Create a GitHub account by going to [GitHub.com](http://github.com).

   GitHub and Git are not the same thing. Git provides distributed version control. GitHub is a platform that helps you manage Git projects. GitHub also provides a GUI interface that allows you to execute a lot of Git commands, such as pull requests.

3. Configure Git with GitHub authorization. This will allow you to push changes without entering your username and password each time. See the following topics to set this up:
   * [Set up Git](https://help.github.com/articles/set-up-git/) (Note that when you configure your username, use your GitHub username, which will be something like tomjoht instead of "Tom Johnson".)
   * [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
   * [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

After you make these configurations, close and re-open your terminal.

## Create a GitHub wiki and publish content on a sample page

In this section, you will create a new GitHub repo and publish a sample file there.

{: .note}
In this section, you'll be using Git commands through your terminal or command prompt. In later tutorials, you'll use the GitHub Desktop and GitHub browser tools. You can interact with GitHub in a variety of ways.

1. Go to [GitHub](https://github.com) and sign in. After you're signed in, click the **+** button in the upper-right corner and select **New repository**.

	<a href="https://github.com/new" class="noExtIcon"><img src="images/newrepositorygithub.png" alt="Creating a new GitHub repository" /></a>

2. Give the repository a name, description, select **Public**, select **Initialize the repo with a README**, and then click **Create repository**.
3. Click the **Wiki** link at the top of the repository.
4. Click **Create the first page**.
5. Insert your own sample documentation page, preferably using Markdown syntax. Or grab the sample Markdown page of a <a href="http://idratherbewriting.com/learnapidoc/assets/files/surfreportendpointdoc.md">fake endpoint called surfreport here</a> and insert it into the page.
7. Click **Save page**.

Notice how GitHub automatically converts the Markdown syntax into HTML with some decent styling.

You could use this GitHub wiki in an entirely browser-based way for multiple people to collaborate and edit content. However, you can also take all the content offline and edit locally, and then reupload all your edits.

## Save the GitHub repository locally

1. While viewing your the GitHub wiki in your browser, look to the right to the section that says **Clone this wiki locally**. Click the clipboard button. (This copies the clone URL to your clipboard.)

	Cloning the wiki gives you a copy of the content on your local machine. Git is *distributed* version control software, so everyone has his or her own copy. You will clone this wiki on your local machine; the version in the cloud on GitHub is referred to as "origin."

	More than just copying the files, though, when you clone a repo, you initialize Git in the folder where you clone the repo. Initializing Git means Git will create an invisible Git folder in that directory, and Git will start tracking your edits to the files, providing version control. With Git initialized, you can run "pull" commands to get updates of the online repository (origin) pulled down to your local copy. You can also commit your changes and then push your changes back up to the origin repository if you're entitled as a collaborator for the project.

	The "Clone this wiki locally" link allows you to easily insert the URL into a `git clone {url}` command in your terminal.

	{: .note}
  Note that the wiki is a separate clone URL than the project's repository. Make sure you're viewing your wiki and not your project.

	In contrast to "Clone this wiki locally," the "Clone in Desktop" option launches the GitHub Desktop client and allows you to manage the repository and your modified files, commits, pushes, and pull through the GitHub Desktop client.

4. If you're a Windows user, open the **Git Shell**, which should be a shortcut on your Desktop or should be available in your list of programs. (This shell gets installed when you installed GitHub Desktop &mdash; see [Set Up Git and GitHub authentication](#set_up_git_and_github) above).
3. In your terminal, either use the default directory or browse (`cd`) to a directory where you want to download your repository.
4. Type the following, but replace the git URL with your own git URL that you copied earlier (it should be on your clipboard). The command should look like this:

   ```
	 git clone https://github.com/tomjoht/weatherapi.wiki.git
   ```

	{: .note}
  To paste content into the Git Shell on Windows, right-click and select <b>Paste</b>.

5. Navigate to the directory (either using standard ways of browsing for files on your computer or via the terminal) to see the files you downloaded. If you can view invisible files on your machine ([Windows](https://support.microsoft.com/en-us/help/14201/windows-show-hidden-files), [Mac](https://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/)), you will also see a git folder.

## Make a change locally, commit it, and push the commit to the GitHub repository

1. In a text editor, open the Markdown file you downloaded in the github repository.
2. Make a small change and save it.
3. In your terminal, make sure you're in the directory where you downloaded the github project. To look at the directories under your current path, type `ls`. Then use `cd {directory name}` to drill into the folder, or `cd ../` to move up a level.

4. Add the file to your staging area:

   ```
	 git add --all
   ```

	Git doesn't track all files in the same folder where the invisible Git folder has been initialized. Git tracks modifications only for the files that have been "added" to Git. By selecting `--all`, you're adding all the files in the folder to Git. You could also type a specific file name here instead of `--all`. Or you can type `git add .` to achieve the same result.

	{: .warning}
  Use Git only to track text (non-binary) files. Don't start tracking large binary files, especially audio or video files. Version control systems really can't handle that kind of format well. If you use Git to manage your documentation, exclude these files through your [.gitignore file](https://git-scm.com/docs/gitignore).

4. See the changes set in your staging area:

   ```
	 git status
   ```

	 The staging area lists all the files that have been added to Git that you have modified in some way.

5. Commit the changes:

   ```
	 git commit -m "updated some content"
   ```

	When you commit the changes, you're creating a snapshot of the files at a specific point in time for versioning.

	The `git commit -m` command is a shortcut for committing and typing a commit message in the same step. It's much easier to commit updates this way.

	If you just type `git commit`, you'll be prompted with another window to describe the change. On Windows, this new window will be a Notepad window. Describe the change on the top line, and then save and close the Windows file.

	On a Mac, a new window doesn't open. Instead, the [vi editor](https://en.wikipedia.org/wiki/Vi) mode opens up. ("vi" stands for visual, but it's not a very visual editor.) To use this mode, you have to know a few simple Unix commands:
	<ul>
	<li><b>Arrow keys:</b> You use your arrow keys to move around. You don't use your mouse.</li>
	<li><b>Insert mode:</b> If you start typing, vi enters the Insert mode.</li>
	<li><b>Escaping out of Insert Mode:</b> To escape out of Insert mode, press your <b>Escape</b> key.</li>
	<li><b>Saving: </b>To save your edits, you need to do a "write quit." Press <b>Escape</b> to exit Insert mode. Then Press <b>Ctrl + :</b>. Then type <b>wq</b> for "write quit." If you made changes but don't want to save them, type <b>q!</b> for "quit override."</li>
	</ul>
	<p>You can also use <a href="http://www.cs.rit.edu/~cslab/vi.html">other vi commands</a>.</p>

6. Push the changes to your repository:

   ```
	 git push
   ```

   If you didn't [set up GitHub authentication](#set_up_git_and_github), you may be prompted for your GitHub user name and password.

7. Now verify that your changes took effect. Browse to your GitHub wiki repository and look to see the changes.

## GitHub Workflows

The visual editor on GitHub.com might be an easy way for subject matter experts to contribute, whereas tech writers will probably want to clone the repo and work locally. If some people make edits in the browser while others edit locally, you might encounter merge conflicts. To avoid merge conflicts, always run `git pull` before running `git push` to update origin. If two people edit the same content simultaneously between commits, you will likely need to [resolve merge conflicts](https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/).
