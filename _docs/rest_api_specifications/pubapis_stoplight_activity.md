---
title: "Activity: Use Stoplight to edit your OpenAPI spec"
permalink: pubapis_stoplight_activity.html
keywords:
course: "Documenting REST APIs"
weight: 5.6
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

In previous activities, you created your own [OpenAPI specification document](pubapis_openapi_activity.html) and also created a [Swagger UI display](pubapis_swagger_ui_activity.html) with that specification document. In this example, you'll make some modifications to your specification document using Stoplight, a visual editor.

{: .note}
If you landed on this activity before learning about Stoplight, see [Stoplight &mdash; visual modeling tools for creating your OpenAPI spec](pubapis_stoplight.html) first.

## Spec versions

It would be great if all tools supported the latest version of the OpenAPI specification (3.0). However, the reality is that, as if April 2018, most tools (except for [Swagger UI](pubapis_swagger.html) and [SwaggerHub](pubapis_swaggerhub_smartbear.html)) support only the 2.0 version. Many tools are catching up, and it's only a matter of time until 3.0 is fully supported. In the meantime, you can either learn an outdated specification that is compatible with the tool you want, or you can code in the 3.0 version and then programmaticaly convert it to 2.0.

My preference is to code in the 3.0 version and then use [API Transformer](https://apimatic.io/transformer) to programmatically convert the spec to the 2.0 version. The only limitation with this approach is if you're using some features in the 3.0 version of the spec that aren't available in 2.0. For example, JSON schema definitions that use `anyOf`, `oneOf`, and `not` are supported only in 3.0. See [A Guide to What’s New in OpenAPI 3.0](https://swagger.io/blog/whats-new-in-openapi-3-0/) for full details about how 3.0 differs from 2.0.

In this exercise, you'll use Stoplight.io to work with the specification. Currently, Stoplight supports only the 2.0 version of the spec, but they're working on support for 3.0 in the near future.

## Download Stoplight

You can use Stoplight in the browser or as a web app:

1.  Go to [next.stoplight.io/](https://next.stoplight.io/).
2.  Click **Login** in the upper-right corner and log in through your GitHub account.
3.  Click **New Project**.
4.  Type a **Project name** (e.g., Sunrise and Sunset API), a **Project path** (e.g., the default path), and a **Summary** (documentation for Sunrise and Sunset API). Leave the visibility as **Public** and click **Create Project**.
4.  In the left pane, click the **Files** icon to expand the left pane, and then click under Modeling, click **main.oas2**.
5.  At the top of the screen, click **Code** to switch into the code view.
6.  Paste in a 2.0 version of your Swagger spec. If you created a specification following the [OpenAPI activity](pubapis_openapi_activity.html), convert it to the **"Swagger 2.0 JSON"** version using [API Transformer](pubapis_openapi_activity.html).
    If you didn't do the previous activity, you can grab the [openapi_sunrise_sunset.yml](http://idratherbewriting.com/learnapidoc/assets/files/swagger/openapi_sunrise_sunset.yml) here and convert it, or use the [version I've already converted here](http://idratherbewriting.com/learnapidoc/assets/files/swagger/oopenapi_sunrise_sunset_20.json).
