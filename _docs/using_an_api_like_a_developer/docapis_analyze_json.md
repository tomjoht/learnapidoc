---
title: Analyze the JSON response
permalink: docapis_analyze_json.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.7
sidebar: docapis
section: likeadeveloper
path1: likeadeveloper.html
last-modified: 2019-01-01
---

JSON is the most common format for responses from REST APIs. Let's look at the JSON response for the OpenWeatherMap weather endpoint in more depth, distinguishing between arrays and objects in JSON.

* TOC
{:toc}

## JSON response from OpenWeatherMap weather endpoint

JSON stands for JavaScript Object Notation. It's the most common way REST APIs return information. Although some APIs return information in both JSON and XML, if you're trying to parse through the response and render it on a web page, JSON fits much better into the existing JavaScript + HTML + CSS technology that powers most web pages. With JavaScript, you can easily parse through the JSON and integrate it into your web content.

The unminified response from the OpenWeatherMap weather endpoint looks like this:

```json
{
  "coord": {
    "lon": -121.96,
    "lat": 37.35
  },
  "weather": [
    {
      "id": 801,
      "main": "Clouds",
      "description": "few clouds",
      "icon": "02d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 70.14,
    "pressure": 1012,
    "humidity": 33,
    "temp_min": 62.6,
    "temp_max": 75.2
  },
  "visibility": 16093,
  "wind": {
    "speed": 14.99,
    "deg": 330
  },
  "clouds": {
    "all": 20
  },
  "dt": 1522619760,
  "sys": {
    "type": 1,
    "id": 479,
    "message": 0.0058,
    "country": "US",
    "sunrise": 1522590707,
    "sunset": 1522636288
  },
  "id": 420006397,
  "name": "Santa Clara",
  "cod": 200
}
```

We'll analyze the information structures within JSON responses in the following sections.

{% include random_ad2.html %}

## JSON objects are key-value pairs

JSON has two types of basic structures: objects and arrays. An object is a collection of key-value pairs, surrounded by curly braces:

```json
{
  "key1": "value1",
  "key2": "value2"
}
```

The key-value pairs are each put into double quotation marks when both are strings. If the value is an integer (a whole number) or Boolean (true or false value), omit the quotation marks around the value. Each key-value pair is separated from the next by a comma.

{% include image_ad_right.html %}

## JSON arrays are lists of items

{% include random_ad4.html %}

An array is a list of items, surrounded by brackets:

```json
["first", "second", "third"]
```

The list of items can contain strings, numbers, booleans, arrays, or other objects. With integers or booleans, you don't use quotation marks.

Integers:

```json
[1, 2, 3]
```

Booleans:

```json
[true, false, true]
```

## Including objects in arrays, and arrays in objects

JSON can mix up objects and arrays inside each other. You can have an array of objects:

```
[
  object,
  object,
  object
]
```

Here's an example with values:

```json
[  
   {  
      "name":"Tom",
      "age":39
   },
   {  
      "name":"Shannon",
      "age":37
   }
]
```

And objects can contain arrays in the value part of the key-value pair:

```json
{
"children": ["Avery","Callie","lucy","Molly"],
"hobbies": ["swimming","biking","drawing","horseplaying"]
}
```

{% include ads.html %}

Just remember, objects are enclosed by curly braces `{ }` and contain key-value pairs. Sometimes those values are arrays. Arrays are lists and are enclosed by square brackets `[ ]`. It's common for arrays to contain lists of objects, and for objects to contain arrays.

{: .tip}
It's important to understand the difference between objects and arrays because it determines how you access and display the information. Later exercises with dot notation will require you to understand this difference.

## <i class="fa fa-user-circle"></i> Examine the weather response

Look at the response from the `weather` endpoint of the OpenWeatherMap weather API. Where are the objects? Where are the arrays? Which objects are nested? Which values are booleans versus strings?

{% include random_ad3.html %}

## More information

For more information on understanding the structure of JSON, see [json.com](https://www.json.com/).
