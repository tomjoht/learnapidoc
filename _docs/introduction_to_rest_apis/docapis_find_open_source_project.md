---
title: "Activity: Find an Open Source Project"
permalink: /docapis_find_open_source_project.html
course: "Documenting REST APIs"
weight: 1.31
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
---

In this course, you'll do a variety of activities to build your skills, develop content, and gain experience. Many of the activities in this course will require you to work on documentation related to an open-source project that you find.

{: .important}
Without this project, it will be difficult to do many of the later activities in this course.

* TOC
{:toc}

## Reaching your larger goals

You're probably going through this course for one or more of the following reasons:

* You want to break into the field of API documentation.
* You want to develop your API doc skills for a future job.
* You have a new API to document at work and need information on how to do it.
* You're a developer who needs to document your API.

For the first two scenarios, you need to start thinking about API documentation samples in your portfolio. Your portfolio is key to [getting a job in API documentation](jobapis.html). Without a portfolio with compelling API documentation samples, it will be extremely difficult to get a job in API documentation.

How will you generate API doc samples for your portfolio, without having a job developing API documentation? This is where the activities in this course become important.

Rather than simply completing modules and tracking your progress toward the course's completion, I've included activities here that will actually help build up your portfolio with API documentation samples, helping you progress to the goal of either obtaining an API doc job or hitting a home run on an API doc project in your current role.

## Finding an open-source API project

If you've already got an API project through your work, or if you're an engineer working on an API project, great, just select your existing API for the course activities. However, if you're breaking into API doc or building your API doc skills from the ground up, you'll need to find an open-source API documentation project to contribute to.

Finding the right project can be challenging, but it is critical to your portfolio and your success in breaking into API documentation. Fortunately, almost all open-source projects use GitHub, and GitHub provides various tags for documentation and "help wanted" in order to attract volunteers. (The task is actually so common, GitHub provides advice for [finding open source projects](https://help.github.com/articles/finding-open-source-projects-on-github/).)

## Criteria for the open-source project {#needed_criteria}

The ideal open-source API project should meet the following criteria. The project should:

* Involve a REST API (not a [library-based API](nativelibraryapis_overview.html) or some other developer tool that isn't an API).
* Have some documentation needs.
* Not be so technical that it's beyond your ability to learn it. (If you already have familiarity with a programming language, you might target projects that focus on that language.)
* Be active, with a somewhat recent commit.

## Don't undervalue your doc skills

You may think that it's too early to even think about joining let alone contributing to an API documentation project, especially when you're learning. When you interact with the open-source team, you might feel intimidated that you don't have any programming skills.

However, don't undervalue your role as a contributor to documentation (regardless of the contribution). Open-source projects suffer greatly from bad documentation. See [GitHub Survey: Open Source Is Popular, Plagued by Poor Docs and Rude People](https://adtmag.com/articles/2017/06/05/open-source-survey.aspx). A [2017 GitHub Survey](http://opensourcesurvey.org/2017/) found that

> Incomplete or outdated documentation is a pervasive problem, observed by 93 percent of respondents, yet 60 percent of contributors say they rarely or never contribute to documentation.

Also check out [Open source documentation is bad, but proprietary software is worse](https://www.techrepublic.com/article/open-source-documentation-is-bad-but-proprietary-software-is-worse/) as well. The article also highlights the documentation results from the same GitHub survey:

> 93% of respondents gnashed their teeth over shoddy documentation but also admitted to doing virtually nothing to improve the situation. ... If you think this deeply felt need for documentation would motivate more developers to pitch in and help, you'd be wrong: 60% of developers can't be bothered to contribute documentation.

So yeah, as a technical writer, you may not be fixing bugs in the code or developing new features, but your documentation role is still highly needed and valued. You are a rare bird in the forest here.

I know the value of the doc role intimately from my own experience in contributing to open source doc projects. At one point, before focusing my energy on this API doc course, I contributed a number of tutorials in the [Jekyll docs](https://jekyllrb.com/docs/home/). I added instructions that included a lot of new content, and even added a [Tutorials section](https://jekyllrb.com/tutorials/home/).

I thought other developers would continue creating new tutorials in a steady stream. But they didn't. Developers tend to add little snippets of documentation to pages &mdash; a sentence here, a paragraph there, an update here, a correction there. You will rarely find someone who writes a new article or tutorial from scratch. When there's a new release, there often aren't release notes &mdash; there are simply links to (cryptic) GitHub issue logs.

As such, you should feel confident about the value you can bring to an open-source project. You're creating much-needed documentation for the project.

Enough pep talk, let's find a project that fits your needs.

## Search for an open-source project with API doc needs

To find an open-source project with API doc needs:

1.  Go to the [GitHub Advanced Search](https://github.com/search/advanced).
2.  In the "With the labels" section, type `help wanted`. This is a common tag teams use to attract volunteers to their project (but some teams that need help might not use it).
3.  Scroll to the top and notice that `label: "help wanted"` automatically populates in the field. In this Advanced Search box at the top, add some additional keywords (such as `api`, `docs`, and `documentation`) as well:

   <a href="https://github.com/search?utf8=%E2%9C%93&q=api+documentation+docs+label%3A%22help+wanted%22&type=Repositories&ref=advsearch&l=&l="><img src="images/githubopensourceprojects.png"/></a>

4.  Click **Search** and browse [the results](https://github.com/search?utf8=%E2%9C%93&q=api+documentation+docs+label%3A%22help+wanted%22&type=Repositories&ref=advsearch&l=&l=).

    Are there any projects that meet the [needed criteria](#needed_criteria)? If so, great. If not, adjust some of the keywords and keep looking.

5.  If searching GitHub doesn't yield any appropriate projects, try the following resources:

    * [Trending GitHub projects](https://github.com/trending)
    * [Crowdforge](https://crowdforge.io/)
    * [Up for Grabs](http://up-for-grabs.net/#/)
    * [Bus Factor](https://libraries.io/experiments/bus-factor)
    * [Code Triage](https://www.codetriage.com/)
    * [Changelog](https://changelog.com/)
    * [24-hour Pull Requests](https://24pullrequests.com)
    * [Programmableweb.com API directory](https://www.programmableweb.com/category/all/apis)

    Programmableweb.com has the largest index of API documentation projects. Many of the projects may not need documentation nor provide open-source GitHub projects for working on the documentation. However, with an index of nearly 20,000 APIs, you might be able to find a project that might align with your interests, background, and other needs.

6.  After selecting a project, make notes on the following:

    * Identify how the project tags documentation related issues.
    * Identify project members who worked on previous documentation issues (which are now closed).
    * Identify any currently stated documentation needs.

{: .note}
You don't have to actually reach out or interact with the team yet. You're just gathering information and analyzing documentation needs here.

## Contributing will require Git skills

When you later contribute to the open-source project, you will need to understand the basic [Pull request Git workflow](pubapis_github_pull_requests.html). This might require you to ramp up on [some Git tutorials](https://www.atlassian.com/git/tutorials) a bit first, but there's no better way to learn Git than by actively using it in a real project scenario.

Don't worry so much about this now. You can learn these skills later when you have content you're ready to contribute.

## More reading

See the following for more information on finding an open-source project:

* [How to choose (and contribute to) your first open source project](https://github.com/collections/choosing-projects)
* [Contribute to open-source projects through documentation](https://mapzen.com/blog/open-source-docs/)
