---
title: "OpenAPI tutorial: step 2"
permalink: /pubapis_openapi_step2_info_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.262
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="2" map="content/openapi_tutorial_map.html"  %}

## info object

The [info object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#infoObject) contains basic information about your API, including the title, a description, version, license, terms of service, and contact information.

Here's an example:

```yaml
info:
  title: Weather API from Mashape
  description: "This is a sample spec that describes a Mashape Weather API as an example to demonstrate features in the Swagger-2.0 specification. This output is part of the <a href=\"http://idratherbewriting.com/learnapidoc\">Documenting REST API course</a> on my site. The Weather API displays forecast data by latitude and longitude. It's a simple weather API, but the data comes from Yahoo Weather Service. The weatherdata endpoint delivers the most robust package of information of the endpoints here.\n\nTo explore the API, you'll need an API key. You can sign up for an API through Mashape, or you can just use this one\\: `EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p`. For the latitude and longitude parameters, you can get this information from the URL of a location on Google Maps. For example, for Santa Clara, California, use the following\\:\n* **lat**: `37.3708698`\n* **lng**: `-122.037593` \n"
  version: "1.0"
  termsOfService: https://konghq.com/terms/
  contact:
    name: fyhao
    url: https://market.mashape.com/fyhao
    email: some_email@gmail.com
  license:
    name: Limited license
    url: https://konghq.com/terms/
```

Note that in any `description` property, you can use Markdown. You can also break to new lines with `\n` and escape problematic characters like quotation marks or colons with a backslash: `\`.

Many of these fields are optional.

In the Swagger UI display, this information appears at the top:

<img src="/learnapidoc/images/openapitutorial_info_object.png"/>

{: .note}
If your content has a colon in it, either escape the colon by putting a backslash before it, or enclose the whole property value in quotation marks. If you do enclose the entire value in quotation marks, you'll need to escape an internal quotation marks in the value.
