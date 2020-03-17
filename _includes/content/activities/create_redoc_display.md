{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: Use Redoc to render OpenAPI spec
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

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
        <redoc spec-url='https://stoplight.io/api/nodes.raw?srn=gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml'></redoc>
        <script src="https://cdn.jsdelivr.net/npm/redoc@next/bundles/redoc.standalone.js"> </script>
      </body>
    </html>
    ```

    {: .note}
    Make sure you save the file with a `.html` extension so that your browser will render it as HTML.

2.  Change the value for `redoc spec-url` to a valid OpenAPI spec that is available at an online URL.

    If you were following the previous tutorial on creating an OpenAPI spec through Stoplight Studio ([Create an OpenAPI Specification through Stoplight Studio](pubapis_openapis_quickstart_stoplight.html)), you can use the OpenAPI URL that Stoplight provides. From your Stoplight Studio display, go to the Overview topic and click **Export OpenAPI**. Choose either original or dereferenced. Copy the URL. Here's an [example URL](https://stoplight.io/p/docs/gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml?group=master).

    {% include course_image.html size="medium" filename="export_openapi_stoplight" ext_print="png" ext_web="png" alt="Exporting an OpenAPI URL" caption="Exporting an OpenAPI URL" %}

3.  In your web browser, click **Cmd + O** (Mac) or **Ctrl + O** (Windows), locate your **redoc.html** file, and select it.

    The display should look as follows:

    {% include course_image.html url="https://idratherbewriting.com/learnapidoc/assets/files/redoc.html" size="large" filename="redoc_display" ext_print="png" ext_web="png" alt="Sample Redoc display" caption="Sample Redoc display" %}
