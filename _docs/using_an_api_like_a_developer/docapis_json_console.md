---
title: Inspect the JSON from the response payload
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

For this activity, we'll use JavaScript to display the response on a web page. You can use some auto-generated jQuery code from Postman to create the code.

1.  Start with a basic HTML template with jQuery referenced, like this:

    ```html
    <html>
    <meta charset="UTF-8">
      <head>
          <title>Sample page</title>
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      </head>
    <body>
      <h1>Sample page</h2>

    </body>
    </html>
    ```

    Save your file with a name such as weather.html.

2.  Open Postman and click the request to the `weather` endpoint that you [configured earlier](docapis_postman.html).
3.  Click the **Code** link (below the Save button), and then select **JavaScript > jQuery AJAX**.

    <img src="images/postmanjqueryajax.png" class="medium" alt="JavaScript Ajax code snippet" />

5.  Copy **Copy to Clipboard** to copy the code sample. It should look like this:

    ```js
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "http://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial",
      "method": "GET",
      "headers": {
        "cache-control": "no-cache",
        "postman-token": "e9be9756-b922-89b3-7109-66bc4cf06b17"
      }
    }

    $.ajax(settings).done(function (response) {
      console.log(response);
    });
    ```

6.  In the same template you started building in step 1, add a pair of `<script></script>` tags below the jQuery script, and then insert the Postman code inside the new `script` tags.

    You can put the script in the `head` section if you want &mdash; just make sure you add the script after the jQuery reference.

7.  In the jQuery code, remove the headers that Postman inserts:

    ```
    "headers": {
      "cache-control": "no-cache",
      "postman-token": "e9be9756-b922-89b3-7109-66bc4cf06b17"
    }
    ```

    Your final code should look like this:

    ```html
    <!DOCTYPE html>
    <html>
       <meta charset="UTF-8">
       <head>
          <meta charset="UTF-8">
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <title>Sample Page</title>
          <script>
             var settings = {
               "async": true,
               "crossDomain": true,
               "url": "http://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial",
               "method": "GET"
             }

             $.ajax(settings).done(function (response) {
               console.log(response);
             });
          </script>
       </head>
       <body>
          <h1>Sample Page</h1>
       </body>
    </html>
    ```

    {: .tip}
    You can view the file here: [idratherbewriting.com/learnapidoc/assets/files/weather-plain.html](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html)

8.  Start **Firefox** and open the Web Console by going to **Tools > Web Developer > Web Console**. (Normally, I would recommend using Chrome. But Chrome's security settings block JavaScript on local files, so use Firefox instead.)
9.  Open the **weather.html** file in the browser by going to **File > Open File**.

    The page body will be blank, but the weather response should be logged to the web console. You can inspect the payload by expanding the object. Here's what it looks like expanded in Firefox:

    <a class="noCrossRef" href="https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html"><img src="images/firefoxwebconsole.png" alt="JSON payload from weather API logged to console" /></a>

    If you want to use Chrome instead, go to the web location the file [here](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html) and open the JS Console by going to **View > Developer > JavaScript Console**. If you expand the object returned to the console, it will look as follows:

    <a class="noCrossRef" href="https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html"><img src="images/jsonpayloadweather.png" alt="JSON payload from weather API logged to console" /></a>

    Note that Chrome tells you whether each expandable section is an object or an array. Knowing this is important to accessing the value through JavaScript dot notation.

    The following sections will explain this AJAX code a bit more.

{% include random_ad2.html %}

## The AJAX method from jQuery

In this section, I'll explain a bit more about the `ajax` function you used earlier. This information probably isn't essential for documenting REST APIs, but it's good to understand it. To recap, here's the `ajax` script:

```javascript
<script>
   var settings = {
     "async": true,
     "crossDomain": true,
     "url": "http://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial",
     "method": "GET"
   }

   $.ajax(settings).done(function (response) {
     console.log(response);
   });
</script>
```

If you're working with JavaScript and APIs, probably the most useful method to know for showing code samples is the [`ajax` method from jQuery](http://api.jquery.com/jquery.ajax). In brief, this `ajax` method takes one argument: `settings`.

```js
$.ajax(settings)
```

The `settings` argument is an object that contains a variety of key-value pairs.

```js
var settings = {
}
```

Each of the allowed key-value pairs is defined in [jQuery's ajax documentation](http://api.jquery.com/jquery.ajax/#jQuery-ajax-settings).

Some important values are the `url`, which is the URI or endpoint you are submitting the request to. Another value is `headers`, which allows you to include custom headers in the request.

Look at the code sample you created. The `settings` variable is passed in as the argument to the `ajax` method. jQuery makes the request to the HTTP URL asynchronously, which means it won't hang up your computer while you wait for the response. You can continue using your application while the request executes.

You get the response by calling the method `done`.

```js
$.ajax(settings).done(function (response) {
})
```
In the earlier code sample, `done` contains an anonymous function (a function without a name) that executes when `done` is called. The response object from the `ajax` call is assigned to the `done` method's argument, which in this case is `response`. (You can name the argument whatever you want.)

You can then access the values from the response object using object notation. In this example, the response is just logged to the console.

This is likely a bit fuzzy right now, but it will become more clear with an example in the next section.

{: .tip}
Notice how difficult it is to explain code? This is one of the challenges of developer documentation. Fortunately, you wouldn't need to explain much from standard programming languages like JavaScript. But you might need to explain how to work with your API in different languages. I cover this topic in more depth in [Code samples and tutorials](docapis_codesamples_bestpractices.html).

## Logging responses to the console

The piece of code that logged the response to the console was simply this:

```js
console.log(response);
```

Logging responses to the console is one of the most useful ways to test whether an API response is working (it's also helpful for debugging or troubleshooting your code). The console collapses each object inside its own expandable section. This allows you to inspect the payload.

{% include random_ad.html %}

You can add other information to the console log message. To preface the log message with a string, add something like this:

```js
console.log("Here's the response: " + response);
```

Strings are always enclosed inside quotation marks, and you use the plus sign `+` to concatenate strings with JavaScript variables, like `response`.

Customizing log messages is helpful if you're logging various things to the console and need to flag them with an identifier.

{% include activity.html %}

Inspect the payload by expanding each of the sections [returned in the JSON console object](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html). Based on the information here, what's the forecast for today?

{: .note}
I realize the page is blank and unexciting. In the next section, [Access and print a specific JSON value](docapis_access_json_values.html), we'll pull out some values and print them to the page.
