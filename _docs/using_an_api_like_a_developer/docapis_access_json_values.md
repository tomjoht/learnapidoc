---
title: "Access and print a specific JSON value"
permalink: docapis_access_json_values.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.9
sidebar: docapis
section: likeadeveloper
path1: likeadeveloper.html
last-modified: 2020-06-27
---

This tutorial continues from the previous topic, [Inspect the JSON from the response payload](docapis_json_console.html). In the [sample page](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html) where you logged the `weather` response to the JS Console, the REST response information didn't appear on the page. It only appeared in the JS Console. You need to use dot notation and JavaScript to access the JSON values you want. In this tutorial, you'll use JavaScript to print some of the response to the page.

Note that this section will use a little bit of JavaScript. Depending on your role, you might not use this code much in your documentation, but it's important to know anyway.

* TOC
{:toc}

## Getting a specific property from a JSON response object

JSON wouldn't be very useful if you always had to print out the entire response. Instead, you select the exact property you want and pull that out through dot notation. The dot (`.`) after `response` (the name of the JSON payload, as defined arbitrarily in the jQuery AJAX function) is how you access the values you want from the JSON object.

{% include random_ad2.html %}

As an example, this is the full response from the [request made previously](docapis_analyze_json.html):

```json
{
  "coord": {
    "lon": -121.95,
    "lat": 37.35
  },
  "weather": [
    {
      "id": 802,
      "main": "Clouds",
      "description": "scattered clouds",
      "icon": "03d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 68.34,
    "pressure": 1014,
    "humidity": 73,
    "temp_min": 63,
    "temp_max": 72
  },
  "visibility": 16093,
  "wind": {
    "speed": 3.36
  },
  "clouds": {
    "all": 40
  },
  "dt": 1566664878,
  "sys": {
    "type": 1,
    "id": 5122,
    "message": 0.0106,
    "country": "US",
    "sunrise": 1566653501,
    "sunset": 1566701346
  },
  "timezone": -25200,
  "id": 0,
  "name": "Santa Clara",
  "cod": 200
}
```

In our [scenario](docapis_scenario_for_using_weather_api.html) (creating a biking app), we want to pull out the wind speed part of the JSON response. Here's the dot notation you use:

```js
response.wind.speed
```

To pull out the wind speed element from the JSON response and print it to the JavaScript Console, add this to your code sample (which you created in the [previous tutorial](docapis_analyze_json.html)), right below the `console.log(response)` line:

```js
console.log("wind speed: " + response.wind.speed);
```

{% include random_ad3.html %}

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

{% include ads.html %}

## Printing a JSON value to the page

Let's say you wanted to print part of the JSON (the wind speed data) to the page, not just the console. (By "print," I mean make the value appear on the page, not send it to a printer.) Printing the value involves a little bit of JavaScript (or jQuery to make it easier).

{% include random_ad4.html %}

I'm assuming you're starting with the [same code](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html) from the [previous tutorial](docapis_json_console.html). That code looks like this:

```html
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <title>Sample Page</title>
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
   </head>
   <body>
      <h1>Sample Page</h1>
   </body>
</html>
```

(In the above code, replace `APIKEY` with your actual API key.)

To print a specific property from the response to the page,

1.  Add the following inside the `ajax` function:

    <pre>
    $.ajax(settings).done(function (response) {
    console.log(response);

    <span class="red">var content = response.wind.speed;
    $("#windSpeed").append(content);
    </span>
    });
    </pre>

    Your code should look as follows:

    ```html
    <!DOCTYPE html>
    <html>
       <head>
          <meta charset="utf-8">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <title>Sample Page</title>
          <script>
             var settings = {
               "async": true,
               "crossDomain": true,
               "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=APIKEY&units=imperial",
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
    (In the above code, replace `APIKEY` with your actual API key.)

2.  Refresh the page and you will see the wind speed printed to the page. Here's [an example](https://idratherbewriting.com/learnapidoc/assets/files/weather-windspeed.html) with both wind speed and weather conditions.

Here's what we changed:

Inside the tags of the AJAX `done` method, we pulled out the value we wanted into a variable, like this:

```js
var content = response.wind.speed;
```

Then we added a named element to the body of the page, like this:

```html
<div id="windSpeed">Wind speed: </div>
 ```

We used the [jQuery `append` method](http://api.jquery.com/append/) to append the `content` variable to the element with the `windSpeed` ID on the page:

```js
$("#windSpeed").append(content);
```

This code says to find the element with the ID `windSpeed` and add the `content` variable after it.

{% include image_ad_right.html %}

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

```js
response.weather[0].main
```

Then you would follow the same pattern as before to print it to the page. While objects allow you to get a specific property, arrays require you to select the position in the list that you want.

Here's the code from the [sample page](https://idratherbewriting.com/learnapidoc/assets/files/weather-windspeed.html):

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<title>Sample Page</title>

<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=APIKEY&units=imperial",
  "method": "GET"
}

$.ajax(settings).done(function (response) {
  console.log(response);

  var content = response.wind.speed;
  $("#windSpeed").append(content);

  var currentWeather = response.weather[0].main;
  $("#currentWeather").append(currentWeather);

});
</script>
</head>
<body>
<h1>Sample Page</h1>

<div id="windSpeed">Wind speed: </div>
<div id="currentWeather">Current weather conditions: </div>

</body>
</html>
```

(In the above code, replace `APIKEY` with your actual API key.)

## More exercises

If you'd like to follow some more exercises that involve calling REST APIs, accessing specific values, and printing the values to the page, see the following topics in the [Glossary and resources](resources.html) section:

* [Get event information using the Eventbrite API](docapis_eventbrite_example.html)
* [Flickr example: Retrieve a Flickr gallery](docapis_flickr_example.html)
* [Get wind speed using the Aeris Weather API](docapis_aerisweather_example.html)
