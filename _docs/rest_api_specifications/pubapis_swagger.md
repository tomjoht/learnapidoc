---
title: "Swagger UI tutorial"
permalink: /pubapis_swagger.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.5
section: restapispecifications
path1: /restapispecifications.html
redirect_from:
- http://idratherbewriting.com/pubapis_swagger/
---

[Swagger UI](https://github.com/swagger-api/swagger-ui) provides a display framework that reads the [OpenAPI specification document](https://github.com/OAI/OpenAPI-Specification) and generates an interactive documentation website. This tutorial shows you how to use the Swagger UI interface and how to integrate an OpenAPI specification document into the standalone distribution of Swagger UI.

For a more detailed conceptual overview of OpenAPI and Swagger, see [Introduction to the OpenAPI specification and Swagger](pubapis_swagger_intro.html).

{: .tip}
For step-by-step tutorial on creating an OpenAPI specification document, see the [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html).

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Terminology notes

First, let's clarify a few terms:

* [Swagger](https://swagger.io/) was the original name of the spec, but the spec was later changed to [OpenAPI](https://github.com/OAI/OpenAPI-Specification/) to reinforce the open, non-proprietary nature of the standard. People sometimes refer to both names interchangeably (esp. on older web pages), but "OpenAPI" is how the spec should be referred to.
* The OpenAPI spec is driven by the [OpenAPI initiative](https://www.openapis.org/), backed by the Linux Foundation and steered by [many companies and organizations](https://www.openapis.org/membership/members). The Swagger YAML file that you create to describe your API is called the "OpenAPI specification document."
* Swagger refers to API tooling that around the OpenAPI spec. Some of these tools include [Swagger Editor](https://swagger.io/swagger-editor/), [Swagger UI](https://swagger.io/swagger-ui/), [Swagger Codegen](https://swagger.io/swagger-codegen/), [SwaggerHub](https://app.swaggerhub.com/home), and [others](https://swagger.io/tools/). These tools are managed by [Smartbear](https://smartbear.com/).
* [SwaggerHub](https://app.swaggerhub.com/home) is the more fully featured, commercial version of the open-source Swagger UI. See [Swagger UI on Swagger.io](https://swagger.io/download-swagger-ui/) for a feature comparison.

For more details, see [What Is the Difference Between Swagger and OpenAPI?](https://swagger.io/difference-between-swagger-and-openapi/) and the [API Glossary](api-glossary.html).

This tutorial focuses on Swagger UI. For a deep dive into the OpenAPI spec, see my [OpenAPI tutorial here](pubapis_openapi_tutorial_overview.html).

## Swagger UI overview

Swagger UI is one of the most popular tools for generating interactive documentation from your OpenAPI document. Swagger UI generates an interactive API console for users to quickly learn about and try the API. Additionally, Swagger UI is an actively managed project (with an Apache 2.0 license) that supports the latest version of the OpenAPI spec (3.0) and integrates with other Swagger tools.

 In the following tutorial, I'll show you how to Swagger UI works and how to integrate an OpenAPI specification document into it.

## The Swagger UI Petstore example

To get a better understanding of Swagger UI, let's explore the <a href="http://petstore.swagger.io/">Swagger Petstore example</a>. In the Petstore example, the site is generated using [Swagger UI](https://github.com/swagger-api/swagger-ui).

<a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerpetstoreui.png" alt="Petstore UI" /></a>

The endpoints are grouped into three tags:

* [pet](http://petstore.swagger.io/#/pet)
* [store](http://petstore.swagger.io/#/store)
* [user](http://petstore.swagger.io/#/user).

### Authorize your requests

Before making any requests, you would normally authorize your session by clicking the **Authorize** button and completing the information required in the Authorization modal pictured below:

<a href="http://petstore.swagger.io/" class="noExtIcon"><img class="medium" src="images/swaggerui_authorize.png" alt="Authorization modal in Swagger UI" /></a>

The Petstore example has an OAuth 2.0 security model. However, the authorization code is just for demo purposes. There isn't any real logic authorizing those requests, so you can simply close the Authorization modal.

### Make a request

Now let's make a request:

1.  Expand the [**POST Pet** endpoint](http://petstore.swagger.io/#/pet/addPet).
2.  Click **Try it out**.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_petendpoint.png" alt="Try it out button in Swagger UI" /></a>

    After you click Try it out, the example value in the Request Body field becomes editable.

3.  In the Example Value field, change the first `id` value to a random integer, such as `193844`. Change the second `name` value to something you'd recognize (your pet's name).
4.  Click **Execute**.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_execute.png" alt="Executing a sample Petstore request" /></a>

Swagger UI submits the request and shows the [curl that was submitted](docapis_make_curl_call.html). The Responses section shows the [response](docapis_doc_sample_responses_and_schema.html). (If you select JSON rather than XML in the "Response content type" drop-down box, you can specify that JSON is returned rather than XML.)

<a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_response.png" alt="Response from Swagger Petstore get pet request" /></a>

{% include important.html content="The Petstore is a functioning API, and you have actually created a pet. You now need to take responsibility for your pet and begin feeding and caring for it! All joking aside, most users don't realize they're playing with real data when they execute responses in an API (using their own API key). This test data may be something you have to wipe clean when you transition from exploring and learning about the API to actually using the API for production use." %}

### Verify that your pet was created

1.  Expand the [**GET /pet/{petId}** endpoint](http://petstore.swagger.io/#/pet/getPetById).
2.  Click **Try it out**.
3.  Enter the pet ID you used in the previous operation. (If you forgot it, look back in the POST Pet** endpoint to check the value.)
4.  Click **Execute**. You should see your pet's name returned in the Response section.

## Some sample Swagger UI doc sites

Before we get into this Swagger tutorial with another API (other than Petstore), check out a few Swagger implementations:

* [Reverb](https://reverb.com/swagger#/articles)
* [VocaDB](http://vocadb.net/swagger/ui/index)
* [Watson Developer Cloud](https://watson-api-explorer.mybluemix.net/)
* [The Movie Database API](https://developers.themoviedb.org/3/account)
* [Zomato API](https://developers.zomato.com/documentation)

Some of these sites look the same, but others, such as The Movie Database API and Zomato, have been integrated seamlessly into the rest of their documentation website.

You'll notice the documentation is short and sweet in a Swagger UI implementation. This is because the Swagger display is meant to be an interactive experience where you can try out calls and see responses &mdash; using your own API key to see your own data. It's the learn-by-doing-and-seeing-it approach.

{% include random_ad.html %}

## Create a Swagger UI display with an OpenAPI spec document

In this activity, you'll create a Swagger UI display for the weather endpoint in this [OpenWeatherMap API](http://openweathermap.org/current). (If you're jumping around in the documentation, this is a simple API that we used in earlier parts of the course.) You can see a demo of what we'll build [here](http://idratherbewriting.com/learnapidoc/assets/files/swagger/).

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/myswagger.png" alt="Swagger UI demo" /></a>

{: .tip}
You can also follow instructions for working with Swagger UI [here in the Swagger.io docs](https://swagger.io/docs/swagger-tools/#swagger-ui-documentation-29).

**To integrate your OpenAPI spec into Swagger UI:**

1.  If you don't already have an OpenAPI specification document, follow the [OpenAPI tutorial here](pubapis_openapi_tutorial_overview.html) to create one. The tutorial here focuses on Swagger UI, so for convenience, copy [this sample OpenAPI file](http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_weather.yml) by right-clicking the link and saving the file ("openapi_weather.yml") to your desktop.

    {: .tip}
    If you want to preview what your Swagger UI implementation will look like ahead of time, copy the content from the OpenAPI specification document you just downloaded into the [Swagger online editor](http://editor.swagger.io/#/). The view on the right of the Swagger Editor shows a fully functional Swagger UI display.

2.  Go to the [Swagger UI GitHub project](https://github.com/swagger-api/swagger-ui).
3.  Click **Clone or download**, and then click **Download ZIP** button. Download the files to a convenient location on your computer and extract the files.

	  The only folder you'll be working with here is the **dist** folder (short for distribution). Everything else is used only if you're regenerating the files, which is beyond the scope of this tutorial.

4.  Drag the **dist** folder out of the swagger-ui-master folder so that it stands alone. Then delete the swagger-ui-master folder and zip file.
4.  Inside your **dist** folder, open **index.html** in a text editor such as Atom or Sublime Text.
5.  Look for the following code:

    ```js
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

6.  Change the `url` value from `http://petstore.swagger.io/v2/swagger.json` to the following:

    ```js
    url: "openapi_weather.yml",
    ```

    Save the file.

7.  Drag the **openapi_weather.yml** file that you downloaded earlier into the same directory as the index.html file you just edited. Your file structure should look as follows:

    ```
    ├── swagger
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
    │   └── openapi_weather.yml
    ```

8.  Upload the folder to a web server and go to the folder path. For example, if you called your directory **dist** (leaving it unchanged), you would go to **http://myserver.com/dist**. (You can change the "dist" folder name to whatever you want.)

You can also view the file locally in your browser. It's also common to run a local web server to view the Swagger UI site. To run a local web server on your computer, you can use a [simple Python http server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server) or a more robust local server such as [XAMPP](https://www.apachefriends.org/index.html).

{: .tip}
Swagger UI provides a number of [parameters](https://swagger.io/docs/swagger-tools/#parameters-37) you can use to customize the display. For example, you can set whether each endpoint is expanded or collapsed, how tags and operations are sorted, whether to show request headers in the response, and more.

## Challenges with Swagger UI

As you explore Swagger UI, you may notice a few limitations with the approach:

* There's not much room to describe in detail the workings of the endpoint in Swagger. If you have several paragraphs of details and gotchas about a parameter, it's best to link out from the description to another page in your docs. The OpenAPI spec provides a way to link to external documentation in both the [paths object](pubapis_openapi_step4_paths_object.html) and the [info object](pubapis_openapi_step2_info_object.html).
* The Swagger UI looks mostly the same for each output. You can modify the source files and regenerate the output, but doing so requires more advanced coding skills.
* The Swagger UI might be a separate site from your other documentation. This means in your regular docs, you'll probably need to link to Swagger as the reference for your endpoints. You don't want to duplicate your parameter descriptions and other details in two different sites. See [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html) for more details on workarounds. You can [customize Swagger UI](https://swagger.io/docs/swagger-tools/#customization-36) with your own branding, but it will some deeper UX skills.

## Auto-generating the Swagger file from code annotations

Instead of coding the Swagger file by hand, you can also auto-generate it from annotations in your programming code. There are many Swagger libraries for integrating with different code bases. These Swagger libraries then parse the annotations that developers add and generate the same Swagger file that you produced manually using the earlier steps.

By integrating Swagger into the code, you allow developers to easily write documentation, make sure new features are always documented, and keep the documentation more current. Here's a [tutorial on annotating code with Swagger for Scalatra](http://www.infoq.com/articles/swagger-scalatra). The annotation methods for Swagger doc blocks vary based on the programming language.

For other tools and libraries, see [Swagger services and tools](http://swagger.io/open-source-integrations/) and [Open Source Integrations](https://swagger.io/open-source-integrations/).

## Sorting out the various Swagger tools

As I explained earlier, [Swagger](https://swagger.io/) refers to the various API tools built around the [OpenAPI spec](https://github.com/OAI/OpenAPI-Specification). Here's a quick summary of what Swagger tools are available:

* **[Swagger editor](http://editor.swagger.io/#/)**: The Swagger Editor is an online editor that validates your OpenAPI document against the rules of the OpenApI spec. You'll need to be familiar with OpenAPI specification to be successful here. The Swagger editor will flag errors and give you formatting tips. See my [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html) for a step-by-step walkthrough.
* **[Swagger-UI](https://github.com/swagger-api/swagger-ui)**: The Swagger UI is an HTML/CSS/JS framework that parses an OpenAPI specification document and generates an interactive documentation website. This is the tool that transforms your spec into the [Petstore-like site](http://petstore.swagger.io/).
* **[Swagger-codegen](https://github.com/swagger-api/swagger-codegen)**: This tool generates client SDK code for a lot of different platforms (such as Java, JavaScript, Scala, Python, PHP, Ruby, Scala, and more). The client SDK code helps developers integrate your API on a specific platform and provides for more robust implementations that might include more scaling, threading, and other necessary code. In general, SDKs are toolkits for implementing the requests made with an API. Swagger Codegen generates the client SDKs in nearly every programming language.
* **[Swaggerhub](https://app.swaggerhub.com/)**: The commercial version of the open-source Swagger UI project.

For more tools, see [Swagger Tools](https://swagger.io/tools/).
