---
title: "Access and print a specific JSON value"
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

This tutorial continues from the previous topic, [Inspect the JSON from the response payload](docapis_json_console.html). In the [sample page](http://idratherbewriting.com/learnapidoc/assets/files/weatherdata-plain.html) where you logged the `weather` response to the JS Console, the REST response information didn't appear on the page. It only appeared in the JS Console. You need to use dot notation and JavasCript to access the JSON values you want. In this tutorial, you'll use a bit of JavaScript to print some of the response to the page.

{: .note}
This section will use a little bit of JavaScript. You probably wouldn't use this code very much for documentation, but it's important to know anyway.

* TOC
{:toc}

## Getting a specific property from a JSON response object

JSON wouldn't be very useful if you had to always print out the entire response. Instead, you select the exact property you want and pull that out through dot notation. The dot (`.`) after `response` (the name of the JSON payload, as defined (arbitrarily) in the jQuery AJAX function) is how you access the values you want from the JSON object.

Let's say you wanted to pull out the wind speed part of the JSON response. Here's the dot notation you would use:

```
response.wind.speed
```

To pull out the wind speed element from the JSON response and print it to the JavaScript Console, add this to your code sample (which you created in the [previous tutorial](docapis_analyze_json.html)), right below the `console.log(response)` line:

```js
console.log("wind speed: " + response.wind.speed);
```

Your code should look like this:

```js
$.ajax(settings).done(function (response) {
  console.log(response);
  console.log("wind speed: " + response.wind.speed);
});
```

Refresh your Chrome browser and see the information that appears in the console:

```
wind speed: 13.87
```

{% include random_ad.html %}

## Printing a JSON value to the page

Let's say you wanted to print part of the JSON (the wind speed data) to the page (not just the console). This involves a little bit of JavaScript or jQuery (to make it easier).

I'm assuming you're starting with the [same code](http://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html) from the [previous tutorial](docapis_json_console.html). That code looks like this:

```html
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
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

To print a specific property from the response to the page, modify your code to look like this:

```html
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
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

           var content = response.wind.speed;
           $("#windSpeed").append(content);

         });
      </script>
   </head>
   <body>
      <h1>Sample Page</h1>
      <div id="windSpeed">Wind speed: </div>
   </body>
</html>
```

You can view the result here: <a href="http://idratherbewriting.com/learnapidoc/assets/files/weather-windspeed.html">idratherbewriting.com/learnapidoc/assets/files/weather-windspeed.html</a>.

{% include random_ad2.html %}

Here's what we changed:

We added a named element to the body of the page, like this:

```html
<div id="windSpeed">Wind speed: </div>
 ```

Inside the tags of the AJAX `done` method, we pulled out the value we want into a variable, like this:

```js
var content = response.wind.speed;
```

Below this same section, we used the [jQuery `append` method](http://api.jquery.com/append/) to append the `content` variable to the element with the `windSpeed` ID on the page:

```js
$("#windSpeed").append(content);
```

This code says to find the element with the ID `windSpeed` and append the `content` variable to it.

## Get the value from an array

In the previous section, you retrieved a value from a JSON object. Now let's get a value from an array. Let's get the `main` property from the `weather` array in the response. Here's what the JSON array looks like:

```json
{
  "weather": [
    {
      "id": 801,
      "main": "Clouds",
      "description": "few clouds",
      "icon": "02d"
    }
  ]
]
}
```

Remember that brackets signify an array. Inside the `weather` array is an unnamed object. To get the `main` element from this array, you would use the following dot notation:

```
response.weather[0].main
```

Then you would follow the same pattern as before to print it to the page. Although objects allow you to get a specific property, arrays require you to select the position in the list that you want.

## More exercises

If you'd like to follow some more exercises that involve calling REST APIs, accessing specific values, and printing them to the page, see the following topics in Resources:

* [Get event information using the EventBrite API](docapis_eventbrite_example.html)
* [Flickr example: Retrieve a Flickr gallery](docapis_flickr_example.html)
* [Get wind speed using the Aeris Weather API](docapis_aerisweather_example.html)
