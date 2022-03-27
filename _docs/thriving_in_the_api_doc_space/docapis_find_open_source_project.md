---
title: "Activity: Find an open-source project"
permalink: docapis_find_open_source_project.html
course: "Documenting REST APIs"
weight: 10.4
sidebar: docapis
section: jobapis
path1: jobapis.html
last-modified: 2020-06-27
---

To break into API documentation, you need to start thinking about API documentation samples in your portfolio. Your portfolio is key to [Getting an API documentation job and thriving](jobapis.html). Without a portfolio that contains compelling API documentation samples, it will be tough to get a job in API documentation.

* TOC
{:toc}

## Avoiding a catch-22

Let's assume you don't have any experience in API documentation, but you're trying to get an API documentation job. Employers will be willing to overlook experience if you can demonstrate API documentation writing samples. But how will you get API doc writing samples without an API doc job? And without API doc samples, how can you get an API doc job? This can seem like an impossible situation.

Getting around this catch-22 is simple: you create these API doc samples through open-source projects that you contribute to. This is where the activities in this course become essential.

{% include random_ad4.html %}

Rather than merely completing modules and tracking your progress toward the course's completion, the activities you do will help build up your portfolio with API documentation samples, helping you progress to the goal of either obtaining an API documentation job or hitting a home run on an API doc project in your current role.

## Finding an open-source API project

If you've already got an API project through your work, or if you're an engineer working on an API project, great, just select your existing API for the course activities. However, if you're breaking into API doc or building your API doc skills from the ground up, you'll need to find an open-source API documentation project to contribute to.

Finding the right project can be challenging, but it is critical to your portfolio and your success in breaking into API documentation. Fortunately, almost all open-source projects use GitHub, and GitHub provides various tags for documentation and "help wanted" in order to attract volunteers. (The task is so common, GitHub provides advice for [finding open-source projects](https://help.github.com/articles/finding-open-source-projects-on-github/).)

{% include random_ad2.html %}

The ideal open-source API project should meet the following criteria. The project should:

* Involve a REST API (not a [library-based API](nativelibraryapis_overview.html) or some other developer tool that isn't an API).
* Have some documentation needs.
* Not be so technical that it's beyond your ability to learn it. (If you already have familiarity with a programming language, you might target projects that focus on that language.)
* Be active, with a somewhat recent commit.


## <i class="fa fa-user-circle"></i> Activity: Find an open-source project with API doc needs


To find an open-source project with API doc needs:

1.  Go to the [GitHub Advanced Search](https://github.com/search/advanced).
2.  Under the **Issues Options** section, in the **With the labels** row, type `help wanted`. This is a standard tag that teams use to attract volunteers to their project (but some teams that need help might not use it).

    Scroll to the top and notice that `label: "help wanted"` automatically populates in the field.

3.  In this Advanced Search box at the top, add some additional keywords (such as `API documentation`) as well:

    <a class="noCrossRef" href="http://idratherbewriting.site/githubsearchopps"><img src="{{site.media}}/githubadvancedsearch2.png"/></a>

4.  Click **Search** and browse [the results](https://idratherbewriting.site/githubapidocs).

    In the results, you might want to look for a *REST API* project (rather than a [native-library API]({{site.rooturl}}nativelibraryapis_overview.html) such as a Java API). Developers don't often distinguish between the two with requests related to API documentation. If you see doc requests related to Java, C++, JavaScript, or some other programming-specific framework (with no identifiable endpoints), it's probably not a REST API. However, working on such a project could be equally fulfilling as a learning opportunity. It depends on what you're interested in.

    As you browse the results, are there any projects that look interesting or promising? If so, great. If not, adjust some of the keywords and keep looking.

5.  If searching GitHub doesn't yield any appropriate projects, try the following resources:

    * [Trending GitHub projects](https://github.com/trending)
    * [Crowdforge](https://crowdforge.io/)
    * [Up for Grabs](http://up-for-grabs.net/#/)
    * [Bus Factor](https://libraries.io/experiments/bus-factor)
    * [Code Triage](https://www.codetriage.com/)
    * [Changelog](https://changelog.com/)
    * [24-hour Pull Requests](https://24pullrequests.com)
    * [Programmableweb.com API directory](https://www.programmableweb.com/category/all/apis)

    {% include note.html content="You could spend a long time evaluating and deciding on open-source projects. For this activity, it's okay if you focus on a project that looks only mildly interesting. You don't need to commit to it. You can always change it later." %}

6.  After selecting a project, make notes on the following:

    *  Does the project involve a REST API?
    *  How does the project tag documentation-related issues? For example, does it use the "documentation" label?
    *  Identify the current state of the project's documentation. Are the docs robust, skimpy, nonexistent, extensive?
    *  How active is the project? (What is the frequency of commits?)
    *  How many contributors does the project have?

    {: .note}
    You don't have to actually reach out or interact with the team yet. You're just gathering information and analyzing documentation needs here.

## Recognizing the type of API used in the project

When you look for API projects, recognize that there are many different types of APIs. Many of the APIs you run across might be [native library APIs](nativelibraryapis_overview.html), which don't use web protocols to make requests and responses (as REST APIs do) but rather involve incorporating a language-specific library into the project. If the API seems to focus on a particular language, and the API documentation looks auto-generated, it's probably a native-library API.

{% include image_ad_right.html %}

On the other hand, if the project's documentation contains these core reference sections for their endpoints, it's probably a REST API.

## Contributing will require Git skills

When you later contribute to the open-source project, you will need to understand the basic [Pull request Git workflow](pubapis_github_pull_requests.html). Understanding the Git workflow might require you to ramp up on [Git tutorials](https://www.atlassian.com/git/tutorials) a bit first, but there's no better way to learn Git than by actively using it in a real project scenario.

Don't worry so much about Git now. You can learn these skills later when you have content you're ready to contribute. For now, just find a project.

## Don't undervalue your doc skills

You may think that it's too early to even think about joining let alone contributing to an API documentation project, especially when you're learning. When you interact with the open-source team, you might feel intimidated that you don't have any programming skills.

{% include ads.html %}

However, don't undervalue your role as a contributor to documentation (regardless of the contribution). Open-source projects suffer greatly from lousy documentation. In [GitHub Survey: Open Source Is Popular, Plagued by Poor Docs and Rude People](https://adtmag.com/articles/2017/06/05/open-source-survey.aspx), David Ramel summarizes findings from the [2017 GitHub Survey](http://opensourcesurvey.org/2017/):

> Incomplete or outdated documentation is a pervasive problem, observed by 93 percent of respondents, yet 60 percent of contributors say they rarely or never contribute to documentation.

Also check out [Open source documentation is bad, but proprietary software is worse](https://www.techrepublic.com/article/open-source-documentation-is-bad-but-proprietary-software-is-worse/) by Matt Asay as well. Asay highlights the documentation results from the same GitHub survey:

> 93% of respondents gnashed their teeth over shoddy documentation but also admitted to doing virtually nothing to improve the situation. ... If you think this deeply felt need for documentation would motivate more developers to pitch in and help, you'd be wrong: 60% of developers can't be bothered to contribute documentation.

So yeah, as a technical writer, you may not be fixing bugs in the code or developing new features, but your documentation role is still highly needed and valued. You are a rare bird in the forest here.

I know the value of the doc role intimately from my own experience in contributing to open source doc projects. At one point, before focusing my energy on this API doc course, I contributed several tutorials to the [Jekyll docs](https://jekyllrb.com/docs/home/). I added instructions that included a lot of new content and even added a [Tutorials section](https://jekyllrb.com/tutorials/home/).

{% include random_ad3.html %}

I thought other developers would continue creating new tutorials in a steady stream, but they didn't. Developers tend to add little snippets of documentation to pages &mdash; a sentence here, a paragraph there, an update here, a correction there. You will rarely find someone who writes a new article or tutorial from scratch. When there's a new release, there often aren't release notes &mdash; there are merely links to (cryptic) GitHub issue logs.

As such, you should feel confident about the value you can bring to an open-source project. You're creating much-needed documentation for the project.

## More reading

See the following for more information on finding an open-source project:

* [How to choose (and contribute to) your first open-source project](https://github.com/collections/choosing-projects)
* [Contribute to open-source projects through documentation](https://mapzen.com/blog/open-source-docs/)

For a tutorial on pull requests workflows with GitHub projects, see [Pull request workflows through GitHub](pubapis_github_pull_requests.html).

## Next steps

After you find an open-source project, go to the next activity: [Evaluate API reference docs for core elements](docapis_api_reference_activity.html).
