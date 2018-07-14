---
title: "Step 8: The externalDocs object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step8_externaldocs_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.37
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

Note that this documentation should relate to the API as a whole. To link a specific parameter to more documentation, you can add an `externalDocs` object to the operation object, as noted in [Operation objects](pubapis_openapi_step4_paths_object.html#operation-objects) section in Step 4 with paths.

## Appearance in Swagger UI

{% include activity.html %}

Add the above code to the root level of your OpenAPI document in Swagger UI.

When you do, in the Swagger UI, a link appears after the API description along with other info about the API:

{% include course_image.html filename="step8swaggerprogress" ext_print="png" ext_web="png" alt="External documentation link" caption="External documentation link" %}

{: .tip}
See the related topic, [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html) for tips on how to integrate your Swagger UI output into your regular documentation.

{% include random_ad2.html %}

## Seeing the finished result

{% include activity.html %}

Now that we've completed all the steps in the tutorial, we're finished building our OpenAPI specification document. You can see the complete specification document here: <a href="http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml">http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml</a>.

Here's the specification document rendered by Swagger UI:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/swagger_full_result.png" class="medium" /></a

Try executing a request in the version above and look at the result. Select **Imperial** to get the temperature in Farenheit degrees. In the result, locate the `temp` value in the `main` object. Then take a break by going outside to evaluate whether the temperature outside matches the response.

{: .tip}
You can actually insert any valid path to an OpenAPI specification document into the "Explore" box in Swagger UI (assuming it's using a version that supports your version of the spec), and it will display the content. For example, you could insert `https://petstore.swagger.io/v2/swagger.json` and it would show the Petstore API.

{% include random_ad.html %}
