---
title: "OpenAPI tutorial step 8: The externalDocs object"
permalink: /pubapis_openapi_step8_externaldocs_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.268
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="8" map="content/openapi_tutorial_map.html"  %}

The [`externalDocs` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#external-documentation-object) lets you link to external documentation. You can also provide links to external docs in the `paths` object. Here's an example:

```yaml
externalDocs:
  description: Full documentation for the API
  url: https://market.mashape.com/fyhao/weather-13
```

In the Swagger UI, this link appears after the API description along with other info about the API.

<img src="/learnapidoc/images/openapi_tutorial_externaldocs.png" alt="externalDocs object"/>

{: .tip}
See the related topic, [Combining OpenAPI's (Swagger's) reference output with user guide docs](/pubapis_combine_swagger_and_guide.html) for tips on how to integrate your Swagger UI output into your regular documentation.
