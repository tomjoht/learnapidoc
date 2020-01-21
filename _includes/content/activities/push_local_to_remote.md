{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: Push local changes to the remote
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

1.  In a text editor, open the Markdown file you downloaded in the GitHub repository.
2.  Make a small change to the content and save it. For example, type your name below the page title.
3.  In your terminal, make sure you're in the directory where you downloaded the GitHub project.

    To look at the directories under your current path, type `ls` (Mac) or `dir` (Windows). Then use `cd {directory name}` to drill into the folder, or `cd ../` to move up a level.

4.  See what files have changed:

    ```
    git status
    ```

    Git shows the files it's tracking but which haven't been added to the commit's staging area:

    ```bash
    Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git checkout -- <file>..." to discard changes in working directory)
    modified:   Home.md
    ```

4.  Type `git add .` to add all the files to your staging area. The staging area contains all files that you want added to your next commit:

    ```bash
	  git add .
    ```

	  Git doesn't automatically track all files in the same folder where Git has been initialized. Git tracks modifications only for the files that have been "added" to Git. By typing `git add .` or `git add --all`, you're telling Git to start tracking modifications to all files in this directory. You could also type a specific file name here instead, such as `git add Home.md`, to just add a specific file (rather than all files changed) to Git's tracking.

    After you run the `git add` command, Git adds the files into what's called the staging area. These files will be committed when you run `git commit`.

4.  See the changes set in your staging area:

    ```bash
	  git status
    ```

    Git responds with a message indicating which files are on-deck to be committed.

    ```bash
    Changes to be committed:
    (use "git reset HEAD <file>..." to unstage)

        modified:   Home.md
    ```

	  The staging area lists all the files that have been added to Git that you have modified in some way. It's a good practice to always type `git status` before committing files because you might realize that you accidentally added some files you didn't intend to track (such as large binary files). If you want to remove this file from the staging area, you can type `git reset HEAD Home.md` to unstage it.

5.  Commit the changes:

    ```bash
	  git commit -m "updated some content"
    ```

    When you commit the changes, you're creating a snapshot of the files at a specific point in time for versioning.

    The `git commit -m` command is a shortcut for committing and typing a commit message in the same step. It's much easier to commit updates this way.

    If you type `git commit` only, you'll be prompted with another window to describe the change. On Windows, this new window will probably be a Notepad window. Describe the change on the top line, and then save and close the Windows file.

    On a Mac, a new window doesn't open. Instead, the [Vim editor](https://en.wikipedia.org/wiki/Vi) mode opens up within the terminal. ("vi" stands for visual and "m" for mode, but it's not a very visual editor.) I don't recommend using Vim. If you get stuck in this mode and need to escape, press your **Escape** key. Then type **q** to quit. (See [Vim commands](http://www.cs.rit.edu/~cslab/vi.html) here.) Normally, you want an external editor such as Sublime Text to open from your terminal. See [Associating text editors with Git](https://help.github.com/articles/associating-text-editors-with-git/) for details.

6.  Push the changes to your repository:

    ```bash
    git push
    ```

    Unless you [set up automatic GitHub authentication]({{site.rooturl}}pubapis_github_wikis.html#set-up-automatic-github-authentication), you will be prompted for your GitHub username and password. (Note that your username is your GitHub login ID, such as "jdoe," not your friendly name, such as "John Doe.")

    When you type `git push` or `git pull` and don't specify the branch, GitHub uses the default branch from origin. The default branch on GitHub is called `master`. Thus the command actually passed is `git push origin master` (which means "push these changes to the remote origin[al] repository, in the `master` branch"). Some developers prefer to specify the repository and branch to ensure they are interacting with the right repositories and branches.

    Your terminal window probably looks something like this:

    {% include course_image.html size="medium" filename="terminalupdates" ext_print="png" ext_web="png" alt="Terminal window with git commands" caption="Terminal window with git commands" %}

7.  Now verify that your changes took effect. Browse to your GitHub wiki repository, refresh the page, and look to see the changes.

Although there are many options for authoring and publishing tools with developer docs (see [staticgen.com](https://www.staticgen.com/) for common docs-as-code tools), at the core of these tools is usually a Git workflow. The Git workflow can be more powerful and complex than any authoring tool. Interacting with Git might also be key for interacting with engineering repos to make edits to documentation that appears inside code.

{% if page.workshop_activities == true %}*For more information related to this activity, see [Manage content in a GitHub wiki]({{site.rooturl}}pubapis_github_wikis.html).*{% endif %}
