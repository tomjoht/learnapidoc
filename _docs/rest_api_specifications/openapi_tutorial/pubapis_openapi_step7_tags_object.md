---
title: "OpenAPI tutorial step 7: The tags object"
permalink: /pubapis_openapi_step7_tags_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.37
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="7" map="content/openapi_tutorial_map.html"  %}

The `tags` object provides a way to group the paths (endpoints) in the Swagger UI display.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Defining tags at the root level

At the root level, the [`tags` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#tagObject) lists all the tags that are used in the [operation objects](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#operationObject) (which appear within the `paths` object, as explained in [step 4](pubapis_openapi_step4_paths_object.html)).

Here's an example of the `tags` object for our Mashape Weather API:

```yaml
tags:
  - name: Air Quality
    description: The pollution quality of the air.
  - name: Weather Forecast
    description: A full list of details about the current weather.
```

In this simple weather API, there are two tags. You can list both the `name` and a `description` for each tag.

## Tags at the path object level

The `tags` object at the root level should comprehensively list all tags used within the operation objects at each path.

For example, in the operations object for the `/weather` path, we used the tag `Weather Forecast`:

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
        - Weather Forecast
      summary: getWeatherData
      description: Get weather forecast with lots of details
      operationId: GetWeatherData
```

## How tags appear in Swagger UI

All paths that have the same tag are grouped together in the display. For example, paths that have the `Weather Forecast` tag will be grouped together under the title `Weather Forecast`. Each group title is a collapsible/expandable toggle. The `/aqi` path has the `Air Quality` tag.

<a href="/learnapidoc/assets/files/swagger/"><img src="/learnapidoc/images/openapitutorial_tags.png" /></a>

The order of the tags in the `tags` object at the root level determines their order in Swagger UI. Additionally, the `descriptions` appear to the right of the tag name.

In this simple weather API, tags don't seem all that necessary. But imagine if you had a robust API with 30+ paths to describe. You would certainly want to organize the paths into logical groups for users to navigate.
