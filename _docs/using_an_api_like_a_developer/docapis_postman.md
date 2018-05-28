---
title: Submit requests through Postman
permalink: /docapis_postman.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.2
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
---

When you're testing endpoints with different parameters, you can use one of the many GUI REST clients available to make the requests. You can also use [curl](docapis_install_curl.html) (which we'll cover soon), but GUI clients tend to simplify testing with REST APIs.

* TOC
{:toc}

## Why use a GUI client

With a GUI REST client, you can:

*  Save your requests (and numerous variations) in a way that's easy to run again
*  More easily enter information in the right format
*  See the response in a prettified JSON view or a raw format
*  Easily include header information

Using a GUI REST client, you won't have to worry about getting curl syntax right and analyzing requests and responses from the command line.

## Common GUI clients

Some popular GUI clients include the following:

* [Postman](http://www.getpostman.com/)
* [Paw](https://luckymarmot.com/paw)
* [Advanced REST Client](https://chrome.google.com/webstore/detail/advanced-rest-client/hgmloofddffdnphfgcellkdfbfbjeloo) (Chrome browser extension)
* [REST Console](https://chrome.google.com/webstore/detail/rest-console/cokgbflfommojglbmbpenpphppikmonn)

Of the various GUI clients available, Postman is probably the best option, since it allows you to save both calls and responses, is free, works on both Mac and PC, and is easy to configure.

{: .note}
A lot of times abstract concepts don't make sense until you can contextualize them with some kind of action. In this course, I'm following more of an act-first-then-understand type of methodology. After you do an activity, we'll explore the concepts in more depth. So if it seems like I'm glossing over concepts things now, like what a GET method is or a endpoint, hang in there. When we deep dive into these points later, things will be a lot clearer.

{% include random_ad2.html %}

## Make a request in Postman

In this exercise, you'll make a REST call using OpenWeatherMap's [current weather data API endpoint](https://openweathermap.org/current).

1.  If you haven't already done so, download and install the Postman app at [http://www.getpostman.com](https://www.getpostman.com/). If you're on a Mac, choose the Mac app. If you're on Windows, choose the Windows app.
2.  Start the Postman app.
3.  Select **GET** for the method. (This is the default.)
4.  Insert the endpoint into the box next to GET: `http://api.openweathermap.org/data/2.5/weather`.
5.  Click the **Params** button (to the right of the box where you inserted the endpoint) 3 parameters:

    * `zip: 95050`
    * `units: imperial`
    * `appid: {your api key}`

    Customize the `zip` and `appid` values to your own zip code and [OpenWeatherMap API key](docapis_get_auth_keys.html). Your Postman UI should look like this:

    <img src="images/postmanopenweatherapi.png" class="medium"/>

	  When you add these parameters, they will dynamically be added as a query string to the endpoint URI. For example, your endpoint will now look like this: `http://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial` (but with different query string values). Query string parameters appear after the question mark `?` symbol and are separated ampersands `&`. The order of query string parameters doesn't matter.

    Many APIs pass the API key in the header rather than as a query string parameter in the request URL. If that were the case, you would click the **Headers** tab (below the GET button) and insert the required key-value pairs in the header.

7.  Click **Send**.

	  The response appears in the lower window. For example:

    <img src="images/postmanopenweatherapiresponse.png" class="medium"/>

{% include random_ad.html %}

## Save the request

1.  In Postman, click the **Save** button (next to Send).
1.  In the Save Request dialog box, in the **Request Name** box at the top of the dialog box, type a friendly name for the request, such as "Current weather for 95050."
3.  Next to **Or create new collection**, create a new collection by typing the collection name in the box, such as OpenWeatherMap. Collections are simply groups to organize your saved requests.

    Your Postman collection should look something like this:

    <img src="images/postmancollectiondialog.png" class="small"/>

4.  Click **Save.**

Saved endpoints appear in the left side pane under Collections.

## Make a request for the OpenWeatherMap 5 day forecast

Enter details into Postman for the [5 day forecast](https://openweathermap.org/forecast5). You can click a new tab, or click the arrow next to Save and choose **Save As**. Then choose your collection and request name.

The 5 day forecast request looks like this:

```bash
http://api.openweathermap.org/data/2.5/forecast?zip=95050&appid=APIKEY&units=imperial
```

(In the above code, replace out `APIKEY` with your own API key.)

## Same request but in Paw instead of Postman

For the sake of variety with GUI clients, here's the same call made in [Paw (for Mac)](https://paw.cloud/):

<img src="images/pawexample.png" alt="Paw" />

Like Postman, Paw also allows you to easily see the request headers, response headers, URL parameters, and other data. I like that Paw shows the response in an expandable/collapsible way. This can make it easier to explore the response. Note that Paw is specific to Mac only, and like most products for Mac users, costs money.

## Enter several requests for the Aeris API into Postman

Now let's switch APIs a bit and see some weather information from the [Aeris Weather API](https://www.aerisweather.com/), which you explored a bit in [Scenarios for using a weather API](docapis_scenario_for_using_weather_api.html). Constructing the endpoints for the Aeris Weather API is a bit more complicated since there are many different queries, filters, and other parameters you can use to configure the endpoint.

Here are a few pre-configured requests to configure for Aeris. You can just paste the requests directly into the URL request box in Postman, and the parameters will auto-populate in the parameter fields.

As with the OpenWeather Map API, the Aeris API doesn't use a Header field to pass the API keys &mdash; the key and secret are passed directly in the request URL as part of the query string.

{: .note}
When you make the following requests, insert your own values for the <code>CLIENTID</code> and <code>CLIENTSECRET</code> (assuming you requested them in [Get the authorization keys](docapis_get_auth_keys.html)). If you don't have a client ID or secret, you can use my keys [here](http://idratherbewriting.com/learnapidoc/assets/files/apikeys.txt).

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
With both the OpenWeatherMap and Aeris Weather API, you can also make these requests by simply going to the URL in your address bar (because the APIs are passed in the query string rather than the header). Use the [JSON Formatter plugin for Chrome](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) to automatically format the JSON response.

By looking at these two different weather APIs, you can see some differences in the way the information is called and returned. However, fundamentally both APIs have endpoints that you can configure with parameters. When you make requests with the endpoints, you get responses that contain information, often in JSON format. This is the core of how REST APIs work &mdash; you send a request and get a response.

## Automatically import the Postman collections

Postman has a nifty import feature that will automatically pull in the same requests you've been entering. You can click the Run in Postman buttons below to automatically import these two collections into your own instance of Postman.

{% if site.format == "pdf" or site.format == "kindle" %}

To view these buttons, go to the web page for this content at [http://idratherbewriting.com/learnapidoc/docapis_postman.html](http://idratherbewriting.com/learnapidoc/docapis_postman.html).

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

Clicking the Run in Postman buttons should automatically prompt you to import the content into Postman. If it doesn't work, copy the import link address and, in Postman, click **Import** in the upper-left corner. Then click the **Import from link** tab, paste in the address, and then click **Import**.

{: .tip}
If you'd like to learn more about Postman, listen to this [interview with the Postman founder](https://idratherbewriting.com/2018/01/22/postman-for-docs-podcast/). We recorded this as part of the [Write the Docs podcast](http://podcast.writethedocs.org/), focusing on the documentation features within Postman.
