---
title: "Activity: Find an Open Source Project"
permalink: /docapis_find_open_source_project.html
course: "Documenting REST APIs"
weight: 3.72
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

To break into API documentation, you need to start thinking about API documentation samples in your portfolio. Your portfolio is key to [getting a job in API documentation](jobapis.html). Without a portfolio that contains compelling API documentation samples, it will be extremely difficult to get a job in API documentation.

Here's the situation you want to avoid. Let's assume you don't have any experience in API documentation, but you're trying to get a API documentation job. Employers will be willing to overlook experience if you can demonstrate API documentation writing samples. But how will you get API doc writing samples without an API doc job? It's simple: you create these API doc samples through open source projects that you contribute to. This is where the activities in this course become important.

Rather than simply completing modules and tracking your progress toward the course's completion, I've included activities here that will actually help build up your portfolio with API documentation samples, helping you progress to the goal of either obtaining an API documentation job or hitting a home run on an API doc project in your current role.

## Finding an open-source API project

If you've already got an API project through your work, or if you're an engineer working on an API project, great, just select your existing API for the course activities. However, if you're breaking into API doc or building your API doc skills from the ground up, you'll need to find an open-source API documentation project to contribute to.

Finding the right project can be challenging, but it is critical to your portfolio and your success in breaking into API documentation. Fortunately, almost all open-source projects use GitHub, and GitHub provides various tags for documentation and "help wanted" in order to attract volunteers. (The task is actually so common, GitHub provides advice for [finding open source projects](https://help.github.com/articles/finding-open-source-projects-on-github/).)

{% include random_ad2.html %}

The ideal open-source API project should meet the following criteria. The project should:

* Involve a REST API (not a [library-based API](nativelibraryapis_overview.html) or some other developer tool that isn't an API).
* Have some documentation needs.
* Not be so technical that it's beyond your ability to learn it. (If you already have familiarity with a programming language, you might target projects that focus on that language.)
* Be active, with a somewhat recent commit.

## Search for an open-source project with API doc needs

{% include content/activities/find_open_source_project.md %}

## Contributing will require Git skills

When you later contribute to the open-source project, you will need to understand the basic [Pull request Git workflow](pubapis_github_pull_requests.html). This might require you to ramp up on [some Git tutorials](https://www.atlassian.com/git/tutorials) a bit first, but there's no better way to learn Git than by actively using it in a real project scenario.

Don't worry so much about Git now. You can learn these skills later when you have content you're ready to contribute. For now, just find a project.

## Don't undervalue your doc skills

You may think that it's too early to even think about joining let alone contributing to an API documentation project, especially when you're learning. When you interact with the open-source team, you might feel intimidated that you don't have any programming skills.

{% include random_ad.html %}

However, don't undervalue your role as a contributor to documentation (regardless of the contribution). Open-source projects suffer greatly from bad documentation. In [GitHub Survey: Open Source Is Popular, Plagued by Poor Docs and Rude People](https://adtmag.com/articles/2017/06/05/open-source-survey.aspx), David Ramel summarizes findings from the [2017 GitHub Survey](http://opensourcesurvey.org/2017/):

> Incomplete or outdated documentation is a pervasive problem, observed by 93 percent of respondents, yet 60 percent of contributors say they rarely or never contribute to documentation.

Also check out [Open source documentation is bad, but proprietary software is worse](https://www.techrepublic.com/article/open-source-documentation-is-bad-but-proprietary-software-is-worse/) by Matt Asay as well. Asay highlights the documentation results from the same GitHub survey:

> 93% of respondents gnashed their teeth over shoddy documentation but also admitted to doing virtually nothing to improve the situation. ... If you think this deeply felt need for documentation would motivate more developers to pitch in and help, you'd be wrong: 60% of developers can't be bothered to contribute documentation.

So yeah, as a technical writer, you may not be fixing bugs in the code or developing new features, but your documentation role is still highly needed and valued. You are a rare bird in the forest here.

I know the value of the doc role intimately from my own experience in contributing to open source doc projects. At one point, before focusing my energy on this API doc course, I contributed a number of tutorials in the [Jekyll docs](https://jekyllrb.com/docs/home/). I added instructions that included a lot of new content, and even added a [Tutorials section](https://jekyllrb.com/tutorials/home/).

I thought other developers would continue creating new tutorials in a steady stream. But they didn't. Developers tend to add little snippets of documentation to pages &mdash; a sentence here, a paragraph there, an update here, a correction there. You will rarely find someone who writes a new article or tutorial from scratch. When there's a new release, there often aren't release notes &mdash; there are simply links to (cryptic) GitHub issue logs.

As such, you should feel confident about the value you can bring to an open-source project. You're creating much-needed documentation for the project.

## More reading

See the following for more information on finding an open-source project:

* [How to choose (and contribute to) your first open source project](https://github.com/collections/choosing-projects)
* [Contribute to open-source projects through documentation](https://mapzen.com/blog/open-source-docs/)
