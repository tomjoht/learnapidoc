---
title: "Pull request workflows through Github in the browser"
permalink: /pubapis_github_pull_requests.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.2
section: publishingapis
---

In the previous step, you used Github Desktop to manage the workflow of committing files and creating requests. In this tutorial, you'll do a similar thing but using the browser-based interface that Github provides rather than using a terminal or Github Desktop.

{: .tip}
When you ask developers to review content, ask the specific developer who created the feature you're documenting. Developer tasks are usually specific. One developer may not understand what another developer is really doing (beyond a superficial level).

## Make edits in a separate branch

By default, your new repository has one branch called "Master." Usually when you're making changes or reviews/edits, you create a new branch and make all the changes in the branch. Then when finished, the repo owner merges edits from the branch into the master through a "pull request."

{: .note}
Although you can perform these operations using Git commands from your terminal, you can also perform the actions through the browser interface. This might be helpful if you have less technical people making edits to your content.

To make edits in a separate branch:

1. Pretend you're a SME reviewer. Go to the Github repo and create a new branch by selecting the branch drop-down menu and typing a new branch name, such as "sme review."

	<img src="images/github_sme_review.png" alt="Creating a new branch" />

	When you create a new branch, the content from the master is copied over into the new branch. The branch is like doing a "Save as" with an existing document.

2. Click the **README.txt** file, and then click the **Edit this file** button (pencil icon) to edit the file.

	<img src="images/github_making_branch_edits.png" alt="Making an edit" />

3. Make some changes to the content, and then scroll down and click **Commit Changes**. Explain the reason for the changes and commit the changes to your sme review branch, and then click **Commit Changes**.

	Reviewers could continue making edits this way until they have finished reviewing all of the documentation. All of the changes are made on a branch, not the master.

## Create a pull request

Now that the review process is complete, it's time to merge the branch into the master. You merge the branch into the master through a pull request. Any "collaborator" on the team with write access can initiate and complete the pull request. You can add collaborators through Settings.

To create a pull request:

1. View the repository and click the **Pull requests** button on the right.
2. Click the **New pull request** button.

	<img src="images/github_new_pull_request.png" alt="New Pull Request" />

3. Select the branch ("sme review") that you want to compare against the master.

	<img src="images/github_compare_to.png" alt="Compare to" />

	When you compare the branch against the master, you can see a list of all the changes. You can view the changes through two viewing modes: Unified or Split. Unified shows the edits together in the same content area, whereas split shows the two files side by side.

4. Click **Create pull request**.
5. Describe the pull request, and then click **Create pull request**.

## Process the pull request

Now pretend you are the project owner, and you see that you received a new pull request. You want to process the pull request and merge the sme review branch into the master.

1. Click the **Pull requests** button to see the pending pull requests.
2. Click the pull request and view the changes by clicking the **Files changed** tab.

	<img src="images/github_files_changed.png" alt="Github files changed" />

	{: .note}
If you only want to implement some of the edits, go into the sme review branch and make the updates before processing the pull request. The pull request doesn't give you a line-by-line option about which changes you want to accept or reject (like in Microsoft Word's Track Changes). Merging pull requests is an all-or-nothing process.

	Note also that if the pull request is made against an older version of the master, such that the master's original content no longer exists or has moved elsewhere, the merges will be more difficult to make.

3. Click the **Conversation** tab, and then click the **Merge pull request** button.
4. Click **Confirm merge**.

	The sme review branch gets merged into the master. Now the master and the sme review branch are the same.

5. Click the **Delete branch** button to delete the sme review branch.

	If you don't want to delete the branch here, you can always remove old branches by clicking the **branches** link while viewing your Github repository, and then click the **Delete** (trash can) button next to the branch.

	<img src="images/github_delete_this_branch.png" alt="Deleting old branches" />

	If you look at your list of branches, you'll see that the deleted branch no longer appears.


## Add collaborators to your project

You need to add collaborators to your Github project so they can commit edits to a branch. If someone isn't a collaborator and they want to make edits, they will receive an error.

If people don't have write access, they can fork the project instead of making edits on a branch on the same project. Forking a project clones the entire repository, though, rather than creating a branch within the same repository. You can merge a forked repository, but this scenario probably is less common for technical writers working with developers on the same projects.

To add collaborators to your Github project:

1. While viewing your Github repository, click the **Settings** button (gear icon) on the lower-right.
2. Click the **Collaborators** tab on the left.
3. Type the Github usernames of those you want to have access in the Collaborator area.
4. Click **Add Collaborator**.

	<img src="images/github_add_collaborators.png" alt="Adding collaborators" />
