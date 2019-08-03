---
title: "Step 7: The tags object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step7_tags_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.36
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="7" map="content/openapi_tutorial_map.html"  %}

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="https://s3-us-west-1.amazonaws.com/idratherbewritingmedia.com/images/api/openapistep7.png"/>
{% endif %}

The `tags` object allows you to arrange the `paths` (endpoints) into named groups in the Swagger UI display.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Defining tags at the root level

At the root level, the [`tags` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#tagObject) lists all the tags that are used in the [operation objects](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#operationObject) (which appear within the `paths` object, as explained in [Step 4: The paths object](pubapis_openapi_step4_paths_object.html)). Here's an example of the `tags` object for our OpenWeatherMap API:

```yaml
tags:
  - name: Current Weather Data
    description: "Get current weather details"
```

We have just one tag, but you could have as many as you want (if you have a lot of endpoints, it would make sense to create multiple tags to group them). You can list both the `name` and a `description` for each tag. The `description` appears as a subtitle for the tag name in the Swagger UI display.

{% include random_ad.html %}

## Tags at the path object level

The `tags` object at the root level should list all tags (groups) that you want in your API. Then in each path object under `paths`, you list the tag you want that path grouped under.

For example, in the operations object for the `/current` path, we used the tag `Current Weather Data`:

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
```

This tag is defined at the global level, so the `/weather` path will be grouped here.

## <i class="fa fa-user-circle"></i> View the Appearance in Swagger UI

Add the following to the root level of your OpenAPI document in Swagger Editor:

```yaml
tags:
  - name: Current Weather Data
    description: "Get current weather details"
```

Observe how the description appears next to the collapsed Current Weather Data section.

{% include course_image.html filename="step7swaggeruiprogress" ext_print="png" ext_web="png" alt="Tags defined at the root level" caption="Tags defined at the root level" %}

All paths that have the same tag are grouped together in the display. For example, paths that have the `Current Weather Data` tag will be grouped together under the title `Current Weather Data`. Each group title is a collapsible/expandable toggle.

<a href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="https://s3-us-west-1.amazonaws.com/idratherbewritingmedia.com/images/api/openapitutorial_tags.png" class="medium" /></a>

The order of the tags in the `tags` object at the root level determines their order in Swagger UI. Additionally, the `descriptions` appear to the right of the tag name.

{% include random_ad2.html %}

In our sample OpenAPI spec, tags don't seem all that necessary since we're just documenting one path/endpoint. (Additionally, I configured the [Swagger UI demo](pubapis_swagger_demo.html) to expand the section by default.) But imagine if you had a robust API with 30+ paths to describe. You would certainly want to organize the paths into logical groups for users to navigate.
