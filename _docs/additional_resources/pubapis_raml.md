---
title: RAML tutorial
permalink: pubapis_raml.html
keywords: RAML
course: "Publishing REST APIs"
weight: 14.4
sidebar: docapis
section: resources
path1: resources.html
last-modified: 2018-12-23
---

RAML stands for REST API Modeling Language and is similar to the [OpenAPI specification](pubapis_openapi_tutorial_overview.html). RAML is backed by [Mulesoft](https://www.mulesoft.com/), a full-service, end-to-end API company.

Note that unless you're publishing your docs with Mulesoft or another platform that specifically requires RAML, I recommend using the [OpenAPI specification](pubapis_openapi_tutorial_overview.html) instead. However, Mulesoft offers enterprise-grade API design, management, and deployment capabilities. If you're using Mulesoft for your API, you probably want to use RAML for your documentation specification.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## RAML overview

Similar to OpenAPI, after you create a RAML file that describes your API, it can be consumed by different platforms to parse and display the information in interactive outputs. The RAML format, which uses YML syntax, is human-readable, efficient, and simple. Here's what the RAML output looks like in API Console (which is similar to Swagger UI):

<figure><img src="{{site.media}}/raml-new-console-header.png" alt="Sample API Console output with RAML" class="large" /><figcaption>Sample API Console output with RAML</figcaption></figure>

You can see a demo with the [Google Drive API](https://mulesoft.github.io/api-console/#/docs/summary).

## Auto-generating client SDK code

{% include ads.html %}

It's important to note that with these REST API specifications (as with the OpenAPI spec), you're not just describing an API to generate a nifty doc output with an interactive console. There are tools that can also generate client SDKs and other code from the spec into a library that you can integrate into your project. These tools can make it easier for developers to make requests to your API and receive responses.

{% include image_ad_right.html %}

Additionally, the interactive console can provide a way to prototype and beta test your API before developers even start coding. Mulesoft offers a "mocking service" for your API that simulates calls and responses. The idea of the mocking service is to design your API the right way from the start, without iterating with different versions as you try to get the endpoints right.

## Sample spec for OpenWeatherMap API

To understand the proper syntax and format for RAML, you need to read the [RAML spec](http://raml.org/spec.html) and look at some examples. See [this RAML tutorial](http://raml.org/docs.html) to get started.

{% include random_ad3.html %}

Here's the OpenWeatherMap API (which we've been [using in this course](docapis_scenario_for_using_weather_api.html)) formatted in the RAML spec. (I actually just used [API Transformer](https://apimatic.io/transformer) to convert my OpenAPI 3.0 spec to RAML.) As you can see, RAML is highly similar to the OpenAPI spec.

```yaml
#%RAML 1.0
title: OpenWeatherMap API
version: 2.5
baseUri: https://mocksvc.mulesoft.com/mocks/082e051b-e960-48f7-9d75-2f49af8ccd86/data/2.5/ # baseUri: http://api.openweathermap.org/data/2.5/
baseUriParameters: {}
documentation:
- title: OpenWeatherMap API
  content: 'Get the current weather, daily forecast for 16 days, and a three-hour-interval forecast for 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. **Note**: This sample Swagger file covers the `current` endpoint only from the OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the `id` parameter) will provide the most precise location results.'
securitySchemes:
  auth:
    type: Pass Through
    describedBy:
      queryParameters:
        appid:
          required: true
          displayName: appid
          description: API key to authorize requests.
          type: string
types:
  SuccessfulResponse:
    displayName: Successful response
    type: object
    properties:
      coord:
        required: false
        displayName: coord
        type: Coord
      weather:
        required: false
        displayName: weather
        description: (more info Weather condition codes)
        type: array
        items:
          type: Weather
      base:
        required: false
        displayName: base
        description: Internal parameter
        type: string
      main:
        required: false
        displayName: main
        type: Main
      visibility:
        required: false
        displayName: visibility
        description: Visibility, meter
        type: integer
        format: int32
      wind:
        required: false
        displayName: wind
        type: Wind
      clouds:
        required: false
        displayName: clouds
        type: Clouds
      rain:
        required: false
        displayName: rain
        type: Rain
      snow:
        required: false
        displayName: snow
        type: Snow
      dt:
        required: false
        displayName: dt
        description: Time of data calculation, unix, UTC
        type: integer
        format: int32
      sys:
        required: false
        displayName: sys
        type: Sys
      id:
        required: false
        displayName: id
        description: City ID
        type: integer
        format: int32
      name:
        required: false
        displayName: name
        type: string
      cod:
        required: false
        displayName: cod
        description: Internal parameter
        type: integer
        format: int32
  Coord:
    displayName: Coord
    type: object
    properties:
      lon:
        required: false
        displayName: lon
        description: City geo location, longitude
        type: number
        format: double
      lat:
        required: false
        displayName: lat
        description: City geo location, latitude
        type: number
        format: double
  Weather:
    displayName: Weather
    type: object
    properties:
      id:
        required: false
        displayName: id
        description: Weather condition id
        type: integer
        format: int32
      main:
        required: false
        displayName: main
        description: Group of weather parameters (Rain, Snow, Extreme etc.)
        type: string
      description:
        required: false
        displayName: description
        description: Weather condition within the group
        type: string
      icon:
        required: false
        displayName: icon
        description: Weather icon id
        type: string
  Main:
    displayName: Main
    type: object
    properties:
      temp:
        required: false
        displayName: temp
        description: 'Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
        type: number
        format: double
      pressure:
        required: false
        displayName: pressure
        description: Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
        type: integer
        format: int32
      humidity:
        required: false
        displayName: humidity
        description: Humidity, %
        type: integer
        format: int32
      temp_min:
        required: false
        displayName: temp_min
        description: 'Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
        type: number
        format: double
      temp_max:
        required: false
        displayName: temp_max
        description: 'Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
        type: number
        format: double
      sea_level:
        required: false
        displayName: sea_level
        description: Atmospheric pressure on the sea level, hPa
        type: number
        format: double
      grnd_level:
        required: false
        displayName: grnd_level
        description: Atmospheric pressure on the ground level, hPa
        type: number
        format: double
  Wind:
    displayName: Wind
    type: object
    properties:
      speed:
        required: false
        displayName: speed
        description: 'Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
        type: number
        format: double
      deg:
        required: false
        displayName: deg
        description: Wind direction, degrees (meteorological)
        type: integer
        format: int32
  Clouds:
    displayName: Clouds
    type: object
    properties:
      all:
        required: false
        displayName: all
        description: Cloudiness, %
        type: integer
        format: int32
  Rain:
    displayName: Rain
    type: object
    properties:
      3h:
        required: false
        displayName: 3h
        description: Rain volume for the last 3 hours
        type: integer
        format: int32
  Snow:
    displayName: Snow
    type: object
    properties:
      3h:
        required: false
        displayName: 3h
        description: Snow volume for the last 3 hours
        type: number
        format: double
  Sys:
    displayName: Sys
    type: object
    properties:
      type:
        required: false
        displayName: type
        description: Internal parameter
        type: integer
        format: int32
      id:
        required: false
        displayName: id
        description: Internal parameter
        type: integer
        format: int32
      message:
        required: false
        displayName: message
        description: Internal parameter
        type: number
        format: double
      country:
        required: false
        displayName: country
        description: Country code (GB, JP etc.)
        type: string
      sunrise:
        required: false
        displayName: sunrise
        description: Sunrise time, unix, UTC
        type: integer
        format: int32
      sunset:
        required: false
        displayName: sunset
        description: Sunset time, unix, UTC
        type: integer
        format: int32
/weather:
  get:
    displayName: Call current weather data for one location
    description: Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.
    securedBy:
    - auth
    queryParameters:
      q:
        required: false
        displayName: q
        description: '**City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes.'
        type: string
      id:
        required: false
        displayName: id
        description: "**City ID**. *Example: `2172797`*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](http://bulk.openweathermap.org/sample/). You can include multiple cities in this parameter &mdash; just separate them by commas. The limit of locations is 20. *Note: A single ID counts as a one API call. So, if you have city IDs, it's treated as 3 API calls.*"
        type: string
      lat:
        required: false
        displayName: lat
        description: '**Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with `lon`.'
        type: string
      lon:
        required: false
        displayName: lon
        description: '**Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`.'
        type: string
      zip:
        required: false
        default: 94040,us
        example: 94040,us
        displayName: zip
        description: '**Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default.'
        type: string
      units:
        required: false
        default: standard
        example:
          value: imperial
        displayName: units
        description: '**Units**. *Example: imperial*. Possible values: `metric`, `imperial`. When you do not use the `units` parameter, the format is `standard` by default.'
        type: string
        enum:
        - standard
        - metric
        - imperial
      lang:
        required: false
        default: en
        example:
          value: en
        displayName: lang
        description: '**Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`.'
        type: string
        enum:
        - ar
        - bg
        - ca
        - cz
        - de
        - el
        - en
        - fa
        - fi
        - fr
        - gl
        - hr
        - hu
        - it
        - ja
        - kr
        - la
        - lt
        - mk
        - nl
        - pl
        - pt
        - ro
        - ru
        - se
        - sk
        - sl
        - es
        - tr
        - ua
        - vi
        - zh_cn
        - zh_tw
      Mode:
        required: false
        default: json
        example:
          value: json
        displayName: Mode
        description: '**Mode**. *Example: html*. Determines the format of the response. Possible values are `xml` and `html`. If the mode parameter is empty, the format is `json` by default.'
        type: string
        enum:
        - json
        - xml
        - html
    responses:
      200:
        description: Successful response
        body:
          application/json:
            displayName: response
            description: Successful response
            type: SuccessfulResponse
      404:
        description: Not found response
        body: {}
```

RAML's specification format is highly similar to the OpenAPI spec. There's really not much point in having multiple specifications for REST APIs in the industry, so my guess is that in five years, RAML will be obsolete.

## Outputs

You can generate outputs using the RAML spec from a variety of platforms. Here are three ways:

* [Developer Portal on Anypoint platform](#anypointexchange). Choose this option if you are developing and delivering your API on Mulesoft's Anypoint platform.
* [API Console output](#apiconsole). Choose this option if you want a standalone API Console output delivered on your own server. (Note that this option also allows you to embed the console in an iframe.)
* [RAML2HTML project](#raml2html). Choose this option if you want a simple HTML output of your API documentation. No interactive console is included.

More detail about each of these options is provided in the following sections.

## Developer Portal on Anypoint platform {#anypointexchange}

[Anypoint](https://anypoint.mulesoft.com/apiplatform) is the API development platform on Mulesoft. APIs you develop with Mulesoft can be shared and viewed on their [Anypoint Exchange portal](https://www.mulesoft.com/exchange/).

The Anypoint console has a dashboard where you can work on your RAML definition, add other documentation pages (outside the spec), configure mocking services, and more. If your company already uses Mulesoft for other API development services, it would make sense to use their documentation and portal features as well. You can also export your RAML definition to OpenAPI through the Anypoint console.

<figure><img src="{{site.media}}/anypointplatform.png" alt="The UI when working with RAML definitions in the Anypoint platform" class="large" /><figcaption>The UI when working with RAML definitions in the Anypoint platform</figcaption></figure>

Note that you can add additional pages to your documentation in Anypoint. (Kudos to the Mulesoft team for recognizing that API documentation is more than just a set of reference endpoints.)

Here's what the sample OpenWeatherMap API [looks like in Anypoint Exchange](https://anypoint.mulesoft.com/exchange/18a207fd-59c5-4c64-845f-de1568e92fc5/openweathermap/1.0.0/console/types/Coord/):

<figure><a href="https://anypoint.mulesoft.com/exchange/18a207fd-59c5-4c64-845f-de1568e92fc5/openweathermap/1.0.0/console/types/Coord/"><img src="{{site.media}}/anypointexchange.png" alt="OpenWeather API documentation in Mulesoft's Anypoint Exchange" /></a><figcaption>OpenWeather API documentation in Mulesoft's Anypoint Exchange</figcaption></figure>

One of the unique options Mulesoft offers is called [API Notebook](https://api-notebook.anypoint.mulesoft.com). This is a unique tool designed by Mulesoft that allows you to provide interactive code examples that leverage your RAML spec.

{% include random_ad4.html %}

## API Console output {#apiconsole}

You can download the same code that generates the output on the Anypoint Platform and create your own interactive documentation. The standalone project (on GitHub) is called [API Console](https://github.com/mulesoft/api-console). Here's a [demo](https://idratherbewriting.com/assets/files/raml/build/index.html). Instructions for building API Console from a RAML file are available on the [api-console](https://github.com/mulesoft/api-console) project on GitHub. After you build the output, upload it to a web server and go to the index.html file.

Here's the [OpenWeather API in API Console](https://idratherbewriting.com/assets/files/raml/build/index.html):

<figure><a href="https://idratherbewriting.com/assets/files/raml/build/index.html"><img src="{{site.media}}/ramlexample.png" class="large" alt="Sample RAML output in API Console" /></a><figcaption>Sample RAML output in API Console</figcaption></figure>

You can also [embed the API console as an HTML element](https://github.com/mulesoft/api-console#embed-as-an-html-element).

{% include random_ad2.html %}

## RAML2HTML project {#raml2html}

Finally, you can also use a tool called [RAML2HTML project](http://raml2html.leanlabs.io/) to generate HTML documentation from a RAML spec. Here's [an example](http://raml2html.leanlabs.io/github) of what the RAML2HTML output looks like. It's a static HTML output without any interactivity. See the [RAML2HTML documentation](http://raml2html.leanlabs.io/documentation) for instructions on generating this output.

## Conclusion

Exploring Mulesoft in more depth is beyond the scope of this tutorial, but hopefully I've introduced you to RAML and Mulesoft. Overall, large platforms that process and display your API documentation can only do so if your documentation aligns with a spec their tools can parse. RAML provides this standard spec for the Mulesoft ecosystem of tools. Their enterprise-level API tools provide powerful capabilities for your API.
