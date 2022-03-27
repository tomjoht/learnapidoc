---
title: "Step 1: The openapi object (OpenAPI tutorial)"
permalink: pubapis_openapi_step1_openapi_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.3
section: openapitutorial
path1: restapispecifications.html
path2: openapi_tutorial.html
map:
  step: 1
  definition: content/openapi_tutorial_map.html
last-modified: 2020-09-07
---

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/openapistep1.png"/>
{% endif %}

Before diving into the first step of the OpenAPI tutorial here, read the [OpenAPI tutorial overview](pubapis_openapi_tutorial_overview.html) (if you haven't already) to get a sense of the scope of this tutorial. In brief, this OpenAPI tutorial is unique in the following ways:

* This OpenAPI tutorial shows the spec in context of a simple weather API [introduced earlier](docapis_scenario_for_using_weather_api.html) in this course.
* This OpenAPI tutorial shows how the spec information gets populated in two different tools and display frameworks: [Stoplight](https://stoplight.io/studio/) and [Swagger UI](https://github.com/swagger-api/swagger-ui).
* This OpenAPI tutorial is a subset of the information in both the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) and the [OpenAPI specification commentary](https://swagger.io/docs/specification/about/). In other words, it's not comprehensive of all the possible information in the spec.
* This OpenAPI tutorial covers the *3.0 version* of the OpenAPI spec, which is the latest version. (Surprisingly, many tools still support only the 2.0 version.)

<div></div>

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## The root-level objects in OpenAPI spec

The OpenAPI 3.0 spec has eight objects at the root level. These eight objects have many nested objects inside them, but at the root level, there are just these parent objects:

* [`openapi`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#oasObject  )
* [`info`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#infoObject)
* [`servers`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#serverObject)
* [`paths`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#pathsObject)
* [`components`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#componentsObject)
* [`security`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#securityRequirementObject)
* [`tags`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#tagObject)
* [`externalDocs`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#externalDocumentationObject)

{: .note}
By "root level," I mean the first level in the OpenAPI document. This level is also referred to as the global level because some object properties declared here (namely `servers` and `security`) are applied to each of the operation objects unless overridden at a lower level.

The whole document (the object that contains these eight root-level objects) is called an [OpenAPI document](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#oasDocument). The convention is to name the document **openapi.yml**.

{: .note}
"OpenAPI" refers to the specification; "Swagger" refers to the tooling (at least from SmartBear) that supports the OpenAPI specification.

{% include ads.html %}

Although one could approach the assembly of an OpenAPI document in many ways, I've decided to structure each step in this tutorial based on each of these root-level objects. You'll see two approaches: one using Swagger working at a code-level, and another using Stoplight Studio working in a user interface.

## Swagger

Before we jump into coding, let's first talk about where you'll write the code and what your options are.

### Where to write your spec code

The easiest option is to use the online [Swagger Editor](https://swagger.io/swagger-editor/). The Swagger Editor provides a split view: on the left where you write your spec code, and on the right, you see a fully functional Swagger UI display. You can even submit requests from the Swagger UI display in this editor.

{% include image_ad_right.html %}

The Swagger Editor will validate your content in real-time, and you will see validation errors until you finish coding the specification document. Don't worry about the errors unless you see X marks in the code you're working on.

I usually keep a local text file (using a text editor such as Atom or Sublime Text) where I keep the specification document offline, but I work with the document's content in the online [Swagger Editor](https://swagger.io/swagger-editor/). When I'm done working for the day, I copy and save the content back to my local file. Even so, the Swagger Editor caches the content quite well (just don't clear your browser's cache), so you probably won't need your local file as a backup.

If you want to purchase a subscription to [SwaggerHub](pubapis_swaggerhub_smartbear.html), you could keep your spec content in the cloud (SwaggerHub has an editor almost identical to Swagger UI) associated with your personal login. SwaggerHub is the premium tooling for the open-source and free Swagger Editor.

Another option to work locally is to use [Visual Studio Code](https://code.visualstudio.com/) with two extensions: [openapi-lint](https://marketplace.visualstudio.com/items?itemName=mermade.openapi-lint) and [Swagger Viewer](https://marketplace.visualstudio.com/items?itemName=Arjun.swagger-viewer). These extensions let you work locally and preview a live version of Swagger. You can also download and run the [Swagger Editor locally](https://swagger.io/tools/swagger-editor/).

For the sake of simplicity, for the Swagger sections in this tutorial, we'll just use the [online Swagger Editor](https://swagger.io/swagger-editor/).

### Add the openapi object

From the [Swagger Editor](https://editor.swagger.io/) and go to **File > Clear editor**. Keep this tab open throughout the OpenAPI tutorial, as you'll be adding to your specification document with each step.

Add the first root-level property for the specification document: `openapi`. In the [openapi](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#oasObject) object, indicate the version of the OpenAPI spec to validate against. The latest version is `3.0.2`.

```yaml
openapi: "3.0.2"
```

{% include random_ad2.html %}

Until you add more information in here, you'll see error messages and notes such as "No operations defined in spec!" To avoid these errors, add some placeholder info here like this:

```yaml
openapi: '3.0.2'
info:
  title: OpenWeatherMap
  version: '1.0'
paths: {}
```

The editor renders the display as follows.

<figure><img class="docimage large border" src="{{site.media}}/openapi_object_swagger.png" alt="openapi object" /><figcaption>openapi object</figcaption></figure>

{% include content/troubleshooting_spec_tip.md %}

On the backend, Swagger UI uses the 3.0.2 version of the spec to validate your content. In the above screenshot, the gray "1.0" version refers to the version of the API here, not the version of the OpenAPI spec.

{% include random_ad4.html %}

There's not much to the `openapi` object except to elaborate on the versions. OAS 3.0 was released on 2017-07-26, and OAS 3.0.2 was released on 10-08-2018 (see [Version History](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#appendix-a-revision-history)). Much of the information and examples online, as well as supporting tools, often focus only on 2.0. Even if you're locked into publishing in a 2.0 tool or platform, you can code the spec in 3.0 and then use a tool such as [APIMATIC Transformer](https://apimatic.io/transformer) to convert the 3.0 spec to 2.0. You can also convert a spec from 2.0 to 3.0.

{% include random_ad3.html %}
