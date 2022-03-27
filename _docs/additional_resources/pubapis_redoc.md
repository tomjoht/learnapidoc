---
title: "Redoc Community Edition Basic Demo"
permalink: pubapis_redoc.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.91
section: restapispecifications
path1: restapispecifications.html
last-modified: 2021-10-15
---

{: .note}
[Redocly](https://redoc.ly/) offers robust tools for authoring and publishing API docs using the command-line and docs-as-code workflows. For a full tutorial, see [Redocly tutorial -- authoring and publishing API docs with Redocly's command-line tools](pubapis_redocly.html). The tutorial that follows here is a simple way to use the [community/free edition of Redoc](https://github.com/Redocly/redoc).

[Redoc](https://github.com/Redocly/redoc) is a popular display framework for the OpenAPI as well and is a favorite by many API gurus. Redoc started out as a API doc site for [Rebilly docs](http://rebilly.github.io/RebillyAPI) but with many customizations evolved into its own unique framework. Redoc provides a three-panel layout made popular by companies such as Stripe.

{% include ads.html %}

The makers of Redoc spun off into their own company ([Redocly](https://redoc.ly/)) and developed a more robust hosted solution offering (see [From ReDoc to Redoc.ly](https://redoc.ly/blog/from-redoc-to-redocly)). As with both Stoplight and Swagger UI, Redoc offers both free and pro versions to adjust to your needs. And you can add topics beyond just reference docs.

{% include image_ad_right.html %}

## <i class="fa fa-user-circle"></i> Activity: Use Redoc Community Edition to render OpenAPI spec {#community_edition_output}

{% include random_ad2.html %}

In this activity, you'll render your OpenAPI spec with [Redoc](https://github.com/Redocly/redoc).

1.  Copy the following code into an empty text file (in a text editor such as Sublime Text) and save the file as **redoc.html**. (Note: This code comes from [Redoc's "TL;DR" readme instructions on GitHub](https://github.com/Redocly/redoc#tldr).)

    ```html
    <!DOCTYPE html>
    <html>
      <head>
        <title>ReDoc</title>
        <!-- needed for adaptive design -->
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700|Roboto:300,400,700" rel="stylesheet">

        <!--
        ReDoc doesn't change outer page styles
        -->
        <style>
          body {
            margin: 0;
            padding: 0;
          }
        </style>
      </head>
      <body>
        <redoc spec-url='https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml'></redoc>
        <script src="https://cdn.jsdelivr.net/npm/redoc@next/bundles/redoc.standalone.js"> </script>
      </body>
    </html>
    ```

    {: .note}
    Make sure you save the file with a `.html` extension so that your browser will render it as HTML.

2.  Change the value for `redoc spec-url` to a valid OpenAPI spec that is available at an online URL.

    If you were following the previous tutorial on creating an OpenAPI spec through Stoplight Studio ([Getting started tutorial: Using Stoplight Studio to create an OpenAPI specification document](pubapis_openapis_quickstart_stoplight.html)), you can use the OpenAPI URL that Stoplight provides. From your Stoplight Studio display, go to the Overview topic and click **Export OpenAPI**. Choose either original or dereferenced. Copy the URL. Here's an [example URL](https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml).

    <figure><img src="{{site.media}}/export_openapi_stoplight.png" alt="Exporting an OpenAPI URL" class="medium" /><figcaption>Exporting an OpenAPI URL</figcaption></figure>

3.  In your web browser, click **Cmd + O** (Mac) or **Ctrl + O** (Windows), locate your **redoc.html** file, and select it.

{% include random_ad3.html %}

The display should look as follows:

<figure><a href="https://idratherbewriting.com/learnapidoc/assets/files/redoc.html"><img src="{{site.media}}/redoc_display.png" alt="Sample Redoc display" class="large" /></a><figcaption>Sample Redoc display</figcaption></figure>

{% include random_ad4.html %}
