---
title: Creating the spec manually in a code editor
permalink: /pubapis_openapi_code_editor.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 4.12
sidebar: docapis
section: restapispecifications
path1: /restapispecifications.html
---

## Validating the specification

When you're coding your OpenAPI specification document, instead of working in a text editor, you can write your code in the [Swagger Editor](http://editor.swagger.io/). The Swagger Editor dynamically validates your content to determine whether the specification document you're creating is valid.

{% include course_image.html url="http://editor.swagger.io/" size="large" filename="swagger_editor_pic" ext_print="png" ext_web="png" alt="The Swagger Editor validates your specification content dynamically and shows you the display on the right" caption="The Swagger Editor validates your specification content dynamically and shows you the display on the right" %}

While you're coding in the Swagger Editor, if you make an error, you can quickly fix it before continuing, rather than waiting until a later time to run a build and sort out errors.

For your specification document's format, you have the choice of working in either JSON or YAML. The previous code sample is in [YAML](http://yaml.org/). YAML refers to "YAML Ain't Markup Language," meaning YAML doesn't have any markup tags (`< >`), as would be common with other markup languages such as XML.

YAML depends on spacing and colons to establish the object syntax. This space-sensitive formatting makes the code more human-readable, but it's also sometimes trickier to get the spacing right.



## Rendering Your OpenAPI specification with Swagger UI

After you have a valid OpenAPI specification document that describes your API, you can then feed this specification to different tools to parse it and generate the interactive documentation similar to the [Petstore demo](http://petstore.swagger.io/).

Probably the most common tool used to parse the OpenAPI specification is [Swagger UI](https://github.com/swagger-api/swagger-ui). (Remember, "Swagger" refers to API tooling, whereas "OpenAPI" refers to the vendor-neutral, tool agnostic specification.) After you download Swagger UI, it's pretty easy to configure it with your own specification file. I provide a [Swagger UI tutorial](pubapis_swagger.html) in an upcoming section.

The Swagger UI code generates a display that looks like this:

{% include course_image.html url="http://petstore.swagger.io/" size="large"  filename="swagger_petstore_pic" ext_print="png" ext_web="png" alt="The Swagger Petstore demo shows how Swagger UI renders the OpenAPI spec" caption="The Swagger Petstore demo shows how Swagger UI renders the OpenAPI spec" %}

You can also check out the [sample Swagger UI integration with a simple weather API](https://idratherbewriting.com/learnapidoc/assets/files/swagger/) used as a course example.

Some designers criticize Swagger UI's expandable/collapsible output as being dated. At the same time, developers find the one-page model attractive and like the ability to zoom out or in for details. By consolidating all endpoints on the same page in one view, users can take in the whole API at a glance. This display gives users a glimpse of the whole, which helps reduce complexity and enables them to get started. In many ways, the Swagger UI display is a [quick-reference guide](docapis_doc_quick_reference.html) for your API.

{% include content/activities/explore_swagger_petstore.md %}

## Other tools for reading OpenAPI spec

There are other tools besides Swagger UI that can parse your OpenAPI specification document. Some of these tools include [Restlet Studio](https://restlet.com/products/restlet-studio/), [Apiary](https://apiary.io/), [Apigee](http://apigee.com/about/), [Lucybot](https://lucybot.com/), [Gelato](https://gelato.io/), [Readme.io](http://readme.io/), [swagger2postman](https://github.com/josephpconley/swagger2postman), [swagger-ui responsive theme](https://github.com/jensoleg/swagger-ui), [Postman Run Buttons](https://www.getpostman.com/docs/run_button) and more.

Some web designers have created integrations of OpenAPI with static site generators such as Jekyll (see [Carte](https://github.com/Wiredcraft/carte) and [Readme](https://readme.io)). You can also embed Swagger UI into web pages as well. More tools roll out regularly for parsing and displaying content from an OpenAPI specification document.

{% include random_ad2.html %}

In fact, once you have a valid OpenAPI specification, using a tool called [API Transformer](https://apitransformer.com), you can even transform it into other API specification formats, such as [RAML](http://raml.org/) or [API Blueprint](https://apiblueprint.org/). These additional formats allow you to expand your tool horizons even wider.

## Customizing Swagger UI

You might be concerned that Swagger UI outputs look similar. With my OpenAPI projects, I usually customize the Swagger UI's colors a bit, add a custom logo and a few other custom styles. With one project, I integrated [Bootstrap](https://getbootstrap.com/) so that I could have [modals](https://getbootstrap.com/docs/4.1/components/modal/) where users could generate their authorization codes. You can even add [collapse-and-expand features](https://getbootstrap.com/docs/4.1/components/collapse/) in the `description` element to provide more information to users.

{% include random_ad.html %}

Beyond these simple modifications, however, it takes a bit of web-developer prowess to significantly alter the Swagger UI display. It's possible, but you need web development skills.

## Resources and further reading

See the following resources for more information on OpenAPI and Swagger:

* [API Transformer ](https://apitransformer.com)
* [APIMATIC](http://www.apimatic.io)
* [Carte](https://github.com/Wiredcraft/carte)
* [Swagger editor](http://editor.swagger.io)
* [Swagger Hub](https://swaggerhub.com)
* [Swagger Petstore demo](http://petstore.swagger.io)
* [Swagger Tools](http://swagger.io/tools)
* [Swagger UI tutorial](pubapis_swagger.html)
* [OpenAPI specification tutorial](pubapis_openapi_tutorial_overview.html)
* [Swagger/OpenAPI specification](https://github.com/OAI/OpenAPISpecification)
* [Swagger2postman](https://github.com/josephpconley/swagger2postman)
* [Swagger-ui Responsive theme](https://github.com/jensoleg/swagger-ui)
* [Swagger-ui](https://github.com/swagger-api/swagger-ui)
* [Undisturbed REST: A Guide to Designing the Perfect API](http://www.mulesoft.com/lp/ebook/api/restbook), by Michael Stowe

{: .tip }
To see a presentation that covers the same concepts in this article, see [https://goo.gl/n4Hvtq](https://goo.gl/n4Hvtq).
