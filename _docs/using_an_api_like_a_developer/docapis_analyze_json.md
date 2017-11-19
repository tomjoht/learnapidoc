---
title: Analyze the JSON response
permalink: /docapis_analyze_json.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.7
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
---

JSON is the most common format for responses from REST APIs. Let's look at the JSON response for the Mashape weatherdata endpoint in more depth.

* TOC
{:toc}

## JSON response from weatherdata endpoint

The minified response from curl looks like this:

```json
{"query":{"count":1,"created":"2015-06-03T16:24:26Z","lang":"en-US","results":{"channel":{"title":"Yahoo! Weather - Santa Clara, CA","link":"http://us.rd.yahoo.com/dailynews/rss/weather/Santa_Clara__CA/*http://weather.yahoo.com/forecast/USCA1018_c.html","description":"Yahoo! Weather for Santa Clara, CA","language":"en-us","lastBuildDate":"Wed, 03 Jun 2015 8:52 am PDT","ttl":"60","location":{"city":"Santa Clara","country":"United States","region":"CA"},"units":{"distance":"km","pressure":"mb","speed":"km/h","temperature":"C"},"wind":{"chill":"16","direction":"0","speed":"0"},"atmosphere":{"humidity":"67","pressure":"1014.8","rising":"0","visibility":"16.09"},"astronomy":{"sunrise":"5:46 am","sunset":"8:23 pm"},"image":{"title":"Yahoo! Weather","width":"142","height":"18","link":"http://weather.yahoo.com","url":"http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"},"item":{"title":"Conditions for Santa Clara, CA at 8:52 am PDT","lat":"37.35","long":"-121.95","link":"http://us.rd.yahoo.com/dailynews/rss/weather/Santa_Clara__CA/*http://weather.yahoo.com/forecast/USCA1018_c.html","pubDate":"Wed, 03 Jun 2015 8:52 am PDT","condition":{"code":"30","date":"Wed, 03 Jun 2015 8:52 am PDT","temp":"16","text":"Partly Cloudy"},"description":"\n<img src=\"http://l.yimg.com/a/i/us/we/52/30.gif\"/><br />\n<b>Current Conditions:</b><br />\nPartly Cloudy, 16 C<BR />\n<BR /><b>Forecast:</b><BR />\nWed - AM Clouds/PM Sun. High: 22 Low: 13<br />\nThu - AM Clouds/PM Sun. High: 22 Low: 13<br />\nFri - AM Clouds/PM Sun. High: 24 Low: 14<br />\nSat - AM Clouds/PM Sun. High: 24 Low: 15<br />\nSun - Partly Cloudy. High: 26 Low: 16<br />\n<br />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Santa_Clara__CA/*http://weather.yahoo.com/forecast/USCA1018_c.html\">Full Forecast at Yahoo! Weather</a><BR/><BR/>\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)<br/>\n","forecast":[{"code":"30","date":"3 Jun 2015","day":"Wed","high":"22","low":"13","text":"AM Clouds/PM Sun"},{"code":"30","date":"4 Jun 2015","day":"Thu","high":"22","low":"13","text":"AM Clouds/PM Sun"},{"code":"30","date":"5 Jun 2015","day":"Fri","high":"24","low":"14","text":"AM Clouds/PM Sun"},{"code":"30","date":"6 Jun 2015","day":"Sat","high":"24","low":"15","text":"AM Clouds/PM Sun"},{"code":"30","date":"7 Jun 2015","day":"Sun","high":"26","low":"16","text":"Partly Cloudy"}],"guid":{"isPermaLink":"false","content":"USCA1018_2015_06_07_7_00_PDT"}}}}}}
```

It's not very readable (by humans), so we can use a [JSON formatter tool](http://jsonformatter.curiousconcept.com/) to "prettify" it:

```json
{  
   "query":{  
      "count":1,
      "created":"2015-06-03T16:24:26Z",
      "lang":"en-US",
      "results":{  
         "channel":{  
            "title":"Yahoo! Weather - Santa Clara, CA",
            "link":"http://us.rd.yahoo.com/dailynews/rss/weather/Santa_Clara__CA/*http://weather.yahoo.com/forecast/USCA1018_c.html",
            "description":"Yahoo! Weather for Santa Clara, CA",
            "language":"en-us",
            "lastBuildDate":"Wed, 03 Jun 2015 8:52 am PDT",
            "ttl":"60",
            "location":{  
               "city":"Santa Clara",
               "country":"United States",
               "region":"CA"
            },
            "units":{  
               "distance":"km",
               "pressure":"mb",
               "speed":"km/h",
               "temperature":"C"
            },
            "wind":{  
               "chill":"16",
               "direction":"0",
               "speed":"0"
            },
            "atmosphere":{  
               "humidity":"67",
               "pressure":"1014.8",
               "rising":"0",
               "visibility":"16.09"
            },
            "astronomy":{  
               "sunrise":"5:46 am",
               "sunset":"8:23 pm"
            },
            "image":{  
               "title":"Yahoo! Weather",
               "width":"142",
               "height":"18",
               "link":"http://weather.yahoo.com",
               "url":"http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"
            },
            "item":{  
               "title":"Conditions for Santa Clara, CA at 8:52 am PDT",
               "lat":"37.35",
               "long":"-121.95",
               "link":"http://us.rd.yahoo.com/dailynews/rss/weather/Santa_Clara__CA/*http://weather.yahoo.com/forecast/USCA1018_c.html",
               "pubDate":"Wed, 03 Jun 2015 8:52 am PDT",
               "condition":{  
                  "code":"30",
                  "date":"Wed, 03 Jun 2015 8:52 am PDT",
                  "temp":"16",
                  "text":"Partly Cloudy"
               },
               "description":"\n<img src=\"http://l.yimg.com/a/i/us/we/52/30.gif\"/><br />\n<b>Current Conditions:</b><br />\nPartly Cloudy, 16 C<BR />\n<BR /><b>Forecast:</b><BR />\nWed - AM Clouds/PM Sun. High: 22 Low: 13<br />\nThu - AM Clouds/PM Sun. High: 22 Low: 13<br />\nFri - AM Clouds/PM Sun. High: 24 Low: 14<br />\nSat - AM Clouds/PM Sun. High: 24 Low: 15<br />\nSun - Partly Cloudy. High: 26 Low: 16<br />\n<br />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Santa_Clara__CA/*http://weather.yahoo.com/forecast/USCA1018_c.html\">Full Forecast at Yahoo! Weather</a><BR/><BR/>\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)<br/>\n",
               "forecast":[  
                  {  
                     "code":"30",
                     "date":"3 Jun 2015",
                     "day":"Wed",
                     "high":"22",
                     "low":"13",
                     "text":"AM Clouds/PM Sun"
                  },
                  {  
                     "code":"30",
                     "date":"4 Jun 2015",
                     "day":"Thu",
                     "high":"22",
                     "low":"13",
                     "text":"AM Clouds/PM Sun"
                  },
                  {  
                     "code":"30",
                     "date":"5 Jun 2015",
                     "day":"Fri",
                     "high":"24",
                     "low":"14",
                     "text":"AM Clouds/PM Sun"
                  },
                  {  
                     "code":"30",
                     "date":"6 Jun 2015",
                     "day":"Sat",
                     "high":"24",
                     "low":"15",
                     "text":"AM Clouds/PM Sun"
                  },
                  {  
                     "code":"30",
                     "date":"7 Jun 2015",
                     "day":"Sun",
                     "high":"26",
                     "low":"16",
                     "text":"Partly Cloudy"
                  }
               ],
               "guid":{  
                  "isPermaLink":"false",
                  "content":"USCA1018_2015_06_07_7_00_PDT"
               }
            }
         }
      }
   }
}
```

You can also use tools to prettify JSON directly in the curl response. See [this Stack Overflow thread](https://stackoverflow.com/questions/352098/how-can-i-pretty-print-json-in-a-unix-shell-script) for details. For example, if you have Python installed, you can simply pipe in a parameter (`python -m json.tool`) in your curl request like this to prettify the response:

```
curl -X POST --header "Content-Type: application/json" --header "Accept: application/json" -d @mypet.json "http://petstore.swagger.io/v2/pet" | python -m json.tool
```

## JSON is how most REST APIs structure the response

JSON stands for JavaScript Object Notation. It's the most common way REST APIs return information. Through JavaScript, you can easily parse through the JSON and display it on a web page.

Although some APIs return information in both JSON and XML, if you're trying to parse through the response and render it on a web page, JSON fits much better into the existing JavaScript + HTML toolset that powers most web pages.

{% include random_ad.html %}

JSON has two types of basic structures: objects and arrays.

## JSON objects are key-value pairs

An object is a collection of key-value pairs, surrounded by curly braces:

```json
{
  "key1": "value1",
  "key2": "value2"
}
```

The key-value pairs are each put into double quotation marks when both are strings. If the value is an integer (a whole number) or Boolean (true or false value), you omit the quotation marks around the value.

Each key-value pair is separated from the next by a comma (except for the last pair).

## JSON arrays are lists of items

An array is a list of items, surrounded by brackets:

```json
["first", "second", "third"]
```

The list of items can contain strings, numbers, booleans, arrays, or other objects.

With integers or booleans, you don't use quotation marks.

```json
[1, 2, 3]
```

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

Just remember, objects are surrounded with curly braces `{ }` and contain key-value pairs. Sometimes those values are arrays. Arrays are lists and are surrounded with square brackets `[ ]`.

{: .tip}
It's important to understand the difference between objects and arrays because it determines how you access and display the information. Later exercises with dot notation will require you to understand this.

{% include activity.html %}

Look at the response from the `weatherdata` endpoint of the weather API. Where are the objects? Where are the arrays?

It's common for arrays to contain lists of objects, and for objects to contain arrays.

## More information

For more information on understanding the structure of JSON, see [json.com](https://www.json.com/).
