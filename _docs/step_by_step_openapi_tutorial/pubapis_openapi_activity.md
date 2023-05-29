---
title: "Activity: Create an OpenAPI specification document"
permalink: pubapis_openapi_activity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.92
section: restapispecifications
path1: restapispecifications.html
last-modified: 2019-01-05
---

The [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html) walked you through 8 steps in building the OpenAPI specification document. Now it's your turn to practice first editing and then creating an OpenAPI specification document.

* TOC
{:toc}


## <i class="fa fa-user-circle"></i> Activity: Edit an existing OpenAPI specification document

{% include image_ad_right.html %}

Use this simple [Sunrise and sunset times API](https://sunrise-sunset.org/api) to get more familiar with the process of creating an OpenAPI specification file. This Sunrise and sunset times API doesn't require authentication with requests, so it removes some of the more complicated authentication workflows (the spec file doesn't require the [security object]({{site.rooturl}}pubapis_openapi_step6_security_object.html)). In this activity, you'll edit some of the existing values in an OpenAPI specification document that's already written.

To edit the OpenAPI specification file:

1.  Copy the code from this [pre-built OpenAPI specification](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml).
2.  Paste the YAML content into the [Swagger Editor](https://editor.swagger.io/).
3.  Identify each of the root-level objects of the OpenAPI spec:
    * [Step 1: The openapi object]({{site.rooturl}}pubapis_openapi_step1_openapi_object.html)
    * [Step 2: The info object]({{site.rooturl}}pubapis_openapi_step2_info_object.html)
    * [Step 3: The servers object]({{site.rooturl}}pubapis_openapi_step3_servers_object.html)
    * [Step 4: The paths object]({{site.rooturl}}pubapis_openapi_step4_paths_object.html)
    * [Step 5: The components object]({{site.rooturl}}pubapis_openapi_step5_components_object.html)
    * [Step 8: The externalDocs object]({{site.rooturl}}pubapis_openapi_step8_externaldocs_object.html)

4.  In the `info` object (near the top), make some changes to the `description` property and see how the visual display in the right column gets updated.
5.  In the `parameters` object, make some changes to one of the `description` properties and see how the visual editor gets updated.
6.  Look for the `$ref` pointer in the `responses` object. Identify what it points to in `components`.
7.  Change some spacing in a way that makes the spec invalid (such as inserting a space before `info`), and look at the error that appears. Then revert the invalid space.
8.  Expand the **Get** section and click **Try it out**. Then click **Execute** and look at the response.

{% include random_ad3.html %}

## Create the OpenAPI specification document for an API of your choosing

{% include random_ad4.html %}

In an earlier activity, you [found an open-source API project](docapis_find_open_source_project.html) with some documentation needs. Try creating an OpenAPI specification for this API. Depending on the API you choose to work with, you could potentially use this specification document as part of your portfolio.

If your open-source project doesn't have an API, or if it's API already has an OpenAPI specification, find another API (perhaps from this [list of 100+ APIs](pubapis_apilist.html)) and create the OpenAPI specification.

{% include ads.html %}

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
