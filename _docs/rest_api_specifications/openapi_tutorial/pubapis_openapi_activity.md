---
title: "OpenAPI specification activity: Create your own specification document"
permalink: /pubapis_openapi_activity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.39
section: restapispecifications
path1: /restapispecifications.html
---

{% include activity.html %}

The [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html) walked you through 8 steps in building the OpenAPI specification document. Now it's your turn to practice building out an OpenAPI specification document on your own.

* TOC
{:toc}

## Identify an API

First, find an API that's relatively simple. If you're already documenting an API for your work, by all means use that API. But if you're just taking this course to learn general API documentation, try creating an OpenAPI specification document for this simple [Sunrise and sunset times API](https://sunrise-sunset.org/api). This API doesn't require authentication with requests, so it removes some of the more complicated authentication workflows.

{: .tip}
Depending on the API you choose to work with, you could potentially use this specification document as part of your portfolio.

## Follow the OpenAPI tutorial

Go each step of the OpenAPI specification tutorial to build out the specification document:

* [Step 1: openapi object](pubapis_openapi_step1_openapi_object.html)
* [Step 2: info object](pubapis_openapi_step2_info_object.html)
* [Step 3: servers object](pubapis_openapi_step3_servers_object)
* [Step 4: paths object](pubapis_openapi_step4_paths_object.html)
* [Step 5: components object](pubapis_openapi_step5_components_object.html)
* [Step 6: security object](pubapis_openapi_step6_security_object.html)
* [Step 7: tags object](pubapis_openapi_step7_tags_object.html)
* [Step 8: externalDocs object](pubapis_openapi_step8_external_docs_object.html)

## Make sure your spec validates

Validate your specification document in the [Swagger Editor](https://swagger.io/swagger-editor/). Execute a request to make sure it's working correctly.

## Check your spec against mine

If you get stuck or want to compare your spec with mine, see [openapi_sunrise_sunset.yml](/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml).

Note that the Sunrise and sunset times API doesn't require authorization, so you can skip [Step 6: security object](pubapis_openapi_step6_security_object.html).

{: .tip}
You can use this OpenAPI specification document when working through the [Swagger UI activity](pubapis_swagger_ui_activity.html).
