---
title: "OpenAPI 3.0 tutorial overview"
permalink: /pubapis_openapi_tutorial_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.2
section: restapispecifications
path1: /restapispecifications.html
---

In the [Swagger tutorial](pubapis_swagger.html), I referenced an [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) document without explaining much about it. You simply plugged the document into a Swagger UI project. In this section, we'll dive more deeply into the OpenAPI specification. Specifically, we'll use the same [Mashape Weather API](https://market.mashape.com/fyhao/weather-13) that we've been using throughout other parts of this course as the content for our OpenAPI document.

* TOC
{:toc}

## General resources for learning the OpenAPI specification

Learning the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) will take some time. As an estimate, plan about a week of immersion, working with a specific API in the context of the specification before you become comfortable with it. As you learn the OpenAPI specification, use the following resources:

* [Sample OpenAPI specification documents](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0). These sample specification documents provide a good starting point as a basis for your specification document. They give you a big picture about the general shape of a specification document.
* [Swagger user guide](https://swagger.io/docs/specification/about/). The Swagger user guide is more friendly, conceptual, and easy to follow. It doesn't have the detail and exactness of the specification documentation, but in many ways it's clearer and contains more examples.
* [OpenAPI specification documentation](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md). The specification documentation is technical and takes a little getting used to, but you'll no doubt consult it frequently when describing your API. It's a long, single page document to facilitate findability through Ctrl+F.

{: .note}
There are other Swagger/OpenAPI tutorials online, but make sure you follow tutorials for the [3.0 version of the API](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) rather than [2.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md). Version 3.0 was [released in July 2017](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#appendix-a-revision-history). 3.0 is substantially different from 2.0.

## How my OpenAPI/Swagger tutorial is different

Rather than try to reproduce the material in the guides or specification, in my OpenAPI/Swagger tutorial here, I give you a crash course in manually creating the specification document. I use a real API for context, and also provide detail about how the specification fields get rendered in Swagger UI.

[Swagger UI](https://github.com/swagger-api/swagger-ui) is one of the most popular display frameworks for the OpenAPI specification. (The spec alone does nothing &mdash; you need some tool that will read the spec's format and display the information.) There are many display frameworks that can parse and display information in an OpenAPI specification document (just like many component content management systems can read and display information from DITA files).

However, I think Swagger UI is probably the best tool to use when rendering your specification document. Swagger UI is sponsored by SmartBear, the same company that is heavily invested in the [OpenAPI initiative](https://www.openapis.org/) and which develops [Swaggerhub](pubapis_swaggerhub_smartbear.html). Their tooling will almost always be in sync with the latest spec features. Swagger UI an actively developed and managed open source project.

By showing you how the fields in the spec appear in the Swagger UI display, I hope the specification objects and properties will take on more relevance and meaning. Just keep in mind that Swagger UI's display is *just one possibility* for how the spec information might be rendered.

## Terminology

Before continuing, I want to clarify a few terms for those who may be unfamiliar with the OpenAPI/Swagger landscape:

* [Swagger](https://swagger.io/) was the original name of the spec, but the spec was later changed to [OpenAPI](https://github.com/OAI/OpenAPI-Specification/) to reinforce the open, non-proprietary nature of the standard. Now Swagger refers to API tooling, not the spec. People often refer to both names interchangeably, but "OpenAPI" is how the spec should be referred to.
* [Smartbear](https://smartbear.com/) is the company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codegen, and others). They do not own the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification/), as this [initiative](https://www.openapis.org/) is driven by the Linux Foundation. The OpenAPI spec's development is driven by [many companies and organizations](https://www.openapis.org/membership/members).
* The Swagger YAML file that you create to describe your API is called the "OpenAPI specification document" or the "OpenAPI document."

Now that I've cleared up those terms, let's continue. (For other terms, see the [glossary](api-glossary.html).)

## Start by looking at the big picture

If you would like to get a big picture of the specification document, take a look at the [3.0 examples here](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0), specifically the [Petstore OpenAPI specification document here](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/petstore.yaml). It probably won't mean much at first, but get a sense of the whole before we dive into the details. Look at some of the other samples in the v.3.0 folder as well.

## Terminology to Describe JSON/YAML

The specification document in my OpenAPI tutorial uses YAML, but it could also be expressed in JSON. JSON is a subset of YAML, so the two are practically interchangeable formats (for the data structures we're using). Ultimately, though, the OpenAPI spec is a JSON object. The specification notes:

>An OpenAPI document that conforms to the OpenAPI Specification is itself a JSON object, which may be represented either in JSON or YAML format. (See [Format](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#format))

In other words, the OpenAPI document you create is a JSON object, but you have the option of expressing the JSON using either JSON or YAML syntax. YAML is more readable and is a more common format (see APIHandyman's take on [JSON vs YAML](https://apihandyman.io/writing-openapi-swagger-specification-tutorial-part-1-introduction/#json-vs-yaml)), so I've used YAML exclusively here. You will see that the spec always shows both the JSON and YAML syntax when showing specification formats. (For a more detailed comparison of YAML versus JSON, see "Relation to JSON" in the [YAML spec](http://www.yaml.org/spec/1.2/spec.html).)

Note that YAML refers to data structures with 3 main terms: "mappings (hashes/dictionaries), sequences (arrays/lists) and scalars (strings/numbers)" (see "Introduction" in [YAML 1.2](http://www.yaml.org/spec/1.2/spec.html)). However, because the OpenAPI spec is a JSON object, it uses JSON terminology &mdash; such as "objects," "arrays," "properties," "fields," and so forth. As such, I'll be showing YAML-formatted content but describing it using JSON terminology.

So that we're on the same page with terms, let's briefly review.

Each level in YAML (defined by a two-space indent) is an object. In the following code, `california` is an object. `animal`, `flower`, and `bird` are properties of the `california` object.

```yaml
california:
  animal: Grizzly Bear
  flower: Poppy
  bird: Quail
```

Here's what this looks like in JSON:

```json
{
  "california": {
    "animal": "Grizzly Bear",
    "flower": "Poppy",
    "bird": "Quail"
  }
}
```

The spec often uses the term "field" in the titles and table column names when listing the properties for a specific object. (Further, it identifies two types of fields &mdash; "fixed" fields are declared, unique names while "patterned" fields are regex expressions.) Fields and properties are synonyms. In the description for each field, the spec frequently refers to the field as a property, so I'm not sure why they chose to use "field" in subheadings and column titles.

In the following code, `countries` contains an object called `united_states`, which contains an object called `california`, which contains several properties with string values:

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

Here's what that looks like in JSON:

```json
{
  "demographics": [
    "population",
    "land",
    "rivers"
  ]
}
```

Hopefully those brief examples will help align us with the terminology used in the tutorial.

## Follow the OpenAPI tutorial

The OpenAPI tutorial has 8 steps. Each step corresponds with one of the root-level objects in the OpenAPI document.

* [Step 1: openapi object](pubapis_openapi_step1_openapi_object.html)
* [Step 2: info object](pubapis_openapi_step2_info_object.html)
* [Step 3: servers object](pubapis_openapi_step3_servers_object.html)
* [Step 4: paths object](pubapis_openapi_step4_paths_object.html)
* [Step 5: components object](pubapis_openapi_step5_components_object.html)
* [Step 6: security object](pubapis_openapi_step6_security_object.html)
* [Step 7: tags object](pubapis_openapi_step7_tags_object.html)
* [Step 8: externalDocs object](pubapis_openapi_step8_externaldocs_object.html)

Note that the spec alone does nothing with your content. Other tools are required to read and display the spec document, or to generate client SDKs from it.

My preferred tool for parsing and displaying information from the specification document is [Swagger UI](https://github.com/swagger-api/swagger-ui), but many other tools can consume the OpenAPI document and display it in different ways. See the [list of tools on Swagger here](https://swagger.io/commercial-tools/). Consider the screenshots from Swagger UI as one example of how the fields from the spec might be rendered.

You can see OpenAPI spec rendered with Swagger UI in the following links:

* [Swagger UI with Mashape Weather API](http://idratherbewriting.com/learnapidoc/assets/files/swagger/)
* [Embedded Swagger with Mashape Weather API](pubapis_swagger_demo.html)

## Migrating from OpenAPI 2.0 to 3.0

If you have an existing specification document that validates against version OpenAPI 2.0 and you want to convert it to OpenAPI 3.0, you can use [APIMATIC](https://apimatic.io/transformer) to convert it automatically. You can also use APIMATIC to transform your specification document into a number of other outputs, such as RAML, Postman, or API Blueprint.

To see the difference between the 2.0 and the 3.0 code, you can copy these code samples to separate files and then use an application like [Diffmerge](https://sourcegear.com/diffmerge/) to highlight the differences. The Readme.io blog has a nice post that provides [A Visual Guide to What's New in Swagger 3.0](https://blog.readme.io/an-example-filled-guide-to-swagger-3-2/).

## Helpful resources

As you embark on creating an OpenAPI specification file, you might find the recording of [Peter Gruenbaum's Swagger/OpenAPI presentation](http://www.stc-psc.org/event/documenting-web-apis-with-swagger-free-webinar/) to the STC Puget Sound chapter helpful, as well as his [Udemy course](https://www.udemy.com/learn-swagger-and-the-open-api-specification/).

{% include random_ad.html %}
