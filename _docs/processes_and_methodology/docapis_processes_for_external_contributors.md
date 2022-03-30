---
title: Managing content from external contributors
permalink: docapis_processes_for_external_contributors.html
course: "Documenting REST APIs"
weight: 12.9
sidebar: docapis
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2020-11-02
---

One of the main advantages of a version-control-based system, especially using open-source technologies, is the promise of collaboration. Not just collaboration with your immediate team, but scaling beyond your team to also include other contributors within your organization and even contributors from the community. The idea of crowdsourcing documentation like this, removing the burden from a small number of gate-keeping writers, has been appealing since the emergence of wikis and continues as a driving force behind docs-as-code implementations.

{% include random_ad4.html %}

Many people embrace docs as code with the hope and expectation that many engineers will contribute to the docs. This is, after all, why so many embrace an engineer's tools and workflow in the first place. In this section, I cover processes to consider when external contributors (external to your team, not necessarily external to the company) write content.

* TOC
{:toc}

## The complexity factor is Git

When I started at Amazon and we were discussing authoring and publishing tools, we adopted a docs-as-code approach using Jekyll and Markdown for several reasons. Not only was this tooling free  and fit seamlessly within the engineering build systems, in adopting Markdown and a static site generator, we rationalized that we could scale the solution to allow other teams to author and publish content without having to go through us. We envisioned lots of small, autonomous engineering/product teams writing and publishing content within the doc system, without necessarily involving us. We would set up the system, and they would use it.

{% include random_ad2.html %}

For the first couple of years, when a team approached us and we lacked bandwidth to write their docs, or when the team fell outside our department's stewardship, we gave them permissions in our doc repo, set them up with some basic training, and invited them to own their own authoring and publishing tasks. We gave them full permissions to merge in content, build the project, and push out the updates to the live site.

Admittedly, we didn't have nearly as many teams as we envisioned writing content. Maybe about 10 teams over the years, with off-and-on spurts of writing. But as I've observed this process play out, I've noticed one thing: Git is the complexity factor that trips everyone up. Engineers understand Git because they live and breathe its commands in their own software team workflows, but do they follow your team's specific Git workflows, which might differ from theirs?

You might have multiple branches corresponding to different environments (beta, prod, etc.) and different workflows uniquely designed for a documentation repo. But each engineering team might have their own preferred Git workflow. Git is flexible and robust enough to allow for many different processes and workflows &mdash; this flexibility is part of why Git has survived and thrived so long as a way to collaborate. Will those same engineers bother to follow your own team's defined Git workflows? If not, get ready to deal with merge conflicts and scenarios where you try to understand why certain files keep getting flagged as problematic.

Besides engineering contributors, consider also the non-engineering contributors. Not every contributor understands Git. Many marketers and product managers might want to contribute to docs but not understand Git well enough to use it correctly. They might type enough commands to get something to commit but then actually create massive conflicts and other issues for everyone else. You'll have to sort all this out. Alternatively, you might end up just taking input requests that they describe in tickets.

Also note if you give external contributors permissions to author and publish content, you allow them to introduce new content into your document repository that hasn't been vetted and reviewed by your team. If you review the content, you might find that these contributors are much more sloppy about writing than you are, committing broken links, incorrectly cased product names, bad grammar, broken formatting, eternal paragraphs, and other embarrassing issues. Will others understand that commits from these external contributors weren't actually written by your team?

{% include image_ad_right.html %}

Some groups might not want to join in the same doc repo as your team's repo but instead create their own repo based on the theme and other tools setup you created. Different static site generator tools handle theming better than others, but a separate repo might end up duplicating many theme files that these contributing teams actually don't want to maintain and update. You might help set up a team with a new instance of the theme, only to find that they never update the theme files as the original theme evolves.

After dealing with so many support cases, broken builds, and poor content committed by external teams, we decided to pivot to more of a GitHub-pull-request model. In this model, rather than giving contributors permissions as full-fledged authors in a repository, we required them to submit pull requests (aka "code reviews" in some build systems) for their contributions.

With pull requests, the contributor clones the repository, makes a change, and then submits the change to a system that lets the repository owner evaluate the file difference that the contributor is proposing. You (as a repo owner) review the contribution, adding line-by-line comments as desired, and then either accept or reject the pull request. You can go through multiple iterations with this proposed change until the contribution meets your standard. After you approve the pull request, you then merge the changes into your repository and push it out.

This pull request model is the standard contribution model for most groups (especially on GitHub). With this model, contributors don't need to understand the details of your Git workflow (beyond the pull request workflow) or other specifics about your environment's branches (except which branch to start from). They just need to interact with the code review tool to submit their pull requests. This is the model I recommend implementing.

{% include ads.html %}

## Community contributors

So far I've talked about external contributors within your company, but what about community contributors? You could apply a similar pull request model as with community contributors outside your company, but there are added complexities with community contributors:

* You'll need to expose your Git repository to an external site like GitHub. This might be problematic if you aren't allowed to be transparent about content prior to release. For example, you'll need to find a way to hide content for upcoming releases. Of course, you could keep it on a local branch, but then it wouldn't be backed up. If you add the GitHub repo as a remote, this could work easily enough, but will you also expose your commit messages (which might reference internal tickets) and other workflows?
* Extensive contributions might require rights-usage signoff from your Legal group. Fixing typos and broken links probably wouldn't require signoff, but if someone is contributing new pages of content or substantial sections, this will probably prompt Legal to require the contributor to sign an agreement. You might find yourself constantly doing paperwork for contributions.
* You might get contributions that don't align with your organization's strategic objectives, and then you'll have to spend time editing and publishing that content. Suppose someone wants to add a new article; you'll now need to vet the content, get it reviewed and approved by the appropriate internal SME, make stylistic edits, and do other shepherding (for which you might not have bandwidth). If the content doesn't line up with anything you're currently working on, this sudden request might be a disrupting detour from your regular work. Additionally, you might not like the approach or style the person wants to contribute; rejecting the contribution might make for an awkward conversation.

I've tried leveraging community contributions in the past and found that the efforts aren't usually worthwhile (at least for the products I was documenting.) Community members rarely have the internal knowledge needed to create documentation. More importantly, they lack the incentive to do so, as this task doesn't usually benefit them. I wrote about this problem when I abandoned wikis a decade ago &mdash; see [My Journey To and From Wikis: Why I Adopted Wikis, Why I Veered Away, and a New Model](https://idratherbewriting.com/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/). The hassle required to make docs public and available for pull-request workflows in GitHub rarely pays off with community edits.

I wouldn't recommend trying to orchestrate community contributions unless you already have some heavy community contributors who are itching to write and publish content. It also might make sense for some products more than others (such as company products that are integrations into third-party platforms &mdash; e.g., *here's an article how you integrate your product with my product*). You might be better off adding a note in your docs inviting contributors to reach out to you with documentation ideas/requests, and then work with them individually through some tool like Google Docs or Microsoft Word.

If you do allow contributions from external contributors or community members, be explicit about the processes they should follow. GitHub projects often have common templates and guidelines (often in a the readme) about how community members can contribute.

## The content abandonment problem

One pitfall to watch out for with external contributors is the content abandonment problem. It's common for external contributors to get involved in adding documentation in a time of need, and then abandon the content when their product fizzles or when they switch teams. Then you're stuck with content that you don't know much about, with no clear owner, reviewer, or maintainer. Essentially, these scenarios are like adopting an orphan child that you now you have to watch and care for. This is often how teams end up with a lot of legacy content.

{% include random_ad3.html %}

To avoid this content abandonment scenario, make sure you have a clear policy around the review and ownership of the content from contributors. Track who owns the content, the contact points for questions related to the content, and expectations for regular review of the content. It takes a lot of proactivity to track and enforce this, though, because again, no one will be knocking on your door to regularly review and look over existing content. As I wrote in [Processes for maintaining existing documentation](docapis_doc_maintenance_processes.html), tech writers are mostly focused on new content, not maintaining old content. Almost every tech writer I know has more work than they can currently handle, and reviewing old docs that no one is complaining about or requesting rarely climbs up the priority list.

## Conclusion

In a docs-as-code model, contributions from external people in your company are expected. You need to define specific workflows that make sense for your organization. In general, you'll have the most success if you stick to standard, simple workflows (I'm mostly referring to Git and pull requests or code reviews) that align with common practices the engineers are already using within your company, or industry patterns. There's no need to reinvent the wheel when it comes to Git workflows. Pick a model such as the GitHub pull request workflow (see this [GitHub tutorial](https://guides.github.com/introduction/flow/) or this [Atlassian tutorial](https://www.atlassian.com/git/tutorials/making-a-pull-request)) and provide code examples to help people easily understand and follow the right commands.
