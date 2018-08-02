---
title: "Activity: Create an OpenAPI specification document"
permalink: /pubapis_openapi_activity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.4
section: restapispecifications
path1: /restapispecifications.html
---

The [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html) walked you through 8 steps in building the OpenAPI specification document. Now it's your turn to practice building out an OpenAPI specification document on your own.

* TOC
{:toc}

## Identify an API

In an earlier activity, you [found an open-source API project](docapis_find_open_source_project.html) with some documentation needs. Try creating an OpenAPI specification for this API.

{: .tip}
Depending on the API you choose to work with, you could potentially use this specification document as part of your portfolio.

If you don't want to use that API (maybe it already has an OpenAPI specification document, or maybe there are other complications), you can use this simple [Sunrise and sunset times API](https://sunrise-sunset.org/api). This Sunrise and sunset times API doesn't require authentication with requests, so it removes some of the more complicated authentication workflows.

{% include random_ad.html %}

## Follow the OpenAPI tutorial

Go each step of the OpenAPI specification tutorial to build out the specification document:

* [Step 1: openapi object](pubapis_openapi_step1_openapi_object.html)
* [Step 2: info object](pubapis_openapi_step2_info_object.html)
* [Step 3: servers object](pubapis_openapi_step3_servers_object.html)
* [Step 4: paths object](pubapis_openapi_step4_paths_object.html)
* [Step 5: components object](pubapis_openapi_step5_components_object.html)
* [Step 6: security object](pubapis_openapi_step6_security_object.html)
* [Step 7: tags object](pubapis_openapi_step7_tags_object.html)
* [Step 8: externalDocs object](pubapis_openapi_step8_externaldocs_object.html)

Note that the Sunrise and sunset times API doesn't require authorization, so you can skip [Step 6: security object](pubapis_openapi_step6_security_object.html).

## Make sure your spec validates

Validate your specification document in the [Swagger Editor](https://swagger.io/swagger-editor/). Execute a request to make sure it's working correctly.

{% include random_ad2.html %}

## Check your spec against mine

If you get stuck or want to compare your spec with mine, see the specification document for the Sunrise and Sunset API here:  [https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml).

{: .tip}
You can use this OpenAPI specification document when working through the [Swagger UI activity](pubapis_swaggerui.html#create_swaggerui).

To see the Sunrise and Sunset specification document rendered by Swagger UI, just go to the [Swagger UI Demo](https://idratherbewriting.com/learnapidoc/assets/files/swagger/) and paste in the link to the `openapi_sunrise_sunset.yml` file into the **Explore** box.
