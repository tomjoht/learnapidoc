---
title: "OpenAPI specification document deep dive"
permalink: /pubapis_openapi_tutorial_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.26
section: restapispecifications
path1: /restapispecifications.html
---

In the [Swagger tutorial](pubapis_swagger.html), I referenced an OpenAPI specification document without explaining much about it. You simply plugged the document into a Swagger UI project. In this section, we'll dive more deeply into the OPenAPI specification (but not too deep, because one could write an entire book on the subject). Specifically, we'll use the same [Mashape Weather API](https://market.mashape.com/fyhao/weather-13) that we've been using throughout other parts of this course.

* TOC
{:toc}

## General resources for learning the OpenAPI specification

Learning the OpenAPI specification will take some time. For example, plan about a week of immersion in working with the specification document while describing an actual API before you become comfortable with it. As you learn the OpenAPI specification, use the following resources:

* [Sample OpenAPI specification documents](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0). These sample specification documents provide a good starting point as a basis for your specification document.
* [Swagger user guide](https://swagger.io/docs/specification/about/). The Swagger user guide is more friendly, conceptual, and easy to follow but lacks the full details of the reference documentation.
* [OpenAPI specification documentation](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md). The specification documentation is technical and takes a little getting used to, but it's indispensable when describing your API.

{: .note}
There are other Swagger/OpenAPI tutorials online, but make sure you follow tutorials for the 3.0 version of the API rather than 2.0. Version 3.0 was [released in July 2017](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#appendix-a-revision-history). 3.0 is substantially different from 2.0.

## How this OpenAPI/Swagger tutorial is different

Rather than try to reproduce the material in the guides or specification, in my OpenAPI/Swagger tutorial here, I give you a crash course in manually creating the specification document. I use a real API for context, and also provide information about the relevance of fields as they appear in Swagger UI.

[Swagger UI](https://github.com/swagger-api/swagger-ui) is the official display framework for the OpenAPI specification. There are many display frameworks that can parse and display information in a Swagger specification document (just like many component content management systems can read and display information from DITA files). However, I think Swagger UI is the way to go when rendering your specification document. Swagger UI is sponsored by SmartBear, the same company that leads the OpenAPI initiative. Their tooling will almost always be in sync with the latest spec features. Swagger UI an actively developed and managed open source project.

By seeing how the fields in the spec appear in the Swagger UI display, the specification objects and properties will take on more relevance and meaning. Keep in mind that the OpenAPI specification document can be rendered by many other tools, so the screenshots from Swagger UI may not always be relevant or applicable if you're using another system.

## Terminology

Before continuing, I want to clarify a few terms for those who may be unfamiliar with the OpenAPI/Swagger landscape:

* ["Smartbear"](https://smartbear.com/) is the company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codegen, and others).
* Smartbear formed the "OpenAPI Initiative" and leads the evolution of the ["OpenAPI specification"](https://github.com/OAI/OpenAPI-Specification/).
* ["SwaggerHub"](https://swaggerhub.com/) was developed by Smartbear as a way for teams to collaborate around the OpenAPI specification document. (See my [Swaggerhub tutorial](pubapis_swaggerhub_smartbear.html).) "Swagger" was the original name of the spec, but it was changed to "OpenAPI" to reinforce the open, non-proprietary nature of the standard. People often refer to both names interchangeably, but "OpenAPI" is the standard, preferred term, and so I'll use it here.
* The Swagger YAML file that you create to describe your API is called either the "OpenAPI specification document" or the "OpenAPI document." Now that I've cleared up those terms, let's continue.

## Start by looking at the big picture

Let's start by getting a big picture look at a specification document. Take a look at [Petstore OpenAPI specification document here](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/petstore.yaml). It probably won't mean much at first, but get a sense of the whole before we dive into the details. Look at some of the other samples in the v.3.0 folder as well.

## Review YAML

The specification document is in YAML, but it could also be expressed in JSON. YAML is more readable and is the format I prefer, but you will also see specification documents in JSON.

Each level in YAML is an object. As I explained in the [YAML tutorial](pubapis_yaml.html), YAML is a superset of JSON, meaning the two are practically interchangeable formats.

It would be a good idea to review the [YAML tutorial](pubapis_yaml.html) before proceeding in order to understand how objects, arrays, and other formats are formatted in YAML. So that we're on the same page with terms, let's briefly review.

In the following code, `california` is an object. `animal`, `flower`, and `landmark` are properties of the `california` object.

```
california:
  animal: bruin
  flower: something
  landmark: something
```

In the following code, `demographics` is an object that contains an array.

```
demographics:
 - population
 - land
 - rivers
```

## Follow the tutorial

The tutorial has 8 steps:

* [Step 1: openapi object](pubapis_openapi_step1_openapi_object.html)
* [Step 2: info object](pubapis_openapi_step2_openapi_info_object.html)
* [Step 3: servers object](pubapis_openapi_step3_openapi_servers_object)
* [Step 4: paths object](pubapis_openapi_step4_openapi_paths_object.html)
* [Step 5: components object](pubapis_openapi_step5_openapi_components_object.html)
* [Step 6: security object](pubapis_openapi_step6_openapi_security_object.html)
* [Step 7: tags object](pubapis_openapi_step7_openapi_tags_object.html)
* [Step 8: externalDocs object](pubapis_openapi_step8_openapi_external_docs_object.html)

You can see the end result in either link:

* [Swagger UI with Mashape Weather API](/learnapidoc/assets/files/swagger/)
* [Embedded Swagger with Mashape Weather API](/learnapidoc/pubapis_swagger_embedded.html)

## Migrating from OpenAPI 2.0 to 3.0

If you have an existing specification document that validates against version 2.0 and you want to convert it to 3.0, you can use [APIMATIC](https://apimatic.io/transformer) to convert it automatically. You can also use APIMATIC to transform your specification document into a number of other outputs, such as RAML, Postman, or API Blueprint.

To see the difference between the 2.0 and the 3.0 code, you can copy these code samples to separate files and then use an application like [Diffmerge](https://sourcegear.com/diffmerge/) to highlight the differences. The Readme.io blog has a nice post that provides [A Visual Guide to What's New in Swagger 3.0](https://blog.readme.io/an-example-filled-guide-to-swagger-3-2/).

## Embedding the Swagger UI output

The specification document itself just describes the API following the OpenAPI specification. It alone does nothing. Other tools are required to read and display the spec document. My preferred tool for parsing and displaying information from the specification document is [Swagger UI](https://github.com/swagger-api/swagger-ui). You can view the OpenAPI specification document [embedded in Swagger UI here](pubapis_swagger_embedded.html).


{% include random_ad.html %}
