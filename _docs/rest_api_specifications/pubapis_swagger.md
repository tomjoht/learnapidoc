---
title: "Swagger UI tutorial"
permalink: /pubapis_swagger.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.5
section: restapispecifications
path1: /restapispecifications.html
redirect_from:
- https://idratherbewriting.com/pubapis_swagger/
---

[Swagger UI](https://github.com/swagger-api/swagger-ui) provides a display framework that reads an [OpenAPI specification document](https://github.com/OAI/OpenAPI-Specification) and generates an interactive documentation website. This tutorial shows you how to use the Swagger UI interface and how to integrate an OpenAPI specification document into the standalone distribution of Swagger UI.

For a more detailed conceptual overview of OpenAPI and Swagger, see [Introduction to the OpenAPI specification and Swagger](pubapis_swagger_intro.html).

{: .tip}
For step-by-step tutorial on creating an OpenAPI specification document, see the [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html). In the tutorial, I showed how the OpenAPI specification gets rendered by the Swagger UI display that is built into the [Swagger Editor](https://editor.swagger.io/). Here I explain how to use Swagger UI as a standalone output.  

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Swagger UI overview

Swagger UI is one of the most popular tools for generating interactive documentation from your OpenAPI document. Swagger UI generates an interactive API console for users to quickly learn about and try the API. Additionally, Swagger UI is an [actively managed project](https://github.com/swagger-api/swagger-ui) (with an Apache 2.0 license) that supports the latest version of the OpenAPI spec (3.0) and integrates with other Swagger tools.

In the following tutorial, I'll show you how to Swagger UI works and how to integrate an OpenAPI specification document into it.

{% include random_ad2.html %}

Before we dive into Swagger, it might help to clarify some key terms.

{% if site.format == "web" %}
<button type="button" class="btn btn-info" onclick="$('#sampleblock').toggle( 'fast' )">Key terms &raquo;</button>
<div id="sampleblock" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">
<h3>Key terms</h3>

Swagger
: Refers to API tooling that around the OpenAPI spec. Some of these tools include [Swagger Editor](https://swagger.io/swagger-editor/), [Swagger UI](https://swagger.io/swagger-ui/), [Swagger Codegen](https://swagger.io/swagger-codegen/), [SwaggerHub](https://app.swaggerhub.com/home), and [others](https://swagger.io/tools/). These tools are managed by [Smartbear](https://smartbear.com/). For more tools, see [Swagger Tools](https://swagger.io/tools/). "Swagger" was the original name of the OpenAPI spec, but the name was later changed to [OpenAPI](https://github.com/OAI/OpenAPI-Specification/) to reinforce the open, non-proprietary nature of the standard. People sometimes refer to both names interchangeably (especially on older web pages), but "OpenAPI" is how the spec should be referred to. (See [What Is the Difference Between Swagger and OpenAPI?](https://swagger.io/difference-between-swagger-and-openapi/).)

OpenAPI
: Refers to the name of the specification. The OpenAPI specification is driven by the [OpenAPI initiative](https://www.openapis.org/), backed by the Linux Foundation and steered by [many companies and organizations](https://www.openapis.org/membership/members). The YAML or JSON file that you create to describe your API following the OpenAPI specification is called the "OpenAPI specification document."

Swagger Editor
: An online editor that validates your OpenAPI document against the rules of the OpenAPI specification. The Swagger Editor will flag errors and give you formatting tips. See [Swagger Editor](http://editor.swagger.io/#/).

Swagger UI
: An open-source web framework ([on GitHub](https://github.com/swagger-api/swagger-ui)) that parses an OpenAPI specification document and generates an interactive documentation website. This is the tool that transforms your spec into the [Petstore-like site](http://petstore.swagger.io/).

Swagger Codegen
: Tools that general client SDK code for a lot of different platforms (such as Java, JavaScript, Scala, Python, PHP, Ruby, Scala, and more). The client SDK code helps developers integrate your API on a specific platform and provides for more robust implementations that might include more scaling, threading, and other necessary code. In general, SDKs are toolkits for implementing the requests made with an API. Swagger Codegen generates the client SDKs in nearly every programming language. See [Swagger-codegen](https://github.com/swagger-api/swagger-codegen) for more details.

</div>

{% elsif site.format == "pdf" or site.format == "kindle" %}

Swagger
: Refers to API tooling that around the OpenAPI spec. Some of these tools include [Swagger Editor](https://swagger.io/swagger-editor/), [Swagger UI](https://swagger.io/swagger-ui/), [Swagger Codegen](https://swagger.io/swagger-codegen/), [SwaggerHub](https://app.swaggerhub.com/home), and [others](https://swagger.io/tools/). These tools are managed by [Smartbear](https://smartbear.com/). For more tools, see [Swagger Tools](https://swagger.io/tools/). "Swagger" was the original name of the OpenAPI spec, but the name was later changed to [OpenAPI](https://github.com/OAI/OpenAPI-Specification/) to reinforce the open, non-proprietary nature of the standard. People sometimes refer to both names interchangeably (especially on older web pages), but "OpenAPI" is how the spec should be referred to. (See [What Is the Difference Between Swagger and OpenAPI?](https://swagger.io/difference-between-swagger-and-openapi/).)

OpenAPI
: Refers to the name of the specification. The OpenAPI specification is driven by the [OpenAPI initiative](https://www.openapis.org/), backed by the Linux Foundation and steered by [many companies and organizations](https://www.openapis.org/membership/members). The YAML or JSON file that you create to describe your API following the OpenAPI specification is called the "OpenAPI specification document."

Swagger Editor
: An online editor that validates your OpenAPI document against the rules of the OpenAPI specification. The Swagger Editor will flag errors and give you formatting tips. See [Swagger Editor](http://editor.swagger.io/#/).

Swagger UI
: An open-source web framework ([on GitHub](https://github.com/swagger-api/swagger-ui)) that parses an OpenAPI specification document and generates an interactive documentation website. This is the tool that transforms your spec into the [Petstore-like site](http://petstore.swagger.io/).

Swagger Codegen
: Tools that general client SDK code for a lot of different platforms (such as Java, JavaScript, Scala, Python, PHP, Ruby, Scala, and more). The client SDK code helps developers integrate your API on a specific platform and provides for more robust implementations that might include more scaling, threading, and other necessary code. In general, SDKs are toolkits for implementing the requests made with an API. Swagger Codegen generates the client SDKs in nearly every programming language. See [Swagger-codegen](https://github.com/swagger-api/swagger-codegen) for more details.

{% endif %}

## The Swagger UI Petstore example

To get a better understanding of Swagger UI, let's explore the <a href="http://petstore.swagger.io/">Swagger Petstore example</a>. In the Petstore example, the site is generated using [Swagger UI](https://github.com/swagger-api/swagger-ui).

<a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerpetstoreui.png" alt="Petstore UI" /></a>

The endpoints are grouped as follows:

* [pet](http://petstore.swagger.io/#/pet)
* [store](http://petstore.swagger.io/#/store)
* [user](http://petstore.swagger.io/#/user).

### Authorize your requests

Before making any requests, you would normally authorize your session by clicking the **Authorize** button and completing the information required in the Authorization modal pictured below:

<a href="http://petstore.swagger.io/" class="noExtIcon"><img class="medium" src="images/swaggerui_authorize.png" alt="Authorization modal in Swagger UI" /></a>

The Petstore example has an OAuth 2.0 security model. However, the authorization code is just for demonstration purposes. There isn't any real logic authorizing those requests, so you can simply close the Authorization modal.

### Make a request

Now let's make a request:

1.  Expand the [**POST Pet** endpoint](http://petstore.swagger.io/#/pet/addPet).
2.  Click **Try it out**.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_petendpoint.png" alt="Try it out button in Swagger UI" /></a>

    After you click Try it out, the example value in the Request Body field becomes editable.

3.  In the Example Value field, change the first `id` value to a random integer, such as `193844`. Change the second `name` value to something you'd recognize (your pet's name).
4.  Click **Execute**.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_execute.png" alt="Executing a sample Petstore request" /></a>

    Swagger UI submits the request and shows the [curl that was submitted](docapis_make_curl_call.html). The Responses section shows the [response](docapis_doc_sample_responses_and_schema.html). (If you select JSON rather than XML in the "Response content type" drop-down box, the response's format will be JSON.)

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_response.png" alt="Response from Swagger Petstore get pet request" /></a>

    {% include important.html content="The Petstore is a functioning API, and you have actually created a pet. You now need to take responsibility for your pet and begin feeding and caring for it! All joking aside, most users don't realize they're playing with real data when they execute responses in an API (especially when using their own API key). This test data may be something you have to wipe clean when you transition from exploring and learning about the API to actually using the API for production use." %}

### Verify that your pet was created

1.  Expand the [**GET /pet/{petId}** endpoint](http://petstore.swagger.io/#/pet/getPetById).
2.  Click **Try it out**.
3.  Enter the pet ID you used in the previous operation. (If you forgot it, look back in the **POST Pet** endpoint to check the value.)
4.  Click **Execute**. You should see your pet's name returned in the Response section.

{% include random_ad.html %}

## Some sample Swagger UI doc sites

Before we get into this Swagger tutorial with another API (other than Petstore), check out a few Swagger implementations:

* [Reverb](https://reverb.com/swagger#/articles)
* [VocaDB](http://vocadb.net/swagger/ui/index)
* [Watson Developer Cloud](https://watson-api-explorer.mybluemix.net/)
* [The Movie Database API](https://developers.themoviedb.org/3/account)
* [Zomato API](https://developers.zomato.com/documentation)

Some of these sites look the same, but others, such as The Movie Database API and Zomato, have been integrated seamlessly into the rest of their documentation website.

You'll notice the documentation is short and sweet in a Swagger UI implementation. This is because the Swagger display is meant to be an interactive experience where you can try out calls and see responses &mdash; using your own API key to see your own data. It's the learn-by-doing-and-seeing-it approach. Also, Swagger UI only covers the [reference topics](docendpoints.html) of your documentation.

{% include content/activities/create_swaggerui_display.md %}

## Configuring Swagger UI parameters

Swagger UI provides a number of [configuration parameters](https://github.com/swagger-api/swagger-ui/blob/master/docs/usage/configuration.md) (unrelated to your [OpenAPI parameters](pubapis_openapi_step4_paths_object.html#parameters)) you can use to customize the interactive display. For example, you can set whether each endpoint is expanded or collapsed, how tags and operations are sorted, whether to show request headers in the response, whether to include the Model, and more.

We won't get too much into the details of these configuration parameters in the tutorial. I just want to call attention to these parameters here for awareness.

If you look at the [source of the Swagger UI demo](view-source:https://idratherbewriting.com/learnapidoc/assets/files/swagger/), you'll see the parameters listed in the `// Build a system` section:

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

The parameters there (e.g., `deepLinking`, `dom_id`, etc.) are defaults. However, I've added `defaultModelsExpandDepth: -1` to hide the "Models" section at the bottom of the Swagger UI display (since I think that section is unnecessary).

You can also learn about the Swagger UI configuration parameters in the [Swagger documentation](https://swagger.io/docs/open-source-tools/swagger-ui/usage/configuration/).

## Challenges with Swagger UI

As you explore Swagger UI, you may notice a few limitations:

* There's not much room to describe in detail the workings of the endpoint in Swagger. If you have several paragraphs of details and gotchas about a parameter, it's best to link out from the description to another page in your docs. The OpenAPI spec provides a way to link to external documentation in both the [paths object](pubapis_openapi_step4_paths_object.html), the [info object](pubapis_openapi_step2_info_object.html), and the [externalDocs object](pubapis_openapi_step8_externaldocs_object.html)
* The Swagger UI looks mostly the same for each output. You can [customize Swagger UI](https://swagger.io/docs/swagger-tools/#customization-36) with your own branding, but it will some deeper UX skills.
* The Swagger UI might be a separate site from your other documentation. This means in your regular docs, you'll probably need to link to Swagger as the reference for your endpoints. You don't want to duplicate your parameter descriptions and other details in two different sites. See [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html) for more details on workarounds.
