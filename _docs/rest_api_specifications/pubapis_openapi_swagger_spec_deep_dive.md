---
title: "OpenAPI specification file deep dive"
permalink: /pubapis_openapi_swagger_spec_deep_dive.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.26
section: restapispecifications
path1: /restapispecifications.html
---

In the [Swagger tutorial](pubapis_swagger.html), I referenced an OpenAPI specification file without explaining much about it. You simply plugged  it into a Swagger UI project. In this section, we'll dive more deeply into the Swagger specification file (but not too deep, because one could write an entire book on the subject). Specifically, we'll use the same [Mashape Weather API](https://market.mashape.com/fyhao/weather-13) that we've been using throughout other parts of this book.

Note that this API builds off of a [Yahoo weather service API](https://developer.yahoo.com/weather/documentation.html), so the data returned in the `weather` and `weatherdata` endpoints is highly similar to the data returned by the Yahoo weather service API.

* TOC
{:toc}

## General strategies for learning the OpenAPI specification

Learning the OpenAPI specification will take some time. For example, plan about a week of immersion in working with the specification file while describing an actual API before you become comfortable with it. As you learn the OpenAPI specification, use the following resources:

* [Sample OpenAPI specification files](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0). These sample specification files provide a good starting point as a basis for your specification file.
* [Swagger user guide](https://swagger.io/docs/specification/about/). The Swagger user guide is more friendly, conceptual, and easy to follow but lacks the full details of the reference documentation.
* [OpenAPI specification documentation](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md). The specification documentation is technical and takes a little getting used to, but it's indispensable when describing your API.

{: .note}
There are other Swagger/OpenAPI tutorials online, but make sure you follow tutorials for the 3.0 version of the API rather than 2.0. Version 3.0 was [released in July 2017](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#appendix-a-revision-history).

## How this OpenAPI/Swagger tutorial is different

Rather than try to reproduce the material in the guides or specification, in my OpenAPI/Swagger tutorial here, I give you a crash course in manually creating the specification file. I will use a real API for context, and also provide information about the relevance of fields as they appear in Swagger UI.

[Swagger UI](https://github.com/swagger-api/swagger-ui) is the official display framework for the OpenAPI specification. There are many display frameworks that can parse and display information in a Swagger specification file (just like many component content management systems can read and display information from DITA files). However, I think Swagger UI is the way to go when rendering your specification file. Swagger UI is sponsored by SmartBear, the same company that leads the OpenAPI initiative. Their tooling will always be in sync with the latest spec features. It's an actively developed and managed open source project.

By seeing how the fields in the spec appear in the Swagger UI display, hopefully the specification objects and properties will take on more relevance and meaning.

## Terminology

Before continuing, I want to clarify a few terms for those who may be unfamiliar with the OpenAPI/Swagger landscape. ["Smartbear"](https://smartbear.com/) is the company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codegen, and others). Smartbear formed the "OpenAPI Initiative" and leads the evolution of the ["OpenAPI specification"](https://github.com/OAI/OpenAPI-Specification/). ["SwaggerHub"](https://swaggerhub.com/) was developed by Smartbear as a way for teams to collaborate around the OpenAPI specification file. "Swagger" was the original name of the spec, but it was changed to "OpenAPI" to reinforce the open, non-proprietary nature of the standard. People often refer to both names interchangeably, but "OpenAPI" is the preferred term. I will commonly refer to it as OpenAPI/Swagger to maximize search engine visibility. The Swagger YAML file that you create to describe your API is called either the "OpenAPI specification file" or the "OpenAPI document." Now that I've cleared up those terms, let's continue.

## Start by looking at the big picture

Let's start by getting a big picture look at a specification file. Take a look at [Petstore OpenAPI specification file here](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/petstore.yaml). It probably won't mean much at first, but get a sense of the whole before we dive into the details. Look at some of the other samples in the v.3.0 folder as well.

## Review YAML quickly

The spec file is in YAML, but it could also be expressed in JSON. YAML is more readable and is the format I prefer, but you will also see specification files in JSON. Each level in YAML is an object. As I explained in the [YAML tutorial](pubapis_yaml.html), YAML is a superset of JSON, meaning the two are practically interchangeable formats.

It would be a good idea to review the [YAML tutorial](pubapis_yaml.html) before proceeding. So that we're on the same page with terms, let's review.

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

* [openapi object](pubapis_openapi_step1_openapi_object.html)
* [info object](pubapis_openapi_step1_openapi_info_object.html)
* [servers object](pubapis_openapi_step1_openapi_servers_object)
* [paths object](pubapis_openapi_step1_openapi_paths_object.html)
* [components object](pubapis_openapi_step1_openapi_components_object.html)
* [security object](pubapis_openapi_step1_openapi_security_object.html)
* [tags object](pubapis_openapi_step1_openapi_tags_object.html)
* [externalDocs object](pubapis_openapi_step1_openapi_external_docs_object.html)

{: .tip }
If you have a spec in 2.0 and want to convert it to 3.0, you can use [APIMATIC](https://apimatic.io/transformer) to convert it automatically. You can also use APIMATIC to transform your spec file into a number of other outputs, such as RAML, Postman, or API Blueprint. To see the difference between the 2.0 and the 3.0 code, you can copy these code samples to separate files and then use an application like Diffmerge to highlight the differences.

## Embedding the Swagger UI output

The file itself just describes the API following the OpenAPI specification. Other tools are required to read and display the spec content. You can view the OpenAPI specification file [embedded in Swagger UI here](pubapis_swagger_embedded.html).


{% include random_ad.html %}
