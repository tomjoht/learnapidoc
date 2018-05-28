---
title: "Step 7: The tags object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step7_tags_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.36
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="7" map="content/openapi_tutorial_map.html"  %}

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep7.png"/>
{% endif %}

The `tags` object provides a way to group the paths (endpoints) in the Swagger UI display.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Defining tags at the root level

At the root level, the [`tags` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#tagObject) lists all the tags that are used in the [operation objects](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#operationObject) (which appear within the `paths` object, as explained in [step 4](pubapis_openapi_step4_paths_object.html)).

Here's an example of the `tags` object for our OpenWeatherMap API:

```yaml
tags:
  - name: Current Weather Data
    description: "Get current weather details"
```

We just have one tag, but you could have as many as you want (if you have a lot of endpoints, it would make sense to create multiple tags to group them). You can list both the `name` and a `description` for each tag. The `description` appears as a subtitle for the tag name.

{% include random_ad.html %}

## Tags at the path object level

The `tags` object at the root level should comprehensively list all tags used within the operation objects at each path. Then in each path, you list the tag you want that path grouped under.

For example, in the operations object for the `/current` path, we used the same tag `Weather`:

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
```

## How tags appear in Swagger UI

All paths that have the same tag are grouped together in the display. For example, paths that have the `Weather` tag will be grouped together under the title `Weather`. Each group title is a collapsible/expandable toggle.

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapitutorial_tags.png" class="medium" /></a>

The order of the tags in the `tags` object at the root level determines their order in Swagger UI. Additionally, the `descriptions` appear to the right of the tag name.

{% include random_ad2.html %}

In our sample OpenAPI spec, tags don't seem all that necessary since we're just documenting one path/endpoint. (Additionally, I configured the Swagger UI display to expand the section by default.) But imagine if you had a robust API with 30+ paths to describe. You would certainly want to organize the paths into logical groups for users to navigate.
