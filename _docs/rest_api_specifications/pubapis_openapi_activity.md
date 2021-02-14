---
title: "Activity: Create an OpenAPI specification document"
permalink: /pubapis_openapi_activity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.51
section: restapispecifications
path1: /restapispecifications.html
last-modified: 2019-01-05
---

The [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html) walked you through 8 steps in building the OpenAPI specification document. Now it's your turn to practice first editing and then creating an OpenAPI specification document.

* TOC
{:toc}

{% include content/activities/edit_openapi_spec_file.md %}

{% include random_ad3.html %}

## Create the OpenAPI specification document for an API of your choosing

In an earlier activity, you [found an open-source API project](docapis_find_open_source_project.html) with some documentation needs. Try creating an OpenAPI specification for this API. Depending on the API you choose to work with, you could potentially use this specification document as part of your portfolio.

{% include image_ad_right.html %}

If your open-source project doesn't have an API, or if it's API already has an OpenAPI specification, find another API (perhaps from this [list of 100+ APIs](pubapis_apilist.html)) and create the OpenAPI specification.

{% include random_ad.html %}

Go through each step of the OpenAPI specification tutorial to build out the specification document:

* [Step 1: The openapi object](pubapis_openapi_step1_openapi_object.html)
* [Step 2: The info object](pubapis_openapi_step2_info_object.html)
* [Step 3: The servers object](pubapis_openapi_step3_servers_object.html)
* [Step 4: The paths object](pubapis_openapi_step4_paths_object.html)
* [Step 5: The components object](pubapis_openapi_step5_components_object.html)
* [Step 6: security object](pubapis_openapi_step6_security_object.html)
* [Step 7: The tags object](pubapis_openapi_step7_tags_object.html)
* [Step 8: The externalDocs object](pubapis_openapi_step8_externaldocs_object.html)

Validate your specification document in the [Swagger Editor](https://swagger.io/swagger-editor/). Execute a request to make sure it's working correctly.

{% include random_ad2.html %}
