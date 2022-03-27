---
title: "Step 3: The servers object (OpenAPI tutorial)"
permalink: pubapis_openapi_step3_servers_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.5
section: openapitutorial
path1: restapispecifications.html
path2: openapi_tutorial.html
map:
  step: 3
  definition: content/openapi_tutorial_map.html
last-modified: 2020-09-07
---

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/openapistep3.png"/>
{% endif %}

In the [`servers` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#serverObject), you specify the basepath used in your API requests. The basepath is the part of the URL that appears before the endpoint.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample servers object {#sample_servers_object}

The following is a sample `servers` object:

```yaml
servers:
- url: https://api.openweathermap.org/data/2.5/
```

Each of your endpoints (called "paths" in the spec) will be appended to the server URL when users make "Try it out" requests. For example, if one of the paths is `/weather`, when Swagger UI submits the request, it will submit the path to `{server URL}{path}` or `https://api.openweathermap.org/data/2.5/weather`.

## Options with the server URL

{% include random_ad3.html %}

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

{% include content/troubleshooting_spec_tip.md %}

In Swagger UI, the multiple servers appear as options users can select in a drop-down list:

<a href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="{{site.media}}/openapi_serversurl.png" class="medium" /></a>

If you have just one URL, you still see a drop-down box but with just one option.

{% include random_ad2.html %}

{% include image_ad_right.html %}

You can also incorporate variables into the server URL that can be populated at runtime by your server. Additionally, if different paths (endpoints) require different server URLs, you can add the `servers` object as a property in the [`path`](pubapis_openapi_step4_paths_object.html) object's operation object. The locally declared servers URL will override the global servers URL.

See ["Overriding Servers"](https://swagger.io/docs/specification/api-host-and-base-path/) in "API Server and Base URL" (Swagger's docs) for more details.

## Swagger

Paste the `servers` object (the [first code sample above](#sample_servers_object) showing just one `url`) into your Swagger Editor, adding to the code you already have there. Swagger UI will look as follows.

<figure><img class="docimage" src="{{site.media}}/swagger_servers_object2.png" alt="Swagger UI with the servers object" /><figcaption>Swagger UI with the servers object</figcaption></figure>

{% include random_ad4.html %}

Notice the drop-down menu that appears in the lower-right. (Even if you have just one URL, it still appears in a drop-down menu.)

{% include ads.html %}
