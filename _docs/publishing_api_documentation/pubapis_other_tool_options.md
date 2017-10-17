---
title: "Other tool options &mdash; a miscellaneous compilation"
permalink: /pubapis_other_tool_options.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.91
section: publishingapis
path1: /publishingapis.html
---

There are many different tools for creating documentation, and there’s no clear industry standard in this space. Different tools may better suit different environments, skill sets, and products. On this page, I've listed as many authoring tools as I can find that are related to the developer documentation space.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Readme.io {#readmeio}

[readme.io](http://readme.io) is an online hosted options for docs that offers one of the most robust, full-featured interfaces and options for developer docs available. If you consider how much time it requires to build, maintain, troubleshoot, etc., your own website, then it really does make sense to consider an existing third-party platform where someone has already built all of this out for you.

To explore readme.io:

1. Go to [readme.io](http://readme.io).
2. Click the **Sign Up** button in the upper-right corner and sign up for an account.
3. If necessary, click **+Add Project**. Then add a Project Name (e.g., Weather API), Subdomain (e.g., weather-api), and Project Logo. Then click **Create**.

   <img src="images/projectsettingsreadmeio.png" alt="Project Settings" />

4. Now check out the API doc configuration section. In the left sidebar, click **Reference Docs**, and then click **API**.

Although you can add your API information manually, you can also import a  [Swagger](http://idratherbewriting.com/learnapidoc/pubapis_swagger_intro.html) file. You can experiment by choosing one from the [Swagger examples](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v2.0/yaml), such as [this one](https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/json/petstore-expanded.json).

Readme.io provides a number of wizard-like screens to move you through the documentation process, prompting you with forms to complete.

<img src="images/readmeio_manual_api.png" style="border: 1px solid #dedede;" />

Readme.io provides a robust GUI for creating API documentation, in a way that is more extensive and well-designed than virtually any other platform available. The Readme output provides an interactive, try-it-out experience with endpoints:

<img src="images/readmeiotryitout.png" style="border: 1px solid #dedede;" />

The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.

Readme.io is a pretty sweet platform, and you don't have to worry about describing your API based on a specification based on either RAML or Swagger. But this also has downsides. It means that your doc is tied to the Readme.io platform. Additionally, you can't auto-generate the output from annotations in your source code.

Additionally, if the cloud location for your docs isn't an option, that may also pose challenges. Finally, there isn't any content re-use functionality, so if you have multiple outputs for your documentation that you're single sourcing, Readme.io may not be for you.

Even so, the output is sharp and the talent behind this site is top-notch. The platform is constantly growing with new features, so maybe all of this functionality will eventually be there.

One of the tools you can use to generate API documentation from source -- as long as your source is Java-based -- is Miredot.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Miredot

Miredot is a plugin for Maven, which is a build tool that you integrate into your Java IDE. Miredot can generate an offline website that looks like this:

<a href="http://miredot.com/exampledocs/"><img src="images/miredotexample.png" alt="Miredot example" /></a>

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

<a href="http://www.miredot.com/exampledocs/#268738548"><img src="images/miredotupdatecategory.png" alt="Miredot update category" /></a>

{% include random_ad.html %}

If you browse the navigation of Miredot's output, it's an interesting-looking solution. This kind of documentation might fit a Java-based REST API well.

But the authoring of the docs would really only work for Java developers. It wouldn't work well for technical writers unless you're plugged into the source control workflow.

## Run in Postman button {#postman}

The [Run in Postman button](https://www.getpostman.com/integrations/run-button) provides a **Run in Postman** button that, when clicked, imports your API info into Postman (either the Chrome app or Mac app) so users can run calls using the Postman client.

To try out Run in Postman, first [import your Swagger spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually. Then see [Create the Run in Postman button](https://www.getpostman.com/docs/postman_for_publishers/run_button/creating_run_button).

You can see the many [demos here](https://www.getpostman.com/integrations/run-button).

{% if site.format == "kindle" %}
For a demo using the sample Mashape weather API, see the [Postman section](pubapis_other_tool_options.html#postman) in "Tool options for developer docs."
{% else %}
Here's a demo using the sample Mashape weather API:

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

Postman provides a powerful REST API client that many developers are familiar with. It allows users to customize the API key and parameters and save those values. Although you don't have the in-browser experience to try out calls, in many ways the Postman client is more useful. This is what developers often use to save and store API calls as they test and explore the functionality.

Especially if your users are already familiar with Postman, Run in Postman is a good option to provide (especially as one option of many for users to try out your API), as it allows users to easily integrate your API into a client they can use. It gives them a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

The downside is that your parameter and endpoint descriptions don't get pulled into Postman. Additionally, if users are unfamiliar with Postman, they may struggle a bit to understand how to use it. In contrast, the "Try it out" editors that run directly in the browser tend to be more straightforward and do a better job integrating documentation (including sample responses and the model they follow).

## Spectacle

[Spectacle](https://github.com/sourcey/spectacle) is a Github project that builds an output from a Swagger file. The display provides a three-pane output similar to the Stripe or Slate docs. After you download the project files, you can build the display using Node simply by referencing your Swagger file.

Here's a [demo output](https://cheesestore.github.io/). You can also see an [output that uses the Mashape weather API file](assets/files/spectacle/public/index.html).

With almost no needed setup or configuration, you can have a world-class output and site for your API docs. As long as the Swagger spec that you integrate is fully detailed, the generated Spectacle site will be attractive and full-featured.

You can also build the Spectacle site without the frame so you can embed it into another site. However, in playing with this embed option, I found that I would have to create my own styles. If using the default styles in the full-site output, they most likely will overwrite or interfere with your host site's appearance.

I'm also not sure if you can add your own doc pages to the Spectacle site.

## Custom UX solutions

If you want to build a beautiful API doc website that rivals sites such as [Parse.com](http://parse.com) and others, you'll most likely need to involve a UX engineer to build it. Fortunately, this is a solution that many UX engineers and other web developers are usually excited to tackle.

If you want to integrate your API documentation into your main website, ask the person designing your main website for strategies on integrating the doc site into it. This integration might allow you to leverage authentication (if needed) and other interaction points (such as with forums or support tickets).

Many custom websites are built using a variety of JavaScript, HTML, and CSS tools. Most likely you'll be able to supply a batch of Markdown or HTML files to the web developer to integrate. Your UX developers will often be eager to design a custom solution to make your docs beautiful and seamlessly integrated with the rest of your content.

<img src="images/uxteam.png" alt="Getting help from your UX team" />

When I worked at Badgeville, our solution for publishing API documentation was to use custom scripts that pulled some information from source files and pushed them into templates.

The source files were stored on Github, and the writers could edit the descriptions of the parameters, fields, etc. Our developers created scripts that would look into the code of the source files and render content into JSON files in a specific structure.

Since we published all help content on a Drupal site, we hired a Drupal development agency that would take information from a JSON file and push the information into a custom-built template.

After the scripts were integrated into the Drupal site, we would have developers periodically run the build scripts to generate a batch of JSON files.

{% include random_ad.html %}

The upload scripts checked to ensure the JSON files were valid, and then they were pushed into the templates and published. Each upload would overwrite any existing content with the same file names.

If your documentation is published on a web-based CMS, you can probably find a development agency to create a similar script (if you don't have in-house engineers to create them).

A lot of companies have custom solutions for their API documentation. Sometimes this kind of solution just makes sense and allows you to right-size the workflow to fit your specific information.

## More tools

I'll be adding more tools here in the days to come...

* readthedocs.org/com
* mkdocs
* hugo
* slate
* dexy

http://apidocjs.com/
