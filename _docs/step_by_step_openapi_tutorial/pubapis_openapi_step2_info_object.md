---
title: "Step 2: The info object (OpenAPI tutorial)"
permalink: pubapis_openapi_step2_info_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.4
section: openapitutorial
path1: restapispecifications.html
path2: openapi_tutorial.html
map:
  step: 2
  definition: content/openapi_tutorial_map.html
last-modified: 2020-06-25
---

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/openapistep2.png"/>
{% endif %}

The [info object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#infoObject) contains basic information about your API, including the title, a description, version, link to the license, link to the terms of service, and contact information. Many of the properties are optional.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample info object {#sample_info_object}

{% include image_ad_right.html %}

Here's an example of the `info` object and its properties. (The `openapi` object and the empty `paths` object are commented out to maintain the focus on the `info` object.)

```yaml
# openapi: 3.0.2
info:
  title: "OpenWeatherMap API"
  description: "Get the current weather, daily forecast for 16 days, and a three-hour-interval forecast for 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. **Note**: This sample Swagger file covers the `current` endpoint only from the OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the `id` parameter) will provide the most precise location results."
  version: "2.5"
  termsOfService: "https://openweathermap.org/terms"
  contact:
    name: "OpenWeatherMap API"
    url: "https://openweathermap.org/api"
    email: "some_email@gmail.com"
  license:
    name: "CC Attribution-ShareAlike 4.0 (CC BY-SA 4.0)"
    url: "https://openweathermap.org/price"
# paths: {}
```

{% include content/troubleshooting_spec_tip.md %}

## Description properties and Markdown

Note that in any `description` property, you can use [CommonMark Markdown](http://spec.commonmark.org/0.27/), which is much more precise, unambiguous, and robust than the original Markdown.

For example, CommonMark markdown offers some [backslash escapes](http://spec.commonmark.org/0.27/#backslash-escapes), and it specifies exactly how many spaces you need in lists and other punctuation. You can also break to new lines with `\n` and escape problematic characters like quotation marks or colons with a backslash.

{% include ads.html %}

As you write content in `description` properties, note that colons are problematic in YAML because they signify new levels. Either enclose the `description` value in quotation marks or escape colons with a backslash. (If you enclose the values in quotation marks, syntax highlighters in text editors can display better color coding between the properties and values.)

{% include random_ad2.html %}

## Update your file in Swagger Editor

{% include random_ad4.html %}

To update the spec file in Swagger Editor:

1.  Paste the code from the preceding section ("Sample info object") containing the `info` object into the Swagger Editor.
2.  Uncomment the `openapi` and `paths` objects (remove the "`#`"). The display looks as follows:

    <figure><img class="docimage large border" src="{{site.media}}/swagger_info_object_editor_view.png" alt="openapi, info, and empty paths object in Swagger Editor" /><figcaption>openapi, info, and empty paths object in Swagger Editor</figcaption></figure>

    In the Swagger UI display, the `info` object's information appears below the title.

{: .tip}
In the `description` property, in addition to describing your overall API, you might want to provide some basic instructions to users on how to use Swagger UI. If there's a test account they should use, you can provide the information they need in this space.

{% include random_ad3.html %}
