---
title: "OpenAPI tutorial step 3: The servers object"
permalink: /pubapis_openapi_step3_servers_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.263
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="3" map="content/openapi_tutorial_map.html"  %}

In the [`servers` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject), you specify the basepath used in your API requests.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample servers object

The following is a sample `servers` object.

```yaml
servers:
  - url: https://simple-weather.p.mashape.com
    description: Production server
```

Each of your paths (or endpoints) will be appended to the server URL when users make "Try it out" requests. For example, if one of the paths is `/weatherdata`, when Swagger UI submits the request, it will submit it to `{server URL}{path}` or `https://simple-weather.p.mashape.com/weatherdata`.

You have some flexibility and configuration options for your server URL. You can specify multiple server URLs that might relate to different environments (test, beta, production). If you have multiple server URLs, users can select the environment from a servers drop-down box. You can also incorporate variables into the server URL that can be populated at runtime by your server.

For example, you can specify multiple server URLs like this:

```yaml
servers:
  - url: https://simple-weather.p.mashape.com
    description: Production server
  - url: https://beta.simple-weather.p.mashape.com
    description: Beta server
  - url: https://some-other.simple-weather.p.mashape.com
    description: Some other server
```

Additionally, if different paths (endpoints) require different server URLs, you can add the `servers` object as a sub-property for the `path`. The locally declared servers URL will override the global servers URL. See ["Overriding Servers"](https://swagger.io/docs/specification/api-host-and-base-path/) in the "API Server and Base URL" page for more details.

In Swagger UI, here's how the servers appear to users with multiple server URLs:

<img src="/learnapidoc/images/openapi_serversurl.png"/>

If you have just one URL, you see see a drop-down box, but with just one option.

Note that the OpenAPI also provides a `server` object that does not list its contents as an array. However, the `server` object can only be used as a property of the `links` object. You always use an array (the dashes) when declaring your `servers` at the root level, even if you have just one `url`.
