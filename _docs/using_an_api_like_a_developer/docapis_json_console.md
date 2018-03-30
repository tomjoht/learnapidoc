---
title: Use the JSON from the response payload
permalink: /docapis_json_console.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.8
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
---

Seeing the response from curl or Postman is cool, but how do you make use of the JSON data? With most API documentation, you don't need to show how to make use of JSON data. You assume that developers will use their front-end development skills to parse through the data and display it appropriately in their apps.

However, to better understand how developers will access the data, we'll go through a brief tutorial to display the REST response on a web page.

* TOC
{:toc}

## Display part of the REST JSON response on a web page

Mashape [provides some sample code in unirest](https://docs.rapidapi.com/v1.0/docs/unirest) to parse and display the REST response on a web page. You could use the code, but you could also use some auto-generated jQuery code from Postman to do pretty much the same thing. We'll use regular jQuery in this sample.

1.  Start with a basic HTML template with jQuery referenced, like this:

    ```html
    <html>
    <head>
    <title>Sample Page</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    </head>
    <body>

    </body>
    </html>
    ```

    Save your file with a name such as weatherdata.html.

2.  Open Postman and click the request to the `weatherdata` endpoint that you [configured earlier](docapis_postman.html).
3.  Click the **Code** button.

    <img src="images/postmangeneratecodesnippet.png" class="medium" alt="Generate code snippet" />

4.  Select **JavaScript > jQuery AJAX**.

    <img src="images/postmancodesnippet.png"  class="medium" alt="JavaScript Ajax code snippet" />

5.  Copy the code sample.

    ```js
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.3710062&lng=-122.0375935",
      "method": "GET",
      "headers": {
        "accept": "application/json",
        "x-mashape-key": "EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p",
        "cache-control": "no-cache",
        "postman-token": "e41085c0-de85-0002-53ea-b64558309c68"
      }
     }

    $.ajax(settings).done(function (response) {
      console.log(response);
    });
    ```

6.  Insert the Postman code sample between `<script>` tags in the same template you started building in step 1.

    You can put the script in the `head` section if you want &mdash; just make sure you add it after the jQuery reference.

7.  The Postman code sample needs one more parameter: `datatype`. Add `"datatype": "json"` as parameter in `settings`. Otherwise the object returned will be shown in text format rather than JSON.

    Your final code should look like this:

    ```html
    <html>
    <head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    </head>
    <title>Sample Page</title>
    <script>
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.3710062&lng=-122.0375935",
      "method": "GET",
      "dataType": "json",
      "headers": {
        "accept": "application/json",
        "x-mashape-key": "EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p",
        "cache-control": "no-cache",
        "postman-token": "e41085c0-de85-0002-53ea-b64558309c68"
       }
     }

    $.ajax(settings).done(function (response) {
      console.log(response);
    });
    </script>
    <body>
      <h3>Open the Web Console to see the object returned.</h3>
    </body>
    </html>
    ```

    {: .tip}
    You can view the file here: [idratherbewriting.com/learnapidoc/assets/files/weatherdata-plain.html](http://idratherbewriting.com/learnapidoc/assets/files/weatherdata-plain.html)

8.  Normally, I would recommend using Chrome. But Chrome's security settings block JavaScript on local files, so use Firefox instead. Start Firefox and open the Web Console by going to **Tools > Web Developer > Web Console**.
9.  Open the weatherdata.html file in the browser by going to **File > Open File**.

    The page body will be blank, but the weatherdata response should be logged to the web console. You can inspect the payload by expanding the sections.

    <a href="http://idratherbewriting.com/learnapidoc/assets/files/weatherdata-plain.html"><img src="images/firefoxwebconsole.png" alt="JSON payload from weatherdata API logged to console" /></a>

    If you want to use Chrome instead, use the web instance of the file [here](http://idratherbewriting.com/learnapidoc/assets/files/weatherdata-plain.html) and open the JS Console by going to **View > Developer > JavaScript Console**. It will look as follows:

    <a href="http://idratherbewriting.com/learnapidoc/assets/files/weatherdata-plain.html"><img src="images/jsonpayloadweatherdata.png" alt="JSON payload from weatherdata API logged to console" /></a>

    Note that Chrome tells you whether each expandable section is an object or an array. Knowing this is critical to accessing the value through JavaScript dot notation.

    The following sections will explain this AJAX code a bit more.

{% include random_ad.html %}

## The AJAX method from jQuery

Probably the most useful method to know for showing code samples is the [`ajax` method from jQuery](http://api.jquery.com/jquery.ajax).

In brief, this `ajax` method takes one argument: `settings`.

```js
$.ajax(settings)
```

The `settings` argument is an object that contains a variety of key-value pairs. Each of the allowed key-value pairs is defined in [jQuery's ajax documentation](http://api.jquery.com/jquery.ajax/#jQuery-ajax-settings).

Some important values are the `url`, which is the URI or endpoint you are submitting the request to. Another value is `headers`, which allows you to include custom headers in the request.

Look at the code sample you created. The `settings` variable is passed in as the argument to the `ajax` method. jQuery makes the request to the HTTP URL asynchronously, which means it won't hang up your computer while you wait for the response. You can continue using your application while the request executes.

You get the response by calling the method `done`. In the preceding code sample, `done` contains an anonymous function (a function without a name) that executes when `done` is called.

The response object from the `ajax` call is assigned to the `done` method's argument, which in this case is `response`. (You can name the argument whatever you want.)

You can then access the values from the response object using object notation. In this example, the response is just logged to the console.

This is likely a bit fuzzy right now, but it will become more clear with an example in the next section.

## Logging responses to the console

The piece of code that logged the response to the console was simply this:

```js
console.log(response);
```

Logging responses to the console is one of the most useful ways to test whether an API response is working (it's also helpful for debugging or troubleshooting your code). The console collapses each object inside its own expandable section. This allows you to inspect the payload.

You can add other information to the console log message. To preface the log message with a string, add something like this:

```js
console.log("Here's the response: " + response);
```

Strings are always enclosed inside quotation marks, and you use the plus sign `+` to concatenate strings with JavaScript variables, like `response`.

Customizing log messages is helpful if you're logging various things to the console and need to flag them with an identifier.

{% include activity.html %}

Inspect [the payload](http://idratherbewriting.com/learnapidoc/assets/files/weatherdata-plain.html) by expanding each of the sections returned in the JSON console object. Find the section that appears here: **object > query > results > channel > item > description.** Based on the information here, what's the forecast for today?

{: .note}
In the next section, [Access and print a specific JSON value](docapis_access_json_values.html), we'll pull out this value and print it to the page.
