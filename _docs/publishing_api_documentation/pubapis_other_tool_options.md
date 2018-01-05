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

## Spectacle

[Spectacle](https://github.com/sourcey/spectacle) is an open-source Github project that builds an output from an OpenAPI specification file. The display provides a three-pane output similar to the Stripe or Slate docs. After you download the project files, you can build the display using Node simply by referencing your OpenAPI spec file.

Here's a [demo output](https://cheesestore.github.io/).

<a href="https://cheesestore.github.io/" class="noExtIcon"><img src="images/spectacle-sample-output.png"/></a>

You can also see an [output that uses the Mashape weather API file](http://idratherbewriting.com/learnapidoc/assets/files/spectacle/public/index.html).

With almost no needed setup or configuration, Spectacle gives you a world-class output and site for your API docs. As long as the [OpenAPI spec](pubapis_openapi_tutorial_overview.html) that you integrate is fully detailed, the generated Spectacle site will be attractive and full-featured.

You can also build the Spectacle site without the framed layout so you can embed it into another site. However, in playing with this embed option, I found that to do this, I'd have to create my own styles. If using the default styles in the full-site output, they most likely will overwrite or interfere with your host site's appearance.

## Run in Postman button {#postman}

Postman is a REST API GUI client that we explored earlier in [Submit requests through Postman
](docapis_postman.html). The [Run in Postman button](https://www.getpostman.com/integrations/run-button) provides a button (labeled "Run in Postman") that, when clicked, imports your API info into Postman so users can run calls using the Postman client. As such, this isn't a full-fledged authoring tool but rather a way to import the interactive, try-it-out API explorer for your endpoints into a web page.

To try out Run in Postman, first [import your OpenAPI spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually. Then see the Postman docs on how to [Create the Run in Postman button](https://www.getpostman.com/docs/postman_for_publishers/run_button/creating_run_button).

You can see the many [demos of Run in Postman here](https://www.getpostman.com/integrations/run-button).

{% if site.format == "web" %}
Here's a demo of Run in Postman using the sample Mashape weather API:

<div class="postman-run-button"
data-postman-action="collection/import"
data-postman-var-1="d1b7adeb50d95d9851e7"></div>
<script type="text/javascript">
  (function (p,o,s,t,m,a,n) {
    !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
    !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
      (n = o.createElement("script")),
      (n.id = s+t), (n.async = 1), (n.src = m), n
    ));
  }(window, document, "\_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>
{% endif %}

{% if site.format == "kindle" or site.format == "pdf" %}
For a demo of Run in Postman using the sample Mashape weather API, go to [idratherbewriting.com/learnapidoc/pubapis_other_tool_options.html#postman](http://idratherbewriting.com/learnapidoc/pubapis_other_tool_options.html#postman).
{% endif %}

Postman provides a powerful REST API client that many developers are familiar with. It allows users to customize the API key and parameters and save those values. Although you don't have the in-browser experience to try out calls, in many ways the Postman client is more useful. This is what developers often use to save and store API calls as they test and explore the functionality.

Especially if your users are already familiar with Postman, Run in Postman is a good option to provide (especially as one option of many for users to try out your API), as it allows users to easily integrate your API into a client they can use. It gives them a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

The downside is that your parameter and endpoint descriptions don't get pulled into Postman. Additionally, if users are unfamiliar with Postman, they may struggle a bit to understand how to use it. In contrast, the "Try it out" editors that run directly in the browser tend to be more straightforward and do a better job integrating documentation.

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

## Custom UX solutions (from HTML, CSS, and JS)

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

## Sphinx

[Sphinx](http://www.sphinx-doc.org/en/stable/) is a popular static site generator based on Python. It was developed by the Python community to document the Python programming language (and it has some direct capability to document Python classes), but Sphinx is used for a variety of documentation projects unrelated to Python.

Because Sphinx was designed from the ground up as a documentation tool, not just as tool for building websites, Sphinx has more documentation-specific functionality that is often absent from other static site generator tools. Some of these features include robust search, more advanced linking (linking to sections, automating titles based on links, cross-references, and more), and use of reStructuredText (rST), which is more semantically rich, standard, and extensible than Markdown. See [What about reStructuredText and Asciidoc?](pubapis_markdown.html#rst_and_asciidoc) for more details around rST compared to Markdown.

## Read the Docs

Read the Docs is an online platform that can read your content and automatically build an output. Read the Docs has both an open-source, free version &mdash; [readthedocs.org](https://readthedocs.org/). And a commercial version &mdash; [readthedocs.com](https://readthedocs.com/). Read the Docs uses Sphinx and rST (or Markdown) as the documentation platform, and also contains web hooks to auto-build your output when you commit to a repo. The [Read the Docs documentation](https://docs.readthedocs.io/en/latest/getting_started.html) shows a sample output.

<a href="https://docs.readthedocs.io/en/latest/getting_started.html" class="noExtIcon"><img src="images/readthedocsplatform.png" /></a>

Read the Docs describes itself as follows:

> Read the Docs hosts documentation, making it fully searchable and easy to find. You can import your docs using any major version control system, including Mercurial, Git, Subversion, and Bazaar. We support webhooks so your docs get built when you commit code. There's also support for versioning so you can build docs from tags and branches of your code in your repository.

Some key features include a robust sidebar with expand/collapse functionality, search, versioning, output to PDF and Epub, and more. Read the Docs is similar to GitHub Pages in that the builds automatically trigger when you commit to the repo. However, whereas GitHub Pages is based on Jekyll and Markdown, Read the Docs is based on Sphinx and reStructuredText, which provides more documentation-specific features.

The Read the Docs platform was co-founded by [Eric Holscher](http://ericholscher.com/), the same co-founder of [Write the Docs](http://www.writethedocs.org/). Write the Docs was originally intended as a conference for the Read the Docs community but evolved into a more general conferenced focused on technical communication for software projects. If you go to a Write the Docs conference, you'll find that sessions focus more on best practices for documentation rather than discussions about tools. (You can read my post, [Impressions from the Write the Docs Conference](http://idratherbewriting.com/2017/05/23/write-the-docs-and-the-battle-against-vendor-evil/)) or listen to this [Write the Docs podcast with the co-founders](http://idratherbewriting.com/2017/12/14/write-the-docs-founding-ideas-and-principles-podcast/) for more details.)

Read the Docs has an impressive number of users. The platform has more than 100,000 projects and receives millions of page views a month across these projects. It is one of the largest open-source documentation undertakings on the web, and continues to grow at an impressive rate.

## GitHub Pages

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

## CloudCannon

Suppose you want to use Jekyll and GitHub, but you're frustrated by GitHub's limitations and you need a more robust publishing platform. If so, [CloudCannon](https://cloudcannon.com/) is your solution.

.... (more content coming....)

* Forestry.io
* Netlify
* readthedocs.org/com
* mkdocs
* hugo
* slate
* dexy
* http://apidocjs.com/

## Choosing the right publishing solution

Which solution should you choose? As I said earlier, it depends on your skillset, product, and environment. But here's my recommendation.

If you can avoid building and maintaining your own doc site, or if you lack the web development skills or other resources for building your own, then use an online hosted platform such as Readme.io. The tradeoff is that you abdicate some control to customize the solution and functionality &mdash; you're stuck with whatever features and functionality Readme.io provides.

If you have web development skills (or access to UX talent) and want control over your doc solution (maybe you want to build a custom theme or incorporate special scripts), then use either Sphinx with Read the Docs or Jekyll with GitHub or CloudCannon. I recommend Read the Docs, GitHub, or CloudCannon because hosting and maintaining your own server is not the business you want to be in, and these platforms enable builds from the server. (Removing the hassle of publishing by automating builds from the server will simplify your life unimaginable ways.)

If you've narrowed the choice down to Sphinx with rST or Jekyll with Markdown, then at this point ask yourself whether engineers at your company will write in rST. If they'll write in rST, great, Sphinx is probably superior for documentation projects. But if engineers prefer Markdown, then maybe Jekyll will be more successful.

Choosing Jekyll does have a strong argument because its community extends beyond documentation groups. If you think about it, which platform will likely gain more community and popularity &mdash; one that is geared towards documentation groups (always a niche crowd), or one for web development in general?

In my experience, documentation tools never win out against more general web development tools. So the tradeoff with Jekyll is that although it lacks some better documentation features (cross-references, search, semantic markup), it might have more community and momentum in the long-term.

Regardless of the tool, I recommend describing your API using the OpenAPI specification rather than creating your own template or manually defining these reference sections. Not many doc tools easily incorporate and display the OpenAPI specification (yet), so perhaps the best alternative might be to embed Swagger UI (assuming more deep integration isn't possible) into your doc platform. (I've seen some deeper integrations of Swagger UI into existing websites, and some day I hope to do this with a Jekyll theme, but I haven't yet.)

Some static site generators do have some good integration of OpenAPI, like Spectacle. That might be a good option. But will the platform have the support, tutorials, maintenance, and features to sustain the platform in the long run?

One option I recommend against is building your own tool from scratch. Although I like having control over the doc solution, I've spent far too much time developing themes or working on other documentation platform needs than I intended to. I once had lunch with a tech writer who told me he's working on building his own system from scratch using Ruby. Although this might be a good way to learn Ruby, it seems inefficient for a tech writer, who should be focusing more on documentation and content rather than tools.
