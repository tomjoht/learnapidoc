---
title: "OpenAPI tutorial step 1: The openapi object"
permalink: /pubapis_openapi_step1_openapi_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.261
section: restapispecifications
path1: /restapispecifications.html
---


{% include workflow_map.html step="1" map="content/openapi_tutorial_map.html"  %}

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## OpenAPI tutorial overview

Before diving into the steps here, read the [OpenAPI tutorial overview](pubapis_openapi_tutorial_overview.html) to get a sense of the scope of this tutorial. In brief, this OpenAPI tutorial is unique in the following ways:

* This OpenAPI tutorial uses a sample weather API introduced earlier in this course (see [Scenario for using a weather API](docapis_scenario_for_using_weather_api.html)).
* The tutorial shows how the spec information gets populated in [Swagger UI](https://github.com/swagger-api/swagger-ui), which makes some of these spec fields more relevant.
* The tutorial is a consumable subset of the information in both the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) and the [Swagger specification commentary](https://swagger.io/docs/specification/about/).
* The tutorial covers the 3.0 version of the OpenAPI spec, which is the latest version. (Currently, most other OpenAPI tutorials focus on 2.0.)

## The root-level objects in OpenAPI spec

There are 8 objects at the root level in the OpenAPI 3.0 spec. There are many nested objects within these root level objects, but at the root level, there are just these objects:

* [openapi](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#oasObject)
* [info](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#infoObject)
* [servers](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject)
* [paths](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#pathsObject)
* [components](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#componentsObject)
* [security](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject)
* [tags](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#tagObject)
* [externalDocs](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#externalDocumentationObject)

The whole document (the object that contains these 8 root level objects) is called an [OpenAPI document](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#oasDocument). The convention is to name the document **openapi.yml**. )

{: .note}
"OpenAPI" refers to the specification; "Swagger" usually refers to the tooling (at least from Smartbear) that supports the OpenAPI specification.

## Swagger Editor

As you work on your specification document, feel free to use the [Swagger Editor](https://swagger.io/swagger-editor/). The Swagger Editor provides a split view &mdash; on the left you write your code, and on the right you see a fully functional Swagger UI display. You can even submit requests.

Note that the Swagger Editor will validate your content in real-time, and you will see validation errors until you finish coding the YAML file.

## Step 1: Add root-level objects

Start your YAML file by adding each of these root level objects:

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


In the [openapi](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#oasObject), indicate the version of the OpenAPI spec to validate against. The latest version is `3.0.0`.

```yaml
openapi: "3.0.0"
```

This specifies which schema is used to validate the spec.

In the Swagger UI display, an "OAS3" tag appears to the right of the API name.

<img src="/learnapidoc/images/openapitutorial_version.png"/>

If you want to show a validator badge, you can add one manually with [this code](https://github.com/swagger-api/validator-badge).
