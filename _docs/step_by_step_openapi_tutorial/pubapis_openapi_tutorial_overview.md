---
title: "OpenAPI tutorial using Swagger Editor and Swagger UI: Overview"
permalink: pubapis_openapi_tutorial_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.1
section: openapitutorial
path1: restapispecifications.html
path2: openapi_tutorial.html
last-modified: 2020-09-07
---

In the previous section, I explained how to create the OpenAPI spec [using a visual editor with Stoplight Studio](pubapis_openapis_quickstart_stoplight.html). In this tutorial, I'll explain how to work in a text editor such as [Swagger Editor](http://editor.swagger.io/) to write the OpenAPI code by hand. For a higher-level introduction to the OpenAPI spec, see [Introduction to the OpenAPI specification](pubapis_openapi_intro.html).

In this tutorial, we'll dive deeply into the OpenAPI specification. We'll use the same [OpenWeatherMap API](https://openweathermap.org/current) that we've been using throughout other parts of this course as the content for our OpenAPI document. Using this API, we'll create a valid OpenAPI specification document and then render it using Swagger UI.

{: .tip }
To see a presentation that covers the same concepts in this article, see [https://goo.gl/n4Hvtq](https://goo.gl/n4Hvtq).

* TOC
{:toc}

## Swagger Editor

When choosing an editor to write OpenAPI code by hand, the most common is the [Swagger Editor](http://editor.swagger.io/) because it dynamically validates your content as you write. It lets you determine whether the specification document you're creating is valid. The Swagger Editor looks like this, with the left pane showing the code and the right pane showing the output:

<figure><a target="_blank" class="noExtIcon" href="http://editor.swagger.io/"><img class="docimage large" src="{{site.media}}/swagger_editor_pic.png" alt="The Swagger Editor validates your specification content dynamically and shows you the display on the right" /></a><figcaption>The Swagger Editor validates your specification content dynamically and shows you the display on the right</figcaption></figure>

{% include random_ad4.html %}

While you're coding in the Swagger Editor, if you make an error, you can quickly fix it before continuing rather than waiting until a later time to run a build and sort out errors.

## JSON or YAML format

For your specification document's format, you have the choice of working in either JSON or YAML. The code sample is in the previous screenshot shows [YAML](http://yaml.org/). YAML refers to "YAML Ain't Markup Language," meaning YAML doesn't have any markup tags (`< >`), as would be common with other markup languages such as XML.

{% include image_ad_right.html %}

YAML depends on spacing and colons to establish the object syntax. This space-sensitive formatting makes the code more human-readable, but it's also sometimes trickier to get the spacing right.

You can also write in JSON, if you prefer that. There are more curly braces to deal with, but it isn't a space-sensitive format. The OpenAPI specification documentation on GitHub shows code samples in both YAML and JSON in nearly every example. I'll go into more detail about YAML in the next step, [Working with YAML](pubapis_yaml.html).

## General resources for learning the OpenAPI specification

Learning the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification) will take some time. As an estimate, if you're coding it manually, plan about two weeks of immersion, working with a specific API in the context of the specification before you become comfortable with it. Remember that the OpenAPI specification is general enough to describe nearly every REST API, so some parts may be more applicable to your API than others.

As you learn the OpenAPI specification, use the following resources:

* [Sample OpenAPI specification documents](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0). These sample specification documents provide a good starting point as a basis for your specification document. They give you a big picture of the general shape of a specification document.
* [Swagger user guide](https://swagger.io/docs/specification/about/). The Swagger user guide is more friendly, conceptual, and easy to follow. It doesn't have the detail and exactness of the specification documentation on GitHub, but in many ways, it's clearer and contains more examples.
* [OpenAPI specification documentation](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md). The specification documentation is technical and takes a little getting used to, but you'll no doubt consult it frequently when describing your API. It's a long, single page document to facilitate findability through Ctrl+F.

{: .note}
There are other Swagger/OpenAPI tutorials online, but make sure you follow tutorials for the [3.0 version of the API](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md) rather than [2.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md). Version 3.0 was [released in July 2017](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#appendix-a-revision-history). 3.0 is substantially different from 2.0. ([Version 3.0.2](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md) was released in December 2017 and makes minor improvements to 3.0. Note that whenever I refer to 3.0, I'm referring to 3.x, meaning any incremental dot release from the 3.0 line.)

## How my OpenAPI/Swagger tutorial is different

You can find many Swagger tutorials online. What makes mine different? Besides the end-to-end walkthrough using the OpenAPI 3.0 (rather than 2.0) version of the spec, and using an actual API for context, I also show how OpenAPI fields map to Swagger UI. Specifically, I demonstrate how and where each of the OpenAPI fields gets displayed.

Many other display frameworks besides [Swagger UI](https://github.com/swagger-api/swagger-ui) can parse and display information in an OpenAPI specification document, and you can even create your own custom parsing tools.

{% include random_ad2.html %}

[Swagger UI](https://github.com/swagger-api/swagger-ui) is sponsored by [Smartbear](https://smartbear.com/), the same company that is heavily invested in the [OpenAPI initiative](https://www.openapis.org/) and which develops [SwaggerHub](pubapis_swaggerhub_smartbear.html) (the premium version of Swagger UI) and drives other Swagger tooling (including Swagger Editor, Swagger UI, Swagger Codegen, and others). Note that SmartBear does not own the [OpenAPI specification](https://github.com/OAI/OpenAPI-Specification/), as the Linux Foundation drives this [initiative](https://www.openapis.org/). The OpenAPI spec's development is driven by [many companies and organizations](https://www.openapis.org/membership/members).

By showing you how the fields in the spec appear in the Swagger UI output, I hope the specification objects and properties will take on more relevance and meaning.

*Note that SmartBear is one of the sponsors of this site.*

## Terminology for Swagger and OpenAPI

Before continuing, I want to clarify the difference between "Swagger" and "OpenAPI" terms for those who may be unfamiliar with this landscape. ["Swagger"](https://swagger.io/) was the original name of the OpenAPI specification, but the specification was later changed to ["OpenAPI"](https://github.com/OAI/OpenAPI-Specification/) to reinforce the open, non-proprietary nature of this standard. Now, "Swagger" refers to API tooling that supports the OpenAPI spec, not the spec itself.

People still often refer to both names interchangeably, but "OpenAPI" is how the spec should be referred to. The "OpenAPI specification document" or "OpenAPI document" is the Swagger YAML file that you create to describe your API. For other terms, see the [API Glossary](api-glossary.html). See also [What Is the Difference Between Swagger and OpenAPI?](https://blog.smartbear.com/open-source/what-is-the-difference-between-swagger-and-openapi/).

{% include random_ad3.html %}

## Customizing Swagger UI

You might be concerned that Swagger UI outputs look similar. First, note that you can render the OpenAPI spec using many different tools outside of Swagger UI (e.g., using [Stoplight](pubapis_openapis_quickstart_stoplight.html) or [Redoc](pubapis_redocly.html)). However, Swagger UI tends to be popular because it's free and was one of the first in this space.

With my OpenAPI projects, I usually customize the Swagger UI's colors a bit, add a custom logo and a few other custom styles. With one project, I integrated [Bootstrap](https://getbootstrap.com/) so that I could have [modals](https://getbootstrap.com/docs/4.1/components/modal/) where users could generate their authorization codes. You can even add [collapse-and-expand features](https://getbootstrap.com/docs/4.1/components/collapse/) in the `description` element to provide more information to users.

{% include ads.html %}

Beyond these simple modifications, however, it takes a bit of web-developer prowess to significantly alter the Swagger UI display. It's possible, but you need web development skills.

## Start by looking at the big picture

If you would like to get a big picture of the specification document, take a look at the [3.0 examples here](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0), specifically the [Petstore OpenAPI specification document](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/petstore.yaml). It probably won't mean much at first, but try to get a sense of the whole before we dive into the details. Look at some of the other samples in the v.3.0 folder as well.

## Follow the OpenAPI tutorial

The OpenAPI tutorial has a brief into to YAML followed by eight steps. Each step corresponds with one of the root-level objects in the OpenAPI document.

* [Working in YAML](pubapis_yaml.html)
* [Step 1: The openapi object](pubapis_openapi_step1_openapi_object.html)
* [Step 2: The info object](pubapis_openapi_step2_info_object.html)
* [Step 3: The servers object](pubapis_openapi_step3_servers_object.html)
* [Step 4: The paths object](pubapis_openapi_step4_paths_object.html)
* [Step 5: The components object](pubapis_openapi_step5_components_object.html)
* [Step 6: security object](pubapis_openapi_step6_security_object.html)
* [Step 7: The tags object](pubapis_openapi_step7_tags_object.html)
* [Step 8: The externalDocs object](pubapis_openapi_step8_externaldocs_object.html)

You don't have to create the specification document in this order; I've merely chosen this order to provide more of a specific path and series of steps to the process.

In the following sections, we'll proceed through each of these objects one by one and document the [OpenWeatherMap current API](https://openweathermap.org/current). Tackling each root-level object individually (rather than documenting everything at once) helps reduce the complexity of the spec.

{: .note}
`components` is more of a storage object for schemas defined in other objects, but to avoid introducing too much at once, I'll wait until the [`components` tutorial](pubapis_openapi_step5_components_object.html) to fully explain how to reference a schema in one object (using `$ref`) that points to the full definition in `components`.

With each step, you'll paste the object you're working on into the Swagger Editor. The right pane of the Swagger Editor will show the Swagger UI display. (Remember that the specification document alone does nothing with your content. Other tools are required to read and display the spec document.)

Later, when I talk more about publishing, I'll explain how to configure Swagger UI with your specification document as a standalone output. For our sample OpenWeatherMap API, you can see the OpenAPI spec ([`openapi_openweathermap.yml`](https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml)) rendered by the Swagger UI at the following links:

* [Standalone Swagger UI with OpenWeatherMap API](https://idratherbewriting.com/learnapidoc/assets/files/swagger/)
* [Embedded Swagger with OpenWeatherMap API](pubapis_swagger_demo.html)

## Migrating from OpenAPI 2.0 to 3.0

If you have an existing specification document that validates against version OpenAPI 2.0 and you want to convert it to OpenAPI 3.0 (or vice versa), you can use [APIMATIC's Transformer](https://apimatic.io/transformer) to convert it automatically. (You can also use APIMATIC to transform your specification document into many other outputs, such as [RAML](pubapis_raml.html), [API Blueprint](pubapis_api_blueprint.html), or [Postman](docapis_postman.html).)

To see the difference between the 2.0 and the 3.0 code, you can copy these code samples to separate files and then use an application like [Diffmerge](https://sourcegear.com/diffmerge/) to highlight the differences. The Readme.com blog has a nice post that provides [A Visual Guide to What's New in Swagger 3.0](https://blog.readme.com/an-example-filled-guide-to-swagger-3-2/).

## Helpful resources

As you embark on creating an OpenAPI specification file, you might find the recording of [Peter Gruenbaum's Swagger/OpenAPI presentation](http://www.stc-psc.org/event/documenting-web-apis-with-swagger-free-webinar/) to the STC Puget Sound chapter helpful, as well as his [Udemy course](https://www.udemy.com/learn-swagger-and-the-open-api-specification/).

Brace yourself &mdash; this is where you'll find out if you're cut out for API technical writing.
