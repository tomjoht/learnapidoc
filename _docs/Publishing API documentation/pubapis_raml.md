---
title: RAML tutorial
permalink: /pubapis_raml.html
keywords: RAML
course: "Publishing REST APIs"
weight: 5.6
sidebar: docapis
section: publishingapis
---

RAML stands for REST API Modeling Language and is similar to Swagger and other API specifications. RAML is backed by [Mulesoft](https://www.mulesoft.com/), a commercial API company, and uses a more YAML-based syntax in the specification.

Similar to Swagger, once you create a RAML file that describes your API, it can be consumed by different platforms to parse and display the information in attractive outputs. The RAML format, which uses YML syntax, tries to be human-readable, efficient, and simple.

<figure><img src="images/ramlexample.png" alt="Sample RAML output in API Console" /></a><figcaption>This is a sample RAML output in something called API Console</figcaption></figure>

## Auto-generating client SDK code

It's important to note that with these specs (not just RAML), you're not just describing an API to generate a nifty doc output with an interactive console. There are tools that can also generate client SDKs and other code from the spec into a library that you can integrate into your project. This can help developers to more easily make requests to your API and receive responses.

Additionally, the interactive console can provide a way to test out your API before developers code it. Mulesoft offers a "mocking service" for your API that simulates calls at a different baseURI. The push for using a spec is to design your API the right way from the start, without iterating with different versions as you try to get the endpoints right.

## Sample spec for Mashape Weather API

To understand the proper syntax and format for RAML, you need to read the [RAML spec](http://raml.org/spec.html) and look at some examples. See also [this RAML tutorial](http://raml.org/docs.html#step-introduction) and this [video tutorial](https://www.youtube.com/embed/5o_nExedezw?autoplay=1).

Even so, the documentation for the RAML spec isn't always so clear. For example, when I was trying to get the right syntax for the security scheme, the information was lacking on how to create security schemes that were based on a custom key in the header.

Here's the Mashape Weather API formatted in the RAML spec:

```
#%RAML 0.8
---
title: Mashape Weather API
baseUri: https://simple-weather.p.mashape.com
version: v1

/aqi:
  get:
    description: Get the air quality index (AQI). The AQI number indicates the level of pollution in the air. **Higher** numbers are worse.
    headers:
      x-mashape-key:
        displayName: Mashape key
        description: This header is used to send data that contains your mashape API key
        type: string
    queryParameters:
      lat:
        displayName: Latitude
        description: The latitude coordinate
        type: number
        required: true
        example: 37.354108
      lng:
        type: number
        description: The longitude coordinate
        required: true
        example: -121.955236
    responses:
       200:
         body:
           application/text:
            example: |
               65


/weather:
  get:
    headers:
      x-mashape-key:
        displayName: Mashape key
        description: This header is used to send data that contains your mashape API key
        type: string
    description: Gets the weather forecast for the current day
    queryParameters:
      lat:
        displayName: Latitude
        description: The latitude coordinate
        type: number
        required: true
        example: 37.354108
      lng:
        type: number
        description: The longitude coordinate
        required: true
        example: -121.955236
    responses:
       200:
         body:
           application/text:
            example: |
               28 c, Partly Cloudy at Santa Clara, United States
/weatherdata:
  get:
    headers:
      x-mashape-key:
        displayName: Mashape key
        description: This header is used to send data that contains your mashape API key
        type: string
    description: Gets a detailed weather object containing a lot of different weather information in a JSON object.
    queryParameters:
      lat:
        displayName: Latitude
        description: The latitude coordinate
        type: number
        required: true
        example: 37.354108
      lng:
        type: number
        description: The longitude coordinate
        required: true
        example: -121.955236
    responses:
       200:
         body:
           application/json:
            example: |
              {
                "query": {  
                "count": 1,
                "created": "2014-05-03T03:57:53Z",
                "lang": "en-US",
                "results": {
                "channel": {
                "title": "Yahoo! Weather - Tebrau, MY",
                "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.c/forecast/MYXX0004_c.html",
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
                  "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahocom/forecast/MYXX0004_c.html",
                  "pubDate": "Sat, 03 May 2014 11:00 am MYT",
                  "condition": {
                    "code": "28",
                    "date": "Sat, 03 May 2014 11:00 am MYT",
                    "temp": "32",
                    "text": "Mostly Cloudy"
                  },
                  "description": "\n<img src=\"http://l.yimg.com/a/i/us/we/52/28.gif\"/><br />\n<Current Conditions:</b><br />\nMostly Cloudy, 32 C<BR />\n<BR /><b>Forecast:</b><BR />\nSat - Scattered Thunderstorms. High: 32 Low: 26<br />\nSun - Thunderstorms. High: 33 Low: 27<br />\nMon - Scattered Thunderstorms. High: 32 Low: 26<br />\nTue - Thunderstorms. High: 32 Low: 26<br />\nWed - Scattered Thunderstorms. High: 32 Low: 27<br />\n<br />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Tebrau__MY/*http://weather.yahoo.com/forecast/MYXX0004_c.html\">Full Forecast at Yahoo! Weather</a><BR/><BR/>\n(provided by <a href=\"http://www.weather.com\" >The Weather Channel</a>)<br/>\n",
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
```

## Outputs

You can generate outputs using the RAML spec from a variety of platforms. Here are three ways:

 * [Developer Portal on Anypoint platform](https://anypoint.mulesoft.com/apiplatform). Choose this option if you are developing and delivering your API on Mulesoft's Anypoint platform.
 * [API Console output](https://github.com/mulesoft/api-console). Choose this option if you want a standalone API Console output delivered on your own server. (Note that this option also allows you to embed the console in an iframe.)
 * [RAML2HTML project](http://raml2html.leanlabs.io/). Choose this option if you want a simple HTML output of your API documentation. No interactive console is included.

## Deliver doc through the Anypoint Platform Developer Portal

1. Log into the [Anypoint platform](https://anypoint.mulesoft.com/apiplatform).
2. Click **APIs** on the top navigation.
3. Click **Add new API** and complete the details of the dialog box.
4. Click the API you just added.
5. In the API Definition box, click **Edit in API Designer**.
6. Input your RAML spec here (copy it from the above section), and then click **Save**.
7. Click **APIs** on the top navigation, and then click your API.
8. In the API Portal section, click **Create new portal**.
9. In the left pane, select **API Reference**.

	Note that you can add additional pages to your documentation here.

	<img src="images/addingmoreramlapiportal.png" alt="Adding additional pages" />

	(Kudos to the Mulesoft team for recognizing that API documentation is more than just a set of reference endpoints.)

	One of the options here is an API Notebook. This is a unique tool designed by Mulesoft that allows you to provide interactive code examples that leverage your RAML spec. You can read more about [API Notebooks here](https://api-notebook.anypoint.mulesoft.com/#examples).

10. Click the **Set to visible** icon (looks like an eye).
11. Click **Live Portal**.

	<img src="images/apireferenceanypoint.png" alt="AnyPoint Developer Portal" />

## Deliver doc through the API Console Project

You can also download the same code that generates the output on the Anypoint Platform and create your own API Console.

1. Download the [API Console code from Github](https://github.com/mulesoft/api-console).
2. Save your RAML file to some place locally on your computer (such as weather.raml on Desktop).
3. In the code you downloaded from Github, go to dist/index.html in your browser.

	<img src="images/apiconsoleraml.png" alt="RAML Console" />

4. Copy the RAML code you created.
5. Insert your copied code into the **Or parse RAML here** text box. Then click **Load RAML**.

	The API Console loads your RAML content:

	<img src="images/ramlloaded.png" alt="RAML loaded" />

6. To auto-load a specific RAML file, add this to the body of the index.html file:

   ```
	<div style="overflow:auto; position:relative">
	<raml-console src="examples/weather.raml"></raml-console>
	  </div>
   ```

	In this example, the RAML file is located in examples/weather.raml.

7. Remove the following line:

   ```
	  <raml-initializer></raml-initializer>
   ```

	View the file in your web browser. Note that if the file doesn't load in Chrome, open it in Firefox. Chrome tends to block local JavaScript for security reasons.

	{: .tip}
Here's a <a href="http://idratherbewriting.com.com/files/restapicourse/raml/specific.html">sample RAML API Console output</a> that integrates the weather.raml file. Here's a <a href="http://idratherbewriting.com.com/files/restapicourse/raml/examples/weather.raml">generic RAML API Console</a> that allows you to insert your own RAML spec code.

## Deliver doc through the RAML2HTML Utility

Here's [an example](http://raml2html.leanlabs.io/github) of what the RAML2HTML output looks like. It's a static HTML output without any interactivity.

To generate this kind of output:

1. Install RAML2HTML through either of these methods:
 * [Through Node](https://www.npmjs.com/package/raml2html)
 * [Through wget](http://raml2html.leanlabs.io/documentation)
2. In Terminal, enter this command:

   ```
	raml2html generate -i input_file.raml -o output_file.html
   ```

	For example, if you're already in the directory where your RAML file is (named weather.raml), and you want the output file to be named index.html, then enter this:

   ```
	raml2html generate -i weather.raml -o index.html
   ```

	Here's the result:

	<img src="images/raml2htmloutput.png" alt="RAML2HTML" />

	{: .tip}
To see this example in your browser, go to <a href="http://idratherbewriting.com/files/restapicourse/raml/examples/index.html">idratherbewriting.com.com/files/restapicourseraml/examples/index.html</a>.

## Other platforms that consume RAML and Swagger
<a href="http://studio.restlet.com">Restlet Studio</a> is another platform to check out. Restlet Studio can process either Swagger or RAML specs.

One advantage to using Restlet Studio is that it provides a form where you can assemble the needed spec by populating different form values, which theoretically should make building the RAML or Swagger file easier.

Exploring more platforms in depth is beyond the scope of this tutorial, but the concept is more or less the same. Large platforms that process and display your API documentation can only do so if your documentation aligns with a spec their tools can parse.
