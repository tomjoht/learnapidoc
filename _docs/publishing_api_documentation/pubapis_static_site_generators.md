---
title: "Static site generators"
permalink: /pubapis_static_site_generators.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.6
section: publishingapis
path1: /publishingapis.html
redirect_from:
- /learnapidoc/pubapis_other_tool_options.html
- /learnapidoc/pubapis_docs_as_code_tool_options.html
- /learnapidoc/pubapis_other_openapi_parsers.html
---

Static site generators, such as Jekyll, Hugo, and Sphinx, are one of the most common authoring and publishing tools used in [docs-as-code scenarios](pubapis_docs_as_code.html). Static site generators build all the files for your website, pushing Markdown files into the layouts you define, running scripts to automate logic you need and more as they generate out HTML files. This section focuses exclusively on static site generators. In upcoming topics, I'll also explore [hosting and deployment options](pubapis_hosting_and_deployment.html) and [headless CMSs](pubapis_headless_cms.html), which are closely related to static site generators.

* TOC
{:toc}

## What are static site generators {#staticsitegenerators}

Static site generators are applications that you can run on the command line (or potentially through some other UI) to compile a website from simpler source files. For example, you might have various files defining a layout, some "include" files (containing re-usable content), a configuration file, and your Markdown content files.

The static site generator reads your configuration file and pushes your content into the layout files, adds whatever includes are referenced (such as a sidebar or footer or re-used snippets), and writes out the HTML pages from the Markdown sources. Each page usually has the sidebar and other navigation included directly into the page (pre-built), as well as all the other layout code you've defined, ready for viewing online.

Additionally, static site generators can be used programmatically in build scripts that are run as part of a process on a server. This allows them to be leveraged in continuous delivery processes that are triggered by a particular event, such as a commit to a particular branch in a version control repository, or as part of a script.

With a regular content management system (CMS) like WordPress, content is stored in a separate database and dynamically pulled from the database to the web page on each user visit. Static site generators don't have databases &mdash; all the content is on the page already, and nothing is dynamically assembled on the fly through PHP or other server-side scripting. All the pages on a static site were built prior to the browser's request, enabling an instantaneous response; nothing changes dynamically based on the user’s profile (unless done with client-side JS).

Freedom from the database model makes static site generators much more portable and platform independent. You simply have a collection of text files. In contrast, moving from one CMS to another usually involves database migration, and the many database fields from one CMS don't usually map cleanly to other databases, not to mention the unique server configurations and other infrastructure required for each solution. Static site generators remove that database and infrastructure complexity, making the text files lighter, more portable, and less prone to error from database and server issues.

Before I had my blog [idratherbewriting.com](https://idratherbewriting.com) in Jekyll, I used WordPress (and was even a WordPress consultant for five years as a side job). I can't count how many times my WordPress blog went down or had other issues. I routinely had to contact Bluehost (my web host) to find out why my site was suddenly down. I religiously made backups of the database, applied security patches and hardening techniques, optimized the database through other tools, and more. And with all of this maintenance hassle, the site was extremely slow, delivering pages in 2+ seconds instead of 0.5 seconds with Jekyll. For my many WordPress clients, I often had to troubleshoot hacked databases.

{% include random_ad.html %}

With static site generators, when you're developing content on your local machine, you usually have web server preview (such as <code class="noExtIcon">http://127.0.0.1:4000/</code>) provided through the static site generator. Many static site generators rebuild your site continuously in the preview server each time you make a change. The time to rebuild your site could take less than a second, or if you have thousands of pages, several minutes.

Because everything is compiled locally from text files, you don't need to worry about security hacks into a database. Everything is a human-readable plain text file, from the content files you write to the application code. It's also incredibly easy to work with custom code, such as special JavaScript libraries, advanced HTML, or other complex code you want to use on a page. You can author your content in Markdown or HTML, add code samples inside code blocks that are processed with a code-syntax highlighter, and more. The openness and flexibility of static site generators let you do what you want with them.

Most static site generators allow you to use a templating and scripting languages, such as Liquid or Go, inside your content. You can use if-else statements, run loops, insert variables, and do a lot more sophisticated processing of your content through this templating language.

Because you're working with text files, you usually store your project files (but not the built site output) in a code repository such as GitHub. You treat your content files with the same workflow as programming code &mdash; committing to the repository, pushing and pulling for updates, branching and merging, and more.

When you're ready to publish your site, you can usually build the site directly from your Git repository, rather than building it locally and then uploading the files to a web server. This means your code repository becomes the starting point for your publishing and deployment pipeline. "Continuous delivery," as it's called, eliminates the need to manually build your site and deploy the build. Instead, you just push a commit to your repository, and the continuous delivery mechanism builds and deploys it for you.

Although there are hundreds of static site generators (you can view a comprehensive list at [Staticgen.com](https://www.staticgen.com/)), only a handful of are probably relevant for documentation. I'll consider these several here:

* [Jekyll](#jekyll)
* [Hugo](#hugo)
* [Sphinx](#sphinx)
* [MkDocs](#mkdocs)

One could discuss many more &mdash; Hexo, Vue, Middleman, Gitbook, Pelican, and so on. But the reality is that only a handful of static site generators are commonly used for documentation projects.

## Jekyll {#jekyll}

I devote an entire topic to [Jekyll](pubapis_jekyll.html) in this course, complete with example Git workflows, so I won't go as deep in detail here. Jekyll is a Ruby-based static site generator originally built by the co-founder of GitHub. Jekyll builds your website by converting Markdown to HTML, inserting pages into layouts you define, running any Liquid scripting and logic, compressing styles, and writing the output to a site folder that you can deploy on a web server.

<a href="https://jekyllrb.com/" class="noExtIcon"><img src="https://idratherbewritingmedia.com/images/api/jekyllsite.png"/></a>

There are several compelling reasons to use Jekyll:

* **Large community**. The Jekyll community, arguably the largest among static site generator communities, includes web developers, not just documentation-oriented groups. This broader focus attracts more developer attention and helps propel greater usage.
* **Control.** Jekyll provides a lot of powerful features (often through [Liquid](http://shopify.github.io/liquid/), a scripting language) that allow you to do almost anything with the platform. This scripting capability gives you an incredible amount of control to abstract complex code from users through simple templates and layouts. Because of this, you probably won't outgrow Jekyll. Jekyll will match whatever web development skills or other JS, HTML, or CSS frameworks you want to throw at it. Even without a development background, it's fairly easy to figure out and code the scripts you need. (See my series [Jekyll versus DITA](https://idratherbewriting.com/2015/03/23/new-series-jekyll-versus-dita/) for details on how to do in Jekyll what you're probably used to doing in DITA.)
* **Integration with GitHub and AWS S3.** Tightly coupling Jekyll with the most popular version control repository on the planet (GitHub) almost guarantees its success. The more GitHub is used, the more Jekyll is also used, and vice versa. [GitHub Pages](pubapis_hosting_and_deployment.html#github_pages) will auto-build your Jekyll site (continuous delivery), allowing you to automate the publishing workflow without effort. If GitHub isn't appropriate for your project, you can also publish to AWS S3 bucket using the [s3_website plugin](https://github.com/laurilehmijoki/s3_website), which syncs your Jekyll output with an S3 bucket by only adding or removing the files that changed.

{% include random_ad2.html %}

For [theming](https://jekyllrb.com/docs/themes/), Jekyll offers the ability to package your theme as a Rubygem and distribute the gem across multiple Jekyll projects. Rubygems is a package manager, which means it's a repository for plugins. You pull the latest gems (plugins) you need from Rubygems through the command line, often using Bundler. Distributing your theme as a Rubygem is one approach you could use for breaking up your project into smaller projects to ensure faster build times.

{: .tip}
If you're looking for a documentation theme, see my [Documentation theme for Jekyll](https://idratherbewriting.com/documentation-theme-jekyll/). Also, note that this site is built with Jekyll and published through GitHub Pages.

## Hugo {#hugo}

[Hugo](https://gohugo.io/) is a static site generator that is rapidly growing in popularity. Based on the Go language, Hugo builds your site significantly faster than most other static site generators, including Jekyll. There's an impressive number of [themes](https://themes.gohugo.io/), including some designed for [documentation](https://themes.gohugo.io/tags/documentation/). Specifically, see the [Learn theme](https://themes.gohugo.io/theme/hugo-theme-learn/en) and this [Multilingual API documentation theme](https://github.com/bep/docuapi).

<a href="https://gohugo.io/" class="noExtIcon"><img src="https://idratherbewritingmedia.com/images/api/hugosite.png"/></a>

As with Jekyll, Hugo allows you to write in Markdown, add frontmatter content in YAML (or [TOML](https://github.com/toml-lang/toml) or JSON) at the top of your Markdown pages, and more. In this sense, Hugo shares a lot of similarity with Jekyll.

Hugo has a robust and flexible templating language (Golang) that makes it appealing to designers, who can build more sophisticated websites based on the depth of the platform (see [Hugo's docs here](https://gohugo.io/documentation/)). Go templating has more of a learning curve than templating with Liquid in Jekyll, and the docs might assume more technical familiarity than many users have. Still, the main selling point behind Hugo is that it builds your site quickly. This speed factor might be enough to compensate for the steeper learning curve.

## Comparing speed with Hugo with Jekyll

Speed may not be immediately apparent when you first start evaluating static site generators. You probably won't realize how important speed is until you have thousands of pages in your site and are waiting for it to build.

{: .note}
Speed here refers to the time to compile your web output, not the time your site takes to load when visitors view the content in a browser. Most static site generators load the pre-built pages quickly (less than 0.5 seconds), but the time it takes for the files to compile into a website before they're deployed depends on the platform, the number of pages, and the complexity of the code on the pages.

Although it depends on how you've coded your site (e.g., the number of `for` loops that iterate through pages), in general, I've noticed that with Jekyll projects, if you have, say, 1,000 pages in your project, it might take about a minute or two to build the site. Thus, if you have 5,000 pages, you could be waiting 5 minutes or more for the site to build. The whole automatic re-building feature becomes almost irrelevant, and it can be challenging to identify formatting or other errors until the build finishes. (There are workarounds, though, and I'll discuss them later on.)

If Hugo can build a site much faster, it offers an advantage in the choice of static site generators. Smashing Magazine recently [chose Hugo](https://next.smashingmagazine.com/2017/03/a-little-surprise-is-waiting-for-you-here/) and built a variety of complementary tools for managing their site.

For a detailed comparison of Hugo versus Jekyll, see [Hugo vs. Jekyll: Comparing the leading static website generators](https://opensource.com/article/17/5/hugo-vs-jekyll). In one of the comments, a reader makes some interesting comments about speed:

> Our documentation is about 2700 pages.... Generating the whole site takes about 90 seconds. That's kind of annoying when you're iterating over small changes. I did a basic test in Hugo, it does it in about 500ms.

This build time is a serious speed advantage that will allow you to scale your documentation site in robust ways. The author (whose docs are at [https://docs.mendix.com](https://docs.mendix.com)) made the switch from Jekyll to Hugo (see the [doc overview in GitHub](https://github.com/mendix/docs)). His switch suggests that speed is perhaps a primary characteristic to evaluate in static site generators.

The deliberation between Hugo and Jekyll will require you to think about project size &mdash; how big should your project be? Should you have one giant project, with content for all documentation/products stored in the same repo? Or should you have multiple smaller repos? These are some of the considerations I wrestled with when [implementing docs-as-code tooling](pubapis_switching_to_docs_as_code.html). I concluded that having a single, massive project is preferable because it allows easier content re-use, onboarding, validation, and error checking, deployment management, and more.

Regarding build speed, there are workarounds in Jekyll to enabling faster builds. In my doc projects at work (where we have probably 1,500 pages or so across many different doc sets), we implemented build shortcuts. By cascading configuration files, you can limit the builds to one particular doc directory. I have one configuration file (e.g., \_config.yml, the default) that sets all content as `publish: true`, and another configuration file (e.g., config-acme.yml) that sets all content as `publish: false` except for a particular doc directory (the one I'm working with, e.g., acme). When I'm working with that acme doc directory, I build Jekyll like this:

```bash
jekyll serve --config _config.yml,config-acme.yml
```

The `config-acme.yml` will overwrite the default `_config.yml` to enable one specific doc directory as `publish: true` while disabling all others. As a result, Jekyll builds lightning fast. This method tends to work quite well and is used by others with large Jekyll projects as well. I usually focus on one documentation set at a time. We have continuous delivery configured with the server, so when it's time to push out the full build (where `publish: true` is applied to all directories and no config-acme.yml file is used), the full build process takes place on the server, not the local machine. The full build takes a couple of minutes. (The server has other pipeline logic in the way it validates, ingests, and deploys files that requires about 10 minutes in total.)

Although static site generators seem to change quickly, it's harder for one tool, like Hugo, to overtake another, like Jekyll, because of the custom coding developers usually do with the platform. If you're just using someone's theme with general Markdown pages, great, switching will be easy. But if you've built custom layouts and added custom frontmatter in your Markdown pages that gets processed in unique ways by the layouts, as well as other custom scripts or code that you created in your theme specifically for your content, changing platforms will be more challenging. You'll have to change all your custom Liquid scripting to Golang. Or if working with another platform, you might need to change your Golang scripts to Jinja templating, and so forth.

For this reason, unless you're using themes built by others, you don't often jump from one platform to the next as you might do with DITA projects, where all content usually conforms to the same specification.

## Sphinx {#sphinx}

[Sphinx](http://www.sphinx-doc.org/en/stable/) is a popular static site generator based on Python. It was originally developed by the Python community to document the Python programming language (and it has some direct capability to document Python classes), but Sphinx is now commonly used for many documentation projects unrelated to Python. Part of Sphinx's popularity is due to its Python foundation since Python works well for many documentation-related scripting scenarios.

<a href="http://www.sphinx-doc.org/en/stable/" class="noExtIcon"><img src="https://idratherbewritingmedia.com/images/api/sphinxsite.png"/></a>

Because Sphinx was designed from the ground up as a documentation tool, not just as a tool for building websites (like Jekyll and Hugo), Sphinx has more documentation-specific functionality that is often absent from other static site generator tools. Some of these documentation-specific features include robust search, more advanced linking (linking to sections, automating titles based on links, cross-references, and more), and use of reStructuredText (rST), which is more semantically rich, standard, and extensible than Markdown. (See [What about reStructuredText and Asciidoc?](pubapis_markdown.html#rst_and_asciidoc) for more details around rST compared to Markdown.)

For continuous deployment with your hosting, Sphinx can be used with the [Read the Docs](pubapis_hosting_and_deployment.html#readthedocs) platform. Overall, Sphinx has a passionate fan base among those who use it, especially among the Python community. However, because Sphinx was specifically designed as a documentation tool, the community might not be as large as some of the other static site generator communities (which use the static site generators for building general websites, not just documentation sites).

As of December 2018, [Staticgen.com](https://www.staticgen.com/) shows the number of stars, forks, and issues as follows:

{% include course_image.html url="https://www.staticgen.com/" filename="staticgendisplay" ext_print="png" ext_web="png" alt="Top static site generators" caption="Top static site generators" %}

On the Staticgen.com site, the star icon represents the number of users who have "starred" the project (basically followed its activity). The forked icon represents the number of repo forks that exist registered on their platform (GitHub, etc.). The bug icon represents the number of open issues logged against the project. The green numbers indicate trends with these numbers.

Jekyll, Next, and Hugo are the most common static site generators. If you look at [Staticgen.com](https://www.staticgen.com/), you'll see that between Hugo and Sphinx, there are about 24 other static site generators (Gatsby, Hexo, Gitbook, Nuxt, Vuepress, Docusaurus, Pelican, Metalsmith, MkDocs, Brunch, Middleman, React Static, Harp, Expose, Assemble, Wintersmith, Cactus, Phenomic, Docpad, Lektor, HubPress, *and then Sphinx*). But I called out Sphinx here because of its popularity among documentation groups and for its integration with [Read the Docs](pubapis_hosting_and_deployment.html#readthedocs).

## MkDocs {#mkdocs}

[MkDocs](http://www.mkdocs.org/) is a static site generator based on Python and designed for documentation projects. Similar to Jekyll, with MkDocs you write in Markdown and store page navigation in YAML files. You can adjust the CSS and other code (or create your own theme). Notably, the MkDocs provides some themes that are more specific to documentation, such as the [Material theme](https://squidfunk.github.io/mkdocs-material/). MkDocs also offers a theme ("ReadtheDocs") that resembles the Read the Docs platform.

<a href="http://www.mkdocs.org/" class="noExtIcon"><img src="https://idratherbewritingmedia.com/images/api/mkdocs.png"/></a>

Some [other themes](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes) are also available. MkDocs uses [Jinja templating](http://jinja.pocoo.org/), provides [template variables](http://www.mkdocs.org/user-guide/custom-themes/#template-variables) for custom theming, and more.

Although there are many static site generators with similar features, MkDocs is one more specifically oriented towards documentation. For example, it does include search. (You can incorporate Algolia search into any of these platforms, though, so built-in search &mdash; unless it's really phenomenal &mdash; probably shouldn't be a distinguishing factor.)

While it seems like orienting the platform towards documentation would be advantageous for tech writers, this approach might actually backfire, because it shrinks the community. The number of general web designers versus documentation designers is probably a ratio of 100:1. As such, MkDocs remains a small, niche platform that probably won't see much growth and long-term development beyond the original designer's needs.

This is the constant tradeoff with tools &mdash; the tools and platforms with the most community and usage aren't usually the doc tools. The doc tools have more features designed for tech writers, but they lack the momentum and depth of the more popular website building tools.

## What about this or that tool?

Right now there are probably many readers who are clenching their first and lowering their eyebrows in anger at the omission of their tool. *What about ... Docpad!!??? What about Nikola??!! What about Docusaurus?!!*

Hey, there are *a lot* of tool options out there, and you might have found the perfect match between your content needs and the tool. Additionally, the tools landscape for developer docs is robust, complex, and seemingly endless.

Also, recognize that I'm only recommending what I perceive to be the most popular options. The developer tool landscape is diverse and constantly changing, and what may be relevant one day might be passé the next. Docs-as-code tooling is a difficult space to navigate, and selecting the right tool for your needs is a tough question. I offer more specific advice and recommendations in [Which tool to choose for API docs — my recommendations](pubapis_which_tool_to_choose.html). The tool you choose will affect both your productivity and capability, so it tends to be an important choice.

{: .tip}
For more doc tools, see the [Generating Docs](https://github.com/PharkMillups/beautiful-docs#generating-docs) list in [Beautiful Docs](https://github.com/PharkMillups/beautiful-docs). Additionally, [DocBuilds](http://www.docbuilds.com/) tries to index some of more popular documentation-specific static site generators. For tools specifically related to parsing the [OpenAPI specification](pubapis_openapi_intro.html), see [Ultimate Guide to 30+ API Documentation Solutions](https://nordicapis.com/ultimate-guide-to-30-api-documentation-solutions/) from Nordic APIs and [Tools and Integrations](https://swagger.io/tools/open-source/open-source-integrations/) from Smartbear.
