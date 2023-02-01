---
title: "Swagger UI tutorial"
permalink: pubapis_swagger.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.5
section: restapispecifications
path1: restapispecifications.html
glossary_keys:
- swagger
- openapi
- swagger_editor
- swagger_ui
- swagger_codegen
last-modified: 2023-02-01
---

[Swagger UI](https://github.com/swagger-api/swagger-ui) provides a display framework that reads an [OpenAPI specification document](https://github.com/OAI/OpenAPI-Specification) and generates an interactive documentation website. The following tutorial shows you how to integrate an OpenAPI specification document into Swagger UI.

{: .tip}
For a more conceptual overview of OpenAPI and Swagger, see [Introduction to the OpenAPI specification](pubapis_openapi_intro.html), or see this article I wrote for ISTC a few years ago: [Implementing Swagger with API docs](https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/ISTC_Comm1609Web_TJ.pdf) (PDF). For a step-by-step tutorial on creating an OpenAPI specification document, see the [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html). Or for an easier approach using a visual editor to create the OpenAPI spec, see [Getting started tutorial: Using Stoplight Studio to create an OpenAPI specification document](pubapis_openapis_quickstart_stoplight.html).

{% comment %}Don't change the link above to site.media. The kindle generator can't resolve the link otherwise. {% endcomment %}

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Swagger UI overview

Swagger UI is one of the most popular tools for generating interactive documentation from your OpenAPI document. Swagger UI generates an interactive API console for users to quickly learn about your API and experiment with requests. Additionally, Swagger UI (which is an [actively managed project](https://github.com/swagger-api/swagger-ui) with an Apache 2.0 license) supports the latest version of the OpenAPI spec (3.x) and integrates with other Swagger tooling.

{% include random_ad2.html %}

For definitions of common terms, see [Key terms](#key_terms) at the end of this article.

## <i class="fa fa-user-circle"></i> Get familiar with Swagger UI through the Petstore demo

To get a better understanding of Swagger UI, let's explore the <a href="http://petstore.swagger.io/">Swagger Petstore example</a>. In the Petstore example, the site is generated using [Swagger UI](https://github.com/swagger-api/swagger-ui).

<a href="http://petstore.swagger.io/" class="noExtIcon"><img src="{{site.media}}/swaggerpetstoreui.png" alt="Petstore UI" /></a>

The endpoints are grouped as follows:

* [pet](http://petstore.swagger.io/#/pet)
* [store](http://petstore.swagger.io/#/store)
* [user](http://petstore.swagger.io/#/user).

### Authorize your requests

Before making any requests, you would normally authorize your session by clicking the **Authorize** button and completing the information required in the Authorization modal pictured below:

<a href="http://petstore.swagger.io/" class="noExtIcon"><img class="medium" src="{{site.media}}/swaggerui_authorize.png" alt="Authorization modal in Swagger UI" /></a>

The Petstore example has an OAuth 2.0 security model. However, the authorization code is just for demonstration purposes. There isn't any real logic authorizing those requests, so you can simply close the Authorization modal.

{% include random_ad4.html %}

### Make a request

Now let's make a request:

1.  Expand the [**POST Pet** endpoint](http://petstore.swagger.io/#/pet/addPet).
2.  Click **Try it out**.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="{{site.media}}/swaggerui_petendpoint.png" alt="Try it out button in Swagger UI" /></a>

    After you click Try it out, the example value in the Request Body field becomes editable.

3.  In the Example Value field, change the first `id` value to a random integer, such as `193844`. Change the second `name` value to something you'd recognize (your pet's name).
4.  Click **Execute**.

    <figure><a target="_blank" class="noExtIcon" href="http://petstore.swagger.io/"><img class="docimage large" src="{{site.media}}/swaggerui_execute.png" alt="Executing a sample Petstore request" /></a><figcaption>Executing a sample Petstore request</figcaption></figure>

    Swagger UI submits the request and shows the [curl](docapis_make_curl_call.html)  that was submitted. The Responses section shows the [response](docapis_doc_sample_responses_and_schema.html). (If you select JSON rather than XML in the "Response content type" drop-down box, the response's format will be shown in JSON.)

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="{{site.media}}/swaggerui_response.png" alt="Response from Swagger Petstore get pet request" /></a>

    {% include important.html content="The Petstore is a functioning API, and you have actually created a pet. You now need to take responsibility for your pet and begin feeding and caring for it! All joking aside, most users don't realize they're playing with real data when they execute responses in an API (especially when using their own API key). This test data may be something you have to wipe clean when you transition from exploring and learning about the API to eventually using the API for production use." %}

### Verify that your pet was created

1.  Expand the [**GET /pet/{petId}** endpoint](http://petstore.swagger.io/#/pet/getPetById).
2.  Click **Try it out**.
3.  Enter the pet ID you used in the previous operation. (If you forgot it, look back in the **POST Pet** endpoint to check the value.)
4.  Click **Execute**. You should see your pet's name returned in the Response section.

{% include ads.html %}

## Some sample Swagger UI doc sites

Before we get into this Swagger tutorial with another API (other than the Petstore demo), check out a few Swagger implementations:

* [Reverb](https://reverb.com/swagger#/articles)
* [VocaDB](https://vocadb.net/swagger/index.html)
* [IBM Watson IoT Admin REST APIs](https://docs.internetofthings.ibmcloud.com/apis/swagger/v0002/org-admin.html)
* [The Movie Database API](https://developers.themoviedb.org/3/account)

Some of these sites look the same, but others, such as The Movie Database API and Zomato, have been integrated seamlessly into the rest of their documentation website.

{% include random_ad3.html %}

Looking at the examples, you'll notice the documentation is short and sweet in a Swagger implementation. This brevity is because the Swagger display is meant to be an interactive experience where you can try out calls and see responses &mdash; using your own API key to see your own data. It's the learn-by-doing-and-seeing-it approach. Also, Swagger UI only covers the [reference topics](docendpoints.html) of your documentation. The [conceptual topics](docconceptual.html) are usually covered in a separate guide.

## <i class="fa fa-user-circle"></i> Activity: Create a Swagger UI display with an OpenAPI spec document {#create_swaggerui}

In this activity, you'll create a Swagger UI display for an OpenAPI specification document. If you're using one of the pre-built OpenAPI files, you can see a demo of what we'll build here: [OpenWeatherMap Swagger UI](https://idratherbewriting.com/learnapidoc/assets/files/swagger/).

<figure><a target="_blank" class="noExtIcon" href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html"><img class="docimage medium" src="{{site.media}}/swagger_full_result.png" alt="Demo of Swagger UI" /></a><figcaption>Demo of Swagger UI rendering an OpenWeatherMap OpenAPI specification document</figcaption></figure>

First, you'll make sure you can view Swagger locally. Then you'll switch the Petstore OpenAPI document URL with an OpenWeatherMap OpenAPI document URL.

1.  Go to the [Swagger UI GitHub project](https://github.com/swagger-api/swagger-ui).
2.  Click **Code**, and then click **Download ZIP**. Download the files to a convenient location on your computer and extract the files.

	  The only folder you'll be working with in the downloaded zip is the `dist` folder (short for distribution). Everything else is used only if you're recompiling the Swagger files, which is beyond the scope of this tutorial. (If desired, you can drag the `dist` folder out of the `swagger-ui-master` folder so that it stands alone.)

3.  In your Chrome browser, press **Cmd+O** (Mac) or **Ctrl+O** (Windows), browse to the `dist` folder, and select the `swagger-initializer.js` file,

    You should see the Petstore Swagger content. Now you'll customize the OpenAPI spec file with another file.

4.  Inside your `dist` folder, open `swagger-initializer.js` in a text editor such as [Sublime Text](https://www.sublimetext.com/).
5.  Look for the following code:

    ```js
    url: "https://petstore.swagger.io/v2/swagger.json",
    ```

6.  Change the `url` value to an online web URL to your Swagger file. For example: `https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml`. Then save the file.

    {: .note}
    If the `url` reference isn't to an *online* URL (but rather to a local file), Swagger UI will create an CORS (cross-origin resource sharing) error. To view Swagger UI with a local OpenAPI file, you can run a [simple Python server locally](https://docs.python.org/2/library/simplehttpserver.html) to simulate a web server (this requires you to install Python).

7.  Refresh the `index.html` file in your Chrome browser. The content should show the OpenWeatherMap API content instead of Swagger Petstore content.

    When you're ready to publish your Swagger UI file, you just upload the `dist` folder (or whatever you want to call it) to a web server and go to the `index.html` file. For example, if you called your directory `dist` (leaving it unchanged), you would go to `http://myserver.com/dist/`.

    {: .tip}
    For more instructions in working with Swagger UI, see the [Swagger.io docs](https://swagger.io/docs/open-source-tools/swagger-ui/usage/installation/).

## <i class="fa fa-user-circle"></i> Activity: View local OpenAPI file in Swagger UI {#view_local_openapi_swaggerui}

In order to view a *local* OpenAPI file (rather than an OpenAPI file hosted on a web server), you'll need to run an HTTP server on your computer. This is because CORS (cross-origin resource sharing) security restrictions in Chrome will block Swagger UI from running. Swagger UI needs to load on a web server to fulfill the security requirements.

You can create a local web server running on your computer through [Python's SimpleHTTPServer module](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server). Mac has a system version of Python installed by default, but Windows computers will need to install Python.

**Windows: Run the Python simple HTTP server**

1.  Download and install [Python 3x](https://www.python.org/downloads/).

    {: .warning}
    When you install Python, be sure to select the check box that says "Add Python 3.7 to PATH." *This check box isn't selected by default. If you don't select it, your command prompt won't recognize the word "python".*

    <figure><img class="docimage medium" src="{{site.media}}/pythonscreenshot2.png" alt="Installing Python to PATH" /><figcaption>Add Python 3.7 to PATH</figcaption></figure>

2.  After installing Python, close your command prompt and reopen it.
3.  In your command prompt, browse to the Swagger UI `dist` directory.

    To browse in the Windows command prompt, type `cd <folder name>` to move into the folder. Type `cd ..` to move up a directory. Type `dir` to see a list of the current directory's contents.

    If you're having trouble locating the `dist` directory in the command prompt, try this trick: type `cd`, press the spacebar, and then drag the `dist` folder directly into the command prompt. The path will be printed automatically.

4.  After you've navigated into the `dist` folder, launch the server:

    ```bash
    python3 -m http.server
    ```

    If this command doesn't work, try it without the 3:

    ```bash
    python -m http.server
    ```

    The server starts:

    ```bash
    Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
    ```
    (If your Command Prompt doesn't recognize `python`, then you probably need to add Python to your PATH. Instructions for doing that are outside the scope of this tutorial.)

5.  Go to `http://localhost:8000/` in your address bar. This address lets you view the local web server.

    By default, web servers default to the `index.html` file in the directory, so it will show the Swagger UI file automatically. If the browser doesn't direct to `index.html`, add it manually: `http://localhost:8000/index.html`.

    To stop the server, press **Ctrl+C** in your command prompt. If you closed your Command Prompt before stopping the service, type `ps`, find the process ID, then type `kill -9 <process ID>`.

**Mac: Run the Python simple HTTP server**

1.  In your terminal, browse to the Swagger UI `dist` directory.

    To browse in your terminal, type `cd <folder name>` to move into the folder. Type `cd ..` to move up a directory. Type `ls` to see a list of the current directory's contents.

    If you're having trouble locating the `dist` directory in the command prompt, try this trick: type `cd`, press the spacebar, and then drag the `dist` folder directly into the command prompt. The path will be printed automatically.

2.  Since Mac already has Python, you can just run the following in your terminal to launch simple server:

    ```bash
    python -m http.server
    ```

    If this command doesn't work, try it with the 3 in case you already have Python3 installed:

    ```bash
    python3 -m http.server
    ```

    The server starts:

    ```bash
    Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
    ```


3.  Go to `http://localhost:8000/` in your address bar. This address lets you view the local web server.

    By default, web servers default to the `index.html` file in the directory, so it will show the Swagger UI file automatically. If the browser doesn't direct to `index.html`, add it manually: `http://localhost:8000/index.html`.

    To stop the server, press **Ctrl+C** in your command prompt. If you closed your Command Prompt before stopping the service, type `ps`, find the process ID, then type `kill -9 <process ID>`.

For more details on using the Python simple server, see [How do you set up a local testing server?](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server) for more details.

**Customize the OpenAPI file**

By default, SwaggerUI has the Petstore OpenAPI document configured in the `url` parameter in the `index.html` file. You need to swap in your local file instead.

1.  Download the following OpenAPI document (right-click the link and save the YAML file to your desktop.): [https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml](https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml)

2.  Drag your OpenAPI specification file, `openapi_openweathermap.yml`, into the `dist` folder. Your file structure should look as follows:

    <pre>
    ├── dist
    │   ├── favicon-16x16.png
    │   ├── favicon-32x32.png
    │   ├── index.html
    │   ├── oauth2-redirect.html
    │   ├── swagger-ui-bundle.js
    │   ├── swagger-ui-bundle.js.map
    │   ├── swagger-ui-standalone-preset.js
    │   ├── swagger-ui-standalone-preset.js.map
    │   ├── swagger-ui.css
    │   ├── swagger-ui.css.map
    │   ├── swagger-ui.js
    │   ├── swagger-ui.js.map
    │   ├── swagger30.yml
    │   └── <span class="red">openapi_openweathermap.yml</span>
    </pre>

4.  Inside your `dist` folder, open `swagger-initializer.js` in a text editor such as [Sublime Text](https://www.sublimetext.com/).
5.  Look for the following code:

    ```js
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

6.  Change the `url` value from `http://petstore.swagger.io/v2/swagger.json` to a relative path to your YAML file, and then save the file. For example:

    ```js
    url: "openapi_openweathermap.yml",
    ```

7.  View the `index.html` file locally in your browser using the Python simple server. For example, go to `http://0.0.0.0:8000/` or `http://0.0.0.0:8000/index.html`.

    If you go to the file path, such as `file:///Users/tomjoht/Downloads/dist/index.html`, you might see a message that says "Failed to load API definition" note in the JavaScript Console that says "URL scheme must be "http" or "https" for CORS request." The SimpleServer simulates this http or https.

8.  To stop the Python simpler server, press **Ctrl+C** in your terminal or command prompt.


{% include image_ad_right.html %}

## Configuring Swagger UI parameters

Swagger UI provides various [configuration parameters](https://github.com/swagger-api/swagger-ui/blob/master/docs/usage/configuration.md) (unrelated to the [OpenAPI parameters](pubapis_openapi_step4_paths_object.html#parameters)) that you can use to customize the interactive display. For example, you can set whether each endpoint is expanded or collapsed, how tags and operations are sorted, whether to show request headers in the response, whether to include the Models section after the list of endpoints, and more.

We won't get too much into the details of these configuration parameters in the tutorial. I just want to call attention to these parameters here for awareness.

If you look at the [source of my Swagger UI demo](https://idratherbewriting.com/learnapidoc/assets/files/swagger/) (go to View > Source), you'll see the parameters listed in the `// Build a system` section:

```js
  // Build a system
const ui = SwaggerUIBundle({
  url: "openapi_openweathermap.yml",
  dom_id: '#swagger-ui',
  defaultModelsExpandDepth: -1,
  deepLinking: true,
  presets: [
    SwaggerUIBundle.presets.apis,
    SwaggerUIStandalonePreset
  ],
  plugins: [
    SwaggerUIBundle.plugins.DownloadUrl
  ],
  layout: "StandaloneLayout"
})
```

The parameters there (e.g., `deepLinking`, `dom_id`, etc.) are defaults. However, I've added `defaultModelsExpandDepth: -1` to hide the "Models" section at the bottom of the Swagger UI display (because I think that section is unnecessary).

You can also learn about the Swagger UI configuration parameters in the [Swagger documentation](https://swagger.io/docs/open-source-tools/swagger-ui/usage/configuration/).

## Challenges with Swagger UI

As you explore Swagger UI, you may notice a few limitations:

* There's not much room to describe in detail the workings of the endpoints. If you have several paragraphs of details and gotchas about a parameter, it's best to link out from the description to another page in your docs. The OpenAPI spec provides a way to link to external documentation in both the [paths object](pubapis_openapi_step4_paths_object.html), the [info object](pubapis_openapi_step2_info_object.html), and the [externalDocs object](pubapis_openapi_step8_externaldocs_object.html)
* The Swagger UI looks mostly the same for each API. You can [customize Swagger UI](https://swagger.io/docs/swagger-tools/#customization-36) with your own branding, but it will require some more in-depth UX skills. It is, however, relatively easy to change the color and image in the top navigation bar.
* The Swagger UI might be a separate site from your other documentation. This separate output means that in your regular docs, you'll probably need to link to Swagger as the reference for your endpoints. You don't want to duplicate your parameter descriptions and other details in two different sites. See [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html) for strategies on unifying your reference docs and user guide.

## Troubleshooting issues with Swagger UI {#troubleshooting_swagger}

When you're setting up Swagger UI, you might run into some issues. The following issues are the most common:

**CORS issues:**

If you have security correctly configured, but the requests are rejected, it could be due to a CORS (cross-origin resource sharing) issue. CORS is a security measure that websites implement to make sure other scripts and processes cannot take their content through requests from remote servers. See [CORS Support](https://github.com/swagger-api/swagger-ui#cors-support) in Swagger UI's documentation for details.

If the requests aren't working, open your browser's JavaScript console when you make the request and see if the error relates to cross-origin requests. If this is the error, ask your developers to enable CORS on the endpoints. (To open the JavaScript Console, on Chrome on a Mac, go to **View > Developer > Javascript Console**; on Windows, click the **menu** button (vertical ellipses) and go to **More tools > Developer tools**. Then click the **Console** tab.)

**Host URL issues:**

The host for your test server might be another reason that requests are rejected. Some APIs (like Aeris Weather) require you to create an App ID that is based on the host URL where you'll be executing requests. If the host URL you registered is `http://mysite.com`, but you're submitting the test from `https://editor.swagger.io/`, the API server will reject the requests.

If you need help, the [Swagger Google Group](https://groups.google.com/forum/#!forum/swagger-swaggersocket) is a helpful resource for troubleshooting.

## Embedding Swagger UI within an existing site

In addition to publishing your Swagger UI output as a standalone site, you can also embed the Swagger file within an existing site. See the following:

* [Standalone Swagger UI Demo](https://idratherbewriting.com/learnapidoc/assets/files/swagger/)
* [Embedded Swagger UI Demo](pubapis_swagger_demo.html)

Since the Swagger UI site is responsive, it resizes well to fit into most any space. Even so, embedding Swagger into an existing site still looks like a website within a website.

## Key terms {#key_terms}

{% include glossary_limited.html file="glossary" %}

For more terms, see the [Glossary](http://localhost:4000/learnapidoc/api-glossary.html).
