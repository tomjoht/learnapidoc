---
title: "Step 8: The externalDocs object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step8_externaldocs_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.50
section: openapitutorial
path1: /restapispecifications.html
path2: /openapi_tutorial.html
---

{% include workflow_map.html step="8" map="content/openapi_tutorial_map.html"  %}

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/openapistep8.png"/>
{% endif %}

The [`externalDocs` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#external-documentation-object) lets you link to external documentation. You can also provide links to external docs in the `paths` object.

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

{% include random_ad3.html %}

Note that this documentation should relate to the API as a whole. To link a specific parameter to more documentation, you can add an `externalDocs` object to the operation object, as noted in [Operation objects](pubapis_openapi_step4_paths_object.html#operation-objects) section in Step 4: The paths object.

{% include content/troubleshooting_spec_tip.md %}

## <i class="fa fa-user-circle"></i> View the Appearance in Swagger UI

Add the above code to the root level of your OpenAPI document in Swagger UI.

When you do, in the Swagger UI, a link appears after the API description along with other info about the API:

{% include course_image.html filename="step8swaggerprogress" ext_print="png" ext_web="png" alt="External documentation link" caption="External documentation link" %}

{: .tip}
At this point, you can probably anticipate some challenges with integrating Swagger UI with the rest of your documentation. It seems that you will likely have two outputs and a semi-fragmented user experience. The `externalDocs` object at least gives you a predictable place to link back to your other [conceptual topics](docconceptual.html). See [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html) for more information on integration strategies.

{% include random_ad2.html %}

## <i class="fa fa-user-circle"></i> Seeing the finished result

Now that we've completed all the steps in the tutorial, we're finished building our OpenAPI specification document. You can see the complete specification document here: <a href="https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml">https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml</a>.

Here's the specification document rendered by Swagger UI:

<a target="\_blank" href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/swagger_full_result.png" class="large" /></a>

Try executing a request in the version above and look at the result. In the result, locate the `temp` value in the `main` object. Then take a break by going outside and evaluate whether the temperature outside matches the response.

{: .tip}
You can insert any valid path to an OpenAPI specification document in the "Explore" box in Swagger UI (assuming the version of Swagger UI supports your OpenAPI version), and it will display the API documentation. For example, you could insert `https://petstore.swagger.io/v2/swagger.json` (then click **Explore**) and it would show the Petstore API.

{% include random_ad.html %}
