---
title: "OpenAPI tutorial step 1: The openapi object"
permalink: /pubapis_openapi_step1_openapi_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.3
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

Before diving into the first step of the OpenAPI tutorial here, read the [OpenAPI tutorial overview](pubapis_openapi_tutorial_overview.html) to get a sense of the scope of this tutorial. In brief, this OpenAPI tutorial is unique in the following ways:

* This OpenAPI tutorial shows the spec in context of a simple weather API [introduced earlier](docapis_scenario_for_using_weather_api.html) in this course.
* The OpenAPI tutorial shows how the spec information gets populated in [Swagger UI](https://github.com/swagger-api/swagger-ui).
* The OpenAPI tutorial is a subset of the information in both the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) and the [OpenAPI specification commentary](https://swagger.io/docs/specification/about/).
* The OpenAPI tutorial covers the 3.0 version of the OpenAPI spec, which is the latest version.

## The root-level objects in OpenAPI spec

There are 8 objects at the root level in the OpenAPI 3.0 spec. There are many nested objects within these root level objects, but at the root level, there are just these objects:

* [openapi](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#oasObject  )
* [info](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#infoObject)
* [servers](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject)
* [paths](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#pathsObject)
* [components](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#componentsObject)
* [security](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject)
* [tags](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#tagObject)
* [externalDocs](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#externalDocumentationObject)

{: .note}
By "root level," I mean the first level in the OpenAPI document. This level is also referred to as the global level, because some object properties declared here (namely `servers` and `security`) are applied to each of the operation objects unless overridden at a lower level.

The whole document (the object that contains these 8 root level objects) is called an [OpenAPI document](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#oasDocument). The convention is to name the document **openapi.yml**.

{: .note}
"OpenAPI" refers to the specification; "Swagger" refers to the tooling (at least from Smartbear) that supports the OpenAPI specification. For more details on the terms, see [What Is the Difference Between Swagger and OpenAPI?](https://blog.smartbear.com/open-source/what-is-the-difference-between-swagger-and-openapi/)

## Swagger Editor

As you work on your specification document, use the online [Swagger Editor](https://swagger.io/swagger-editor/). The Swagger Editor provides a split view &mdash; on the left where you write your spec code, and on the right you see a fully functional Swagger UI display. You can even submit requests from the Swagger UI display in this editor.

Note that the Swagger Editor will validate your content in real-time, and you will probably see validation errors until you finish coding the specification document.

I usually keep a local text file (using [Atom editor](https://atom.io/)) where I keep the specification document, but I work with the document's content in the online [Swagger Editor](https://swagger.io/swagger-editor/). When I'm done, I copy and save the content back to my local file. The Swagger Editor caches the content quite well (just don't clear your browser's cache).

## Step 1: Add root-level objects

Start your openapi.yml file by adding each of these root level objects:

```yaml
openapi:

info:

servers:

paths:

components:

security:

tags:

externalDocs:
```

In the following sections, we'll proceed through each of these objects and document the Mashape Weather API. Tackling each root-level object individually helps reduce the complexity of the spec.

{: .note}
`components` is more of a storage object for schemas defined in other objects, but to avoid introducing too much at once, I'll wait until the [`components` tutorial](pubapis_openapi_step5_components_object.html) to fully explain how to reference a schema in one object and add a reference pointer to the full definition in `components`.

## The openapi object

In the [openapi](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#oasObject), indicate the version of the OpenAPI spec to validate against. The latest version is `3.0.0`.

```yaml
openapi: "3.0.0"
```

3.0 was released in July 2017, so much of the information and examples online, as well as supporting tools, often relate to 2.0.

In the Swagger UI display, an "OAS3" tag appears to the right of the API name.

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapitutorial_version.png" style="border: 1px solid #dedede;"/></a>

## Validator errors

If your spec doesn't validate, the Swagger UI display often won't load the content or will show an error. For example, if you have an incorrect indentation in your YAML syntax, an error message might appear that indicates a `bad indentation of a mapping entry`. You can click the **Error** button in the lower right to see more information.

<img src="images/validation-erorrs.png"/>

Clicking this error button takes you to `https://online.swagger.io/validator/debug?url=/learnapidoc/docs/rest_api_specifications/openapi_weather.yml`, showing you which document the online Swagger validator is attempting to validate and the error. You can also open up the JS console to get a little more debugging information (such as the column where the error occurs).

The online Swagger Editor provides these messages in the UI, so you probably won't need to use Swagger UI's error validation messaging to troubleshoot errors.
