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

The [info](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#infoObject) contains basic information about your API, including the title, a description, and version.

Note that in any `description` property


```yaml
info:
  title: Weather API from Mashape
  description: "This is a sample spec that describes a Mashape Weather API as an example to demonstrate features in the Swagger-2.0 specification. This output is part of the <a href=\"http://idratherbewriting.com/learnapidoc\">Documenting REST API course</a> on my site. The Weather API displays forecast data by latitude and longitude. It's a simple weather API, but the data comes from Yahoo Weather Service. The weatherdata endpoint delivers the most robust package of information of the endpoints here.\n\nTo explore the API, you'll need an API key. You can sign up for an API through Mashape, or you can just use this one\\: `EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p`. For the latitude and longitude parameters, you can get this information from the URL of a location on Google Maps. For example, for Santa Clara, California, use the following\\:\n* **lat**: `37.3708698`\n* **lng**: `-122.037593` \n"
  version: "2.1"
```
