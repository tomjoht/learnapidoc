{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity 7b: Clone your GitHub repo locally
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

So far you've been working with GitHub in the browser. Now we'll take the same content and work with it locally. This is what makes the GitHub wiki unique from other wikis &mdash; it's a Git repo, so you can manipulate the content the same way as any other Git repo (working locally, pushing, pulling, merging, branching, etc.).

To clone the GitHub repo locally:

1.  If you don't already have Git installed, set it up on your computer. (You can check by typing `git --version` in your terminal window. See [Install Git](pubapis_github_wikis.html#git_install) for more information on installation.)
2.  While viewing your the GitHub wiki in your browser, look for the section that says **Clone this wiki locally**. Click the clipboard button. (This copies the clone URL to your clipboard.)

    {% include course_image.html size="medium" filename="clone-this-wiki-locally" ext_print="png" ext_web="png" alt="Clone this wiki locally" caption="Clone this wiki locally" %}

	  {: .note}
    The wiki is a separate clone URL than the project's repository. Make sure you're viewing your wiki and not your project. The clone URL will include `.wiki`.

	  In contrast to the "Clone this wiki locally" section, the "Clone in Desktop" button launches the [GitHub Desktop client](https://desktop.github.com/) and allows you to manage the repository and your modified files, commits, pushes, and pull through the GitHub Desktop client. If you're interested in using the GitHub Client of the command line, see this other activity: [Activity: Use the GitHub Desktop client](pubapis_github_desktop_client.html).

4.  Open your terminal emulator:

    * If you're a Windows user, open the **Git BASH** terminal emulator, which was installed when you [installed Git](https://gitforwindows.org/).
    * If you're a Mac user, go to **Applications > Utilities > Terminal** (or launch [iTerm](https://iterm2.com/), if you installed it instead).
3.  In your terminal, either use the default directory or browse (`cd`) to a directory where you want to download your repository.
4.  Type the following, but replace the git URL with your own git URL that you copied earlier (it should be on your clipboard). The command should look something like this:

    ```bash
	  git clone https://github.com/tomjoht/weatherapi.wiki.git
    ```

    When you clone a repo, Git will show something like the following:

    ```bash
    Cloning into 'weatherapi.wiki'...
    remote: Enumerating objects: 3, done.
    remote: Counting objects: 100% (3/3), done.
    remote: Compressing objects: 100% (2/2), done.
    remote: Total 9 (delta 0), reused 0 (delta 0), pack-reused 6
    Unpacking objects: 100% (9/9), done.
    ```

    The folder Git creates in the above example is called `weatherapi.wiki`.

    Cloning the wiki gives you a copy of the content on your local machine. Git is distributed version control software, so everyone has his or her own copy. When you clone the repo, you create a copy on your local machine; the version in the cloud on GitHub is referred to as "origin." Thus, you have two instances of the content.

    More than just copying the files, though, when you clone a repo, you initialize Git in the folder where you clone the repo. Initializing Git means Git will create an invisible Git folder in that directory, and Git can start tracking your edits to the files, providing version control. With Git initialized, you can run `pull` commands to get updates from the online repository (origin) pulled down to your local copy. You can also `commit` your changes and then `push` your changes back up to origin.

5.  Navigate to the directory where you cloned the repo (either using standard ways of browsing for files on your computer or via the terminal with `cd`) to see the files you downloaded. For example, type `cd weatherapi.wiki` and then `ls` (Mac) or `dir` (Windows) to see the files.

    {: .tip}
    You don't need to type the full directory name. Just start typing the first few letters and then press your **Tab** key to autocomplete the rest.

    You might also want to browse to this folder via Finder (Mac) or Explorer (Windows). If you can view invisible files on your machine (for instructions on making hidden files visible, see one of the following: [Windows](https://support.microsoft.com/en-us/help/14201/windows-show-hidden-files) or [Mac](https://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/)), you will also see a git folder.

{% if page.workshop_activities == true %}*For more information related to this activity, see [Manage content in a GitHub wiki](pubapis_github_wikis.html).*{% endif %}
