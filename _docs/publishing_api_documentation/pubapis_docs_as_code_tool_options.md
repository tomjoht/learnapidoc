---
title: "Publishing tool options for developer docs"
permalink: /pubapis_docs_as_code_tool_options.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.5
section: publishingapis
path1: /publishingapis.html
redirect_from:
- /learnapidoc/pubapis_other_tool_options.html
- /learnapidoc/pubapis_docs_as_code_tool_options.html
- /learnapidoc/pubapis_other_openapi_parsers.html
---

In the developer documentation space, you have many tool options for creating and publishing documentation, and there’s no clear industry standard. Different tools may better suit different environments, skill sets, products, and requirements. On this page, I've listed the most common authoring tools related to the developer documentation space.

I've sorted these tools into several main groups:

* **[Static site generators](#staticsitegenerators)**: Used to author content and build the web output.
* **[Hosting and deployment options](#hostinganddeployment)**: Used to build, deploy, and host the web output.
* **[CMS platforms (mostly headless CMSs)](#cmsplatforms)**: Provides an online GUI for authoring/publishing. In many cases, content is stored in plain text files and pulled in from GitHub.
* **[Tools for reading the OpenAPI specification](#openapitools):** Used for reading and displaying content formatted according to the [OpenAPI specification](pubapis_openapi_tutorial_overview.html).

Note that the tools below are particularly useful for writing and deploying the [non-reference content](docnonref.html) in your project. For tools that will read an [OpenAPI specification document](pubapis_swagger_intro.html) and generate interactive reference documentation, see [Other tools to parse and display OpenAPI specs](pubapis_docs_as_code_tool_options.html).

{: .note}
As explained in [Docs-as-code tools](pubapis_docs_as_code.html), I'm primarily focusing on static site generators and hosting/deployment options rather than traditional help authoring tools (HATs). See [Why focus on publishing API docs?](pubapis_overview.html#why-focus-on-publishing-api-docs) for more background.

* TOC
{:toc}

## Static site generators {#staticsitegenerators}

### What are static site generators?

Static site generators (you can view a full list at [Staticgen.com](https://www.staticgen.com/)) are applications that run on the command line and compile a website. For example, you might have various files defining a layout, some "include" files, a configuration file, and your content files. The static site generator reads your configuration file and pushes your content into the layout files, adds whatever includes are referenced (such as a sidebar or footer), and writes out the HTML pages from the Markdown sources. Each page usually has the sidebar and other navigation included directly into it, as well as all the other layout code you've defined, ready for viewing online.

With a regular content management system (CMS) like WordPress, content is actually stored in a separate database and dynamically pulled from the database to the web page on each user visit. Static site generators don't have databases &mdash; all the content is on the page already, and nothing is dynamically assembled on the fly through PHP or other server-side scripting. The entire website is fully built when the user arrives; nothing changes dynamically based on the user's profile (unless done with client-side JS).

{% include random_ad.html %}

With static site generators, when you're developing content on your local machine, you're usually given a web server preview (such as <code class="noExtIcon">http://127.0.0.1:4000/</code>). Many static site generators rebuild your site continuously in the preview server each time you make a change. The time to rebuild your site could take less than a second, or if you have thousands of pages, several minutes.

Because everything is compiled locally, you don't need to worry about security hacks into a database. Everything is a human-readable plain text file, from the content files you write in to the application code. It's also incredibly easy to work with custom code, such as special JavaScript libraries or advanced HTML or other complex code you want to use on a page. You can author your content in Markdown or HTML, add code samples inside code blocks that are processed with a code-syntax highlighter, and more. It's simply much easier and more flexible to do what you want.

Most static site generators allow you to use a templating and scripting languages, such as Liquid or Go, inside your content. You can use if-else statements, run loops, insert variables, and do a lot more sophisticated processing of your content through this templating language directly on your page.

Because you're working with text files, you usually store your project files (but not the built site output) in a code repository such as GitHub. You treat your content files with the same workflow as programming code &mdash; committing to the repository, pushing and pulling for updates, branching and merging, and more.

When you're ready to publish your site, you can usually build the site directly from your Git repository (rather than building it locally and then uploading the files to a web server). This means your code repository becomes the starting point for your publishing and deployment pipeline. "Continuous delivery," as it's called, eliminates the need to manually build your site and deploy the build. Instead, you just push a commit to your repository, and the continuous delivery pipeline or platform builds and deploys it for you.

Although there are hundreds of static site generators, only a handful of are probably relevant for documentation. I'll consider these three in this article:

* [Jekyll](#jekyll)
* [Hugo](#hugo)
* [Sphinx](#sphinx)

One could discuss many more &mdash; Hexo, Middleman, Gitbook, Pelican, and so on. But the reality is that these other static site generators aren't used that frequently for documentation projects.

### Jekyll {#jekyll}

I devote an entire topic to [Jekyll](pubapis_jekyll.html) in this course, complete with example Git workflows, so I won't go as deep in detail here. Jekyll is a Ruby-based static site generator originally built by the co-founder of GitHub. Jekyll builds your website by converting Markdown to HTML, inserting pages into layouts you define, running any Liquid scripting and logic, compressing styles, and writing the output to a site folder that that you can deploy on a web server.

<a href="https://jekyllrb.com/" class="noExtIcon"><img src="images/jekyllsite.png"/></a>

There are several compelling reasons to use Jekyll:

* **Large community**. The community, arguably the largest among static site generator communities, includes web developers, not just documentation-oriented groups. This broader focus attracts more developer attention and helps propel greater usage.
* **Control.** Jekyll provides a lot of powerful features (often through [Liquid](http://shopify.github.io/liquid/), a scripting language) that allow you to do almost anything with the platform. This gives you an incredible amount of control to abstract complex code from users through simple templates and layouts. Because of this, you probably won't outgrow Jekyll. Jekyll will match whatever web development skills or other JS, HTML, or CSS frameworks you want to use with it. Even without a development background, it's fairly easy to figure out and code the scripts you need. (See my series [Jekyll versus DITA](http://idratherbewriting.com/2015/03/23/new-series-jekyll-versus-dita/) for details on how to do in Jekyll what you're probably used to doing in DITA.)
* **Integration with GitHub and AWS S3.** Tightly coupling Jekyll with the most used version control repository on the planet (GitHub) almost guarantees its success. The more GitHub is used, the more Jekyll is also used, and vice versa. [GitHub Pages](#github_pages) will auto-build your Jekyll site ("continuous delivery"), allowing you to automate the publishing workflow without effort. If GitHub isn't appropriate for your project, you can also publish to AWS S3 bucket using the [s3_website plugin](https://github.com/laurilehmijoki/s3_website), which syncs your Jekyll output with an S3 bucket by only adding or removing the files that changed.

{% include random_ad2.html %}

For [theming](https://jekyllrb.com/docs/themes/), Jekyll offers the ability to package your theme as a Rubygem and distribute the gem across multiple Jekyll projects. Rubygems is a package manager, which means it's a repository for plugins. You pull the latest gems (plugins) you need from Rubygems through the command line, often using Bundler. Distributing your theme as a Rubygem is one approach you could use for breaking up your project into smaller projects to ensure faster build times.

If you're looking for a documentation theme, see my [Documentation theme for Jekyll](http://idratherbewriting.com/documentation-theme-jekyll/).

### Hugo

[Hugo](https://gohugo.io/) is a static site generator that is rapidly growing in popularity. Based on the Go language, Hugo builds your site faster than most other static site generators, including Jekyll. There's an impressive number of [themes](https://themes.gohugo.io/), including some designed for [documentation](https://themes.gohugo.io/tags/documentation/). Specifically, see the [Learn theme](https://themes.gohugo.io/theme/hugo-theme-learn/en) and this [multilingual API documentation theme](https://github.com/bep/docuapi).

<a href="https://gohugo.io/" class="noExtIcon"><img src="images/hugosite.png"/></a>

As with Jekyll, Hugo allows you to write in Markdown, add frontmatter content in YAML (or TOML or JSON) at the top of your Markdown pages, and more. In this sense, Hugo shares a lot of similarity with Jekyll.

Hugo has a robust and flexible templating language (Golang) that makes it appealing to designers, who can build more sophisticated websites based on the depth of the platform (see [Hugo's docs here](https://gohugo.io/documentation/)). Go templating has more of a learning curve than templating with Liquid in Jekyll, and the docs might assume more technical familiarity than many users have. Still, the main selling point behind Hugo is that it builds your site fast. This speed factor might be enough to overcome other issues.

### Comparing speed with Hugo with Jekyll

{: .note}
Speed here refers to the time to compile your web output, not the time your site takes to load when visitors view the content in a browser.

Speed may not be immediately apparent when you first start evaluating static site generators. You probably won't realize how important speed is until you have thousands of pages in your site and are waiting for it to build.

Although it depends on how you've coded your site (e.g., the number of `for` loops that iterate through pages), in general, I've noticed that with Jekyll projects, if you have, say, 1,000 pages in your project, it might take about a minute or two to build the site. Thus, if you have 5,000 pages, you could be waiting 5 minutes or more for the site to build. The whole automatic re-building feature becomes almost irrelevant, and it can be difficult to identify formatting or other errors until the build finishes.

If Hugo can build a site much, much faster, it offers a serious advantage in the choice of static site generators. Given that major web development sites like [Smashing Magazine chose Hugo](https://next.smashingmagazine.com/2017/03/a-little-surprise-is-waiting-for-you-here/) for their static site generator, this is evidence of Hugo's emerging superiority among the static site generators.

For a detailed comparison of Hugo versus Jekyll, see [Hugo vs. Jekyll: Comparing the leading static website generators](https://opensource.com/article/17/5/hugo-vs-jekyll). In one of the comments, a reader makes some interesting comments about speed:

> I have been doing extended research on this topic and in the end chose to use Jekyll. I have done a huge project: [https://docs.mendix.com](https://docs.mendix.com), where we have made the complete website Open Source on Github.
>
> Fun project where I ended up moving quite some stuff from Jekyll to Node. For example generating Sitemaps tended to be faster when doing it in Node instead of Jekyll.
>
> But... Here's the downside. Our documentation is about 2700 pages (I'll have to lookup the real number). Generating the whole site takes about 90 seconds. That's kind of annoying when you're iterating over small changes. I did a basic test in Hugo, it does it in about 500ms.
>
> So if I am able to transfer the work that's done by plugins to Hugo/Node, I am going to refactor this to Hugo, because of the speed.
>
> I might end up writing a similar blog about this project, it's long overdue.

Generating a 2,700 page document site in Jekyll took 90 seconds; with Hugo, it took 0.5 seconds. This is a serious speed advantage that will allow you to scale your documentation site in robust ways. The author (whose docs are here: [https://docs.mendix.com](https://docs.mendix.com)) did later make the switch from Jekyll to Hugo (see the [doc overview in GitHub](https://github.com/mendix/docs)). This suggests that speed is perhaps a primary characteristic to evaluate in static site generators.

The deliberation between Hugo and Jekyll will require you to think about project size &mdash; how big should your project be? Should you have one giant project, with content for all documentation/products stored in the same repo? Or should you have multiple smaller repos? These are some of the considerations I wrestled with when [implementing docs-as-code tooling](pubapis_switching_to_docs_as_code.html). I concluded that having a single, massive project is superior because it allows easier content re-use, onboarding, validation, and error checking, deployment management, and more.

If starting from scratch, I might use Hugo instead of Jekyll. However, I have a lot of custom scripting in Jekyll already (such as the ability to generate Kindle books and PDF), not to mention a publishing pipeline with Jekyll already integrated at the server level. However, given that content is largely in the same format (Markdown with YAML frontmatter), switching between the two platforms shouldn't be too difficult &mdash; thoughh admittedly, I haven't tried it.

Also, there are workarounds in Jekyll to enabling faster builds. In my doc projects at work (where we have probably 1,500 pages or so across many different doc sets), we implemented clever build shortcuts. By cascading configuration files, we can limit the builds to one particular doc directory. I have one configuration file (e.g., \_config.yml, the default) that sets all content as `publish: true`, and another configuration file (e.g., config-acme.yml) that sets all content as `publish: false` except for a particular doc directory (the one I'm working with, e.g., acme). When I'm working with that acme doc directory, I build Jekyll like this:

```
jekeyll serve --config _config.yml,config-acme.yml
```

The `config-acme.yml` will overwrite the default `_config.yml` to enable one specific doc directory as `publish: true` while disabling all others. As a result, Jekyll builds lightning fast. This method tends to work quite well and is used by others with large Jekyll projects as well. We have continuous delivery configured with the server, so when it's time to push out the full build (where `publish: true` is applied to all directories and no config-acme.yml file is used), the full build process takes place on the server, not the local machine.

Although static site generators seem to change quickly, it's harder for one tool, like Hugo, to overtake another, like Jekyll, because of the custom coding developers usually do with the platform. If you're just using someone's theme with general Markdown pages, great, switching will be easy. But if you've built custom layouts and added custom frontmatter in your Markdown pages that gets processed in unique ways by the layouts, as well as other custom scripts or code that you created in your theme specifically for your content, changing platforms will be more challenging. You'll have to change all your custom Liquid scripting to Golang. Or if working with another platform, you might need to change your Golang scripts to Jinja templating, and so forth.

For this reason, unless you're using themes built by others, you don't often jump from one platform to the next as you might do with DITA projects, where more commercial platforms are used to process and build the outputs.

### Sphinx {#sphinx}

[Sphinx](http://www.sphinx-doc.org/en/stable/) is a popular static site generator based on Python. It was originally developed by the Python community to document the Python programming language (and it has some direct capability to document Python classes), but Sphinx is now commonly used for many documentation projects unrelated to Python. Part of Sphinx's popularity is due to its Python foundation, since Python works well for many documentation-related scripting scenarios.

<a href="http://www.sphinx-doc.org/en/stable/" class="noExtIcon"><img src="images/sphinxsite.png"/></a>

Because Sphinx was designed from the ground up as a documentation tool, not just as tool for building websites (like Jekyll and Hugo), Sphinx has more documentation-specific functionality that is often absent from other static site generator tools. Some of these documentation-specific features include robust search, more advanced linking (linking to sections, automating titles based on links, cross-references, and more), and use of reStructuredText (rST), which is more semantically rich, standard, and extensible than Markdown. (See [What about reStructuredText and Asciidoc?](pubapis_markdown.html#rst_and_asciidoc) for more details around rST compared to Markdown.)

Sphinx can be used with the [Read the Docs](#readthedocs) platform and has a passionate fan base among those who use it, especially among the Python community. However, because Sphinx is specifically designed as a documentation tool, the community might not be as large as some of the other static site generators.

As of January 2018, [Staticgen.com](https://www.staticgen.com/) shows the number of stars, forks, and issues as follows:

<figure>
<div style="padding: 10px;">
<a href="https://www.staticgen.com/jekyll" class="noExtIcon"><img src="images/staticgenjekyll.png" style="float: left; margin: 10px;"/></a>
<a href="https://www.staticgen.com/hugo" class="noExtIcon"><img src="images/staticgenhugo.png" style="float: left; margin: 10px;"/></a>
<a href="https://www.staticgen.com/sphinx" class="noExtIcon"><img src="images/staticgensphinx.png" style="float: left; margin: 10px;"/></a>
</div>
<div style="clear: both;"></div><figcaption>The star icon represents the number of users who have "starred" the project (basically followed its activity). The branch icon represents the number of times the project has been branched (copied into another GitHub account). The bug icon represents the number of open issues logged against the project. The green numbers indicate trends with these numbers.</figcaption></figure>

Jekyll and Hugo are the most common static site generators. Although I positioned the three graphics together here, if you look at [Staticgen.com](https://www.staticgen.com/), you'll see that between Hugo and Sphinx, there are 22 other static site generators (Hexo, Gatsby, GitBook, Nuxt, Pelican, Metalsmith, Brunch, Middleman, MkDocs, Harp, Expose, Assemble, Wintersmith, Cactus, React Static, Docpad, hubPress, Phenomic, Lektor, Hakyll, Nanoc, Octopress, *and then Sphinx*). But I called out Sphinx here because of its popularity among documentation groups and for its integration with [Read the Docs](#readthedocs).

### Others

#### MkDocs {#mkdocs}

[MkDocs](http://www.mkdocs.org/) is a static site generator based on Python and designed for documentation projects. Similar to Jekyll, with MkDocs you write in Markdown, store page navigation in YAML files, and can adjust the CSS and other code (or create your own theme). Notably, the MkDocs provides some themes that are more specific to documentation, such as the [Material theme](https://squidfunk.github.io/mkdocs-material/). MkDocs also offers a theme (ReadtheDocs) that resembles the Read the Docs platform.

<a href="http://www.mkdocs.org/" class="noExtIcon"><img src="images/mkdocs.png"/></a>

Some [other themes](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes) are also available. MkDocs uses [Jinja templating](http://jinja.pocoo.org/), provides [template variables](http://www.mkdocs.org/user-guide/custom-themes/#template-variables) for custom theming, and more.

Although there are many static site generators with similar features, MkDocs is one more specifically oriented towards documentation. For example, it does include search.

However, while it seems like orienting the platform towards documentation would be advantageous for tech writers, this approach might actually backfire, because it shrinks the community. The number of general web designers versus documentation designers is probably a ratio of 100:1. As such, MkDocs remains a small, niche platform that probably won't see much growth and long-term development beyond the original designer's needs.

This is the constant tradeoff with tools &mdash; the tools and platforms with the most community and usage aren't usually the doc tools. The doc tools have more features designed for tech writers, but they lack the momentum and depth of the more popular website building tools.

#### Slate {#slate}

[Slate](https://github.com/lord/slate) (based on [Middleman](https://middlemanapp.com/), a Ruby-based static site generator that is popular) is a common static site generator for API documentation that follows the three-column design made popular by [Stripe](https://stripe.com/docs/api).

<a href="https://github.com/lord/slate" class="noExtIcon"><img src="images/slatescreenshot.png" /></a>

With Slate, you write in Markdown, build from the command line, and deploy your site similar to other static site generators. All your content appears on one page, with navigation that lets users easily move down to the sections they need.

Unlike with other static site generators mentioned here, Slate is more focused on API documentation than other types of content.

#### Miscellaneous

The list of other doc-oriented static site generator possibilities is quite extensive. Although probably not worth using due to the small community and limited platform, you might also explore [Asciidoctor](http://asciidoctor.org/), [Dexy](http://www.dexy.it/), [Nanoc](https://nanoc.ws/), [API Documentation Platform](https://viasocket.com/docs), [Apidoco](https://github.com/72pulses/apidoco), and more.

For more doc tools, see the [Generating Docs](https://github.com/PharkMillups/beautiful-docs#generating-docs) list in [Beautiful Docs](https://github.com/PharkMillups/beautiful-docs). Additionally, [DocBuilds](http://www.docbuilds.com/) tries to index some of more popular documentation-specific static site generators.

Right now there are probably many readers who are clenching their first and lowering their eyebrows in anger at the omission of their tool. *What about ... Docpad!!??? What about Nikola??!!*

Hey, there are *a lot* of tool options out there, and you might have found perfect match between your content needs and the tool. (This page is already 5,000+ words long.) If you feel strongly that I missed an essential tool for docs here, feel free to [contact me](http://idratherbewriting.com/contact/). Additionally, the tools landscape for developer docs is robust, complex and seemingly endless.

Also, recognize that I'm only recommending what I perceive to be the most popular options. The developer tool landscape is diverse and constantly changing, and what may be relevant one day might be passé the next. This is a difficult space to navigate, and selecting the right tool for your needs is a tough question [though I offer more specific advice and recommendations here](pubapis_which_tool_to_choose.html). The tool you choose can massively affect both your productivity and capability, so it tends to be an important choice.

## Hosting and deployment options {#hostinganddeployment}

Static site generators handle content development, but not hosting and deployment. For this, you have another category of tools to consider. I call this category of tools "hosting and deployment options."

Theoretically, you could publish a static website on any web server (e.g., AWS S3, Bluehost, and more). But continuous delivery hosting platforms do something more &mdash; they automatically build your output when you commit a change to a repo. These platforms often read content stored on GitHub, sync it to their platform, and initiate build and publishing processes when they detect a change in a particular branch (such as gamma or prod).

Hosting and deployment platforms usually offer a number of additional features beyond simple web hosting, such as SSL, CDNs, minification, authentication, backup/redundancy, and more. These platforms often integrate with specific static site generators as well (which is one reason I limited my earlier discussions to Jekyll, Hugo, and Sphinx).

### GitHub Pages {#github_pages}

[GitHub Pages](https://pages.github.com/) provides a free hosting and deployment option for Jekyll projects. If you upload a Jekyll project to a GitHub repository, you can indicate that it's a Jekyll project in your GitHub repo's Settings, and GitHub will automatically build it when you commit to your repo. This feature &mdash; building Jekyll projects directly from your GitHub repo &mdash; is referred to as GitHub Pages.

Quite a few doc sites use GitHub and Jekyll. For example, [Bootstrap](https://getbootstrap.com/) uses it:

<a href="https://pages.github.com/" class="noExtIcon"><img src="images/githubpagesscreenshot.png"/></a>

In your GitHub repo, click **Settings** and scroll down to **GitHub Pages**. This is where you activate GitHub Pages for your project.

<figure><img src="images/githubpagesconfigurationsettings.png"/><figcaption>Every GitHub repository is potentially a Jekyll project that you can auto-build when you commit to it.</figcaption></figure>

The tight integration of Jekyll with GitHub makes for a compelling argument to use a Jekyll-GitHub solution. For the most part, GitHub is the dominant platform for open source projects. If you're already using GitHub, it makes sense to choose a static site generator that integrates into the same platform to build your docs.

GitHub Pages is free but does have some limitations in scope:

> GitHub Pages sites are subject to the following usage limits:
>
> * GitHub Pages source repositories have a recommended limit of 1GB .
> * Published GitHub Pages sites may be no larger than 1 GB.
> * GitHub Pages sites have a soft bandwidth limit of 100GB per month.
> * GitHub Pages sites have a soft limit of 10 builds per hour. (See [Usage Limits](https://help.github.com/articles/what-is-github-pages/))

Unlike with other hosting and deployment platforms, GitHub Pages doesn't offer a commercial version that expands these limits. You can learn more about [GitHub Pages here](https://help.github.com/categories/github-pages-basics/).

{: .note}
I build this site and [my blog](http://idratherbewriting.com) using Jekyll and GitHub Pages. They are actually separate Jekyll projects and repos. My blog is in a GitHub repo called [tomjoht.github.io](https://github.com/tomjoht/tomjoht.github.io), named after my GitHub user name but published using a custom domain idratherbewriting.com. (Without the custom domain, it would be available at http://tomjoht.github.com.) The API doc site is in a repo called [learnapidoc](https://github.com/tomjoht/learnapidoc). It's available by default at http://idratherbewriting.com/learnapidoc. They seem like the same site, but they are actually separate projects in separate repos.

### CloudCannon {#cloudcannon}

Suppose you want to use Jekyll and GitHub, but you're frustrated by GitHub's limitations and you need a more robust platform for your Jekyll project. If so, [CloudCannon](https://cloudcannon.com/) is your solution. CloudCannon gives you a host of [additional features](https://cloudcannon.com/features/) that GitHub lacks, such as:

* Authentication of users
* Multiple environments for different branches
* Visual online interface for editing
* Jekyll plugins
* SSL for custom domains
* Automatic minification, and more

The founders of CloudCannon are experts with Jekyll and have designed the platform specifically for Jekyll projects. They also created a [host of Jekyll tutorials](https://learn.cloudcannon.com/) to enrich developer knowledge.

### Read the Docs {#readthedocs}

Read the Docs is an online hosting and deployment platform that can read Sphinx projects (from a public repository such as GitHub or Bitbucket) and automatically build the web output. In other words, it is a "continuous documentation platform for Sphinx" (see [An introduction to Sphinx and Read the Docs for Technical Writers](http://ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/)). Whereas GitHub Pages is based on Jekyll, Read the Docs is based on Sphinx.

The introduction on the [Read the Docs homepage](https://readthedocs.org/) describes the platform as follows:

> Read the Docs hosts documentation, making it fully searchable and easy to find. You can import your docs using any major version control system, including Mercurial, Git, Subversion, and Bazaar. We support webhooks so your docs get built when you commit code. There's also support for versioning so you can build docs from tags and branches of your code in your repository.

Read the Docs has both an open-source, free version ([readthedocs.org](https://readthedocs.org/)) and a commercial version ([readthedocs.com](https://readthedocs.com/)). This allows you to level-up your project when your needs mature but also doesn't lock you into a paid solution when you're not ready for it.

Read the Docs provides themes specific for documentation websites, and also lets you author in reStructuredText (or Markdown, if you prefer that instead). reStructuredText provides more documentation-specific features and semantics &mdash; see my discussion [here](pubapis_markdown.html#rst_and_asciidoc) for more details, or see [Why You Shouldn't Use "Markdown" for Documentation](http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/) for a more impassioned argument for rST.

The [Read the Docs documentation](https://docs.readthedocs.io/en/latest/getting_started.html) shows a sample output.

<a href="https://docs.readthedocs.io/en/latest/getting_started.html" class="noExtIcon"><img src="images/readthedocsplatform.png" /></a>

Some key features include a robust sidebar with expand/collapse functionality, search, versioning, output to PDF and ePub, and more.

To learn more about the platform, read through the [Read the Docs guide](https://docs.readthedocs.io/en/latest/). Read the docs includes most of the features technical writers would expect, especially related to single-source publishing. Some of these features include:

> * Output HTML, PDF, ePub, and more
> * Content reuse through includes
> * Conditional includes based on content type and tags
> Multiple mature HTML themes that provide great user experience on mobile and desktop
> Referencing across pages, documents, and projects
> Index and Glossary support
> Internationalization support. (&mdash; [An introduction to Sphinx and Read the Docs for Technical Writers](http://ericholscher.com/blog/2016/jul/1/sphinx-and-rtd-for-writers/))

The Read the Docs platform was co-founded by [Eric Holscher](http://ericholscher.com/), the same co-founder of [Write the Docs](http://www.writethedocs.org/). Write the Docs was originally intended as a conference for the Read the Docs community but evolved into a more general conference focused on technical communication for software projects. If you go to a Write the Docs conference, you'll find that sessions focus more on best practices for documentation rather than discussions about tools. (You can read my post, [Impressions from the Write the Docs Conference](http://idratherbewriting.com/2017/05/23/write-the-docs-and-the-battle-against-vendor-evil/) or listen to this [Write the Docs podcast with the co-founders](http://idratherbewriting.com/2017/12/14/write-the-docs-founding-ideas-and-principles-podcast/) for more details.)

Read the Docs has an impressive number of users. The platform has thousands of projects and receives millions of page views a month across these projects. In 2016, Read the Docs had more than 50,000 projects and received 252 million page views and 56 million unique visitors). You can [view their stats here](http://blog.readthedocs.com/read-the-docs-2016-stats/). Read the Docs is one of the most visited sites on the web and continues to grow at an impressive rate.

### Netlify {#netlify}

[Netlify](https://www.netlify.com/) is a popular hosting and deployment service for static site projects. Unlike with other hosting platforms, Netlify works with almost any static site generator, not just with Jekyll or Sphinx.

Netlify offers continuous delivery for your project. You can store your content on GitHub, GitLab, or Bitbucket, then link it to Netlify, and Netlify will build whenever you push changes.

Netlify offers a free plan with features similar to GitHub Pages, but also lets you scale up to Pro, Business, or Enterprise plans for more robust needs. With Netlify, you can get deploy previews, rollbacks, form handling, distributed content delivery network (CDN), infinite scalability, SSL, a programmable API, CLI, and more.

The most impressive example of a Netlify-hosted site is [Smashing Magazine](https://www.smashingmagazine.com/). Previously hosted on WordPress, Smashing Magazine made the switch to Netlify, with Hugo as the static site generator engine. See [Smashing Magazine just got 10x faster](https://www.netlify.com/blog/2017/03/16/smashing-magazine-just-got-10x-faster/) for details.

Other notable doc sites using Netlify include [Docker](https://docs.docker.com/), [Kubernetes](https://kubernetes.io/docs/home/), [React](https://reactjs.org/docs/hello-world.html), [Yarn](https://yarnpkg.com/lang/en/docs/), [Lodash](https://lodash.com/docs/), [Gatsby](https://www.gatsbyjs.org/docs/), and [Hugo](https://gohugo.io/documentation/).

Complementing Netlify is [Netlify CMS](#netlifycms), a headless CMS for your content.

### Aerobatic {#aerobatic}

[Aerobatic](https://www.aerobatic.com/) is similar to Netlify in that it builds and publishes your static site. Aerobatic gives you a robust publishing engine that includes a CDN, SSL, continuous delivery, a deployment CLI, password protection, and more. Aerobatic can publish a number of static site generators, including Jekyll, Hugo, Hexo, and more. Aerobatic says,

> Aerobatic is a specialized platform for efficient delivery of static webpages and website assets. We take care of the configuration details for you that provide the best balance of performance and maintainability. Stop fiddling with CDNs and web server configs and focus on coding great front-end experiences. &mdash; [Static website serving](https://www.aerobatic.com/docs/static-serving/)

## Headless CMSes {#cmsplatforms}

Finally, there is a class of developer doc tools that provide online GUIs for authoring and publishing, but they still store your content as flat files in repositories such as GitHub and Bitbucket. In other words, they provide a WordPress.com-like experience for your content (giving you a user interface to browse your posts, pages, layouts, and other content), but allow your content to live in plain text files in version control repositories. This category of tools is called "headless CMSs."

Just as we have [staticgen.com](https://www.staticgen.com/) that lists common static site generators, there's a similar index of [headless content management systems](https://headlesscms.org/), this one arranged in alphabetical order (rather than ranked by popularity).

<a href="https://headlesscms.org/"><img src="images/headlesscms.png"/></a>

Headless CMSs often combine both the authoring and the hosting/deployment in the same tool. Updates you make are built automatically on the platform. But unlike WordPress, the solution does not involve storing your doc content in a database and dynamically retrieving that content from the database when readers visit your page. Many times you can store your content on GitHub, and the headless CMS will read/pull it in a seamless way. (The platform probably will contain a database of some kind for your profile and other CMS features, but your content is not stored and retrieved there.)

### Forestry.io {#forestry}

[Forestry.io](https://forestry.io/) is similar to CloudCannon in that it offers online hosting for Jekyll projects, but it also provides hosting for [Hugo](https://gohugo.io/) and for Git. Forestry's emphasis is on providing an online CMS interface for static site generators.

<a href="https://forestry.io/" class="noExtIcon"><img src="images/forestryio.png" /></a>

The CMS interface gives you a WordPress-like GUI for seeing and managing your content. The idea is that most static site generators ostracize less technical users by forcing them into the code. (For example, when I write a post in Jekyll, usually others who look over my shoulder think I'm actually programming, even though I'm just writing posts in Markdown.) The CMS removes this by making the experience much more user friendly to non-technical people while also still leveraging the openness and flexibility of the static site generator platform.

Unlike CloudCannon, Forestry also offers an on-premise enterprise installation so you can host and manage the entire platform behind your company's firewall.

### Netlify CMS {#netlifycms}

[Netlify CMS](https://www.netlifycms.org/) is similar to Forestry in its offering of a content management system for static site generators. But rather than limiting the static site generators you can use, it provides a more open platform wrapper (built with React but using Git to manage the content) that integrates with any static site generator.

One of Netlify CMS's key advantages is in simplifying the content development experience for less technical users. But you can also standardize your authoring through the interface. Netlify CMS lets you map the custom fields in your theme to a GUI template, as shown in the image below. This reduces the chance that authors might use the wrong frontmatter tag in their pages (for example, `intro_blurb` or `IntroBlurb` or `introBlurb`) and instead just provides a box for this.

<figure><a href="https://www.netlifycms.org/" class="noExtIcon"><img src="images/netlifycms.png" style="border: 1px solid #dedede;"/></a><figcaption>Their site says, "The web-based app includes rich-text editing, real-time preview, and drag-and-drop media uploads. ... Writers and editors can easily manage content from draft to review to publish across any number of custom content types.</figcaption></figure>

Your content source can be stored in GitHub, GitLab, or BitBucket. Netlify CMS also integrates with [Netlify](#netlify), which is a popular hosting and deployment service for static site projects.

{: .tip}
For a tutorial on integrating Jekyll with Netlify CMS, see [Adding a CMS to Your Static Site With Netlify CMS](https://dzone.com/articles/adding-a-cms-to-your-static-site-with-netlify-cms). Or just start with the [Netlify CMS documentation](https://www.netlifycms.org/docs/).

### Readme.io {#readmeio}

[Readme.io](http://readme.io) is an online CMS for docs that offers one of the most robust, full-featured interfaces for developer docs available. Readme.io isn't a headless CMS, meaning you don't just point to your GitHub repo to pull in the content. Readme.io's emphasis is on providing an interface that helps you more easily write documentation based on best practices and designs. Readme.io provides a number of wizard-like screens to move you through documentation process, prompting you with forms to complete.

<img class="medium" src="images/readmeio_manual_api.png" style="border: 1px solid #dedede;" />

Most importantly, Readme.io includes *specific features for displaying API documentation content*, which puts it into a class of its own. Although you can add your API information manually, you can also import an [OpenAPI specification file](pubapis_swagger_intro.html). You can experiment by choosing one from the [OpenAPI examples](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v2.0/yaml), such as [this one](https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/json/petstore-expanded.json). Readme.io's integration of OpenAPI along with other doc content helps integrate outputs that are often separated. (This fragmentation is a problem I explore later in [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).)

To explore Readme.io:

1. Go to [readme.io](http://readme.io).
2. Click the **Sign Up** button in the upper-right corner and sign up for an account.
3. Click **+Add Project**. Then add a Project Name (e.g., Weather API), Subdomain (e.g., weather-api), and Project Logo. Then click **Create**.

   <img src="images/projectsettingsreadmeio.png" alt="Project Settings" />

4. Now check out the API doc configuration section. In the left sidebar, click **Reference Docs**, and then click **API**.

{: .tip}
For a demo of the sample weather API (that we've been using in this course) published on Readme.io, see [apitest.readme.io/docs](https://apitest.readme.io/docs).

Overall, Readme.io provides a robust GUI for creating API documentation in a way that is more extensive and well-designed than virtually any other platform available. The output includes an interactive, try-it-out experience with endpoints:

<img class="medium" src="images/readmeiotryitout.png" style="border: 1px solid #dedede;" />

The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.

There are some challenges with the platform. Readme.io isn't free, so you'll need licenses per author. Additionally, there isn't any content re-use functionality (currently), so if you have multiple outputs for your documentation that you're single sourcing, Readme.io may not be for you. Finally, if you want to customize your own design or implement a feature not supported, you probably can't just hack it into your code. You're stuck within the platform's constraints.

Even so, the output is sharp and the talent behind this site is top-notch. The platform is constantly growing with new features, and there are many high-profile companies with their docs on Readme. If you consider how much time it actually takes to build and deploy your own doc solution, going with a site like Readme.io will save you a lot of time. It will let you **focus on your content** while also adhering to best practices with site design.

Here are a few sample API doc sites built with Readme.io:

* [Validic](https://docs.validic.com/docs/getting-started)
* [Box API](https://developer.box.com/docs)
* [Coinbase API](https://developers.coinbase.com/api/v2#introduction)
* [Farmbase Software](https://farmbot-software.readme.io/docs)

## Tools for reading the OpenAPI specification {#openapitools}

In the [OpenAPI and Swagger section of this course](restapispecifications.html), I emphasize using [Swagger UI](pubapis_swagger.html) to read and display the [OpenAPI specification](pubapis_swagger_intro.html) as interactive documentation. I also provide a tutorial for using [Stoplight, a visual modeling tool](pubapis_stoplight_activity.html). Since I go into depth with those tools in other parts of the course, I won't dive into them here.

Beyond Swagger UI and Stoplight, there are many other tools that can read OpenAPI specification documents. That's the whole idea of a standard &mdash; when you create a standard way of describing APIs, many tools can predictably read the description and generate documentation (and other tooling) based on it.

Swagger has a detailed list of tools that can read the OpenAPI spec here: [Commercial Tools](https://swagger.io/commercial-tools/). You can see the many [open-source tools here](https://swagger.io/open-source-integrations/). Let's dive into one of these tools not covered elsewhere in this course: Spectacle.

### Spectacle {#spectacle}

[Spectacle](https://github.com/sourcey/spectacle) is an open-source Github project that builds an output from an OpenAPI specification file. The display provides a three-pane output similar to the Stripe or Slate docs. After you download the project files, you can build the display using Node simply by referencing your OpenAPI spec file.

Here's a [demo output](https://cheesestore.github.io/) using the sample OpenWeatherMap API:

<a href="http://idratherassets.com/spectacle/" class="noExtIcon"><img src="images/spectacleopenweather.png"/></a>

You can also see their [cheesestore demo](https://cheesestore.github.io/).

With almost no needed setup or configuration, Spectacle gives you a world-class output and site for your API reference docs. As long as the [OpenAPI spec](pubapis_openapi_tutorial_overview.html) that you integrate is fully detailed, the generated Spectacle site will be attractive and full-featured. (Spectacle doesn't allow you to add custom pages for other tutorials or conceptual docs.)

You can also build the Spectacle site without the framed layout so you can embed it into another site. However, in playing with this embed option, I found that to do this, I'd have to create my own styles. If using the default styles in the full-site output, they most likely will overwrite or interfere with your host site's appearance.

{: .tip}
Which tool should you use? I provide some more concrete recommendations in [Which tool to choose for API docs -- my recommendations](pubapis_which_tool_to_choose.html).

{% comment %}

briandominick [1:12 PM]
Hey Tom! Here's my review/s of those two new tooling articles. I really enjoyed them. Big contribution, and believe me I appreciate how hard it is to convey some of this stuff.
[1:13 PM]
On the "Which Tool..." article:

The requirements checklist is awesome!

My personal bias would recommend adding AsciiDoc to the paragraph starting "Markup is also a consideration." Among the three you're featuring, Jekyll has support for AsciiDoc via the jekyll-asciidoc plugin. This does not yet fix any of the limitations of Jekyll you cited, including xrefs, PDFs -- though it does enable semantic markup, of course.

I'm a little curious why you don't recommend GitHub hosting for all SSGs. In the other article, you refer to GitHub Pages as the automated Jekyll build/serve service that GitHub Pages performs, but GitHub Pages can also host and serve any static web files very easily by merging them to master branch or the `docs/` subdir, however that's configured (as I believe I've seen you instruct elsewhere?). Assuming all SSGs have the ability to generate local static builds into a target directory, GitHub Pages can be used as a free hosting platform for those built files. This is part of the portability promise of the SSG concept. I need to write up how I'm doing it, but it's nothing revolutionary. I even have HTTPS enabled using Cloudflare as instructed in this guide: https://hackernoon.com/how-to-setup-your-jekyll-website-with-free-web-hosting-ssl-and-a-custom-domain-4056ff862ca1
Hacker Noon
How to setup your Jekyll website with free web hosting, SSL, and a custom domain
Free Web hosting for your finished Jekyll project
Reading time
4 min read
Nov 11th, 2017
(99 kB)
https://cdn-images-1.medium.com/max/1200/1*9sL-ooE5f8Z4ANBRen_sdA.png
[1:17 PM]
On the "Publishing Tool Options..." article:

Just a nitpick, but I think SSGs probably are not strictly command-line based, if it's still early enough to help you settle the definition once and for all ;-); certainly there's no reason a GUI-style app could not be used to mange build/serve procedures, as well as configuration and so forth, even if all it's doing it is executing commands and editing flat files in the background. Not a big deal, it just doesn't seem important which UI is used to execute basic commands.

More importantly on this same issue, I think all SSGs _can_ be used programmatically, such as coded into a build configuration using a tool like Rake, Gradle, etc, or custom scripting. Really the only thing they have in common is compiling websites from simpler source files, right?

I did a double-take on this: "The entire website is fully built when the user arrives" -- it sounds like you could saying either exact opposite thing: that the entire site is built at runtime ("when" as in "at the time"), or that the site is pre-built. It's likely that readers with no background in web servers won't even appreciate the difference, anyway, so I'd be very specific here, like "All the pages on a static site were built prior to the browser's request, enabling an instantaneous response; nothing changes dynamically based on the user’s profile (unless done with client-side JS)." Maybe that's not ideal -- this is always tricky to convey briefly.

Unless I'm missing something, you don't really touch on the "portability" or "platform independence" aspect of SSGs. One of the main appeals for me is not getting wedded to, or even needing, an application server. I mean, PHP is just a pain, self-administered or otherwise, and it makes a lot of shops uncomfortable with running even mature CMSes, let alone some of the hackier stuff out there. But the site you build with an SSG can be hosted with minimal configuration and dependencies, which means very high security, as well.

In your the caption for your staticgen.com comparison screenshot, you wrote "The branch icon represents the number of times the project has been branched". Are you deliberately not using "forked"? That icon represents the number of repo forks that exist registered on their platform (GitHub, etc). Branching is internal to a repo and is not necessarily a measurement of anything useful to a shopper.

Very psyched to learn about CloudCannon. Last time I needed to add authentication to an internal docs site we wound up using Heroku with some janky plugins.

Your domain expertise continues to impress me. The more I learn about tooling, the more I realize how much more there is to know. I hope some of this helps, and thanks a ton for laying this all out! You've inspired me to write up how I'm using GitHub Pages, which I've been meaning to do.
[1:18 PM]
Sorry, tons of text.

tomjohnson [1:19 PM]
Thanks Brian. I’ll add the note about asciidoc with Jekyll. Re the static hosting with Jekyll, that’s a good point too that I’ll add. One reason I didn’t is because I think the hosting and deployment platform should build your project from the server. I do use GitHub repos for some projects that don’t use jekyll (e.g., reveal JS slide presentation projects), and I have GitHub display the web content. That is a useful tip to know.

briandominick [1:21 PM]
Yeah I totally get that I'm suggesting explaining a different approach to CI, that would require local build configuration rather than relying on GH. At least I think that's the key distinction. And yeah I'm still learning core DevOps concepts to figure out what is and is not true "CI"
[1:23 PM]
So I'm not necessarily suggesting it, is what I actually mean :wink:

tomjohnson [1:25 PM]
more good points! thanks.

- re interacting with SSGs through a GUI instead of the command line, interesting. just curious, would an example be Netlify CMS or Forestry.io there (the headless CMS that uses Git as a wrapper)?

- re “The entire website is fully built when the user arrives”, thanks for the suggested rewording there. Will incorporate that.

- re platform independence, yes, I totally need to add this point to my intro to SSGs. That is a huge reason to use them (almost every company I’ve worked at bans PHP, and most traditional web CMSs use PHP).

- re branched versus forked, good note. I just described that incorrectly.

- The guy behind CloudCannon (Mike Neumegen) is quite an impressive Jekyll guru who has produced a ton of useful video tutorials with Jekyll. I wish we could use CloudCannon where I’m at.
[1:26 PM]
just curious, what is your authoring and publishing setup?

briandominick [1:29 PM]
Yeah I think the headless CMS concept, which I'm also just recently starting to tinker with, is pretty much a GUI for an SSG.
[1:32 PM]
My go-to is managing complex content in YAML files, prose/topical content in AsciiDoc, and then using a tool I wrote called LiquiDoc to preprocess YAML and AsciiDoc as needed for various output formats. So I've got Atom as my editor for AsciiDoc, which I truly love over Markdown and RST just far and away, as did nearly all the engineers I worked with at my last gig. And I've been building HTML with Jekyll but am now starting to play with Grain, which has AsciiDoc and RST processing built in and is configured in Groovy and will integrate with more complex builds.
[1:34 PM]
And the crux of my toolchain is the Asciidoctor suite. Those folks are building an amazing tool and a really great community around it. They write great code and have an amazing process. I'm betting on AsciiDoc because of them, as well as my experience with Java/Go and even front-end programmers digging it.

tomjohnson [1:35 PM]
I should have probably given some attention to AsciiDoc in that list of tools. Besides the Asciidoctor suite, how many other SSGs or other tools can process AsciiDoc?

briandominick [1:36 PM]
Very few. It's really weak in the SSG field. For all the same reasons you noted about docs-specializing tools.
[1:36 PM]
But I believe Jekyll, MkDocs, and Grain might be it

tomjohnson [1:37 PM]
I need to read more of the content on your site. I marked a few pages to check out later, such as your Codewriting book and the Liquidoc tool, and I added your blog to my feedly rss list. Thanks!

briandominick [1:37 PM]
I'm not actually arguing that AsciiDoc has a strong showing in this exact area you're covering. I don't think you neglected it except where I noted

tomjohnson [1:37 PM]
Jared Morgan really likes Asciidoc.
[1:37 PM]
I’ve never used it.

briandominick [1:38 PM]
Very cool, thanks for checking it out. I'd be thrilled for any feedback. I have a lot of quotes and cites from you saved up for my next batch if commits to the book project.
[1:38 PM]
There's definitely some parts I'll point out to you that I'd love feedback on specifically. But this work you just did is a big contribution. I dance around it so far in what I've written in the book.

tomjohnson [1:39 PM]
great. is the book available on epub or kindle or anything? or just pdf?

briandominick [1:39 PM]
It's still a draft, so you can grab that PDF or generate an HTML version
[1:40 PM]
https://github.com/briandominick/codewriting/releases/download/v0.3.0-alpha/codewriting-book-draft-3.pdf
[1:40 PM]
Somebody did a full review so I have a HUGE commit coming soon
[1:40 PM]
But you'll get the gist from that version for sure

tomjohnson [1:41 PM]
thanks.

briandominick [1:41 PM]
I'm keeping it open source and soliciting contributions, so if you wanna try out AsciiDoc, consider submitting a sidebar to my book! :wink:

tomjohnson [1:41 PM]
btw, it may take me a month or so to read it due to a project-full/busy plate, but i plan to check it out more.

briandominick [1:41 PM]
Absolutely understand
[1:42 PM]
It's just a draft and I'll send you the next one directly when it's released

tomjohnson [1:42 PM]
sounds good.

briandominick [1:42 PM]
Cool, I'll ping you down the road a bit. Have a great weekend!

{% endcomment %}
