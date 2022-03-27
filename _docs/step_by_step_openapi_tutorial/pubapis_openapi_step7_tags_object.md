---
title: "Step 7: The tags object (OpenAPI tutorial)"
permalink: pubapis_openapi_step7_tags_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.9
section: openapitutorial
path1: restapispecifications.html
path2: openapi_tutorial.html
map:
  step: 7
  definition: content/openapi_tutorial_map.html
last-modified: 2020-09-07
---

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/openapistep7.png"/>
{% endif %}

The `tags` object allows you to arrange the `paths` (endpoints) into named groups in the Swagger UI display.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Defining tags at the root level

{% include image_ad_right.html %}

At the root level, the [`tags` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#tagObject) lists all the tags that are used in the [operation objects](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#operationObject) (which appear within the `paths` object, as explained in [Step 4: The paths object](pubapis_openapi_step4_paths_object.html)). Here's an example of the `tags` object for our OpenWeatherMap API:

```yaml
tags:
  - name: Current Weather Data
    description: "Get current weather details"
```

We have just one tag, but you could have as many as you want (if you have a lot of endpoints, it would make sense to create multiple tags to group them). You can list both the `name` and a `description` for each tag. The `description` appears as a subtitle for the tag name in the Swagger UI display.

{% include content/troubleshooting_spec_tip.md %}

## Tags at the path object level

The `tags` object at the root level should list all tags (groups) that you want in your API. Then in each path object under `paths`, you list the tag you want that path grouped under.

{: .note}
By "root level," I mean the first level in the OpenAPI document. This level is also referred to as the global level because some object properties declared here (namely servers and security) are applied to each of the operation objects unless overridden at a lower level.

For example, in the operations object for the `/current` path, we used the tag `Current Weather Data`:

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
```

This tag is defined at the global level, so the `/weather` path will be grouped here.

{% include random_ad3.html %}

## <i class="fa fa-user-circle"></i> View the Appearance in Swagger UI

Add the following to the root level of your OpenAPI document in Swagger Editor:

```yaml
tags:
  - name: Current Weather Data
    description: "Get current weather details"
```

Observe how the description appears next to the collapsed Current Weather Data section.

<figure><img class="docimage" src="{{site.media}}/step7swaggeruiprogress.png" alt="Tags defined at the root level" /><figcaption>Tags defined at the root level</figcaption></figure>

All paths that have the same tag are grouped together in the display. For example, paths that have the `Current Weather Data` tag will be grouped together under the title `Current Weather Data`. Each group title is a collapsible/expandable toggle.

<a href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="{{site.media}}/openapitutorial_tags.png" class="medium" /></a>

{% include random_ad4.html %}

The order of the tags in the `tags` object at the root level determines their order in Swagger UI. Additionally, the `descriptions` appear to the right of the tag name.

{% include random_ad2.html %}

In our sample OpenAPI spec, tags don't seem all that necessary since we're just documenting one path/endpoint. (Additionally, I configured the [Swagger UI demo](pubapis_swagger_demo.html) to expand the section by default.) But imagine if you had a robust API with 30+ paths to describe. You would certainly want to organize the paths into logical groups for users to navigate.

{% include ads.html %}
