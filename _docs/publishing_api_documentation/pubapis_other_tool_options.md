---
title: "Other tool options &mdash; a miscellaneous compilation"
permalink: /pubapis_other_tool_options.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.91
section: publishingapis
path1: /publishingapis.html
---

There are many different tools for creating documentation, and there’s no clear industry standard in this space. Different tools may better suit different environments, skill sets, and products. On this page, I've listed the most common authoring tools related to the developer documentation space.

Note that the tools below are useful for writing documentation, particularly the [nonreference docs](docnonref.html) in your project. For tools that will read an [OpenAPI specification document](pubapis_swagger_intro.html) and generate interactive reference documentation, see [Other tools to parse and display OpenAPI specs](pubapis_other_openapi_parsers.html).

* TOC
{:toc}

## Readme.io {#readmeio}

[Readme.io](http://readme.io) is an online hosted option for docs that offers one of the most robust, full-featured interfaces for developer docs available. If you consider how much time it requires to build, maintain, and troubleshoot your own website, it makes sense to consider an existing third-party platform where someone has already built all of this out.

To explore Readme.io:

1. Go to [readme.io](http://readme.io).
2. Click the **Sign Up** button in the upper-right corner and sign up for an account.
3. Click **+Add Project**. Then add a Project Name (e.g., Weather API), Subdomain (e.g., weather-api), and Project Logo. Then click **Create**.

   <img src="images/projectsettingsreadmeio.png" alt="Project Settings" />

4. Now check out the API doc configuration section. In the left sidebar, click **Reference Docs**, and then click **API**.

Although you can add your API information manually, you can also import an [OpenAPI specification file](pubapis_swagger_intro.html). You can experiment by choosing one from the [OpenAPI examples](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v2.0/yaml), such as [this one](https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/json/petstore-expanded.json).

Readme.io provides a number of wizard-like screens to move you through the documentation process, prompting you with forms to complete.

<img src="images/readmeio_manual_api.png" style="border: 1px solid #dedede;" />

Overall, Readme.io provides a robust GUI for creating API documentation in a way that is more extensive and well-designed than virtually any other platform available. The output includes an interactive, try-it-out experience with endpoints:

<img src="images/readmeiotryitout.png" style="border: 1px solid #dedede;" />

The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.

Readme.io is a pretty sweet platform, and you don't have to worry about describing your API through the OpenAPI specification in order to get interactive documentation. But this also has downsides. It means that your doc is tied to the Readme.io platform (though some export options are available).

Additionally, if a paid cloud location for your docs isn't an option, the Readme platform may pose challenges. Finally, there isn't any content re-use functionality (currently), so if you have multiple outputs for your documentation that you're single sourcing, Readme.io may not be for you.

Even so, the output is sharp and the talent behind this site is top-notch. The platform is constantly growing with new features, and there are many high-profile companies with their docs on Readme.

Here are a few sample API doc sites built with Readme.io:

* [Validic](https://docs.validic.com/docs/getting-started)
* [Box API](https://developer.box.com/docs)
* [Coinbase API](https://developers.coinbase.com/api/v2#introduction)

## Read the Docs {#readthedocs}

Read the Docs is an online platform that can read your content and automatically build an output. Read the Docs has both an open-source, free version &mdash; [readthedocs.org](https://readthedocs.org/). And a commercial version &mdash; [readthedocs.com](https://readthedocs.com/). Read the Docs uses Sphinx and rST (or Markdown) as the documentation platform, and also contains web hooks to auto-build your output when you commit to a repo. The [Read the Docs documentation](https://docs.readthedocs.io/en/latest/getting_started.html) shows a sample output.

<a href="https://docs.readthedocs.io/en/latest/getting_started.html" class="noExtIcon"><img src="images/readthedocsplatform.png" /></a>

Read the Docs describes itself as follows:

> Read the Docs hosts documentation, making it fully searchable and easy to find. You can import your docs using any major version control system, including Mercurial, Git, Subversion, and Bazaar. We support webhooks so your docs get built when you commit code. There's also support for versioning so you can build docs from tags and branches of your code in your repository.

Some key features include a robust sidebar with expand/collapse functionality, search, versioning, output to PDF and Epub, and more. Read the Docs is similar to GitHub Pages in that the builds automatically trigger when you commit to the repo. However, whereas GitHub Pages is based on Jekyll and Markdown, Read the Docs is based on Sphinx and reStructuredText, which provides more documentation-specific features.

The Read the Docs platform was co-founded by [Eric Holscher](http://ericholscher.com/), the same co-founder of [Write the Docs](http://www.writethedocs.org/). Write the Docs was originally intended as a conference for the Read the Docs community but evolved into a more general conferenced focused on technical communication for software projects. If you go to a Write the Docs conference, you'll find that sessions focus more on best practices for documentation rather than discussions about tools. (You can read my post, [Impressions from the Write the Docs Conference](http://idratherbewriting.com/2017/05/23/write-the-docs-and-the-battle-against-vendor-evil/)) or listen to this [Write the Docs podcast with the co-founders](http://idratherbewriting.com/2017/12/14/write-the-docs-founding-ideas-and-principles-podcast/) for more details.)

Read the Docs has an impressive number of users. The platform has more than 100,000 projects and receives millions of page views a month across these projects. It is one of the largest open-source documentation undertakings on the web, and continues to grow at an impressive rate.

## Sphinx

[Sphinx](http://www.sphinx-doc.org/en/stable/) is a popular static site generator based on Python. It was developed by the Python community to document the Python programming language (and it has some direct capability to document Python classes), but Sphinx is used for a variety of documentation projects unrelated to Python.

Because Sphinx was designed from the ground up as a documentation tool, not just as tool for building websites, Sphinx has more documentation-specific functionality that is often absent from other static site generator tools. Some of these features include robust search, more advanced linking (linking to sections, automating titles based on links, cross-references, and more), and use of reStructuredText (rST), which is more semantically rich, standard, and extensible than Markdown. See [What about reStructuredText and Asciidoc?](pubapis_markdown.html#rst_and_asciidoc) for more details around rST compared to Markdown.

## Jekyll

I devoted an entire topic to [Jekyll](pubapis_jekyll.html) earlier, so I won't go as deep in detail here. Jekyll is a static site generator similar to Sphinx. It builds your website by converting Markdown to HTML, inserting pages into layouts you define, running any Liquid scripting and logic, compressing styles, and writing the output to a \_site folder that that you can deploy on a web server.

Among all tools here, I've chosen to use Jekyll for the following reasons:

* **Large community**. The community, arguably the largest among static site generator communities, includes web developers, not just documentation-oriented groups. This broader focus attracts more developer attention and helps propel greater usage.
* **Control.** Jekyll provides a lot of powerful features (often through Liquid) that allow you to do almost anything with the platform. Because of this, you probably won't outgrow it. Jekyll will match whatever web development skills or other JS, HTML, or CSS frameworks you want to use with it.
* **Integration with GitHub and S3.** Tightly coupling Jekyll with the most used version control repository on the planet almost guarantees its success. [GitHub Pages](#github_pages) will auto-build your Jekyll site (this is called "continuous deployment"), allowing you to automate the publishing workflow without effort. If GitHub isn't appropriate for your project, you can also publish to AWS S3 bucket using the [s3_website plugin](https://github.com/laurilehmijoki/s3_website), which syncs your output with an S3 bucket by only adding or removing the files that changed in your output.

For [theming](https://jekyllrb.com/docs/themes/), Jekyll offers the ability to package your theme as a Rubygem and then distribute it across multiple themes. This is one approach you could use for breaking up your project into smaller projects to ensure faster build times. You can use [Liquid scripting](http://shopify.github.io/liquid/) for implementing more advanced logic in your themes. This gives you an incredible amount of control to abstract complex code from users through simple templates and layouts.

## Hugo

[Hugo](https://gohugo.io/) is a fast static site generator that is rapidly growing in popularity. Based on the Go language, Hugo builds your site faster than most other static site generators, including Jekyll. There's an impressive number of [themes](https://themes.gohugo.io/), including some designed for [documentation](https://themes.gohugo.io/tags/documentation/). As with Jekyll, Hugo allows you to write in Markdown, add frontmatter content in YAML (or TOML or JSON) at the top of your Markdown pages, and more.

Hugo has a robust and flexible templating language that makes it appealing to designers, who can build more sophisticated websites based on the depth of the platform (see [Hugo's docs here](https://gohugo.io/documentation/)). For example, see this [multilingual API documentation theme](https://github.com/bep/docuapi). But the main selling point behind Hugo is that it's fast.

Speed may not be immediately apparent when you first start evaluating static site generators. You probably won't realize how important speed is until you have hundreds of pages in your site and are waiting for it to build. Although it depends on how you've coded your site, in general, I've noticed that with Jekyll projects, if you have, say, 1,000 pages in your project, it might take about a minute to build the site. Thus, if you have 5,000 pages, you could be waiting 5 minutes for the site to build. The whole continuous re-building becomes a lost feature, and it can be difficult to identify formatting or other errors until the builds finish.

If Hugo can build a site much, much faster, it offers a serious advantage in the choice of static site generators. Given that major web development sites like [Smashing Magazine chose Hugo](https://next.smashingmagazine.com/2017/03/a-little-surprise-is-waiting-for-you-here/) are evidence for Hugo's emerging superiority among the static site generators.

For a more detailed comparison of Hugo versus Jekyll, see [Hugo vs. Jekyll: Comparing the leading static website generators](https://opensource.com/article/17/5/hugo-vs-jekyll). In the comments, one reader says the following:

> I have been doing extended research on this topic and in the end chose to use Jekyll. I have done a huge project: [https://docs.mendix.com](https://docs.mendix.com), where we have made the complete website Open Source on Github.
>
> Fun project where I ended up moving quite some stuff from Jekyll to Node. For example generating Sitemaps tended to be faster when doing it in Node instead of Jekyll.
>
> Bit... Here's the downside. Our documentation is about 2700 pages (I'll have to lookup the real number). Generating the whole site takes about 90 seconds. That's kind of annoying when you're iterating over small changes. I did a basic test in Hugo, it does it in about 500ms.
>
> So if I am able to transfer the work that's done by plugins to Hugo/Node, I am going to refactor this to Hugo, because of the speed.

> I might end up writing a similar blog about this project, it's long overdue.

Generating a 2,700 page document site in Jekyll took 90 seconds; with Hugo, it took .5 seconds. This is a serious speed advantage that will allow you to scale your documentation site in robust ways. Looking at [https://docs.mendix.com](https://docs.mendix.com), I see that the author did make the switch to Hugo (see the [doc overview in GitHub](https://github.com/mendix/docs).)

The deliberation between Hugo and Jekyll will require you to think about project size &mdash; how big should your site be? Should have one giant site, all stored in the same repo? Or should you have multiple smaller repos? These are some of the considerations I wrestled with when [switching to docs-as-code tooling](pubapis_switching_to_docs_as_code.html). I concluded that having a single, massive project is superior because it allows easier content re-use, onboarding, validation and error checking, deployment management, and more.

If starting from scratch, I would probably use Hugo instead of Jekyll. However, I have a lot of custom scripting in Jekyll already (such as the ability to generate Kindle books and PDF), so the switch will be difficult. However, given that content is largely in the same format (Markdown with YAML frontmatter), switching between the two platforms shouldn't be too difficult.

Also, there are workarounds in Jekyll to enabling faster builds. In my doc projects at work (where we have probably 1,500 pages or so across many different doc sets), we implemented build shortcuts. By cascading configuration files, we can limit the builds to one particular doc set. I set one configuration file (e.g., \_config.yml, the default) that sets all content as `publish: false`, and another configuration file (e.g., config-acme.yml) that sets a particular doc directory as `publish: true`. When I'm working with ACME, I build it like this:

```
jekeyll serve --config _config.yml,config-acme.yml
```

The `config-acme.yml` will overwrite the default `_config.yml` to enable one specific doc directory to build while disabling all others. This method tends to work quite well. We have continuous deployment configured with the server, so when it's time to push out the full build, that process takes place on the server, not the local machine. It's workaround that's not ideal.

I imagine that over time, Hugo will overtake Jekyll in popularity. For now Jekyll has been in the game longer and has more sites and community. But the momentum seems to be with Hugo now more than Jekyll. See [Staticgen.com](https://www.staticgen.com/) for a comparison of metrics across platforms.


## GitHub Pages {#github_pages}

[GitHub Pages](https://pages.github.com/) is not specifically designed as a documentation platform but rather as a website platform. If you upload a Jekyll project to a GitHub repository, you can indicate that it's a Jekyll project in the settings, and GitHub will automatically build it when you commit to your GitHub repo. This feature &mdash; building Jekyll projects directly from your GitHub repo &mdash; is referred to as GitHub Pages.

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

Unlike with Read the Docs, GitHub Pages doesn't offer a commercial version that expands these limits. You can learn more about [GitHub Pages here](https://help.github.com/categories/github-pages-basics/).

## CloudCannon {#cloudcannon}

Suppose you want to use Jekyll and GitHub, but you're frustrated by GitHub's limitations and you need a more robust publishing platform. If so, [CloudCannon](https://cloudcannon.com/) is your solution. CloudCannon gives you a host of [additional features](https://cloudcannon.com/features/) that GitHub lacks, such as:

* Authentication of users
* Multiple environments for different branches
* Visual online interface for editing
* Jekyll plugins
* SSL
* Automatic minification

The founders of CloudCannon are experts with Jekyll and have designed the platform specifically for Jekyll projects. They created a [host of Jekyll tutorials](https://learn.cloudcannon.com/) to enrich developer knowledge.

## Miredot

[Miredot](http://miredot.com/) is one of the tools you can use to generate reference API documentation from a Java source. Miredot is a plugin for Maven, which is a build tool that you integrate into your Java IDE. Miredot can generate an offline website that looks like this:

<a href="http://miredot.com/exampledocs/" class="noExtIcon"><img src="images/miredotexample.png" alt="Miredot example" /></a>

You can read the [Getting started guide](http://miredot.com/docs/getting-started/) for Miredot for instructions on how to incorporate it into your Java project.

Miredot supports many annotations in the source code to generate the output. The most important annotations they support include those from Jax-rs and Jackson. See [Supported Frameworks](http://www.miredot.com/docs/supportedframeworks/) for a complete set of supported annotations.

Here's an example of what these annotations look like. Look at the [CatalogService.java](https://github.com/Qmino/miredot-petstore/blob/master/src/main/java/com/qmino/miredot/petstore/service/CatalogService.java) file. In it, one of the methods is `updateCategory`.

You can see that above this method is a "doc block" that provides a description, the parameters, method, and other details:

```
    /**
     * Update category name and description. Cannot be used to edit products in this category.
     *
     * @param categoryId The id of the category that will be updated
     * @param category   The category details
     * @summary Update category name and description
     */
    @PUT
    @Path("/category/{id}")
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void updateCategory(@PathParam("id") Long categoryId, Category category);
```

Miredot consumes this information and generates an output.

To explore Miredot's output:

1. Browse the [Miredot sample code](https://github.com/Qmino/miredot-petstore/blob/master/src/main/java/com/qmino/miredot/petstore/service/CatalogService.java).
2. To see how this information gets rendered in the Miredot output, go to the [Petstore example docs](http://miredot.com/exampledocs/), expand **Catalog > Category** on the right, and then select **PUT**. Or go directly [here](http://www.miredot.com/exampledocs/#268738548).

   <a href="http://www.miredot.com/exampledocs/#268738548" class="noExtIcon"><img src="images/miredotupdatecategory.png" alt="Miredot update category" /></a>

If you browse the navigation of Miredot's output, you'll see that it's an interesting-looking solution. This kind of documentation might fit a Java-based REST API well. But the authoring of the docs would really only work for Java developers. It wouldn't work well for technical writers unless you're plugged into the [source control](pubapis_version_control.html) workflow.

## MkDocs {#mkdocs}

[MkDocs](http://www.mkdocs.org/) is a static site generator based on Python and geared towards documentation sites. Similar to Jekyll, you write in Markdown, store page navigation in YAML files, and can adjust the CSS (or create your own theme). Notably, the MkDocs provides some themes that are more specific to documentation. The two default themes are the MkDocs theme (based on Bootstrap) and the ReadtheDocs theme. The [Material theme](https://squidfunk.github.io/mkdocs-material/) provides an excellent UI for documentation.

<a href="http://www.mkdocs.org/" class="noExtIcon"><img src="images/mkdocs.png"/></a>

Some [other themes](https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes) are also available. MkDocs uses [Jinja templating](http://jinja.pocoo.org/), provides [template variables](http://www.mkdocs.org/user-guide/custom-themes/#template-variables) for custom theming, and more.

Although there are many static site generators with similar features, MkDocs is one more specifically oriented towards documentation. For example, it does include search. However, while it seems like orienting the platform towards documentation would be advantageous for tech writers, this approach actually backfires, because it drastically shrinks the community. The number of general web designers versus documentation designers is probably a ration of 100:1. As such, MkDocs remains a small, niche platform that probably won't see much growth and long-term development beyond the original designer's needs.

## Forestry.io {#forestry}

[Forestry.io](https://forestry.io/) is similar to CloudCannon in that it offers online hosting for Jekyll projects, but it also provides hosting for [Hugo](https://gohugo.io/) (another popular static site generator, with faster build times than Jekyll), and for Git. Forestry's emphasis is on providing an online CMS interface for static site generators.

<a href="https://forestry.io/" class="noExtIcon"><img src="images/forestryio.png" /></a>

The CMS interface gives you a WordPress-like GUI for seeing and managing your content. The idea is that most static site generators ostracize less technical users by forcing them into the code. (For example, when I write a post in Jekyll, usually others who look over my shoulder think I'm actually programming, even though I'm just writing posts in Markdown.) The CMS removes this by making the experience much more user friendly to non-technical people while also still leveraging the openness and flexibility of the static site generator platform.

Unlike CloudCannon, Forestry also offers an on-premise enterprise installation so you can host and manage the entire platform behind your company's firewall.

## Netlify CMS and Netlify {#netlifycms}

[Netlify CMS](https://www.netlifycms.org/) is similar to Forestry in its offering of a content management system for static site generator platform. But rather than limiting the static site generators you can use, it provides a more open platform that integrates with any static site generator. Netlify CMS's key value is in simplifying the content development experience for less technical users.

Their site says, "The web-based app includes rich-text editing, real-time preview, and drag-and-drop media uploads. ... Writers and editors can easily manage content from draft to review to publish across any number of custom content types."

<a href="https://www.netlifycms.org/" class="noExtIcon"><img src="images/netlifycms.png"/></a>

The content can be stored in GitHub, GitLab, or BitBucket. Netlify CMS provides a CMS layer over your project using a React-based wrapper.

Netlify CMS also integrates with [Netlify](https://www.netlify.com/), which is a popular hosting and deployment service for static site projects. "Netlify builds, deploys and hosts your front-end." Netlify works similar to GitHub Pages in that you push your content to the service, and Netlify can then build your output. However, Netlify offers this server hosting and deployment platform on a larger, more commercial scale than GitHub's free platform. With Netlify, you get a CDN, infinite scalability, SSL, continuous deployment, a programmable API, CLI, and more.

The most impressive example of a Netlify-driven site is Smashing Magazine. Previously hosted on WordPress, Smashing Magazine made the switch to Netlify, with Hugo as the static site generator engine. See [Smashing Magazine just got 10x faster](https://www.netlify.com/blog/2017/03/16/smashing-magazine-just-got-10x-faster/).

## Slate {#slate}

[Slate](https://github.com/lord/slate) is popular theme for generating documentation following the design made popular by [Stripe](https://stripe.com/docs/api). Slate is based on [Middleman](https://middlemanapp.com/), a Ruby-based static site generator that is popular (but which doesn't have the same community as Hugo or Jekyll).  

<a href="https://github.com/lord/slate" class="noExtIcon"><img src="images/slatescreenshot.png" /></a>

With Slate, you write in Markdown, build from the command line, and deploy your site similar to other static site generators.

## Other solutions

There are many other tools in this space, and rather than provide detail about them, I'll just list them here:

* [Asciidoctor](http://asciidoctor.org/). "Asciidoctor is a fast text processor and publishing toolchain for converting AsciiDoc content to HTML5, DocBook 5 (or 4.5) and other formats. Asciidoctor is written in Ruby, packaged as a RubyGem and published to RubyGems.org."
* [Dexy](http://www.dexy.it/). "Dexy is a free-form literate documentation tool for writing any kind of technical document incorporating code. Dexy helps you write correct documents, and to easily maintain them over time as your code changes."
* [Nanoc](https://nanoc.ws/). "Nanoc is a static-site generator, fit for building anything from a small personal blog to a large corporate website." ... "Programmability combined with free-form metadata is what makes Nanoc flexible. It is agnostic to what content you provide; with metadata you can turn pages into articles, chapters, review, recipes, and more, and have them processed in specialized ways. Nothing in Nanoc is predefined, so it gives the power to build sites that meet their goals perfectly" ([About Nanoc](https://nanoc.ws/about/).)  Based on Ruby.
* [API Documentation Platform](https://viasocket.com/docs). "This is beautiful, easy, fast, secure and reliable document management system. Have an API documentation which actually works and improve the efficiency of your developers and your client’s developers. Have a great documentation API documentation."
* [Apidoco - Ruby on Rails API documentation tool](https://github.com/72pulses/apidoco). "Easy documentation of REST APIs. [Demo](https://apidoco-demo.herokuapp.com/docs/apis/v1)."
* [APIMATIC - Developer Experience Portal](https://apimatic.io/developer-experience-portal). "Instantly build an API Portal with SDKs, Code Samples, Test Cases, API Transformation and language specific Docs & Reference - tailored for your API. ... Do it yourself. No developer or technical writer required."


## Custom UX solutions (from HTML, CSS, and JS) {#custom_ux_solutions}

If you want to build a beautiful API doc website that rivals sites such as [Parse.com](http://parse.com) (a custom-built solution that uses Prism.js, Sinatra, and other in-house tools), you'll most likely need to involve a UX engineer to build it. Fortunately, building an API docs site is a solution that many UX engineers and other web developers are usually excited to tackle.

If you want to integrate your API documentation into your main website, ask the person designing your main website for strategies on integrating the documentation into it. This integration might allow you to leverage authentication (if needed) and other interaction points (such as with forums or support tickets).

Many custom websites are built using a variety of JavaScript, HTML, and CSS tools. Most likely you'll be able to supply a batch of Markdown or HTML files to the web developer to integrate. Your UX developers will often be eager to design a custom solution to make your docs beautiful and seamlessly integrated with the rest of your site's content.

<figure><img src="images/uxteam.png" alt="Getting help from your UX team" /><figcaption>Most designers I meet are hipsters. Most designers would be more than happy to use their web skills to create a custom documentation site that integrates with the rest of the company's content.<a href="https://www.vecteezy.com">Free Vector Art by www.Vecteezy.com</a></figcaption></figure>

When I worked at Badgeville, our solution for publishing API documentation was to use custom scripts that pulled some information from source files and pushed them into templates.

The source files were stored on Github, and the writers could edit the descriptions of the parameters, fields, etc. Our developers created scripts that would look into the code of the source files and render content into JSON files in a specific structure.

Since we published all help content on a Drupal site, we hired a Drupal development agency that would take information from a JSON file and push the information into a custom-built template.

After the scripts were integrated into the Drupal site, we would have developers periodically run the build scripts to generate a batch of JSON files.

{% include random_ad.html %}

The upload scripts checked to ensure the JSON files were valid, and then they were pushed into the templates and published. Each upload would overwrite any existing content with the same file names.

If your documentation is published on a web-based CMS, you can probably find a development agency to create a similar script (if you don't have in-house engineers to create them).

A lot of companies have custom solutions for their API documentation. Sometimes this kind of solution just makes sense and allows you to right-size the workflow to fit your specific information.

## Choosing the right publishing solution

Which solution should you choose? As I said earlier, it depends on your skillset, product, and environment. But here's my recommendation.

If you can avoid building and maintaining your own doc site, then use an online hosted platform such as [Readme.io](#readmeio), [CloudCannon](#cloudcannon), [Read the Docs](#readthedocs), or [Netlify](#netlifycms). The tradeoff is that you abdicate some control to customize the solution and functionality, but you offload a tremendous burden for your server. Usually, within a company, engineering groups manage and control the server infrastructure. Setting up and maintaining your own server for documentation using internal resources only can be a huge expense and headache. It can take months if not years to get engineering to give you space on a server, and even if they do, it likely will not provide half of the features you need (like continuous deployment and a CLI). That's why I recommend third-party hosting if ta all possible. Maintaining your own server is not the business you want to be in, and these platforms enable you to be much more efficient. (Removing the hassle of publishing by automating builds from the server will simplify your life unimaginable ways.)

If you have web development skills (or access to UX talent) and want control over your doc solution (maybe you want to build a custom theme or incorporate special scripts), then use either Sphinx, Jekyll, or Hugo (these fit in nicely with the hosting and deployment platforms &mdash; Sphinx with Read the Docs, Jekyll with GitHub or CloudCannon, or Hugo with Netlify).

Although Readme provides a ready-made design for your site, I personally want more control and flexibility over the information design and theme. I like to experiment, and I want the power to code whatever feature I want, such as an embedded navigation map, a special TOC for series items, or whatever. When you use a platform such as Jekyll, Sphinx, Hugo, or some other open static site generator, you have the power and control to create the complex features you need. If you're a serious technical writer (maybe you migrated form the world of DITA and are used to more robust tooling?), you're going to want a platform that can go as deep as you want to take it. Jekyll, Sphinx, and Hugo offer this depth in the platform. (Granted, this power and control will require a more complex platform and learning, but you can start out easy with a ready-made theme and later work your way into custom development if desired.)

Markup is also a consideration. If you've narrowed the choice down to Sphinx with rST or Jekyll/Hugo with Markdown, then at this point ask yourself whether engineers at your company will write in rST. If they'll write in rST, great, Sphinx is probably superior for documentation projects due to the [advantages of rST](pubapis_markdown.html#rst_and_asciidoc). But if engineers prefer Markdown, then maybe Jekyll or Hugo will be more successful.

Choosing Jekyll or Hugo rather than Sphinx does have a strong argument because their communities extend beyond documentation groups. Sphinx was designed as a documentation platform, so it's audience tends to be more niche. Ask yourself, which platform will likely gain more community and popularity &mdash; one that is geared towards documentation groups (which are always a niche crowd), or one for web development in general? Documentation tooling almost never wins out against more general web development tools. So the tradeoff with Jekyll or Hugo is that although they lack some better documentation features (cross-references, search, semantic markup), they might have more community and momentum in the long-term.

Regardless of the tool, I recommend describing your API using the [OpenAPI specification](pubapis_swagger_intro.html) rather than [creating your own template](pubapis_design_patterns.html#structure_and_templates) or manually defining these reference sections. Not many doc tools easily [incorporate and display the OpenAPI specification](pubapis_combine_swagger_and_guide.html) (yet), so perhaps the best alternative might be to [embed Swagger UI](pubapis_swagger.html) (assuming more deep integration isn't possible) into your doc platform. (I've seen some deeper integrations of Swagger UI into existing websites, and some day I hope to do this with a Jekyll theme, but I haven't yet.)

Some static site generators do have some good display for API docs, like [Slate](#slate). That might be a good option. But will the platform have the support, tutorials, maintenance, and features to sustain the platform in the long run?

One option I recommend against is [building your own tool from scratch](#custom_ux_solutions). Although I like having control over the doc solution, I've spent far too much time developing themes or working on other documentation platform needs than I intended to. I once had lunch with a tech writer who told me he's working on building his own system from scratch using Ruby. Although this might be a good way to learn Ruby, it seems inefficient for a tech writer, who should be focusing more on documentation and content rather than tools.
