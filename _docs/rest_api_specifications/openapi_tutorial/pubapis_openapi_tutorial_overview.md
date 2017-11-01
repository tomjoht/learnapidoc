---
title: "OpenAPI tutorial overview"
permalink: /pubapis_openapi_tutorial_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.26
section: restapispecifications
path1: /restapispecifications.html
---

In the [Swagger tutorial](pubapis_swagger.html), I referenced an OpenAPI specification document without explaining much about it. You simply plugged the document into a Swagger UI project. In this section, we'll dive more deeply into the OpenAPI specification. Specifically, we'll use the same [Mashape Weather API](https://market.mashape.com/fyhao/weather-13) that we've been using throughout other parts of this course as the content for our OpenAPI document.

* TOC
{:toc}

## General resources for learning the OpenAPI specification

Learning the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) will take some time. As an estimate, plan about a week of immersion, working with a specific API in the context of the specification before you become comfortable with it. As you learn the OpenAPI specification, use the following resources:

* [Sample OpenAPI specification documents](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0). These sample specification documents provide a good starting point as a basis for your specification document. They give you a big picture about the general shape of a specification document.
* [Swagger user guide](https://swagger.io/docs/specification/about/). The Swagger user guide is more friendly, conceptual, and easy to follow. It doesn't have the detail and exactness of the specification documentation, but in many ways it's clearer and contains more examples.
* [OpenAPI specification documentation](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md). The specification documentation is technical and takes a little getting used to, but you'll probably need to consult it frequently when describing your API.

{: .note}
There are other Swagger/OpenAPI tutorials online, but make sure you follow tutorials for the 3.0 version of the API rather than 2.0. Version 3.0 was [released in July 2017](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#appendix-a-revision-history). 3.0 is substantially different from 2.0.

## How my OpenAPI/Swagger tutorial is different

Rather than try to reproduce the material in the guides or specification, in my OpenAPI/Swagger tutorial here, I give you a crash course in manually creating the specification document, using a real API for context, and also providing detail about how the specification fields get rendered in the Swagger UI display.

[Swagger UI](https://github.com/swagger-api/swagger-ui) is the official display framework for the OpenAPI specification. There are many display frameworks that can parse and display information in a Swagger specification document (just like many component content management systems can read and display information from DITA files). However, I think Swagger UI is probably the best tool to use when rendering your specification document. Swagger UI is sponsored by SmartBear, the same company that leads the OpenAPI initiative. Their tooling will almost always be in sync with the latest spec features. Swagger UI an actively developed and managed open source project.

By seeing how the fields in the spec appear in the Swagger UI display, the specification objects and properties will take on more relevance and meaning.

## Terminology

Before continuing, I want to clarify a few terms for those who may be unfamiliar with the OpenAPI/Swagger landscape:

* ["Smartbear"](https://smartbear.com/) is the company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codegen, and others). They do not own the ["OpenAPI specification"](https://github.com/OAI/OpenAPI-Specification/), as this is an open standard/initiative backed by the Linux Foundation, but they lead it.
* "Swagger" was the original name of the spec, but it was changed to "OpenAPI" to reinforce the open, non-proprietary nature of the standard. People often refer to both names interchangeably, but "OpenAPI" is the standard, preferred term, and so I'll use it here.
* The Swagger YAML file that you create to describe your API is called the "OpenAPI specification document" or the "OpenAPI document."

Now that I've cleared up those terms, let's continue. (For other terms, see the [glossary](api-glossary.html).)

## Start by looking at the big picture

Let's start by getting a big picture look at a specification document. Take a look at [Petstore OpenAPI specification document here](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/petstore.yaml). It probably won't mean much at first, but get a sense of the whole before we dive into the details. Look at some of the other samples in the v.3.0 folder as well.

## Review YAML

The specification document in this tutorial is in YAML format, but it could also be expressed in JSON. The specification provides examples in both YAML and JSON. YAML is more readable and is the format I prefer, so I've used it exclusively here.

It would be a good idea to review the [YAML tutorial](pubapis_yaml.html) before proceeding in order to understand how objects, arrays, and other formats are formatted in YAML. So that we're on the same page with terms, let's briefly review.

 YAML is a superset of JSON, meaning the two are practically interchangeable formats. Each level in YAML is an object. In the following code, `california` is an object. `animal`, `flower`, and `bird` are properties of the `california` object.

```yaml
california:
  animal: Grizzly Bear
  flower: Poppy
  bird: Quail
```

In this code, `countries` contains an object called `united_states`, which contains an object called `california`, which contains several properties:

```yaml
countries:
  united_states:
    california:
      animal: Grizzly Bear
      flower: Poppy
      bird: Quail
```

In the following code, `demographics` is an object that contains an array.

```yaml
demographics:
 - population
 - land
 - rivers
```

Hopefully those brief examples will help align us with descriptions in the tutorial.

## Follow the OpenAPI tutorial

The OpenAPI tutorial has 8 steps. Each step corresponds with one of the root-level objects in the OpenAPI document.

* [Step 1: openapi object](pubapis_openapi_step1_openapi_object.html)
* [Step 2: info object](pubapis_openapi_step2_openapi_info_object.html)
* [Step 3: servers object](pubapis_openapi_step3_openapi_servers_object)
* [Step 4: paths object](pubapis_openapi_step4_openapi_paths_object.html)
* [Step 5: components object](pubapis_openapi_step5_openapi_components_object.html)
* [Step 6: security object](pubapis_openapi_step6_openapi_security_object.html)
* [Step 7: tags object](pubapis_openapi_step7_openapi_tags_object.html)
* [Step 8: externalDocs object](pubapis_openapi_step8_openapi_external_docs_object.html)

The specification document itself just describes the API following a specific model. The spec alone does nothing. Other tools are required to read and display the spec document, or to generate client SDKs from it. My preferred tool for parsing and displaying information from the specification document is [Swagger UI](https://github.com/swagger-api/swagger-ui). You can see OpenAPI spec rendered with Swagger UI in the following links:

* [Swagger UI with Mashape Weather API](/learnapidoc/assets/files/swagger/)
* [Embedded Swagger with Mashape Weather API](/learnapidoc/pubapis_swagger_embedded.html)

## Migrating from OpenAPI 2.0 to 3.0

If you have an existing specification document that validates against version OpenAPI 2.0 and you want to convert it to OpenAPI 3.0, you can use [APIMATIC](https://apimatic.io/transformer) to convert it automatically. You can also use APIMATIC to transform your specification document into a number of other outputs, such as RAML, Postman, or API Blueprint.

To see the difference between the 2.0 and the 3.0 code, you can copy these code samples to separate files and then use an application like [Diffmerge](https://sourcegear.com/diffmerge/) to highlight the differences. The Readme.io blog has a nice post that provides [A Visual Guide to What's New in Swagger 3.0](https://blog.readme.io/an-example-filled-guide-to-swagger-3-2/).

{% include random_ad.html %}
