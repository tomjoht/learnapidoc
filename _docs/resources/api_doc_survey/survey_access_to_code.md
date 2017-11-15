---
title: How do you get the source files that contain code comments?
permalink: /survey_access_to_code.html
course: "Documenting REST APIs"
weight: 13.9
sidebar: docapis
section: resources
path1: /resources.html
---

{: .survey}
[Survey question](survey_introduction.html): How do you get the source files containing code comments? (e.g., Git, Mercurial)?

Out of 42 responses, here are the results:

![accesssource](images/accesssource.png)

This question partly served as a check to an earlier question, [Do you create documentation by looking at the source code of API files?](http://idratherbewriting.com/2015/01/02/api-doc-survey-do-you-create-doc-by-looking-at-source-code/). For that question, 60% of the people said yes or sometimes, and 40% said no. With the question here, 24% of the people said they don't have access to the source code, so the answers harmonize. Most likely another 16% have access to the source code and might occasionally consult it, but they don't use it to create the documentation.

By far Git (and Github, a repository for Git) is the most common source control software used, followed by Perforce. We use Mercurial at my current work, and at previous companies we used Git.

## Why is this question important?

This question is more important than it may seem on the surface, but its importance relates more to automated documentation solutions, which are perhaps more common with platform APIs.

{% include random_ad.html %}

With platform APIs, such as Java or C++, it's important to access the source code because the documentation usually lives in the source code for these types of APIs. If you don't have access to the source, then you can't edit or contribute to the reference documentation (though you could certainly create the non-reference documentation).

Figuring out source control isn't the easiest thing in the world. I spent a couple of days wrapping my head around Mercurial. I was excited to see Joel Spolsky create some [great tutorials on Mercurial](http://hginit.com/), but apparently Mercurial isn't that common. Git is perhaps more popular because of Github, which is a widely used repository on the web that uses Git. If you have an API that lives on the web, Github is probably the most widespread source control used.

## How technical writers work with source control

Peter Gruenbaum says that typically when he works with a platform API's documentation, he downloads the code through source control. Developers create a separate branch for him to commit his updates to, and then when he's finished they merge the doc branch with the main branch.

Given this workflow, learning how branching works in the source control software used by your engineers would be a strategic way of contributing to the code without committing to the main repository and potentially freaking out developers if you accidentally break the code or cause a lot of merge conflicts.

## Gaining trust

In a workshop on API documentation, Ed Marshall explained that he had to gain the trust of developers over time before they felt comfortable giving him access to commit to the repository. Developers may first question a technical writer's request to even access the repository in the first place, let alone commit updates to it. But I think more experienced developers understand that everything in source control can be reverted to an earlier state. You can't really contribute to reference documentation unless you can access the source. So source control rights are critical.

## What does "clone that repo" mean?

When browsing Github repositories online, you're bound to run into the phrase "clone that repo." what does this mean? Basically, it means you copy a folder of files from a web repository to your computer, but even more, when you copy the repository, you also copy certain git files that allow you to get the latest updates of that repository through a simply command line prompt (`git pull`). This way, everyone who has this repository can keep it in sync on their local machines.

I created a tutorial for sharing files (with the intention of sharing Java projects) using Git and Github here: [Java: Share Java projects with others using Git and Github](http://idratherbewriting.com/java-share-files/).
