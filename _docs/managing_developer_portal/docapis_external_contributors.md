---
title: Processes for external contributors
permalink: /docapis_processes_for_external_contributors.html
course: "Documenting REST APIs"
weight: 12.9
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
last-modified: 2020-11-02
published: false
---

One of the main advantages of a version-control-based system, especially using open-source technologies, is the promise of collaboration. Not just collaboration with your immediate team, but scaling beyond your team to also include other contributors within your organization and even contributors from the community. The idea of crowdsourcing documentation like this, removing the burden from a small number of gate-keeping writers, has been appealing since the dawn of wikis and continues as a driving force behind docs-as-code implementations. In this section, I cover some details to consider when soliciting external contributors to write content.

* TOC
{:toc}

## The complexity factor is Git

When I started at Amazon and we were discussing authoring and publishing tools, we adopted a docs-as-code approach using Jekyll and Markdown, coupled with the built-in engineering infrastructure for the publishing tasks for several reasons. Not only was this tooling free of any Oracle databases and PHP, it was also free and fit seamlessly within the engineering build systems. Additionally, in adopting Markdown and an open-source static site generator, we rationalized that we could scale the solution to allow other teams to author and publish content without having to go through us.

For the first couple of years, when a team approached us and we lacked bandwidth to write their docs, or when the team fell outside our department's stewardship, we gave them permissions in our doc repo, set them up with some basic training, and invited them to own their own authoring and publishing tasks.

As I've this process play out over several years, I've noticed one thing: Git the complexity factor. Engineers understand Git because they live and breathe its commands in their own software team workflows, but do they follow your team's Git workflows? You might have multiple branches corresponding to different environments (beta, prod, etc.). Git is flexible and robust enough to allow for many different processes and workflows. Will those same engineers bother to follow your own team's defined git workflows? If not, look out for many merge conflicts and efforts to understand why certain files keep getting flagged.

Some groups might not want to join in the same doc repo as your team's repo but instead create their own. Different static site generator tools handle theming better than others, but a separate repo might end up duplicating many theme files that these contributing teams actually don't want to maintain and update.

Not every contributor understands Git. Many marketers and product managers might want to contribute but not understand Git well enough to use it correctly. They might type enough commands to get something to commit but then actually create massive conflicts and other issues for everyone else. You'll have to sort all this out.

Additionally, if you permission external contributors to author and publish content, you allow them to introduce new content into your document repository that hasn't been vetted and reviewed by your team. If you review the content, you might find that these contributors are much more sloppy about writing than you are, committing broken links, incorrectly cased product names, bad grammar, broken formatting, eternal paragraphs, and other issues.

After dealing with so many support cases, broken builds, and poor content committed by external teams, we decided to pivot to more of a GitHub-pull-request model. In this model, rather than permissioning contributors as full-fledged authors in our repository, we require them to submit pull requests (or more specifically, code reviews) to contribute. (Pull request is more of the standard lingo for this action in GitHub, so that's the term I'll use here.)

With pull requests, the contributor clones a repository, makes a change, and then submits the change to a system that lets you evaluate the file difference that the contributor is proposing. You review the contribution, adding line-by-line comments as desired, and then either accept or reject it. You can go through multiple iterations with this model until the contribution meets your standard. At that time, you then merge the changes into your repository's main branches and push it out.

This pull request model is the standard contribution model for most groups. With this model, contributors don't need to understand the details of your Git workflow (beyond the pull requests) or other specifics about your environment's branches. They just need to interact with a the code review tool to submit their pull requests.

## Community contributors

So far I've talked about external contributors within your company, but what about community contributors? You could apply a similar pull request model, but there are added complexities with community contributors:

* You'll need to expose your git repository to an external site like GitHub. This might be problematic if you aren't allowed to be transparent about content pre-release (usually the norm).
* Extensive contributions might require rights usage sign-off from your Legal group. Fixing typos and broken links probably wouldn't require it, but if you someone contributing new pages of content, this will probably prompt Legal to require the contributor to sign an agreement.
* You might get contributions that don't align with your organization's strategic objectives, and you'll have to spend time editing and publishing that content.

I've tried leveraging community contributions in the past and found that the efforts aren't usually worthwhile. Community members rarely have the internal knowledge needed to create documentation. I wrote about this problem extensively when I abandoned wikis a decade ago. (See [My Journey To and From Wikis: Why I Adopted Wikis, Why I Veered Away, and a New Model](https://idratherbewriting.com/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/) for more detail.)

I wouldn't recommend trying to orchestrate community contributions unless you already have some heavy community contributors who are itching to write and publish content. It might make sense for some products more than others (such as integrating your company's service into a third-party service or something). You might be better off adding a note in your docs inviting contributors to reach out to you with documentation ideas/requests, and then work with them individually through some tool like Google Docs or Microsoft Word.

If you will allow contributions from external contributors or community members, be explicit about the processes they should follow.

## The content abandonment problem

One pitfall to watch out for with external contributors is the content abandonment problem. It's most common for external contributors to get involved in adding documentation in a time of need, and then to abandon the content when their product fizzles or they switch teams. Then you're stuck with content that you don't know much about, with no clear owner/reviewer/maintainer. Your team has just adopted an orphan child, and now you have to watch and care for the content.

To avoid this content abandonment scenario, you should have a clear policy around the regular review and ownership of the content. Track who owns the content, the contact points for questions related to the content, and expectations around regular review of the content. It takes a lot of proactivity to enforce this, though, because again, no one will be knocking on your door to regularly review and look over this content. As I wrote in [Processes for maintaining existing documentation](docapis_doc_maintenance_processes.html), tech writers are mostly focused on new content, not maintaining old content. Almost every tech writer I know has more work than they can currently handle, and reviewing old docs that no one is complaining about rarely climbs up the priority list.
