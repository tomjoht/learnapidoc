---
title: "Step 2: The info object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step2_info_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.44
section: openapitutorial
path1: /restapispecifications.html
path2: /openapi_tutorial.html
---

{% include workflow_map.html step="2" map="content/openapi_tutorial_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/openapistep2.png"/>
{% endif %}

The [info object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#infoObject) contains basic information about your API, including the title, a description, version, link to the license, link to the terms of service, and contact information. Many of the properties are optional.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample info object

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

Note that in any `description` property, you can use [CommonMark Markdown](http://spec.commonmark.org/0.27/), which is much more precise, unambiguous, and robust than the original Markdown. For example, CommonMark markdown offers some [backslash escapes](http://spec.commonmark.org/0.27/#backslash-escapes), and it specifies exactly how many spaces you need in lists and other punctuation. You can also break to new lines with `\n` and escape problematic characters like quotation marks or colons with a backslash.

{% include random_ad.html %}

As you write content in `description` properties, note that colons are problematic in YAML because they signify new levels. Either enclose the `description` value in quotation marks or escape colons with a backslash.  (If you enclose the values in quotation marks, syntax highlighters in text editors can display better color coding between the properties and values.)

{% include random_ad2.html %}

## Update your file in Swagger Editor

To update the spec file in Swagger Editor:

1.  Paste the [above code](#sample_info_object) containing the `info` object into the Swagger Editor.
2.  Uncomment the `openapi` and `paths` objects (remove the "`#`"). The display looks as follows:

    {% include course_image.html size="large" border="true" filename="swagger_info_object_editor_view" ext_print="png" ext_web="png" alt="openapi, info, and empty paths object in Swagger Editor" caption="openapi, info, and empty paths object in Swagger Editor" %}

    In the Swagger UI display, the `info` object's information appears below the title.

{: .tip}
In the `description` property, in addition to describing your overall API, you might want to provide some basic instructions to users on how to use Swagger UI. If there's a test account they should use, you can provide the information they need in this space.

{% include random_ad3.html %}
