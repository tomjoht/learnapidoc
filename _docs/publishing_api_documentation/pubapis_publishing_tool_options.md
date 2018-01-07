---
title: "Publishing tool options for developer docs"
permalink: /pubapis_publishing_tool_options.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.91
section: publishingapis
path1: /publishingapis.html
redirect_from:
- /learnapidoc/pubapis_other_tool_options.html
---

In the developer documentation space, there are many different tools for creating documentation, and there’s no clear industry standard. Different tools may better suit different environments, skill sets, and products. On this page, I've listed the most common authoring tools related to the developer documentation space.

Note that the tools below are useful for writing and deploying documentation, particularly the [nonreference docs](docnonref.html) in your project. For tools that will read an [OpenAPI specification document](pubapis_swagger_intro.html) and generate interactive reference documentation, see [Other tools to parse and display OpenAPI specs](pubapis_other_openapi_parsers.html).

Also, as explained in [Docs-as-code tools](pubapis_docs_as_code.html), I'm primarily focusing on static site generators and continuous delivery platforms rather than traditional HATs. There are a lot of tools in this space, and I've sorted them into three main groups: static site generators, continuous delivery hosting platforms, and static CMS platforms. You use static site generators to author content, and continuous delivery hosting platforms to build and deploy the content. Some solutions combine the two. These I call static CMS's.

* TOC
{:toc}

## Static site generators

### What are static site generators?

Static site generators (fully listed on [Staticgen.com](https://www.staticgen.com/)) are applications that run on the command line and compile a website. For example, you may have various files defining a layout, some "include" files, a configuration file, and your content files.

The static site generator reads your configuration file and pushes your content into the layout files, adds whatever includes are referenced (such as a sidebar or footer), and renders everything into HTML. Each page has the sidebar and other navigation included directly into it, as well as all the other layout code you've defined, ready for viewing.

The entire website is pre-built, so when users visit the page, the entire content is already there. With a regular content management system (CMS) like WordPress, content is actually stored in the database and dynamically retrieved on each user visit. Static site generators don't have databases &mdash; all the content is on the page already, and nothing is dynamically assembled on the fly through PHP or any other dynamic scripting.

When you're working on content, static site generators give you a web server preview (such as `http://127.0.0.1:4000/`). Many static site generators rebuild your site continuously in the browser preview. Each time you make a change to your site, the static site generator recompiles your site in about 1 second (depending on the size of the project). You can refresh your browser preview page to see the changes as you work.

Because everything is compiled locally, you don't need to worry about security hacks into a database. Everything is a plain text file. There are no security issues. It's also incredibly easy to work with code samples. You can author your content in Markdown or HTML, add code samples inside code blocks that are processed with a Markdown processor, and more. You can add your own scripts directly on the page. It's simply much easier and more flexible to do what you want.

Most static site generators allow you to use a templating and scripting languages inside your content. You can use if-else statements, run loops, insert variables, and do a lot more sophisticated processing of your content through this templating language directly on your page.

Because you're working with text files, you usually store your site files in a code repository such as Github. You treat your content files with the same workflow as programming code &mdash; committing to the repository, pushing and pulling for updates, and more.

When you're ready to publish your site, you can usually build the site directly from your Git repository (rather than building it locally and then uploading the files). This means your code repository becomes your publishing host. It eliminates the need to actually build your site and deploy the build; instead, you just deploy the source code, and the repository builds it for you.

Although there are hundreds of static site generators, only a handful of are relevant:

* [Jekyll](#jekyll)
* [Hugo](#hugo)
* [Sphinx](#sphinx)

One could discuss many more &mdash; Hexo, Middleman, Gitbook, Pelican, and so on. But the reality is that these other static site generators are fading (at least for documentation) as the top handful mature and develop more robust, refined features.

### Jekyll {#jekyll}

I devoted an entire topic to [Jekyll](pubapis_jekyll.html) earlier, so I won't go as deep in detail here. Jekyll is a static site generator similar to Sphinx. It builds your website by converting Markdown to HTML, inserting pages into layouts you define, running any Liquid scripting and logic, compressing styles, and writing the output to a \_site folder that that you can deploy on a web server.

There are several compelling reasons to use Jekyll:

* **Large community**. The community, arguably the largest among static site generator communities, includes web developers, not just documentation-oriented groups. This broader focus attracts more developer attention and helps propel greater usage.
* **Control.** Jekyll provides a lot of powerful features (often through Liquid) that allow you to do almost anything with the platform. Because of this, you probably won't outgrow it. Jekyll will match whatever web development skills or other JS, HTML, or CSS frameworks you want to use with it. Even without a development bakground, it's fairly easy to figure out and code the scripts you need.
* **Integration with GitHub and AWS S3.** Tightly coupling Jekyll with the most used version control repository on the planet (GitHub) almost guarantees its success. The more GitHub is used, the more Jekyll is also used. [GitHub Pages](#github_pages) will auto-build your Jekyll site (called "continuous delivery"), allowing you to automate the publishing workflow without effort. If GitHub isn't appropriate for your project, you can also publish to AWS S3 bucket using the [s3_website plugin](https://github.com/laurilehmijoki/s3_website), which syncs your output with an S3 bucket by only adding or removing the files that changed in your output.

For [theming](https://jekyllrb.com/docs/themes/), Jekyll offers the ability to package your theme as a Rubygem and then distribute it across multiple themes. This is one approach you could use for breaking up your project into smaller projects to ensure faster build times.

You can use [Liquid scripting](http://shopify.github.io/liquid/) for implementing more advanced logic in your themes. This gives you an incredible amount of control to abstract complex code from users through simple templates and layouts.

### Hugo

[Hugo](https://gohugo.io/) is a static site generator that is rapidly growing in popularity. Based on the Go language, Hugo builds your site faster than most other static site generators, including Jekyll. There's an impressive number of [themes](https://themes.gohugo.io/), including some designed for [documentation](https://themes.gohugo.io/tags/documentation/). Specifically, see the [Learn theme](https://themes.gohugo.io/theme/hugo-theme-learn/en) and this [multilingual API documentation theme](https://github.com/bep/docuapi).

As with Jekyll, Hugo allows you to write in Markdown, add frontmatter content in YAML (or TOML or JSON) at the top of your Markdown pages, and more.

Hugo has a robust and flexible templating language that makes it appealing to designers, who can build more sophisticated websites based on the depth of the platform (see [Hugo's docs here](https://gohugo.io/documentation/)). For example, see  But the main selling point behind Hugo is that it's fast.

Speed may not be immediately apparent when you first start evaluating static site generators. You probably won't realize how important speed is until you have hundreds of pages in your site and are waiting for it to build. Although it depends on how you've coded your site, in general, I've noticed that with Jekyll projects, if you have, say, 1,000 pages in your project, it might take about a minute to build the site. Thus, if you have 5,000 pages, you could be waiting 5 minutes for the site to build. The whole continual re-building becomes a lost feature, and it can be difficult to identify formatting or other errors until the builds finish.

If Hugo can build a site much, much faster, it offers a serious advantage in the choice of static site generators. Given that major web development sites like [Smashing Magazine chose Hugo](https://next.smashingmagazine.com/2017/03/a-little-surprise-is-waiting-for-you-here/) is evidence of Hugo's emerging superiority among the static site generators.

For a detailed comparison of Hugo versus Jekyll, see [Hugo vs. Jekyll: Comparing the leading static website generators](https://opensource.com/article/17/5/hugo-vs-jekyll). In one of the comments, a reader says:

> I have been doing extended research on this topic and in the end chose to use Jekyll. I have done a huge project: [https://docs.mendix.com](https://docs.mendix.com), where we have made the complete website Open Source on Github.
>
> Fun project where I ended up moving quite some stuff from Jekyll to Node. For example generating Sitemaps tended to be faster when doing it in Node instead of Jekyll.
>
> Bit... Here's the downside. Our documentation is about 2700 pages (I'll have to lookup the real number). Generating the whole site takes about 90 seconds. That's kind of annoying when you're iterating over small changes. I did a basic test in Hugo, it does it in about 500ms.
>
> So if I am able to transfer the work that's done by plugins to Hugo/Node, I am going to refactor this to Hugo, because of the speed.
>
> I might end up writing a similar blog about this project, it's long overdue.

Generating a 2,700 page document site in Jekyll took 90 seconds; with Hugo, it took .5 seconds. This is a serious speed advantage that will allow you to scale your documentation site in robust ways. The author (whose docs are here: [https://docs.mendix.com](https://docs.mendix.com)) did later make the switch from Jekyll to Hugo (see the [doc overview in GitHub](https://github.com/mendix/docs)). This suggests that speed is perhaps a primary characteristic by which to evaluate static site generators.

The deliberation between Hugo and Jekyll will require you to think about project size &mdash; how big should your site be? Should you have one giant site, all stored in the same repo? Or should you have multiple smaller repos? These are some of the considerations I wrestled with when [implementing docs-as-code tooling](pubapis_switching_to_docs_as_code.html). I concluded that having a single, massive project is superior because it allows easier content re-use, onboarding, validation and error checking, deployment management, and more.

If starting from scratch, I would probably use Hugo instead of Jekyll. However, I have a lot of custom scripting in Jekyll already (such as the ability to generate Kindle books and PDF), not to mention a publishing pipeline with Jekyll already integrated. However, given that content is largely in the same format (Markdown with YAML frontmatter), switching between the two platforms shouldn't be too difficult.

Also, as a side note, there are workarounds in Jekyll to enabling faster builds. In my doc projects at work (where we have probably 1,500 pages or so across many different doc sets), we implemented build shortcuts. By cascading configuration files, we can limit the builds to one particular doc directory. I have one configuration file (e.g., \_config.yml, the default) that sets all content as `publish: true`, and another configuration file (e.g., config-acme.yml) that sets all content as `publish: false` except for a particular doc directory (the one I'm working with). When I'm working with that doc directory, I build Jekyll like this:

```
jekeyll serve --config _config.yml,config-acme.yml
```

The `config-acme.yml` will overwrite the default `_config.yml` to enable one specific doc directory to build while disabling all others. As a result, Jekyll builds lightning fast. This method tends to work quite well. We have continuous delivery configured with the server, so when it's time to push out the full build, that full build process (where all docs are `publish: true` and no config-acme.yml file is used) takes place on the server, not the local machine.

I imagine that over time, Hugo will overtake Jekyll in popularity. For now Jekyll has been in the game longer and has more sites and community. But the momentum seems to be with Hugo now more than Jekyll.

### Sphinx {#sphinx}

[Sphinx](http://www.sphinx-doc.org/en/stable/) is a popular static site generator based on Python. It was developed by the Python community to document the Python programming language (and it has some direct capability to document Python classes), but Sphinx is used for a variety of documentation projects unrelated to Python.

Because Sphinx was designed from the ground up as a documentation tool, not just as tool for building websites, Sphinx has more documentation-specific functionality that is often absent from other static site generator tools. Some of these features include robust search, more advanced linking (linking to sections, automating titles based on links, cross-references, and more), and use of reStructuredText (rST), which is more semantically rich, standard, and extensible than Markdown. See [What about reStructuredText and Asciidoc?](pubapis_markdown.html#rst_and_asciidoc) for more details around rST compared to Markdown.

Sphinx is used with the [Read the Docs](#readthedocs) platform and has a passionate fan base among those who use it. However, because it is specifically designed as a documentation tool, the community isn't as large.

As of January 2018, [Staticgen.com](https://www.staticgen.com/) shows the number of stars, forks, and issues as follows:

<div style="padding: 10px;">
<img src="images/staticgenjekyll.png" style="float: left; margin: 10px;">
<img src="images/staticgenhugo.png" style="float: left; margin: 10px;">
<img src="images/staticgensphinx.png" style="float: left; margin: 10px;">
</div>
<div style="clear: both;"></div>

### Others

Jekyll, Hugo, and Sphinx are the most common static site generators, but there are some others worth mentioning here as well.

#### MkDocs {#mkdocs}

[MkDocs](http://www.mkdocs.org/) is a static site generator based on Python and geared towards documentation sites. Similar to Jekyll, you write in Markdown, store page navigation in YAML files, and can adjust the CSS (or create your own theme). Notably, the MkDocs provides some themes that are more specific to documentation. The two default themes are the MkDocs theme (based on Bootstrap) and the ReadtheDocs theme. The [Material theme](https://squidfunk.github.io/mkdocs-material/) provides an excellent UI for documentation.

<a href="http://www.mkdocs.org/" class="noExtIcon"><img src="images/mkdocs.png"/></a>

Some [other themes](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes) are also available. MkDocs uses [Jinja templating](http://jinja.pocoo.org/), provides [template variables](http://www.mkdocs.org/user-guide/custom-themes/#template-variables) for custom theming, and more.

Although there are many static site generators with similar features, MkDocs is one more specifically oriented towards documentation. For example, it does include search. However, while it seems like orienting the platform towards documentation would be advantageous for tech writers, this approach actually backfires, because it drastically shrinks the community. The number of general web designers versus documentation designers is probably a ration of 100:1. As such, MkDocs remains a small, niche platform that probably won't see much growth and long-term development beyond the original designer's needs.

#### Slate {#slate}

[Slate](https://github.com/lord/slate) is popular theme for generating documentation following the design made popular by [Stripe](https://stripe.com/docs/api). Slate is based on [Middleman](https://middlemanapp.com/), a Ruby-based static site generator that is popular (but which doesn't have the same community as Hugo or Jekyll).  

<a href="https://github.com/lord/slate" class="noExtIcon"><img src="images/slatescreenshot.png" /></a>

With Slate, you write in Markdown, build from the command line, and deploy your site similar to other static site generators.

#### Miscellaneous

The list of other possibilities is quite extensive. Although probably not worth using due to the small community and limited platform, you might also explore [Asciidoctor](http://asciidoctor.org/), [Dexy](http://www.dexy.it/), [Nanoc](https://nanoc.ws/), [API Documentation Platform](https://viasocket.com/docs), and [Apidoco](https://github.com/72pulses/apidoco). For more doc tools, see [Generating Docs](https://github.com/PharkMillups/beautiful-docs#generating-docs) list in [Beautiful Docs](https://github.com/PharkMillups/beautiful-docs).

## Continuous delivery hosts

Static site generators handle content development, but not hosting and deployment. For this, you have a whole other platform to consider. I call these options continuous delivery hosting platforms.

Theoretically, you could publish a static website on any web server (e.g., AWS S3, Bluehost, and more). But continuous delivery hosting platforms do something more &mdash; they automatically build your output when you commit a change to a repo. These hosts often read content stored on GitHub and initiate build and publishing pipelines when they detect a change in a particular branch.

These platforms are built on

### GitHub Pages {#github_pages}

[GitHub Pages](https://pages.github.com/) is not specifically designed as a documentation platform but rather as a web deployment option. If you upload a Jekyll project to a GitHub repository, you can indicate that it's a Jekyll project in the settings, and GitHub will automatically build it when you commit to your GitHub repo. This feature &mdash; building Jekyll projects directly from your GitHub repo &mdash; is referred to as GitHub Pages.

In you GitHub repo, click **Settings** and scroll down to **GitHub Pages**. This is where you activate the GitHub Pages feature.

<figure><img src="images/githubpagesconfigurationsettings.png"/><figcaption>Every GitHub repository is potentially a Jekyll project that you can auto-build when you commit to it.</figcaption></figure>

The tight integration of Jekyll with GitHub makes for a compelling argument to use a Jekyll-GitHub solution. For the most part, GitHub is the dominant platform for open source projects. If you're already using GitHub, it makes sense to choose a static site generator that integrates into the same platform to build your docs.

Quite a few doc sites use GitHub and Jekyll. For example, [Bootstrap](https://getbootstrap.com/) uses it:

<a href="https://pages.github.com/" class="noExtIcon"><img src="images/githubpagesscreenshot.png"/></a>

GitHub Pages is free but does have some limitations in scope:

> GitHub Pages sites are subject to the following usage limits:
>
> * GitHub Pages source repositories have a recommended limit of 1GB .
> * Published GitHub Pages sites may be no larger than 1 GB.
> * GitHub Pages sites have a soft bandwidth limit of 100GB per month.
> * GitHub Pages sites have a soft limit of 10 builds per hour.

Unlike with [Read the Docs](#readthedocs), GitHub Pages doesn't offer a commercial version that expands these limits. You can learn more about [GitHub Pages here](https://help.github.com/categories/github-pages-basics/).

### CloudCannon {#cloudcannon}

Suppose you want to use Jekyll and GitHub, but you're frustrated by GitHub's limitations and you need a more robust platform for your Jekyll project. If so, [CloudCannon](https://cloudcannon.com/) is your solution. CloudCannon gives you a host of [additional features](https://cloudcannon.com/features/) that GitHub lacks, such as:

* Authentication of users
* Multiple environments for different branches
* Visual online interface for editing
* Jekyll plugins
* SSL
* Automatic minification

The founders of CloudCannon are experts with Jekyll and have designed the platform specifically for Jekyll projects. They also created a [host of Jekyll tutorials](https://learn.cloudcannon.com/) to enrich developer knowledge.

### Read the Docs {#readthedocs}

Read the Docs is an online platform that can read Sphinx project and automatically build an output. Read the Docs has both an open-source, free version &mdash; [readthedocs.org](https://readthedocs.org/). And a commercial version &mdash; [readthedocs.com](https://readthedocs.com/). Read the Docs uses Sphinx and rST (or Markdown) as the documentation platform, and also contains web hooks to auto-build your output when you commit to a repo. The [Read the Docs documentation](https://docs.readthedocs.io/en/latest/getting_started.html) shows a sample output.

<a href="https://docs.readthedocs.io/en/latest/getting_started.html" class="noExtIcon"><img src="images/readthedocsplatform.png" /></a>

Read the Docs describes itself as follows:

> Read the Docs hosts documentation, making it fully searchable and easy to find. You can import your docs using any major version control system, including Mercurial, Git, Subversion, and Bazaar. We support webhooks so your docs get built when you commit code. There's also support for versioning so you can build docs from tags and branches of your code in your repository.

Some key features include a robust sidebar with expand/collapse functionality, search, versioning, output to PDF and Epub, and more. Read the Docs is similar to GitHub Pages in that the builds automatically trigger when you commit to the repo. However, whereas GitHub Pages is based on Jekyll and Markdown, Read the Docs is based on Sphinx and reStructuredText, which provides more documentation-specific features.

The Read the Docs platform was co-founded by [Eric Holscher](http://ericholscher.com/), the same co-founder of [Write the Docs](http://www.writethedocs.org/). Write the Docs was originally intended as a conference for the Read the Docs community but evolved into a more general conferenced focused on technical communication for software projects. If you go to a Write the Docs conference, you'll find that sessions focus more on best practices for documentation rather than discussions about tools. (You can read my post, [Impressions from the Write the Docs Conference](http://idratherbewriting.com/2017/05/23/write-the-docs-and-the-battle-against-vendor-evil/)) or listen to this [Write the Docs podcast with the co-founders](http://idratherbewriting.com/2017/12/14/write-the-docs-founding-ideas-and-principles-podcast/) for more details.)

Read the Docs has an impressive number of users. The platform has more than 100,000 projects and receives millions of page views a month across these projects. It is one of the largest open-source documentation undertakings on the web, and continues to grow at an impressive rate.

### Netlify {#netlify}

[Netlify](https://www.netlify.com/) is a popular hosting and deployment service for static site projects. Unlike with other hosting platforms, Netlify works with any static site generator, not just Jekyll or Sphinx. Netlify works similar to GitHub Pages &mdash; when you push your content to the service, Netlify automatically builds and deploys your output (continuous delivery). However, Netlify offers this server hosting and deployment platform on a larger, more commercial scale than GitHub's free platform. With Netlify, you get a CDN, infinite scalability, SSL, continuous delivery, a programmable API, CLI, and more.

The most impressive example of a Netlify-driven site is Smashing Magazine. Previously hosted on WordPress, Smashing Magazine made the switch to Netlify, with Hugo as the static site generator engine. See [Smashing Magazine just got 10x faster](https://www.netlify.com/blog/2017/03/16/smashing-magazine-just-got-10x-faster/).

### Aerobatic

[Aerobatic](https://www.aerobatic.com/) is similar to Netlify in that it builds and publishes your static site. Aerobatic gives you a robust publishing engine that includes a CDN, SSL, continuous delivery, a deployment CLI, password protection, and more. Aerobatic can publish a number of static site generators, including Jekyll, Hugo, Hexo, and more. Aerobatic says,

> Aerobatic is a specialized platform for efficient delivery of static webpages and website assets. We take care of the configuration details for you that provide the best balance of performance and maintainability. Stop fiddling with CDNs and web server configs and focus on coding great front-end experiences. &mdash; [Static website serving](https://www.aerobatic.com/docs/static-serving/)

## Static CMS platforms

Finally, there is a class of developer doc tools that combine both the authoring and the hosting/deployment in the same tool. These tools are often referred to as static content management systems (CMSs) because they provide a GUI layer over your static content.

### Readme.io {#readmeio}

[Readme.io](http://readme.io) is an online static CMS for docs that offers one of the most robust, full-featured interfaces for developer docs available. If you consider how much time it requires to build, maintain, and troubleshoot your own website, it makes sense to consider an existing third-party platform where someone has already built all of this out already.

To explore Readme.io:

1. Go to [readme.io](http://readme.io).
2. Click the **Sign Up** button in the upper-right corner and sign up for an account.
3. Click **+Add Project**. Then add a Project Name (e.g., Weather API), Subdomain (e.g., weather-api), and Project Logo. Then click **Create**.

   <img src="images/projectsettingsreadmeio.png" alt="Project Settings" />

4. Now check out the API doc configuration section. In the left sidebar, click **Reference Docs**, and then click **API**.

Although you can add your API information manually, you can also import an [OpenAPI specification file](pubapis_swagger_intro.html). You can experiment by choosing one from the [OpenAPI examples](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v2.0/yaml), such as [this one](https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/json/petstore-expanded.json).

Readme.io provides a number of wizard-like screens to move you through the documentation process, prompting you with forms to complete.

<img class="medium" src="images/readmeio_manual_api.png" style="border: 1px solid #dedede;" />

Overall, Readme.io provides a robust GUI for creating API documentation in a way that is more extensive and well-designed than virtually any other platform available. The output includes an interactive, try-it-out experience with endpoints:

<img class="medium" src="images/readmeiotryitout.png" style="border: 1px solid #dedede;" />

The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.

Readme.io is a pretty sweet platform, and you don't have to worry about describing your API through the OpenAPI specification in order to get interactive documentation. But this also has downsides. It means that your doc is tied to the Readme.io platform (though some export options are available).

Additionally, if a paid cloud location for your docs isn't an option, the Readme platform may pose challenges. There isn't any content re-use functionality (currently), so if you have multiple outputs for your documentation that you're single sourcing, Readme.io may not be for you.

Even so, the output is sharp and the talent behind this site is top-notch. The platform is constantly growing with new features, and there are many high-profile companies with their docs on Readme.

Here are a few sample API doc sites built with Readme.io:

* [Validic](https://docs.validic.com/docs/getting-started)
* [Box API](https://developer.box.com/docs)
* [Coinbase API](https://developers.coinbase.com/api/v2#introduction)

### Forestry.io {#forestry}

[Forestry.io](https://forestry.io/) is similar to CloudCannon in that it offers online hosting for Jekyll projects, but it also provides hosting for [Hugo](https://gohugo.io/) (another popular static site generator, with faster build times than Jekyll), and for Git. Forestry's emphasis is on providing an online CMS interface for static site generators.

<a href="https://forestry.io/" class="noExtIcon"><img src="images/forestryio.png" /></a>

The CMS interface gives you a WordPress-like GUI for seeing and managing your content. The idea is that most static site generators ostracize less technical users by forcing them into the code. (For example, when I write a post in Jekyll, usually others who look over my shoulder think I'm actually programming, even though I'm just writing posts in Markdown.) The CMS removes this by making the experience much more user friendly to non-technical people while also still leveraging the openness and flexibility of the static site generator platform.

Unlike CloudCannon, Forestry also offers an on-premise enterprise installation so you can host and manage the entire platform behind your company's firewall.

### Netlify CMS {#netlifycms}

[Netlify CMS](https://www.netlifycms.org/) is similar to Forestry in its offering of a content management system for static site generator platform. But rather than limiting the static site generators you can use, it provides a more open platform that integrates with any static site generator. Netlify CMS's key value is in simplifying the content development experience for less technical users.

<figure><a href="https://www.netlifycms.org/" class="noExtIcon"><img src="images/netlifycms.png" style="border: 1px solid #dedede;"/></a><figcaption>Their site says, "The web-based app includes rich-text editing, real-time preview, and drag-and-drop media uploads. ... Writers and editors can easily manage content from draft to review to publish across any number of custom content types.</figcaption></figure>

The content can be stored in GitHub, GitLab, or BitBucket. Netlify CMS provides a CMS layer over your project using a React-based wrapper.

Netlify CMS also integrates with [Netlify](#netlify), which is a popular hosting and deployment service for static site projects.
