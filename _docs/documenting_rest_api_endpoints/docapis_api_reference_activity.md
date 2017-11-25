---
title: "Activity: Critique or create an API reference topic"
permalink: /docapis_api_reference_activity.html
weight: 3.71
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

After completing the [API reference tutorial](docapis_api_reference_tutorial_overview.html), you're ready to start an activity that gives you more experience in creating and editing API reference documentation. In this activity, you'll either critique or create your own API reference topic for a real API project.

* TOC
{:toc}

## Reality check on the importance of this activity

You're probably going through this course for one of the following reasons:

* You want to break into the field of API documentation.
* You're a student who wants to develop your API doc skills for a future job.
* You have a new API to document at work and need information on how to do it.
* You're a developer who needs to document your API.

For the first two scenarios, you need to start thinking about API documentation samples in your portfolio. Your portfolio is key to [getting a job in API documentation](jobapis.html). Without a portfolio with compelling API documentation samples, it will be extremely difficult to get a job in API documentation.

How will you generate API doc samples for your portfolio, without having a job developing API documentation? This is where this activity and the others in this course come in. Rather than simply completing modules and tracking your progress toward the course's completion, I've included activities here that will actually help build up your portfolio with API documentation samples. This is one of those activities.

## Finding an open-source API project

If you've already got an API project through your work, or because you're an engineer working on an API project, great, you can skip this section. Just document a resource in your existing API. However, if you're breaking into API doc or building your API doc skills from the ground up, you need to find an open-source API documentation project to contribute to.

Finding the right project can be challenging, but it is critical to your portfolio and your success in breaking into API documentation. Fortunately, almost all open-source projects use GitHub, and GitHub provides various tags for documentation and help wanted in order to attract volunteers. (The task is actually so common, GitHub provides advice for [finding open source projects](https://help.github.com/articles/finding-open-source-projects-on-github/).)

The ideal open-source API project should meet the following criteria. The project should:

* Involve a REST API (not a [library-based API](nativelibraryapis_overview.html) or some other developer tool that isn't an API).
* Have some documentation needs.
* Not be so technical that it's beyond your ability to learn it. (If you already have familiarity with a programming language, you might target projects that focus on that language.)
* Be active, with a somewhat recent commit.

## Search for an open-source API doc project

1.  Go to the [GitHub Advanced Search](https://github.com/search/advanced).
2.  In the "With the labels" section, type `help wanted`. This is a common tag teams use to attract volunteers to their project (but some teams that need help might not use it).
3.  Scroll to the top and notice that `label: "help wanted"` automatically populates in the field. In this Advanced Search box at the top, add some additional keywords (such as `api`, `docs`, and `documentation`) as well:

   <a href="https://github.com/search?utf8=%E2%9C%93&q=api+documentation+docs+label%3A%22help+wanted%22&type=Repositories&ref=advsearch&l=&l="><img src="images/githubopensourceprojects.png"/></a>

4.  Click **Search**.

    Browse [the results](ttps://github.com/search?utf8=%E2%9C%93&q=api+documentation+docs+label%3A%22help+wanted%22&type=Repositories&ref=advsearch&l=&l=). Are there any projects that meet the needed criteria? If so, great. If not, adjust some of the keywords and keep looking.

## Other ways to find open-source projects

If searching GitHub doesn't yield any appropriate projects, try the following resources:

* [Trending GitHub projects](https://github.com/trending)
* [Up for Grabs](http://up-for-grabs.net/#/)
* [Bus Factor](https://libraries.io/experiments/bus-factor)
* [Code Triage](https://www.codetriage.com/)
* [Changelog](https://changelog.com/)
* [24-hour Pull Requests](https://24pullrequests.com)
* [Programmableweb.com API directory](https://www.programmableweb.com/category/all/apis)

Programmableweb.com has the largest index of API documentation projects. Many of the projects may not need documentation nor provide open-source GitHub projects for working on the documentation. However, with an index of nearly 20,000 APIs, you can more easily find a project that might align with your interests, background, and other needs.

See the following for more information on finding an open-source project:

* [How to choose (and contribute to) your first open source project](https://github.com/collections/choosing-projects)
* [Contribute to open-source projects through documentation](https://mapzen.com/blog/open-source-docs/)

## Contributing will require Git skills

If you end up contributing to an open-source project, you will need to understand the basic [Pull request Git workflow](pubapis_github_pull_requests.html). This might require you to ramp up on [some Git tutorials](https://www.atlassian.com/git/tutorials) a bit first, but there's no better way to learn Git than by actively using it in a real project scenario.

## Don't undervalue your doc skills

When you interact with the open-source team, you might feel intimidated if you don't have any programming skills. However, don't undervalue your documentation role. Open-source projects suffer greatly from bad documentation. Before you make contact with the team, read [GitHub Survey: Open Source Is Popular, Plagued by Poor Docs and Rude People](https://adtmag.com/articles/2017/06/05/open-source-survey.aspx). A [2017 GitHub Survey](http://opensourcesurvey.org/2017/) found that

> Incomplete or outdated documentation is a pervasive problem, observed by 93 percent of respondents, yet 60 percent of contributors say they rarely or never contribute to documentation.

Also check out [Open source documentation is bad, but proprietary software is worse](https://www.techrepublic.com/article/open-source-documentation-is-bad-but-proprietary-software-is-worse/) as well. The article also highlights the documentation results from the same GitHub survey:

> 93% of respondents gnashed their teeth over shoddy documentation but also admitted to doing virtually nothing to improve the situation. ... If you think this deeply felt need for documentation would motivate more developers to pitch in and help, you'd be wrong: 60% of developers can't be bothered to contribute documentation.

So yeah, as a technical writer, you may not be fixing bugs in the code or adding new features, but your documentation role is still highly needed and valued. You are a rare bird in the forest here.

I know the value of the doc role intimately from my own experience in contributing to open source doc projects. At one point, before focusing all my energy on this API doc course, I contributed a number of tutorials to the [Jekyll docs](https://jekyllrb.com/docs/home/). I added tutorials that included a lot of new content, and even added a [Tutorials section](https://jekyllrb.com/tutorials/home/).

I thought other developers would continue creating new tutorials here in a steady stream. Nope, not really. Developers tend to add little snippets of documentation to pages &mdash; a sentence here, a paragraph there, an update here, a correction there. You will rarely find someone who writes a new article or tutorial from scratch. When there's a new release, there often aren't release notes &mdash; there are simply links to often cryptic GitHub issue logs.

As such, you should feel confident about the value you can bring to an open-source project. You're creating much-needed documentation for the project.

## Critique the API reference documentation

Assuming you've found an open-source API doc project, it's time to start the activity.

1.  Locate one of the reference topics for a resource in the API.
2.  Identify each of the sections in the existing documentation:

    *  Resource description
    *  Resource URL and method
    *  Parameters
    *  Request example
    *  Response example and schema
    *  Status and error codes

3.  Evaluate each of these sections and assess whether the documentation is complete. Are there areas for improvement? Critique one or more of the API reference topics.

    Here are some areas to look at:

    **Resource description:** Is it action-oriented? A brief 1-3 sentence summary? Clear?

    **Resource URL and method:** Does it include the method? Are any path parameters easy to identify? If there are multiple URLs, are they logically grouped?

    **Parameters:** Is each parameter described? If it's a request body parameter, are the data types indicated? Are max and min values identified? Any unsupported values noted?

    **Request example:** Does the sample request work (with the right authorization)? Does it include a representative number of parameters? Is it formatted correctly in curl?

    **Response example:** Does the sample response match the sample request? Is it formatted and highlighted correctly? Is each element in the response described, along with the data type?

    **Status and error codes:** Does the API provide status and error codes that are unique? Are they documented?

4.  Focus on one of the API reference topics that needs help, and edit the topic to improve it.
5.  If the API has a new reference endpoint to document, create the documentation for it.
6.  Create a [pull request](pubapis_github_pull_requests.html) and contribute it to the project.
