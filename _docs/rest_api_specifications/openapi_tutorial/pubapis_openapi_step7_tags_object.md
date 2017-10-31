---
title: "OpenAPI tutorial step 7: The tags object"
permalink: /pubapis_openapi_step7_tags_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.267
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="7" map="content/openapi_tutorial_map.html"  %}

At the root level, the [`tags` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#tagObject) lists all the tags that are defined in the [operation object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#operationObject) (which appears within the `path` object, as explained in [step 4](pubapis_openapi_step4_paths_object.html)). The `tags` object provides a way to group the paths (endpoints) in the Swagger UI display.

For example, in the operations object for the `/weather` path, we used the tag `Weather Forecast`

```yaml
paths:
  ...
  /weather:
    get:
      servers:
      - url: https://simple-weather.p.mashape.com
      tags:
      - Weather Forecast
      ...
```

We used the same tag with the `/weatherdata` path:

```yaml
paths:
...
  /weatherdata:
    get:
      tags:
        - Full Weather Data
      summary: getWeatherData
      description: Get weather forecast with lots of details
      operationId: GetWeatherData
```

All paths that have this same tag will be grouped together in the Swagger UI display. A collapsible/expandable toggle groups the paths by tag name. The `/aqi` path has the `Air Quality` tag, while the `/weather` and `/weatherdata` paths have the `Weather Forecast` tag.

<img src="/learnapidoc/images/openapitutorial_tags.png" />

The order of the tags in the `tags` object at the root level determines their order in the Swagger UI display. Additionally, you can add `descriptions` for each tag. The descriptions will appear to the right of the tag name. Here's an example for the Mashape Weather API:

```yaml
tags:
  - name: Air Quality
    description: The pollution quality of the air.
  - name: Weather Forecast
    description: A full list of details about the current weather.
```

In this simple weather API, there are just 3 paths. But imagine if you had a robust API with 30+ paths to describe. You would certainly want to organize the paths into logical groups for users to navigate.
