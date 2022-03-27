---
title: Tools FAQ
permalink: docapis_faq_tools.html
course: "Documenting REST APIs"
sidebar: docapis
section: publishingapis
path1: publishingapis.html
weight: 9.98
last-modified: 2020-06-13
---

Q:  Is it possible to author API documentation using DITA/XML or an XML editor (like Oxygen)? I saw your recommended list of tools in the [Publishing API docs](publishingapis.html) section, but it would be great if we could leverage existing tools.

:  Sure, you can use OxygenXML or similar tools and write your dev docs in DITA. However, for the reference content, if you're working with REST APIs, I recommend documenting the endpoints using the [OpenAPI spec](pubapis_openapi_intro.html). If documenting [class-based libraries](nativelibraryapis.html), then use [in-code annotations](nativelibraryapis_javadoc_tags.html) for that language.
:  In the [dev doc survey I conducted](docapis_trends.html) about dev doc trends, about 11% of people writing docs for devs use XML-based solutions, so you wouldn't be alone. However, if you're intending to solicit contributions from engineers, and you have a lively and engaged developer community who will *actually be contributing* to docs, then I do not recommend XML solutions. Use [Markdown](pubapis_markdown.html) instead.

{% include random_ad4.html %}

{% include random_ad3.html %}

Q:  We use Madcap Flare but document our APIs in Swagger. We're considering dropping Flare and using Readme.com instead, which can import Swagger, but should we be looking at other tools? We also don't document just APIs, but have protocols we document outside of the APIs too.

: [MadCap Flare](https://www.madcapsoftware.com/products/flare/) is a much more robust tool for handling documentation than [Readme.com](https://readme.com/). For example, last time I checked, Readme.com doesn't let you store content for re-use. There was a recent discussion in the #documenting-apis channel in [WTD Slack](https://www.writethedocs.org/slack/) about Readme.com. More people seem to be abandoning Readme.com to pursue a more flexible platform. I asked for more details. One person said, "Outages, organizing content. I didn't use it much myself. ... After your reference specs and examples are in readme.com, you're limited in what you can get out. If nothing else, that's a mark against them." In short, sure Readme.com can import and display reference API content well (if you like the design), but if you're stuck using a simple editor for everything else and can't leverage more powerful tools for other doc management, life might get more challenging. That said, many top companies use Readme.com and the output looks professional and industry-aligned.
:  Personally, I recommend going with a [static site generator](https://www.staticgen.com/) (SSG) for dev docs instead of a third-party online hosted platform. SSGs are the trend for a reason &mdash; they're way more fun, flexible, and engineering-oriented. If you aren't into developing your own site, though, you can also look at some alternatives in this same hosted doc category -- [Developerhub.io](https://developerhub.io/), [Readthedocs.com](https://readthedocs.com/). If you're doing heavy localization and generating lots of PDF, probably stick with your existing tool. Generate out your reference using [Redoc](pubapis_redocly.html), [Swagger](pubapis_swagger.html), or other specialized generators.

{% include random_ad2.html %}

{% include image_ad_right.html %}

Q: We're considering using GitHub as our documentation CMS, but we're unsure what it can support. Does it provide a documentation portal? HTML generation? An editor to add/update content? Themes? bi-directional sync with Git? What is the process flow if it allows documentation?

:  GitHub is a solid platform for storing content, especially for open-source projects. It's not a CMS, and it will require you to work out your [Git workflows](pubapis_version_control.html) for development, branching, and collaboration. Most people use GitHub as a storage source, not for the final presentation of the docs. GitHub will render Markdown into HTML, but most don't use the default HTML rendered display from GitHub wikis, as the display isn't customizable. However, note that you can store your branded content and higly customized theme for any [static site generator](https://staticgen.com) in GitHub, as well as for any XML project. The only requirement is that your content be text files rather than binary files (e.g., Word, FrameMaker).
: If your project is a Jekyll project, [GitHub Pages](pubapis_hosting_and_deployment.html#github_pages) will auto-build your project when you commit to a branch you tell it to watch. If it's not a Jekyll project (for example, maybe it's a Hugo or Gatsby project), you can use [Netlify](https://www.netlify.com/) to get your content from GitHub and build out other outputs. [Forestry.io](https://forestry.io/) can also pull out your GitHub content (into more of a headless CMS client) and build out Jekyll and Hugo outputs. [CloudCannon](https://cloudcannon.com/), which is also CMS-like, can do so for Jekyll with GitHub. [Readthedocs.com](https://readthedocs.com/) uses Sphinx but stores content in GitHub. There are many ways to use GitHub, including [GitHub wikis](pubapis_github_wikis.html), but most people just use GitHub to store content that gets pulled into other platforms.

{% include ads.html %}
