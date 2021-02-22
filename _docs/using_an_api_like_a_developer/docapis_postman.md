---
title: "Submit requests through Postman"
permalink: /docapis_postman.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.2
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
last-modified: 2019-11-18
---

When you're testing endpoints with different parameters, you can use one of the many GUI REST clients available to make the requests. (By "GUI," I mean there's a graphical user interface with boxes and buttons for you to click.) You can also use [curl](docapis_install_curl.html) (which we'll cover soon), but GUI clients tend to simplify testing with REST APIs.

* TOC
{:toc}

## Why use a GUI client

With a GUI REST client, you can:

*  Save your requests (and numerous variations) in a way that's easy to run again
*  More easily enter information in the right format
*  See the response in a prettified JSON view or a raw format
*  Easily include header information

With a GUI REST client, you won't have to worry about getting curl syntax right and analyzing requests and responses from the command line.

## Popular GUI clients

Some popular GUI clients include the following:

* [Postman](http://www.getpostman.com/)
* [Insomnia](https://insomnia.rest/)
* [Paw](https://luckymarmot.com/paw)
* [Advanced REST Client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo) (Chrome browser extension)

Of the various GUI clients available, Postman is probably the best option, since it allows you to save both calls and responses, is free, works on both Mac and PC, and is easy to configure.

{: .note}
A lot of times, abstract concepts don't make sense until you can contextualize them with an action. In this course, I'm following more of an "experience-first" methodology. After you do an activity, we'll explore the concepts in more depth. So if it seems like I'm glossing over concepts now, such as what a GET method is or an endpoint, hang in there. When we deep dive into these points in [Documenting API endpoints](docendpoints.html), these concepts will be a lot clearer.

{% include random_ad2.html %}

{% include content/activities/postman_request.md %}

{% include random_ad3.html %}

## Same request but in Paw instead of Postman

Although Postman is a popular REST client, you can also use others, such as Paw. The following image shows the same current weather API request made in [Paw (for Mac)](https://paw.cloud/):

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/pawexample.png" alt="Paw" />

Like Postman, Paw also allows you to easily see the request headers, response headers, URL parameters, and other data. I like that Paw shows the response in an expandable/collapsible way. The expand/collapse feature can make it easier to explore the response. Note that Paw is specific to Mac only, and like most products for Mac users, costs money.

## <i class="fa fa-user-circle"></i> Enter several requests for the Aeris API into Postman

Now let's switch APIs a bit and see some weather information from the [Aeris Weather API](https://www.aerisweather.com/), which you explored a bit in [Scenarios for using a weather API](docapis_scenario_for_using_weather_api.html#aeris). Constructing the endpoints for the Aeris Weather API is a bit more complicated since there are many different queries, filters, and other parameters you can use to configure the endpoint.

{% include random_ad1.html %}

Here are a few pre-configured requests to configure for Aeris. You can paste the requests directly into the URL request box in Postman (after customizing the `CLIENTID` AND `CLIENTSECRET` values), and the parameters will auto-populate in the parameter fields.

As with the OpenWeather Map API, the Aeris API doesn't use a Header field to pass the API keys &mdash; the key and secret are passed directly in the request URL as part of the query string.

{: .note}
When you make the following requests, insert your own values for the <code>CLIENTID</code> and <code>CLIENTSECRET</code> (assuming you retrieved them in [Get the authorization keys](docapis_get_auth_keys.html#aeris_weather_apikey)).

Get the weather forecast for your area using the [observations endpoint](https://www.aerisweather.com/support/docs/api/reference/endpoints/observations/):

```bash
http://api.aerisapi.com/observations/Santa+Clara,CA?client_id=CLIENTID&client_secret=CLIENTSECRET&limit=1
```

Get the weather from a city on the equator &mdash; Chimborazo, Ecuador using the same [observations endpoint](https://www.aerisweather.com/support/docs/api/reference/endpoints/observations/):

```bash
http://api.aerisapi.com/observations/Chimborazo,Ecuador?client_id=CLIENTID&client_secret=CLIENTSECRET&limit=1
```

Find out if all the country music in Knoxville, Tennessee is giving people migraines using the [indices endpoint](https://www.aerisweather.com/support/docs/api/reference/endpoints/indices/):

```bash
http://api.aerisapi.com/indices/migraine/Knoxville,TN?client_id=CLIENTID&client_secret=CLIENTSECRET
```

You're thinking of moving to Arizona, but you want to find a place that's cool. Use the [normals endpoint](https://www.aerisweather.com/support/docs/api/reference/endpoints/normals/):

```bash
http://api.aerisapi.com/normals/flagstaff,az?client_id=CLIENTID&client_secret=CLIENTSECRET&limit=5&filter=hassnow
```

{: .tip}
With both the OpenWeatherMap and Aeris Weather API, you can also make these requests by simply going to the URL in your address bar (because the APIs are passed in the query string rather than the header). If so, use the [JSON Formatter extension for Chrome](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) to automatically format the JSON response in the browser view.

By looking at these two different weather APIs, you can see some differences in the way the information is called and returned. However, fundamentally both APIs have endpoints that you can configure with parameters. When you make requests with the endpoints, you get responses that contain information, often in JSON format. This is the core of how REST APIs work &mdash; you send a request and get a response.

{% include image_ad_right.html %}

## Automatically import the Postman collections

Postman has a nifty import feature that will automatically pull in the same requests you've been entering. You can click the Run in Postman buttons below to automatically import these two collections into your own instance of Postman.

{% if site.format == "pdf" or site.format == "kindle" %}

To view these buttons, go to the web page for this content at [https://idratherbewriting.com/learnapidoc/docapis_postman.html](https://idratherbewriting.com/learnapidoc/docapis_postman.html).

{% elsif site.format == "web" %}

### OpenWeatherMap API collection

<div class="postman-run-button"
data-postman-action="collection/import"
data-postman-var-1="abd0d0741e8206266958"></div>
<script type="text/javascript">
  (function (p,o,s,t,m,a,n) {
    !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
    !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
      (n = o.createElement("script")),
      (n.id = s+t), (n.async = 1), (n.src = m), n
    ));
  }(window, document, "\_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>

If this button doesn't work for you, copy this [import link](https://www.getpostman.com/collections/abd0d0741e8206266958).

### Aeris Weather API collection

<div class="postman-run-button"
data-postman-action="collection/import"
data-postman-var-1="65dcddab41ff7a773bb1"></div>
<script type="text/javascript">
  (function (p,o,s,t,m,a,n) {
    !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
    !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
      (n = o.createElement("script")),
      (n.id = s+t), (n.async = 1), (n.src = m), n
    ));
  }(window, document, "\_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>

If this button doesn't work for you, copy this [import link](https://www.getpostman.com/collections/65dcddab41ff7a773bb1).

{% endif %}

Clicking the Run in Postman buttons should automatically prompt you to import the collections into Postman. If it doesn't work, copy the import link address and, in Postman, click **Import** in the upper-left corner. Then click the **Import From Link** tab, paste in the address and click **Import**.

{: .tip}
If you'd like to learn more about Postman, listen to this [interview with the Postman founder](https://idratherbewriting.com/2018/01/22/postman-for-docs-podcast/). We recorded this as part of the [Write the Docs podcast](http://podcast.writethedocs.org/) and focused on the documentation features within Postman. For more information on creating the Run in Postman buttons, see the [Run in Postman button](docapis_doc_getting_started_section.html#runinpostmanbutton) section in the [Getting started tutorial](docapis_doc_getting_started_section.html).
