---
title: "Swagger UI tutorial"
permalink: /pubapis_swagger.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.2
section: restapispecifications
path1: /restapispecifications.html
---

In this tutorial, you'll learn how to use [Swagger UI](https://github.com/swagger-api/swagger-ui), a display framework that reads the OpenAPI spec, to parse through a sample [OpenAPI specification document](https://github.com/OAI/OpenAPI-Specification) and display an output that looks similar to the [Swagger Petstore example](http://petstore.swagger.io/). The sample API will be the same weather API from Mashape [used earlier in this book](docapis_scenario_for_using_weather_api.html). For a more detailed conceptual overview of OpenAPI and Swagger, see [Introduction to the OpenAPI specification and Swagger](pubapis_swagger_intro.html). For step-by-step tutorial on creating an OpenAPI specification document, see the [OpenAPI tutorial here](pubapis_openapi_tutorial_overview.html).

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Terminology notes

Before continuing, I want to clarify a few terms:

* [Swagger](https://swagger.io/) was the original name of the spec, but the spec was later changed to [OpenAPI](https://github.com/OAI/OpenAPI-Specification/) to reinforce the open, non-proprietary nature of the standard. People often refer to both names interchangeably, but "OpenAPI" is how the spec should be referred to. The OpenAPI spec is driven by the [OpenAPI initiative](https://www.openapis.org/), backed by the Linux Foundation and steered by [many companies and organizations](https://www.openapis.org/membership/members). The Swagger YAML file that you create to describe your API is called the "OpenAPI specification document" or the "OpenAPI document."
* Swagger refers to API tooling that around the OpenAPI spec. Some of these tools include [Swagger Editor](https://swagger.io/swagger-editor/), [Swagger UI](https://swagger.io/swagger-ui/), [Swagger Codegen](https://swagger.io/swagger-codegen/), [SwaggerHub](https://app.swaggerhub.com/home), and others. These tools are managed by [Smartbear](https://smartbear.com/).

For more details, see [What Is the Difference Between Swagger and OpenAPI?](https://swagger.io/difference-between-swagger-and-openapi/)

This tutorial focuses on Swagger UI. For a deep dive into the OpenAPI spec, see my [OpenAPI tutorial here](pubapis_openapi_tutorial_overview.html)].

## Swagger UI overview

Swagger UI is one of the most popular tools for generating interactive documentation from your OpenAPI document. Swagger UI generates an interactive API console for people to quickly learn about and try the API. Additionally Swagger UI is an actively managed project that supports the latest version of the OpenAPI spec (3.0) and integrates with other Swagger tools.

 In the following tutorial, I'll show you how to Swagger UI works and how to integrate an OpenAPI specification document into it.

## The Swagger Petstore example

To get a better understanding of Swagger UI, let's explore the <a href="http://petstore.swagger.io/">Petstore example</a>. Your OpenAPI document can be rendered into different visual displays based on the framework you decide to use to parse the OpenAPI spec. In the Petstore example, the site is generated using [Swagger UI](https://github.com/swagger-api/swagger-ui).

<a href="http://petstore.swagger.io/"><img src="images/swaggerpetstoreui.png" alt="Petstore UI" /></a>

There are three resource groups: [pet](http://petstore.swagger.io/#/pet), [store](http://petstore.swagger.io/#/store), and [user](http://petstore.swagger.io/#/user).

### Authorize your requests

First, you would normally authorize your request by clicking **Authorize** and completing the right information required in the Authorization modal.

<a href="http://petstore.swagger.io/"><img src="/learnapidoc/images/swaggerui_authorize.png" alt="Authorization modal in Swagger UI" /></a>

The Petstore example has an OAuth 2.0 security model. However, the authorization code is just for demo purposes. There isn't any real logic authorizing those requests, so you can simply close the Authorization modal.

### Make a request

Next, expand the **Pet** endpoint. Click **Try it out**.

<a href="http://petstore.swagger.io/"><img src="/learnapidoc/images/swaggerui_petendpoint.png" alt="Try it out button in Swagger UI" /></a>

After you click Try it out, the example value in the Request Body field becomes editable. Change the first `id` value to a random integer, such as `193844`. Change the second `name` value to something you'd recognize (your pet's name). Then click **Execute**.

<a href="http://petstore.swagger.io/"><img src="/learnapidoc/images/swaggerui_execute.png" alt="Executing a sample Petstore request" /></a>

Swagger UI submits the request and shows the [curl that was submitted](docapis_make_curl_call.html). The Responses section shows the [response](docapis_doc_sample_responses.html). (If you select JSON rather than XML in the "Response content type" drop-down box, you can specify that JSON is returned rather than XML.)

<a href="http://petstore.swagger.io/"><img src="/learnapidoc/images/swaggerui_response.png" alt="Response from Swagger Petstore get pet request" /></a>

The Petstore is a functioning API, and you have actually created a pet.

{% include important.html content="You've actually just created a pet with this API. You now need to take responsibility for your pet and begin feeding and caring for it! All joking aside, most users don't realize they're playing with real data when they execute responses in an API (using their own API key). This test data may be something you have to wipe clean when you transition from exploring and learning about the API to actually using the API for production use." %}

To verify that your pet was actually created:

1.  Expand the GET **/pet/{petId}** endpoint.
2.  Click **Try it out**.
3.  Enter the pet ID you used in the previous operation.
4.  Click **Execute**. You should see your pet's name returned.

## Sorting out the various Swagger tools

As I explained earlier, [Swagger](https://swagger.io/) refers to the various API tools built around the [OpenAPI spec](https://github.com/OAI/OpenAPI-Specification). Here's a quick summary of what tools are available:

* **[Swagger editor](http://editor.swagger.io/#/)**: The Swagger Editor is an online editor that validates your OpenAPI document against the rules of the OpenApI spec. You can write it in JSON or YAML. YAML is a syntax that depends on spaces and nesting. You'll need to be familiar with YAML syntax and the rules of the OpenAPI spec to be successful here. The Swagger editor will flag errors and give you formatting tips. See my [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html) for a step-by-step walkthrough.
* **[Swagger-UI](https://github.com/swagger-api/swagger-ui)**: The Swagger UI is an HTML/CSS/JS framework that parses an OpenAPI specification document and generates a navigable UI of the documentation. The  provides a demo. This is the tool that transforms your spec into the [Petstore-like site](http://petstore.swagger.io/).
* **[Swagger-codegen](https://github.com/swagger-api/swagger-codegen)**: This utility generates client SDK code for a lot of different platforms (such as Java, JavaScript, Scala, Python, PHP, Ruby, Scala, and more). The client SDK code helps developers integrate your API on a specific platform and provides for more robust implementations that might include more scaling, threading, and other necessary code. An SDK is supportive tooling that helps developers make requests with the REST API in a particular language.

## Some sample Swagger UI doc sites

Before we get into this Swagger tutorial with another API (other than Petstore), check out a few Swagger implementations:

* [Reverb](https://reverb.com/swagger#/articles)
* [VocaDB](http://vocadb.net/swagger/ui/index)
* [Watson Developer Cloud](https://watson-api-explorer.mybluemix.net/)
* [The Movie Database API](https://developers.themoviedb.org/3/account)
* [Zomato API](https://developers.zomato.com/documentation)

Some of these sites look the same, but others, such as The Movie Database API and Zomato, have been integrated harmoniously into the rest of their documentation website.

You'll notice the documentation is short and sweet in a Swagger UI implementation. This is because the Swagger display is meant to be an interactive experience where you can try out calls and see responses &mdash; using your own API key to see your own data. It's the learn-by-doing-and-seeing-it approach.

{% include random_ad.html %}

As you explore Swagger UI, you may notice a few limitations with the approach:

* There's not much room to describe in detail the workings of the endpoint in Swagger. If you have several paragraphs of details and gotchas about a parameter, it's best to link out from the description to another page in your docs. The OpenAPI spec provides a way to link to external documentation in both the [paths object](pubapis_openapi_step4_paths_object.html) and the [info object](pubapis_openapi_step2_info_object.html).
* The Swagger UI looks mostly the same for each output. You can modify the source files and regenerate the output, but doing so requires more advanced coding skills.
* The Swagger UI might be a separate site from your other documentation. This means in your regular docs, you'll probably need to link to Swagger as the reference for your endpoints. You don't want to duplicate your parameter descriptions and other details in two different sites. See [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html) for more details on workarounds.

## Create a Swagger UI display with an OpenAPI spec document

In this activity, you'll create a Swagger UI display for the weatherdata endpoint in this [Mashape Weather API](https://www.mashape.com/fyhao/weather-13#weatherdata). (If you're jumping around in the documentation, this is a simple API that we used in earlier parts of the course.) You can see a demo of what we'll build [here](http://idratherbewriting.com/learnapidoc/assets/files/swagger/).

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/"><img src="images/myswagger.png" alt="Swagger UI demo" /></a>

1.  If you don't already have an OpenAPI specification document, follow the [OpenAPI tutorial here](pubapis_openapi_tutorial_overview) to create one. The tutorial here focuses on Swagger UI, so for convenience, copy [this OpenAPI file for the Mashape Weather API](/learnapidoc/docs/rest_api_specifications/openapi_weather.yml) by right-clicking and saving the openapi_weather.yml file to your desktop.

    {: .tip}
    If you want to preview what your Swagger UI implementation will look like, copy the OpenAPI specification document into the [Swagger online editor](http://editor.swagger.io/#/). The view on the right shows a fully functional Swagger UI display.

2.  Go to the [Swagger UI project](https://github.com/swagger-api/swagger-ui) Github project.
3.  Click **Clone or download**, and then click **Download ZIP** button. Download the files to a convenient location on your computer and extract the files. (Note that you can also do a git clone to get the code as well.)

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

6.  Drag the **swagger_weather.yml** file that you created earlier into the same directory as the index.html file you just edited. Your file structure should look as follows:

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
    │   └── swagger_weather.yml
    ```

7.  Upload the folder to a web server and go to the folder path. For example, if you called your directory **dist** (leaving it unchanged), you would go to **http://myserver.com/dist**.

{: .tip}
Here's [a sample Swagger UI folder uploaded](http://idratherbewriting.com/learnapidoc/assets/files/swagger/).

If you don't have easy access to a web server locally, you can use a [simple Python http server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server) or a more robust local server such as [XAMPP](https://www.apachefriends.org/index.html).

### Interact with the Swagger UI

1.  Go to the URL where you uploaded your Swagger files. Alternatively, if you're using XAMPP locally, go to **localhost/dist**.
2.  In the upper-right corner, click **Authorize** and enter your [Mashape API key](docapis_get_auth_keys.html) in the dialog box's **value** field. If you don't have a Mashape API key, you can use `EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p`.
3.  Expand one of the endpoints.
4.  Click **Try it out**. The parameters become editable.
5.  Click **Execute**.
5.  In another tab, go to [Google Maps](https://maps.google.com) and search for an address.
6.  Get the latitude and longitude from the URL, and plug it into your Swagger UI. For example, `1.3319164` for `lat`, `103.7231246` for `lng`. This is Singapore.


	  If successful, you should see something in the response body like this:

    ```
	  9c, Mostly Cloudy at South West, Singapore
    ```

    If you see a response that says "Not supported," try the `lat` and `lng` coordinates used here. Try working with each of your endpoints and see the data that gets returned.

	  Note that if you refresh the page, you'll need to re-enter your API key.

## Auto-generating the Swagger file from code annotations

Instead of coding the Swagger file by hand, you can also auto-generate it from annotations in your programming code. There are many Swagger libraries for integrating with different code bases. These Swagger libraries then parse the annotations that developers add and generate the same Swagger file that you produced manually using the earlier steps.

By integrating Swagger into the code, you allow developers to easily write documentation, make sure new features are always documented, and keep the documentation more current. Here's a [tutorial on annotating code with Swagger for Scalatra](http://www.infoq.com/articles/swagger-scalatra). The annotation methods for Swagger doc blocks vary based on the programming language.

For other tools and libraries, see [Swagger services and tools](http://swagger.io/open-source-integrations/).
