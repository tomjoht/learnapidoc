---
title: "API Blueprint tutorial"
permalink: /pubapis_api_blueprint.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.7
section: publishingapis
---

Just as Swagger defines a spec for describing a REST API, API Blueprint is another spec (which you can [read here](https://github.com/apiaryio/api-blueprint/blob/master/API%20Blueprint%20Specification.md)). If you describe your API with this blueprint, then different tools can read and display the information.

The API Blueprint spec is written in a Markdown-flavored syntax. It's not normal Markdown, but it has a lot of the same, familiar Markdown syntax. However, the blueprint is clearly a very specific schema that is either valid or not valid based on the element names, order, spacing, and other details. In this way, it's not nearly as flexible or forgiving as pure Markdown. But it may be preferable to YAML.

## Sample blueprint

Here's a sample blueprint to give you an idea of the syntax:

```
FORMAT: 1A
HOST: http://polls.apiblueprint.org/

# test

Polls is a simple API allowing consumers to view polls and vote in them.

# Polls API Root [/]

This resource does not have any attributes. Instead it offers the initial
API affordances in the form of the links in the JSON body.

It is recommend to follow the “url” link values,
[Link](https://tools.ietf.org/html/rfc5988) or Location headers where
applicable to retrieve resources. Instead of constructing your own URLs,
to keep your client decoupled from implementation details.

## Retrieve the Entry Point [GET]

+ Response 200 (application/json)

        {
            "questions_url": "/questions"
        }

## Group Question

Resources related to questions in the API.

## Question [/questions/{question_id}]

A Question object has the following attributes:

+ question
+ published_at - An ISO8601 date when the question was published.
+ url
+ choices - An array of Choice objects.

+ Parameters
    + question_id: 1 (required, number) - ID of the Question in form of an integer

### View a Questions Detail [GET]

+ Response 200 (application/json)

        {
            "question": "Favourite programming language?",
            "published_at": "2014-11-11T08:40:51.620Z",
            "url": "/questions/1",
            "choices": [
                {
                    "choice": "Swift",
                    "url": "/questions/1/choices/1",
                    "votes": 2048
                }, {
                    "choice": "Python",
                    "url": "/questions/1/choices/2",
                    "votes": 1024
                }, {
                    "choice": "Objective-C",
                    "url": "/questions/1/choices/3",
                    "votes": 512
                }, {
                    "choice": "Ruby",
                    "url": "/questions/1/choices/4",
                    "votes": 256
                }
            ]
        }

## Choice [/questions/{question_id}/choices/{choice_id}]

+ Parameters
    + question_id: 1 (required, number) - ID of the Question in form of an integer
    + choice_id: 1 (required, number) - ID of the Choice in form of an integer

### Vote on a Choice [POST]

This action allows you to vote on a question's choice.

+ Response 201

    + Headers

            Location: /questions/1

## Questions Collection [/questions{?page}]

+ Parameters
    + page: 1 (optional, number) - The page of questions to return

### List All Questions [GET]

+ Response 200 (application/json)

    + Headers

            Link: </questions?page=2>; rel="next"

    + Body

            [
                {
                    "question": "Favourite programming language?",
                    "published_at": "2014-11-11T08:40:51.620Z",
                    "url": "/questions/1",
                    "choices": [
                        {
                            "choice": "Swift",
                            "url": "/questions/1/choices/1",
                            "votes": 2048
                        }, {
                            "choice": "Python",
                            "url": "/questions/1/choices/2",
                            "votes": 1024
                        }, {
                            "choice": "Objective-C",
                            "url": "/questions/1/choices/3",
                            "votes": 512
                        }, {
                            "choice": "Ruby",
                            "url": "/questions/1/choices/4",
                            "votes": 256
                        }
                    ]
                }
            ]

### Create a New Question [POST]

You may create your own question using this action. It takes a JSON
object containing a question and a collection of answers in the
form of choices.

+ question (string) - The question
+ choices (array[string]) - A collection of choices.

+ Request (application/json)

        {
            "question": "Favourite programming language?",
            "choices": [
                "Swift",
                "Python",
                "Objective-C",
                "Ruby"
            ]
        }

+ Response 201 (application/json)

    + Headers

            Location: /questions/2

    + Body

            {
                "question": "Favourite programming language?",
                "published_at": "2014-11-11T08:40:51.620Z",
                "url": "/questions/2",
                "choices": [
                    {
                        "choice": "Swift",
                        "url": "/questions/2/choices/1",
                        "votes": 0
                    }, {
                        "choice": "Python",
                        "url": "/questions/2/choices/2",
                        "votes": 0
                    }, {
                        "choice": "Objective-C",
                        "url": "/questions/2/choices/3",
                        "votes": 0
                    }, {
                        "choice": "Ruby",
                        "url": "/questions/2/choices/4",
                        "votes": 0
                    }
                ]
            }
```

For a tutorial on the blueprint syntax, see this [Apiary tutorial](https://apiary.io/blueprint) or [this tutorial on Github](https://github.com/apiaryio/api-blueprint/blob/master/Tutorial.md).

You can find [examples of different blueprints here](https://github.com/apiaryio/api-blueprint/tree/master/examples). The examples can often clarify different aspects of the spec.

## Parsing the blueprint

There are many tools that can parse an API blueprint. [Drafter](https://github.com/apiaryio/drafter) is one of the main parsers of the Blueprint. Many other tools build on Drafter and generate static HTML outputs of the blueprint. For example, [aglio](https://github.com/danielgtaylor/aglio) can parse a blueprint and generate static HTML files.

For a more comprehensive list of tools, see the [Tooling](https://apiblueprint.org/#tooling) section on apiblueprint.org. (Some of these tools require quite a few prerequisites, so I omitted the tutorial steps here for generating the output on your own machineapio.)

## Create a sample HTML output using API Blueprint and Apiary

For this tutorial, we'll use a platform called Apiary to read and display the API Blueprint. Apiary is just a hosted platform that will remove the need for installing local libraries and utilities to generate the output.

### a. Create a new Apiary project

1. Go to [apiary.io](https://apiary.io/) and click **Quick start with Github**. Sign in with your Github account. (If you don't have a Github account, create one first.)
2. Sign up for a free hacker account and create a new project.

	You'll be placed in the API Blueprint editor.

	<img src="images/apiaryblueprinteditor.png" alt="API Blueprint editor" />

	By default the Polls blueprint is loaded so you can see how it looks. This blueprint gives you an example of the required format for the Apiary tool to parse and display the content. You can also see the [raw file here](https://raw.githubusercontent.com/apiaryio/api-blueprint/master/examples/Polls%20API.md).

3. At this point, you would start describing your API using the blueprint syntax in the editor. When you make a mistake, error flags indicate what's wrong.

	You can [read the Apiary tutorial](https://apiary.io/blueprint) and structure your documentation in the blueprint format. The syntax seems to accommodate different methods applied to the same resources.

	For this tutorial, you'll integrate the Mashape weather API information info formatted in the blueprint format.

4. Copy the following code, which aligns with the API Blueprint spec, and paste it into the Apiary blueprint editor.

   ```
	FORMAT: 1A
	HOST: https://simple-weather.p.mashape.com

	# Weather API

	Display Weather forecast data by latitude and longitude. Get raw weather data OR simple label description of weather forecast of some places.

	# Weather API Root [/]

	# Group Weather

	Resources related to weather in the API.

	## Weather data [/weatherdata{?lat,lng}]

	### Get the weather data [GET]

	Get the weather data in your area.

	+ Parameters
	    + lat: 55.749792 (required, number) - Latitude
	    + lng: 37.632495 (required, number) - Longitude

	+ Request JSON Message

	    + Headers

	            X-Mashape-Authorization: APIKEY
	            Accept: text/plain

	+ Response 200 (application/json)

	    + Body

	            [
	                {
	              "query": {
	                "count": 1,
	                "created": "2014-05-03T03:57:53Z",
	                "lang": "en-US",
	                "results": {
	                  "channel": {
	                    "title": "Yahoo! Weather - Tebrau, MY",
	                    "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.com/forecast/MYXX0004_c.html",
	                    "description": "Yahoo! Weather for Tebrau, MY",
	                    "language": "en-us",
	                    "lastBuildDate": "Sat, 03 May 2014 11:00 am MYT",
	                    "ttl": "60",
	                    "location": {
	                      "city": "Tebrau",
	                      "country": "Malaysia",
	                      "region": ""
	                    },
	                    "units": {
	                      "distance": "km",
	                      "pressure": "mb",
	                      "speed": "km/h",
	                      "temperature": "C"
	                    },
	                    "wind": {
	                      "chill": "32",
	                      "direction": "170",
	                      "speed": "4.83"
	                    },
	                    "atmosphere": {
	                      "humidity": "66",
	                      "pressure": "982.05",
	                      "rising": "0",
	                      "visibility": "9.99"
	                    },
	                    "astronomy": {
	                      "sunrise": "6:57 am",
	                      "sunset": "7:06 pm"
	                    },
	                    "image": {
	                      "title": "Yahoo! Weather",
	                      "width": "142",
	                      "height": "18",
	                      "link": "http://weather.yahoo.com",
	                      "url": "http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"
	                    },
	                    "item": {
	                      "title": "Conditions for Tebrau, MY at 11:00 am MYT",
	                      "lat": "1.58",
	                      "long": "103.74",
	                      "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.com/forecast/MYXX0004_c.html",
	                      "pubDate": "Sat, 03 May 2014 11:00 am MYT",
	                      "condition": {
	                        "code": "28",
	                        "date": "Sat, 03 May 2014 11:00 am MYT",
	                        "temp": "32",
	                        "text": "Mostly Cloudy"
	                      },
	                      "description": "\n<img src=\"http://l.yimg.com/a/i/us/we/52/28.gif\"/><br />\n<b>Current Conditions:</b><br />\nMostly Cloudy, 32 C<BR />\n<BR /><b>Forecast:</b><BR />\nSat - Scattered Thunderstorms. High: 32 Low: 26<br />\nSun - Thunderstorms. High: 33 Low: 27<br />\nMon - Scattered Thunderstorms. High: 32 Low: 26<br />\nTue - Thunderstorms. High: 32 Low: 26<br />\nWed - Scattered Thunderstorms. High: 32 Low: 27<br />\n<br />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.com/forecast/MYXX0004_c.html\">Full Forecast at Yahoo! Weather</a><BR/><BR/>\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)<br/>\n",
	                      "forecast": [
	                        {
	                          "code": "38",
	                          "date": "3 May 2014",
	                          "day": "Sat",
	                          "high": "32",
	                          "low": "26",
	                          "text": "Scattered Thunderstorms"
	                        },
	                        {
	                          "code": "4",
	                          "date": "4 May 2014",
	                          "day": "Sun",
	                          "high": "33",
	                          "low": "27",
	                          "text": "Thunderstorms"
	                        },
	                        {
	                          "code": "38",
	                          "date": "5 May 2014",
	                          "day": "Mon",
	                          "high": "32",
	                          "low": "26",
	                          "text": "Scattered Thunderstorms"
	                        },
	                        {
	                          "code": "4",
	                          "date": "6 May 2014",
	                          "day": "Tue",
	                          "high": "32",
	                          "low": "26",
	                          "text": "Thunderstorms"
	                        },
	                        {
	                          "code": "38",
	                          "date": "7 May 2014",
	                          "day": "Wed",
	                          "high": "32",
	                          "low": "27",
	                          "text": "Scattered Thunderstorms"
	                        }
	                      ],
	                      "guid": {
	                        "isPermaLink": "false",
	                        "content": "MYXX0004_2014_05_07_7_00_MYT"
	                      }
	                    }
	                  }
	                }
	              }
	            }
	            ]

   ```

	{: .note}
If the code isn't easy to copy and paste, you can [view and download the file here](http://idratherbewriting.com/files/publishingapidocs/apiblueprintweatherdata.md).

5. Click **Save and Publish**.

### b. Interact with the API on Apiary

In the Apiary's top navigation, click **Documentation**. Then interact with the API on Apiary by clicking **Switch to Console**. Call the resources and view the responses.

You can switch between an Example and a Console view in the documentation. The Example view shows pre-built responses. The Console view allows you to enter your own values and generate dynamic responses based on your own API key. This dual display &mdash; both the Example and the Console views &mdash; might align better with user needs:

* For users who might not have good data or might not want to make requests that would affect their data, they can view the Example.
* For users who want to see how the API specifically returns their data, or certain parameters, they can use the Console view.
