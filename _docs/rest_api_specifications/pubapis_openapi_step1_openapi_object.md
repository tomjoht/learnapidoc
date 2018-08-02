---
title: "Step 1: The openapi object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step1_openapi_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.3
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="1" map="content/openapi_tutorial_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep1.png"/>
{% endif %}

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## OpenAPI tutorial overview

Before diving into the first step of the OpenAPI tutorial here, read the [OpenAPI tutorial overview](pubapis_openapi_tutorial_overview.html) (if you haven't already) to get a sense of the scope of this tutorial. In brief, this OpenAPI tutorial is unique in the following ways:

* This OpenAPI tutorial shows the spec in context of a simple weather API [introduced earlier](docapis_scenario_for_using_weather_api.html) in this course.
* The OpenAPI tutorial shows how the spec information gets populated in [Swagger UI](https://github.com/swagger-api/swagger-ui).
* The OpenAPI tutorial is a subset of the information in both the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) and the [OpenAPI specification commentary](https://swagger.io/docs/specification/about/).
* The OpenAPI tutorial covers the 3.0 version of the OpenAPI spec, which is the latest version.

{% include random_ad2.html %}

## The root-level objects in OpenAPI spec

There are 8 objects at the root level in the OpenAPI 3.0 spec. There are many nested objects within these root level objects, but at the root level, there are just these objects:

* [openapi](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#oasObject  )
* [info](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#infoObject)
* [servers](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#serverObject)
* [paths](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#pathsObject)
* [components](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#componentsObject)
* [security](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#securityRequirementObject)
* [tags](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#tagObject)
* [externalDocs](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#externalDocumentationObject)

{: .note}
By "root level," I mean the first level in the OpenAPI document. This level is also referred to as the global level, because some object properties declared here (namely `servers` and `security`) are applied to each of the operation objects unless overridden at a lower level.

The whole document (the object that contains these 8 root level objects) is called an [OpenAPI document](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#oasDocument). The convention is to name the document **openapi.yml**.

{: .note}
"OpenAPI" refers to the specification; "Swagger" refers to the tooling (at least from Smartbear) that supports the OpenAPI specification. For more details on the terms, see [What Is the Difference Between Swagger and OpenAPI?](https://blog.smartbear.com/open-source/what-is-the-difference-between-swagger-and-openapi/)

## Swagger Editor

{% include random_ad.html %}

As you work on your specification document, use the online [Swagger Editor](https://swagger.io/swagger-editor/). The Swagger Editor provides a split view: on the left where you write your spec code, and on the right you see a fully functional Swagger UI display. You can even submit requests from the Swagger UI display in this editor.

{: .note}
The Swagger Editor will validate your content in real-time, and you will see validation errors until you finish coding the specification document. Don't worry about the errors unless you see X marks in the code you're working on.

I usually keep a local text file (using [Atom editor](https://atom.io/)) where I keep the specification document offline, but I work with the document's content in the online [Swagger Editor](https://swagger.io/swagger-editor/). When I'm done working for the day, I copy and save the content back to my local file. Even so, the Swagger Editor caches the content quite well (just don't clear your browser's cache), so you probably won't need your local file as a backup.

If you want to purchase a subscription to [SwaggerHub](pubapis_swaggerhub_smartbear.html), you could keep your spec content in the cloud (SwaggerHub has an editor almost identical to Swagger UI) associated with your personal login. SwaggerHub is the premium tooling for the open-source and free Swagger Editor.

## The openapi object

{% include activity.html %}

Go to the [Swagger Editor](https://editor.swagger.io/) and go to **File > Clear editor**. Keep this tab open throughout the OpenAPI tutorial, as you'll be adding to your specification document with each step.

Add the first root-level property for the specification document: `openapi`. In the [openapi](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#oasObject) object, indicate the version of the OpenAPI spec to validate against. The latest version is `3.0.1`.

```yaml
openapi: "3.0.1"
```

Until you add more information in here, you'll see error messages and nots such as "No operations defined in spec!" That's okay &mdash; in the next step you'll start seeing more info.

3.0 was released in July 2017, and 3.0.1 was released in December 2017. Much of the information and examples online, as well as supporting tools, often focus only on 2.0. Even if you're locked into publishing in a 2.0 tool or platform, you can code the spec in 3.0 and then use a tool such as [APIMATIC Transformer](https://apimatic.io/transformer) to convert the 3.0 spec to 2.0. You can also convert a spec from 2.0 to 3.0.

## Appearance in Swagger UI

There's not much to the `openapi` object, and right now there's not enough content for the spec to validate. But when you later render your specification document through the Swagger UI display, you'll see that an "OAS3" tag will appear to the right of the API name.

<a href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapitutorial_version.png" class="medium" style="border: 1px solid #dedede;"/></a>

On the backend, Swagger UI uses the 3.0.1 version of the spec to validate your content.

In the above screenshot, the "2.5" version refers to the version of the API here, not the version of the OpenAPI spec.
