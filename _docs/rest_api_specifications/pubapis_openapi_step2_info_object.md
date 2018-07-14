---
title: "Step 2: The info object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step2_info_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.31
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="2" map="content/openapi_tutorial_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep2.png"/>
{% endif %}

The [info object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#infoObject) contains basic information about your API, including the title, a description, version, link to the license, link to the terms of service, and contact information. Many of the properties are optional.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample info object

Here's an example of the `info` object and its properties:

```yaml
openapi: "3.0.1"
info:
  title: "OpenWeatherMap API"
  description: "Get current weather, daily forecast for 16 days, and 3-hourly forecast 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. **Note**: This sample Swagger file covers the `current` endpoint only from the OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the `id` parameter) will provide the most precise location results."
  version: "2.5"
  termsOfService: "https://openweathermap.org/terms"
  contact:
    name: "OpenWeatherMap API"
    url: "https://openweathermap.org/api"
    email: "some_email@gmail.com"
  license:
    name: "CC Attribution-ShareAlike 4.0 (CC BY-SA 4.0)"
    url: "https://openweathermap.org/price"
```

{: .tip}
In any `description` property, you can use [CommonMark Markdown](http://spec.commonmark.org/0.27/), which is much more precise, unambiguous, and robust than the original Markdown. For example, CommonMark markdown offers some [backslash escapes](http://spec.commonmark.org/0.27/#backslash-escapes), and it specifies exactly how many spaces you need in lists and other punctuation. You can also break to new lines with `\n` and escape problematic characters like quotation marks or colons with a backslash.

{% include random_ad2.html %}

As you write content in `description` properties, note that colons are problematic in YAML because they signify new levels. Either escape colons with a backslash or enclose the `description` value in quotation marks. You can use single or double quotation marks for the property values. (If you enclose the values in quotation marks, syntax highlighters can display better color coding between the properties and values.)

{% include random_ad.html %}

## Appearance in Swagger UI

{% include activity.html %}

At this point, go ahead and paste this above code along with the `openapi` object from the previous step into the [Swagger Editor](https://editor.swagger.io/). You'll see some rendering errors (because the specification document doesn't yet have any `path` objects), but the content will still appear. (Just hide the errors section at the top for now).

In the Swagger UI display, the `info` object's information appears at the top:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/step2swaggeruiprogress.png" class="medium" /></a>

{: .tip}
In the `description` property, you might want to provide some basic instructions to users on how to use Swagger UI. If there's a test account they should use, you can provide the information they need in this space.
