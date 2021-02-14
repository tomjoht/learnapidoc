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
last-modified: 2020-05-10
---

Seeing the response from curl or Postman is cool, but how do you make use of the JSON data? With most API documentation, you don't need to show how to make use of JSON data. You assume that developers will use their front-end development skills to parse through the data and display it appropriately in their apps. However, to better understand how developers will access the data, we'll go through a brief tutorial to display the REST response on a web page.

* TOC
{:toc}

{% include content/activities/ajax_api_request.md %}

{% include random_ad3.html %}

## The AJAX method from jQuery

In this section, I'll explain a bit more about the `ajax` function you used earlier. This information probably isn't essential for documenting REST APIs, but it's good to understand. In the code, here's the `ajax` script:

```javascript
<script>
   var settings = {
     "async": true,
     "crossDomain": true,
     "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=APIKEY&units=imperial",
     "method": "GET"
   }

   $.ajax(settings).done(function (response) {
     console.log(response);
   });
</script>
```

(In the above code, replace `APIKEY` with your actual API key.)

If you're working with JavaScript and APIs, the [`ajax` method from jQuery](http://api.jquery.com/jquery.ajax) can be helpful with code samples. This `ajax` method takes one argument: `settings`.

```js
$.ajax(settings)
```

The `settings` argument is an object that contains a variety of key-value pairs.

```js
var settings = {
}
```

{% include image_ad_right.html %}

Each of the allowed key-value pairs is defined in [jQuery's ajax documentation](http://api.jquery.com/jquery.ajax/#jQuery-ajax-settings).

Some important values are the `url`, which is the URI or endpoint you are submitting the request to. Another value is `headers`, which allows you to include custom headers in the request.

Look at the code sample you created. The `settings` variable is passed in as the argument to the `ajax` method. jQuery makes the request to the HTTP URL asynchronously, which means it won't hang up your computer while you wait for the response. You can continue using your application while the request executes.

{% include random_ad2.html %}

You get the response by calling the method `done`.

```js
$.ajax(settings).done(function (response) {
})
```

In the earlier code sample, `done` contains an anonymous function (a function without a name) that executes when `done` is called. The response object from the `ajax` call is assigned to the `done` method's argument, which in this case is `response`. (You can name the argument whatever you want.)

You can then access the values from the response object using object notation. In this example, the response is just logged to the console.

If you're new to JavaScript, this is likely a bit fuzzy right now. If so, don't worry &mdash; code becomes clearer the more you use it.

{: .tip}
Notice how difficult it is to explain code? This is one of the challenges of developer documentation. Fortunately, you wouldn't need to explain much from standard programming languages like JavaScript. But you might need to explain how to work with your API in different languages. I cover this topic in more depth in [Code samples and tutorials](docapis_codesamples_bestpractices.html).

## Logging responses to the console

The line of code that logged the response to the console was simply this:

```js
console.log(response);
```

Logging responses to the console can be a useful way to test whether an API response is working (it's also helpful for debugging or troubleshooting your code). The console collapses each object inside an expandable section. You can inspect the payload in the console to see if contains the values you expect (without printing values to the page).

{% include random_ad.html %}

{% comment %}
You can add other information to the console log message. To preface the log message with a string, add something like this:

```js
console.log(response);
```

Strings are always enclosed inside quotation marks, and you use the plus sign `+` to concatenate strings with JavaScript variables, like `response`.

Customizing log messages is helpful if you're logging various outputs to the console and need to flag them with an identifier.
{% endcomment %}

## <i class="fa fa-user-circle"></i> Inspect the payload

Inspect the payload by expanding each of the sections [returned in the JSON console object](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html). Based on the information here, what's the forecast for today?

{: .note}
I realize the page is blank and unexciting. In the next section, [Access and print a specific JSON value](docapis_access_json_values.html), we'll pull out some values and print them to the page.
