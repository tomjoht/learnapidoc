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
---

You'll notice that in the main content display of the weatherdata code, the REST response information didn't appear. It only appeared in the JavaScript Console. You need to use dot notation to access the JSON values you want.

{: .note}
This section will use a tiny bit of JavaScript. You probably wouldn't use this code very much for documentation, but it's important to know anyway.

Let's say you wanted to pull out the `description` part of the JSON response. Here's the dot notation you would use:

```
data.query.results.channel.item.description
```

The dot (`.`) after `data` (the name of the JSON payload) is how you access the values you want from the JSON object. JSON wouldn't be very useful if you had to always print out the entire response. Instead, you select the exact element you want and pull that out through dot notation.

To pull out the description element from the JSON response and display it on the page, add this to your code sample, right below the `console.log(response)` line:

```js
console.log(data.query.results.channel.item.description);
```

Your code should look like this:

```js
  .done(function (data) {
    console.log(data);
    console.log (data.query.results.channel.item.description);
  });
```

Refresh your Chrome browser and see the information that appears in the console:

<img src="images/weatherdatapartlycloudy.png" alt="Weather description that gets pulled out through dot notation" />

## Printing a JSON value to the page

Let's say you wanted to print part of the JSON (the description element) to the page. This involves a little bit of JavaScript or jQuery (to make it easier).

{% include random_ad.html %}

1. Add a named element to the body of your page, like this:

   ```html
    <div id="weatherDescription"></div>
   ```

2. Inside the tags of your `done` method, pull out the value you want into a variable, like this:

   ```js
    var content = "data.query.results.channel.item.description";
   ```

3. Below this (same section) use the jQuery `append` method to append the variable to the element on your page:

   ```js
    $("#weatherDescription").append(content);
   ```

    This code says, find the element with the ID `weatherDescription` and append the `content` variable to it.

    Your entire code should look as follows:

   ```html
    <html>
    <body>

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

    $.ajax(settings)

    .done(function (response) {
      console.log(response);

      var content = response.query.results.channel.item.description;
      $("#weatherDescription").append(content);
    });
    </script>

    <div id="weatherDescription"></div>
    </body>
    </html>
   ```

    Here's the result:

    <img src="images/weatherdatabrowserdisplay.png" alt="Printing JSON to the page" />

    Now change the display to access the wind speed instead.
