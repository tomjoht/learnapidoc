---
title: "OpenAPI tutorial step 6: The security object"
permalink: /pubapis_openapi_step6_security_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.35
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="6" map="content/openapi_tutorial_map.html"  %}

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep6.png"/>
{% endif %}

Swagger UI provides a "Try it out" feature that lets users submit actual requests. To actually submit requests that are authorized by your API server, the spec must contain security information that will authorize the request. The [`security` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject) specifies the security or authorization protocol used when submitting requests.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Which security scheme?

REST APIs can use a number of different security approaches to authorize requests. I explored the most common authorization methods in [Documenting authentication and authorization requirements](docapis_more_about_authorization.html). Swagger UI supports four authorization schemes:

* API key
* HTTP
* OAuth 2.0
* Open ID Connect

In this tutorial, I'll explain the API key method, as it's the most common and it's what I'm most familiar with. If your API uses [OAuth 2.0](docapis_more_about_authorization.html#oauth-20) or another method, you'll need to read the [Security Scheme information](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#security-scheme-object) for details on how to configure it. However, all the security methods largely follow the same pattern.

## API key authorization

The sample Mashape weather API we're using in this course uses an API key passed in the request header (`X-Mashape-Key: 123456789`). If you submit a request without this header (and without a valid API key), the server denies the request.

## Security object

At the root level of your OpenAPI document, add a `security` object that defines the global method we're using for security:

```yaml
security:
- Mashape-Key: []
```

`Mashape-Key` is the arbitrary name we gave to this security scheme in our `securitySchemes` object. We could have named it anything. We'll define `Mashape-Key` in `components`.

All paths will use the `Mashape-Key` security method by default unless it's overridden by a value at the [`path` object level](pubapis_openapi_step4_paths_object.html). For example, at the path level we could overwrite the global security method as follows:

```yaml
/weatherdata:
  get:
    ...
    security:
    - Some-Other-Key: []
```

Then the `weatherdata` path would use the `Some-Other-Key` security method, while all other paths would use the globally declared security, `Mashape-Key`.

## Referencing the security scheme in components

In the [`components` object](pubapis_openapi_step5_components_object.html), we add a [`securitySchemes` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securitySchemeObject) that defines details about the security scheme we're using:

```yaml
components:
  ...

  securitySchemes:
    Mashape-Key:
      type: apiKey
      description: "The API authorizes requests through an API key in your header. Enter your Mashape key here. If you don't have an API key, for testing purposes you can use `EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p`."
      name: X-Mashape-Key
      in: header
```

Properties you can use in the `securitySchemes` object include the following:

* `type`: The type of authorization &mdash; `apiKey`, `http`, `oauth2`, or `openIdConnect`.
* `description`: A description of your security method. In Swagger UI, this description appears in the Authorization modal (see screenshot below). CommonMark Markdown is allowed.
* `name`: The name of the header value submitted in the request. Used only for `apiKey` type security.
* `in`: Specifies where the security key is applied. Options are `query`, `header` or `cookie`. Used only for `apiKey` type security.
* `scheme`. Used with `http` type authorization.
* `bearerFormat`. Used with `http` type authorization.
* [`flows`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#oauthFlowsObject) (object): Used with `oauth2` type authorization.
* `openIdConnectUrl`: Used with `openIdConnect` type authorization.

## Swagger UI appearance

In the Swagger UI, you see the `description` and other security details in the Authorization modal (which appears when you click the Authorization button):

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapitutorial_securityauth.png"/></a>

After users enter an API key and clicks **Authorize**, the authorization method is set for as many requests as they want to make. Only when users refresh the page does the authorization session expire.

## Checking to see if authorization works

When you submit a request, Swagger UI shows you the curl request that is submitted. For example, after executing a weather request, the curl is as follows:

```bash
curl -X GET "https://simple-weather.p.mashape.com/weather?lat=37.3708698&lng=-122.037593" -H "accept: text/plain" -H "X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p"
```

The `-H "X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p"` indicates that a header is being sent with the API key. (For more on cURL, see [Make a cURL call](docapis_make_curl_call.html).)

## Troubleshooting issues

If you have security correctly configured but the requests are being rejected, it could be due to a CORS (cross-origin resource sharing) issue. CORS is a security measure that websites implement to make sure other scripts and processes cannot take their content through requests from remote servers. See [CORS Support](https://github.com/swagger-api/swagger-ui#cors-support) in Swagger UI's documentation for details.

If the requests aren't working, open your browser's JavaScript console (in Chrome, View > Developer > Javascript Console) when you make the request and see if the error relates to cross-origin requests. If so, ask your developers to enable CORS on the endpoints.
