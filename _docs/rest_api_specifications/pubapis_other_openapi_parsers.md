---
title: "Other tools to parse and display OpenAPI specs"
permalink: /pubapis_other_openapi_parsers.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.92
section: restapispecifications
path1: /restapispecifications.html
---

In this course, I've emphasized using [Swagger UI](pubapis_swagger.html) to parse and display the [OpenAPI specification](pubapis_swagger_intro.html) as interactive documentation. However, there are many other tools that can read OpenAPI specification documents. That's the whole idea of a standard &mdash; when you create a standard way of describing APIs, many tools can predictably read the description and generate documentation (and other tooling) based on it.

* TOC
{:toc}

## List of Commercial Tools

Swagger has a detailed list of tools that can read the OpenAPI spec here: [Commercial Tools](https://swagger.io/commercial-tools/). You can see the many [open-source tools here](https://swagger.io/open-source-integrations/).

Below I'll expand on a couple of others, and add more over time.

{: .note}
I'm currently developing out the content here. Currently, the list tools and info is anemic.

## Spectacle {#spectacle}

[Spectacle](https://github.com/sourcey/spectacle) is an open-source Github project that builds an output from an OpenAPI specification file. The display provides a three-pane output similar to the Stripe or Slate docs. After you download the project files, you can build the display using Node simply by referencing your OpenAPI spec file.

Here's a [demo output](https://cheesestore.github.io/).

<a href="https://cheesestore.github.io/" class="noExtIcon"><img src="images/spectacle-sample-output.png"/></a>

You can also see an [output that uses the Mashape API file](http://idratherbewriting.com/learnapidoc/assets/files/spectacle/public/index.html).

With almost no needed setup or configuration, Spectacle gives you a world-class output and site for your API docs. As long as the [OpenAPI spec](pubapis_openapi_tutorial_overview.html) that you integrate is fully detailed, the generated Spectacle site will be attractive and full-featured.

You can also build the Spectacle site without the framed layout so you can embed it into another site. However, in playing with this embed option, I found that to do this, I'd have to create my own styles. If using the default styles in the full-site output, they most likely will overwrite or interfere with your host site's appearance.

## Run in Postman button {#postman}

Postman is a REST API GUI client that we explored earlier in [Submit requests through Postman
](docapis_postman.html). The [Run in Postman button](https://www.getpostman.com/integrations/run-button) provides a button (labeled "Run in Postman") that, when clicked, imports your API info into Postman so users can run calls using the Postman client. As such, this isn't a full-fledged authoring tool but rather a way to import the interactive, try-it-out API explorer for your endpoints into a web page.

To try out Run in Postman, first [import your OpenAPI spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually. Then see the Postman docs on how to [Create the Run in Postman button](https://www.getpostman.com/docs/postman_for_publishers/run_button/creating_run_button).

You can see the many [demos of Run in Postman here](https://www.getpostman.com/integrations/run-button).

{% if site.format == "web" %}
Here's a demo of Run in Postman using the OpenWeatherMap API (`weather` endpoint):

<div class="postman-run-button"
data-postman-action="collection/import"
data-postman-var-1="abd0d0741e8206266958"></div>
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
For a demo of Run in Postman using the sample OpenWeatherMap API, go to [idratherbewriting.com/learnapidoc/pubapis_docs_as_code_tool_options.html#postman](http://idratherbewriting.com/learnapidoc/pubapis_docs_as_code_tool_options.html#postman).
{% endif %}

Postman provides a powerful REST API client that many developers are familiar with. It allows users to customize the API key and parameters and save those values. Although you don't have the in-browser experience to try out calls, in many ways the Postman client is more useful. This is what developers often use to save and store API calls as they test and explore the functionality.

Especially if your users are already familiar with Postman, Run in Postman is a good option to provide (especially as one option of many for users to try out your API), as it allows users to easily integrate your API into a client they can use. It gives them a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

The downside is that your parameter and endpoint descriptions don't get pulled into Postman. Additionally, if users are unfamiliar with Postman, they may struggle a bit to understand how to use it. In contrast, the "Try it out" editors that run directly in the browser tend to be more straightforward and do a better job integrating documentation.

## API Gator

[API Gator](https://www.apigator.io/):

> Design your API through a GUI.
> The outputs are downloadable Open API 2.0 compliant documents.
> Use Open API 2.0 documents with Swagger tools to ease the creation of API mock, documentation and client SDK.
