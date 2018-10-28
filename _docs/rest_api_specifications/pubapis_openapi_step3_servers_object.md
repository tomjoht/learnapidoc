---
title: "Step 3: The servers object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step3_servers_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.32
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="3" map="content/openapi_tutorial_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep3.png"/>
{% endif %}

In the [`servers` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#serverObject), you specify the basepath used in your API requests. The basepath is the part of the URL that appears before the endpoint.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample servers object

The following is a sample `servers` object:

```yaml
servers:
- url: https://api.openweathermap.org/data/2.5/
```

Each of your endpoints (called "paths" in the spec) will be appended to the server URL when users make "Try it out" requests. For example, if one of the paths is `/weather`, when Swagger UI submits the request, it will submit the path to `{server URL}{path}` or `https://api.openweathermap.org/data/2.5/weather`.

## Options with the server URL

{% include random_ad.html %}

You have some flexibility and configuration options for your server URL. You can specify multiple server URLs that might relate to different environments (test, beta, production). If you have multiple server URLs, users can select the environment from a servers drop-down box. For example, you can specify multiple server URLs like this:

```yaml
servers:
  - url: https://api.openweathermap.org/data/2.5/
    description: Production server
  - url: http://beta.api.openweathermap.org/data/2.5/
    description: Beta server
  - url: http://some-other.api.openweathermap.org/data/2.5/
    description: Some other server
```

In Swagger UI, here's how the servers appear to users with multiple server URLs:

<a href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapi_serversurl.png" class="medium" /></a>

If you have just one URL, you still see a drop-down box but with just one option.

{% include random_ad2.html %}

You can also incorporate variables into the server URL that can be populated at runtime by your server. Additionally, if different paths (endpoints) require different server URLs, you can add the `servers` object as a property in the [`path`](pubapis_openapi_step4_paths_object.html) object's operation object. The locally declared servers URL will override the global servers URL.

See ["Overriding Servers"](https://swagger.io/docs/specification/api-host-and-base-path/) in the "API Server and Base URL" page for more details.

## <i class="fa fa-user-circle"></i> View the Appearance in Swagger UI

Paste the `servers` object (the first code sample above showing just one `url`) into your Swagger Editor, adding to the code you already have there. Swagger UI will look as follows.

{% include course_image.html filename="step3swaggeruiprogress" ext_print="png" ext_web="png" alt="Progress in Swagger UI with servers object" caption="Progress in Swagger UI with servers object" %}
