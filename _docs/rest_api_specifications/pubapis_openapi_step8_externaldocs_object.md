---
title: "Step 8: The externalDocs object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step8_externaldocs_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.37
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="8" map="content/openapi_tutorial_map.html"  %}

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep8.png"/>
{% endif %}

The [`externalDocs` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#external-documentation-object) lets you link to external documentation. You can also provide links to external docs in the `paths` object.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Example externalDocs object

Here's an example of an `externalDocs` object:

```yaml
externalDocs:
  description: API Documentation
  url: https://openweathermap.org/api
```

In the Swagger UI, this link appears after the API description along with other info about the API.

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapi_tutorial_externaldocs.png" alt="externalDocs object"/></a>

{: .tip}
See the related topic, [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html) for tips on how to integrate your Swagger UI output into your regular documentation.

## Seeing the finished result

Now that we've completed all the steps in the tutorial, we're finished building our OpenAPI document. You can see the end result here: <a href="http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_weather.yml">docs/rest_api_specifications/openapi_weather.yml</a>.

Here's the specification document embedded in Swagger UI:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/swagger_full_result.png" class="medium" /></a>

You can actually insert any valid path to an OpenAPI specification document into the "Explore" box in Swagger UI (assuming it's using a version that supports your version of the spec), and it will display the content.
