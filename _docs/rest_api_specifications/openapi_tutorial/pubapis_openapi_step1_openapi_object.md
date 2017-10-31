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

Overview...

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

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

The whole document (the object that contains these 8 root level objects) is an open API object.

## Swagger Editor

As you work on your specification, feel free to use the [Swagger Editor](https://swagger.io/swagger-editor/). However, the Swagger Editor will validate your content in real-time, and you will see validation errors until you finish coding the YAML file.

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
