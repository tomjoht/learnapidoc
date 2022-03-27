---
title: "Hybrid documentation systems"
permalink: pubapis_hybrid_systems.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.93
section: publishingapis
path1: publishingapis.html
last-modified: 2020-06-27
---

Rounding out the publishing tool options, there is a class of developer doc tools that provide online GUIs for authoring and publishing, but they still store your content as flat files in repositories such as GitHub and Bitbucket. In other words, they provide a WordPress.com-like experience for your content (giving you a user interface to browse your posts, pages, layouts, and other content) but allow your content to live in plain text files in version control repositories.

* TOC
{:toc}

## Headless CMS solutions

Just as we have [staticgen.com](https://www.staticgen.com/) that lists common static site generators, there's a similar index of [headless content management systems](https://headlesscms.org/), this one arranged in alphabetical order (rather than ranked by popularity).

<a class="noCrossRef" href="https://headlesscms.org/"><img src="{{site.media}}/headlesscms.png"/></a>

For an in-depth introdution to headless CMSs, see [Headless CMS vs Decoupled CMS: The Ultimate Guide](https://www.coredna.com/blogs/headless-vs-decoupled-cms). There are nuances here that I won't go into, but the basic metaphor is that the head refers to the authoring interface, and the body refers to the storage database or file system. If a CMS is headless, it means the authoring interface is connected to the data storage through an API, and the data storage can live in a completely different system, such as GitHub.

Not all tools listed here are headless CMSs, so I have called them more generally "hybrid" solutions, since many of these doc tools don't fit into neat categories.

{% include random_ad3.html %}

## Forestry.io {#forestry}

[Forestry.io](https://forestry.io/) is similar to CloudCannon in that it offers online hosting for Jekyll projects, but it also provides hosting for [Hugo](https://gohugo.io/) and Git. Forestry's emphasis is on providing an online CMS interface for static site generators. The CMS interface gives you a WordPress-like GUI for seeing and managing your content.

<a href="https://forestry.io/" class="noExtIcon"><img src="{{site.media}}/forestryio.png" /></a>

The idea behind the CMS interface is that most static site generators ostracize less technical users by forcing them into the code. (For example, when I write a post in Jekyll, usually others who look over my shoulder think I'm actually programming, even though I'm just writing posts in Markdown.) The CMS removes this by making the experience much more user-friendly to non-technical people while also still leveraging the openness and flexibility of the static site generator platform.

Forestry.io (unlike CloudCannon) also offers an on-premise enterprise installation so you can host and manage the entire platform behind your company's firewall.

{% include random_ad2.html %}

## Netlify CMS {#netlifycms}

[Netlify CMS](https://www.netlifycms.org/) is similar to Forestry in its offering of a content management system for static site generators. But rather than limiting the static site generators you can use, it provides a more open platform wrapper (built with React but using Git to manage the content) that integrates with any static site generator.

One of Netlify CMS's key advantages is in simplifying the content development experience for less technical users. But you can also standardize your authoring through the interface. Netlify CMS lets you map the custom fields in your theme to a GUI template, as shown in the image below. These custom fields reduce the chance that authors might use the wrong frontmatter tag in their pages (for example, `intro_blurb` or `IntroBlurb` or `introBlurb`). Here's a sample interface:

<figure><a href="https://www.netlifycms.org/" class="noExtIcon"><img src="{{site.media}}/netlifycms.png" style="border: 1px solid #dedede;"/></a><figcaption>Netlify lets you create a user interface for your custom fields.</figcaption></figure>

Your content source can be stored in GitHub, GitLab, or BitBucket. Netlify CMS also integrates with [Netlify](pubapis_hosting_and_deployment.html#netlify), which is a popular hosting and deployment service for static site projects.

{: .tip}
For a tutorial on integrating Jekyll with Netlify CMS, see [Adding a CMS to Your Static Site With Netlify CMS](https://dzone.com/articles/adding-a-cms-to-your-static-site-with-netlify-cms). Or just start with the [Netlify CMS documentation](https://www.netlifycms.org/docs/).

## Readme.com {#readmeio}

[Readme.com](http://readme.com) is an online CMS for docs that offers one of the most robust, full-featured interfaces for developer docs available. Readme.com isn't a headless CMS, meaning you don't just point to your GitHub repo to pull in the content. Instead, I believe Readme.com stores content in a database (though this detail isn't mentioned on their site). So  strictly speaking, I probably shouldn't include Readme.com here, but I didn't know where else to describe it, and the CMS-like GUI makes it the most similar to the headless CMS.

Readme.com's emphasis is on providing an interface that helps you more easily write documentation based on best practices and designs. Readme.com provides various wizard-like screens to move you through documentation processes, prompting you with forms to complete. For example:

<figure><img class="docimage medium border" src="{{site.media}}/readmeio_manual_api.png" alt="Readme.com" /><figcaption>Readme.com</figcaption></figure>

Most importantly, Readme.com includes specific features for displaying API documentation content, which puts it into a class of its own. Although you can add your API information manually, you can also import an [OpenAPI specification file](pubapis_openapi_intro.html). You can experiment by choosing one from the [OpenAPI examples](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v2.0/yaml), such as [this one](https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/json/petstore-expanded.json). Readme.com's integration of OpenAPI along with other doc content helps integrate outputs that are often separated. (This fragmentation is a problem I explore later in [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).)

{% include ads.html %}

Overall, Readme.com provides a robust GUI for creating API documentation in a way that is more extensive and well-designed than virtually any other platform available. The output includes an interactive, try-it-out experience with endpoints:

<img class="medium" src="{{site.media}}/readmeiotryitout.png" style="border: 1px solid #dedede;" />

The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.

{% include random_ad4.html %}

There are some challenges with Readme.com. It isn't free, so you'll need licenses per author. Additionally, there isn't any content re-use functionality (currently), so if you have multiple outputs for your documentation that you're single sourcing, Readme.com may not be for you. Finally, if you want to customize your own design or implement a feature not supported, you can't just hack the code (though you can adjust the stylesheet). Overall, with a hosted solution like Readme.com, you're stuck within the platform's constraints.

{% include image_ad_right.html %}

Even so, the output is sharp, and the talent behind this site is top-notch. The platform is continuously growing with new features, and there are many high-profile companies with their docs on Readme. If you consider how much time it takes to build and deploy your own doc solution, going with a site like Readme.com will save you a lot of time. It will let you focus on your content while also adhering to best practices with site design.

Here are a few sample API doc sites built with Readme.com:

* [Validic](https://docs.validic.com/docs/getting-started)
* [Box API](https://developer.box.com/)
* [Coinbase API](https://developers.coinbase.com/api/v2#introduction)
* [Farmbase Software](https://farmbot-software.readme.com/docs)

{: .tip}
Which tool should you use? I provide some more concrete recommendations in [Which tool to choose for API docs -- my recommendations](pubapis_which_tool_to_choose.html).
