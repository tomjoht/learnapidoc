---
title: "Hosting and deployment options"
permalink: pubapis_hosting_and_deployment.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.92
section: publishingapis
path1: publishingapis.html
last-modified: 2020-06-27
---

[Static site generators](pubapis_static_site_generators.html) handle content development, but not hosting and deployment. For this, you need another category of tools. I call this category of tools "hosting and deployment options."

Theoretically, you could publish a static website on any web server (e.g., AWS S3, Bluehost, and more). But continuous delivery hosting platforms do something more: They automatically build your output when you commit a change to a repo. The whole build process takes place entirely on the server.

{% include random_ad4.html %}

Hosting and deployment platforms usually offer a number of additional features beyond simple web hosting, such as SSL, CDNs, minification, authentication, backup/redundancy, and more. These platforms often integrate with specific static site generators as well (which is one reason I limited my earlier discussions to Jekyll, Hugo, and Sphinx).

* TOC
{:toc}

## GitHub Pages {#github_pages}

[GitHub Pages](https://pages.github.com/) provides a free hosting and deployment option for Jekyll projects. If you upload a Jekyll project to a GitHub repository, you can indicate that it's a Jekyll project in your GitHub repo's Settings, and GitHub will automatically build it when you commit to your repo. This feature &mdash; building Jekyll projects directly from your GitHub repo &mdash; is referred to as GitHub Pages.

{% include random_ad3.html %}

In your GitHub repo, click **Settings** and scroll down to **GitHub Pages**. This section is where you activate GitHub Pages for your project.

<figure><a target="_blank" class="noExtIcon" href="https://pages.github.com/"><img class="docimage" src="{{site.media}}/githubpagesscreenshot.png" alt="GitHub Pages integration with GitHub repositories" /></a><figcaption>Every GitHub repository is potentially a Jekyll project that you can auto-build when you commit to it.</figcaption></figure>

The tight integration of Jekyll with GitHub makes for a compelling argument to use a Jekyll-GitHub solution. For the most part, GitHub is the dominant platform for open-source projects. If you're already using GitHub, it makes sense to choose a static site generator that integrates into the same platform to build your docs.

GitHub Pages is free but does have some limitations in scope:

> * GitHub Pages source repositories have a recommended limit of 1GB.
> * Published GitHub Pages sites may be no larger than 1 GB.
> * GitHub Pages sites have a soft bandwidth limit of 100GB per month.
> * GitHub Pages sites have a soft limit of 10 builds per hour. (See [Usage Limits](https://help.github.com/articles/what-is-github-pages/))

Unlike with other hosting and deployment platforms, GitHub Pages doesn't offer a commercial version that expands these limits. You can learn more about [GitHub Pages here](https://help.github.com/categories/github-pages-basics/).

{: .note}
I build this site and [my blog](https://idratherbewriting.com) using Jekyll and GitHub Pages. They are actually separate Jekyll projects and repos. My blog is in a GitHub repo called [`tomjoht.github.io`](https://github.com/tomjoht/tomjoht.github.io), named after my GitHub username but published using a custom domain `idratherbewriting.com`. (Without the custom domain, it would be available at `http://tomjoht.github.com`.) The API doc site is in a repo called [learnapidoc](https://github.com/tomjoht/learnapidoc). It's available by default at `https://idratherbewriting.com/learnapidoc`. They seem like the same site, but they are really separate projects in separate repos. The fact that each repo in addition to the primary repository (`tomjoht.github.io`) appears as a subdirectory to the primary domain (`idratherbewriting.com`) is pretty cool.

{% include random_ad2.html %}

## CloudCannon {#cloudcannon}

Suppose you want to use Jekyll and GitHub, but you're frustrated by GitHub's limitations and you need a more robust platform for your Jekyll project. If so, [CloudCannon](https://cloudcannon.com/) is your solution. CloudCannon gives you a host of [additional features](https://cloudcannon.com/features/) that GitHub lacks, such as:

* Authentication of users
* Multiple environments for different branches
* Visual online interface for editing
* Jekyll plugins
* SSL for custom domains
* Automatic minification, and more

The founders of CloudCannon are experts with Jekyll and have designed the platform specifically for Jekyll projects. They also created a [host of Jekyll tutorials](https://learn.cloudcannon.com/) to enrich developer knowledge.

{: .tip}
For a tutorial on setting up Jekyll on CloudCannon, see [Jekyll and CloudCannon continuous deployment tutorial](pubapis_jekyll.html).

## Read the Docs {#readthedocs}

Read the Docs is an online hosting and deployment platform that can read Sphinx projects (from a public repository such as GitHub or Bitbucket) and automatically build the web output. In other words, it is a "continuous documentation platform for Sphinx" (see [An introduction to Sphinx and Read the Docs for Technical Writers](http://ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/)).

{% include ads.html %}

The introduction on the [Read the Docs homepage](https://readthedocs.org/) describes the platform as follows:

> We will host your documentation for free forever. There are no tricks. We help 94,898 open-source projects share their docs. ... Whenever you push code to your favorite version control system, whether that is Git, Mercurial, Bazaar, or Subversion, we will automatically build your docs so your code and documentation are never out of sync.

Read the Docs provides both an open-source, free version ([readthedocs.org](https://readthedocs.org/)) and a commercial version ([readthedocs.com](https://readthedocs.com/)). These tiers allow you to level-up your project when your needs mature but also don't lock you into a paid solution when you're not ready for it.

Read the Docs provides themes specific for documentation websites, and also lets you author in reStructuredText (or Markdown, if you prefer that instead). reStructuredText provides more documentation-specific features and semantics &mdash; see my discussion in [What about reStructuredText and Asciidoc?](pubapis_markdown.html#rst_and_asciidoc) for more details, or see [Why You Shouldn't Use "Markdown" for Documentation](http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/) for a more passionate argument for rST.

The [Read the Docs documentation](https://docs.readthedocs.io/en/latest/getting_started.html) shows a sample output.

<a href="https://docs.readthedocs.io/en/latest/getting_started.html" class="noExtIcon"><img src="{{site.media}}/readthedocsplatform.png" /></a>

Some key features include a robust sidebar with expand/collapse functionality, search, versioning, output to PDF and ePub, and more.

To learn more about the platform, read through the [Read the Docs guide](https://docs.readthedocs.io/en/latest/). Read the Docs includes most of the features technical writers would expect, especially related to single-source publishing. Some of these features, noted in [An introduction to Sphinx and Read the Docs for Technical Writers](http://ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/), include the following:

> * Output HTML, PDF, ePub, and more
> * Content reuse through includes
> * Conditional includes based on content type and tags
> * Multiple mature HTML themes that provide great user experience on mobile and desktop
> * Referencing across pages, documents, and projects
> * Index and Glossary support
> * Internationalization support.

The Read the Docs platform was co-founded by [Eric Holscher](http://ericholscher.com/), the same co-founder of [Write the Docs](http://www.writethedocs.org/). Write the Docs was originally intended as a conference for the Read the Docs community but evolved into a more general conference focused on technical communication for software projects. If you go to a Write the Docs conference, you'll find that sessions focus more on best practices for documentation rather than discussions about tools. (You can read my post, [Impressions from the Write the Docs Conference](https://idratherbewriting.com/2017/05/23/write-the-docs-and-the-battle-against-vendor-evil/) or listen to this [Write the Docs podcast with the co-founders](https://idratherbewriting.com/2017/12/14/write-the-docs-founding-ideas-and-principles-podcast/) for more details.)

Read the Docs has an impressive number of users. The platform has thousands of projects and receives millions of page views a month across these projects. In 2016, Read the Docs had more than 77,000 projects and received 338 million page views and 75 million unique visitors). You can [view their 2017 stats here](http://blog.readthedocs.com/read-the-docs-2017-stats/). Read the Docs is one of the most visited sites on the web and continues to grow at an impressive rate.

## Netlify {#netlify}

[Netlify](https://www.netlify.com/) is a popular hosting and deployment service for static site projects. Unlike with other hosting platforms, Netlify works with almost any static site generator, not just with Jekyll or Sphinx.

Netlify offers continuous delivery for your project. You can store your content on GitHub, GitLab, or Bitbucket, then link it to Netlify, and Netlify will build whenever you push changes.

{% include image_ad_right.html %}

Netlify not only offers a free plan with features similar to GitHub Pages but also lets you scale up to Pro, Business, or Enterprise plans for more robust needs. With Netlify, you can get deploy previews, rollbacks, form handling, distributed content delivery network (CDN), infinite scalability, SSL, a programmable API, CLI, and more.

The most impressive example of a Netlify-hosted site is [Smashing Magazine](https://www.smashingmagazine.com/). Previously hosted on WordPress, Smashing Magazine made the switch to Netlify, with Hugo as the static site generator engine. See [Smashing Magazine just got 10x faster](https://www.netlify.com/blog/2017/03/16/smashing-magazine-just-got-10x-faster/) for details.

Other notable doc sites using Netlify include [Docker](https://docs.docker.com/), [Kubernetes](https://kubernetes.io/docs/home/), [React](https://reactjs.org/docs/hello-world.html), [Yarn](https://yarnpkg.com/lang/en/docs/), [Lodash](https://lodash.com/docs/), [Gatsby](https://www.gatsbyjs.org/docs/), and [Hugo](https://gohugo.io/documentation/).

Complementing Netlify is [Netlify CMS](pubapis_hybrid_systems.html#netlifycms), a headless CMS for your content (which I discuss in more detail in [Hybrid documentation platforms](pubapis_hybrid_systems.html)).

## Aerobatic {#aerobatic}

[Aerobatic](https://www.aerobatic.com/) is similar to Netlify in that it builds and publishes your static site. Aerobatic gives you a robust publishing engine that includes a CDN, SSL, continuous delivery, a deployment CLI, password protection, and more. Aerobatic can build your site using various static site generators, including Jekyll, Hugo, Hexo, and more. Aerobatic says,

> Aerobatic is a specialized platform for efficient delivery of static webpages and website assets. We take care of the configuration details for you that provide the best balance of performance and maintainability. Stop fiddling with CDNs and web server configs and focus on coding great front-end experiences. &mdash; [Static website serving](https://www.aerobatic.com/docs/static-serving/)

Overall, there are many options for hosting and deploying your site. GitHub Pages, CloudCannon, Read the Docs, Netlify, and Aerobatic are just a few. You can also probably explore custom-built hosting and deployment options available through your company's existing infrastructure.

There's another category of tools that I'm calling [Hybrid documentation platforms](pubapis_hybrid_systems.html). Some of these solutions combine the authoring and deployment solutions together in different ways. These solutions might offer a "headless" authoring interface with a body that is stores content in another place, such as GitHub.
