---
title: Access and print a specific JSON value
permalink: /docapis_access_json_values.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.9
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
---

In the tutorial for [logging the `weatherdata` response to the JS Console](/learnapidoc/assets/files/weatherdata-plain.html) (from the previous tutorial, [Use the JSON from the response payload](docapis_json_console.html)), the REST response information didn't appear on the page. It only appeared in the JS Console. You need to use dot notation to access the JSON values you want.

{: .note}
This section will use a little bit of JavaScript. You probably wouldn't use this code very much for documentation, but it's important to know anyway.

* TOC
{:toc}

## Getting a specific property from a JSON response object

Let's say you wanted to pull out the `description` part of the JSON response. Here's the dot notation you would use:

```
response.query.results.channel.item.description
```

The dot (`.`) after `response` (the name of the JSON payload) is how you access the values you want from the JSON object. JSON wouldn't be very useful if you had to always print out the entire response. Instead, you select the exact element you want and pull that out through dot notation.

To pull out the description element from the JSON response and display it on the page, add this to your code sample, right below the `console.log(response)` line:

```js
console.log(response.query.results.channel.item.description);
```

Your code should look like this:

```js
.done(function (response) {
  console.log(response);
  console.log (response.query.results.channel.item.description);
});
```

Refresh your Chrome browser and see the information that appears in the console:

<img src="images/weatherdatapartlycloudy.png" alt="Weather description that gets pulled out through dot notation" />

{% include random_ad.html %}

## Printing a JSON value to the page

Let's say you wanted to print part of the JSON (the description element) to the page. This involves a little bit of JavaScript or jQuery (to make it easier).

I'm assuming you're starting with the [same code](/learnapidoc/assets/files/weatherdata-plain.html) from the [previous tutorial &mdash; Use the JSON from the response payload](docapis_json_console.html). That code looks like this:

```html
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
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
</head>
<h1>Sample Page</h1>
<body>
  <h3>Open the JS Console (View > Developer > JavaScript Console) to see the object returned.</h3>
</body>
</html>
```

To write a specific property to the page, modify your code to look like this:

```html
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
 var settings = {
   "async": true,
   "crossDomain": true,
   "dataType": "json",
   "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
   "method": "GET",
   "headers": {
   "accept": "application/json",
   "x-mashape-key": "APIKEY"
   }
 }

$.ajax(settings).done(function (response) {
 console.log(response);

 var content = response.query.results.channel.item.description;
 $("#weatherDescription").append(content);
});
 </script>
 <title>Sample Page</title>
</head>
<body>
  <h1>Sample Page</h1>

<div id="weatherDescription"></div>

</body>
</html>
```

You can view the result here: <a href="/learnapidoc/assets/files/weatherdata-forecast.html">/learnapidoc/assets/files/weatherdata-forecast.html</a>.

(Note: I think the content in the API's `description` element has some formatting that isn't quite right, but the code is correct here.)

Here's what we changed:

We added a named element to the body of the page, like this:

```html
<div id="weatherDescription"></div>
 ```

Inside the tags of the `done` method, we pulled out the value we want into a variable, like this:

```js
var content = response.query.results.channel.item.description;
```

Below this same section, we used the [jQuery `append` method](http://api.jquery.com/append/) to append the `content` variable to the element with the `weatherDescription` ID on the page:

```js
$("#weatherDescription").append(content);
```

This code basically says, find the element with the ID `weatherDescription` and append the `content` variable to it.
