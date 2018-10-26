---
title: "Make a curl call"
permalink: /docapis_make_curl_call.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.4
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
---

In this section, you'll use curl to make the same weather API requests you made previously with Postman. If you haven't installed curl, see [curl intro and installation](docapis_install_curl.html) first.

* TOC
{:toc}

{% include content/activities/make_curl_request.md %}

{% include random_ad.html %}

## Note about single and double quotes with Windows curl requests {#windows_notes}

If you're using Windows to submit a lot of curl requests, and the curl request require you to submit JSON in the request body, you might run into issues with single versus double quotes. Some API endpoints (usually for POST methods) require you to submit content in the body of the message request. The body content is formatted in JSON. Since you can't use double quotes inside of other double quotes, you'll run into issues in submitting curl requests in these scenarios.

{% include random_ad2.html %}

Here's the workaround. If you have to submit body content in JSON, you can store the content in a JSON file. Then you reference the file with an `@` symbol, like this:

```sh
curl -H "Content-Type: application/json" -H "Authorization: 123" -X POST -d @mypostbody.json http://endpointurl.com/example
```

Here curl will look in the existing directory for the mypostbody.json file. (You can also reference the complete path to the JSON file on your machine.)
