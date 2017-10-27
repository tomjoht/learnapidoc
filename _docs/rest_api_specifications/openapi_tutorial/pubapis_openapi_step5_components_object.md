---
title: "OpenAPI tutorial: step 5"
permalink: /pubapis_openapi_step5_components_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.265
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="5" map="content/openapi_tutorial_map.html"  %}

The `schema` refers to the model of an object, such as the data type, the content, the hierarchy, and so on. Describing the schema of complex responses can be the most challenging part of the spec, and while our Mashape API is simple, the response from the `weatherdata` endpoint is on the complex side.

Think of the `components` object like an appendix where the details are provided. You don't want to clutter up your spec with all the gory details of response and request schemas, so you bury this information in the `components` object. If multiple parts of your spec have the same schema, you can point the multiple references to the same object in your `components` object, and in so doing single source the content.

Before we describe the response, let me display the `weatherdata` response again as a reminder. This response contains multiple nested objects at various levels of hierarchy.

```json
{
  "query": {
    "count": 1,
    "created": "2017-10-26T02:04:45Z",
    "lang": "en-US",
    "results": {
      "channel": {
        "units": {
          "distance": "km",
          "pressure": "mb",
          "speed": "km/h",
          "temperature": "C"
        },
        "title": "Yahoo! Weather - Sunnyvale, CA, US",
        "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-91990359/",
        "description": "Yahoo! Weather for Sunnyvale, CA, US",
        "language": "en-us",
        "lastBuildDate": "Wed, 25 Oct 2017 07:04 PM PDT",
        "ttl": "60",
        "location": {
          "city": "Sunnyvale",
          "country": "United States",
          "region": " CA"
        },
        "wind": {
          "chill": "82",
          "direction": "305",
          "speed": "17.70"
        },
        "atmosphere": {
          "humidity": "33",
          "pressure": "33999.36",
          "rising": "0",
          "visibility": "25.91"
        },
        "astronomy": {
          "sunrise": "7:26 am",
          "sunset": "6:18 pm"
        },
        "image": {
          "title": "Yahoo! Weather",
          "width": "142",
          "height": "18",
          "link": "http://weather.yahoo.com",
          "url": "http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif"
        },
        "item": {
          "title": "Conditions for Sunnyvale, CA, US at 06:00 PM PDT",
          "lat": "37.377499",
          "long": "-122.04686",
          "link": "http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-91990359/",
          "pubDate": "Wed, 25 Oct 2017 06:00 PM PDT",
          "condition": {
            "code": "32",
            "date": "Wed, 25 Oct 2017 06:00 PM PDT",
            "temp": "28",
            "text": "Sunny"
          },
          "forecast": [
            {
              "code": "32",
              "date": "25 Oct 2017",
              "day": "Wed",
              "high": "31",
              "low": "15",
              "text": "Sunny"
            },
            {
              "code": "32",
              "date": "26 Oct 2017",
              "day": "Thu",
              "high": "30",
              "low": "17",
              "text": "Sunny"
            },
            {
              "code": "32",
              "date": "27 Oct 2017",
              "day": "Fri",
              "high": "30",
              "low": "15",
              "text": "Sunny"
            },
            {
              "code": "34",
              "date": "28 Oct 2017",
              "day": "Sat",
              "high": "25",
              "low": "12",
              "text": "Mostly Sunny"
            },
            {
              "code": "30",
              "date": "29 Oct 2017",
              "day": "Sun",
              "high": "21",
              "low": "11",
              "text": "Partly Cloudy"
            },
            {
              "code": "28",
              "date": "30 Oct 2017",
              "day": "Mon",
              "high": "20",
              "low": "11",
              "text": "Mostly Cloudy"
            },
            {
              "code": "30",
              "date": "31 Oct 2017",
              "day": "Tue",
              "high": "21",
              "low": "10",
              "text": "Partly Cloudy"
            },
            {
              "code": "30",
              "date": "01 Nov 2017",
              "day": "Wed",
              "high": "21",
              "low": "10",
              "text": "Partly Cloudy"
            },
            {
              "code": "30",
              "date": "02 Nov 2017",
              "day": "Thu",
              "high": "18",
              "low": "10",
              "text": "Partly Cloudy"
            },
            {
              "code": "28",
              "date": "03 Nov 2017",
              "day": "Fri",
              "high": "18",
              "low": "10",
              "text": "Mostly Cloudy"
            }
          ],
          "description": "<![CDATA[<img src=\"http://l.yimg.com/a/i/us/we/52/32.gif\"/>\n<BR />\n<b>Current Conditions:</b>\n<BR />Sunny\n<BR />\n<BR />\n<b>Forecast:</b>\n<BR /> Wed - Sunny. High: 31Low: 15\n<BR /> Thu - Sunny. High: 30Low: 17\n<BR /> Fri - Sunny. High: 30Low: 15\n<BR /> Sat - Mostly Sunny. High: 25Low: 12\n<BR /> Sun - Partly Cloudy. High: 21Low: 11\n<BR />\n<BR />\n<a href=\"http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-91990359/\">Full Forecast at Yahoo! Weather</a>\n<BR />\n<BR />\n<BR />\n]]>",
          "guid": {
            "isPermaLink": "false"
          }
        }
      }
    }
  }
}
```

There are a couple of ways to go about describing this. You could create one long description like this:

```yaml
components:
  schemas:
    WeatherdataResponse:
      title: weatherdata response
      type: object
      properties:
        query:
          type: object
          properties:
            count:
              type: integer
              description: The number of items (rows) returned -- specifically, the number of sub-elements in the results property
              format: int32
              example: 1
            created:
              type: string
              description: The date and time the response was created
              example: 6/14/2017 2:30:14 PM
            lang:
              type: string
              description: The locale for the response
              example: en-US
            results:
              type: object
              properties:
                channel:
                  type: object
                  properties:
                    units:
                      description: Units for various aspects of the forecast. Note that the default is to use metric formats for the units (Celsius, kilometers, millibars, kilometers per hour).
                      Units:
                        description: Units for various aspects of the forecast. Note that the default is to use metric formats for the units (Celsius, kilometers, millibars, kilometers per hour).
                        type: object
                        properties:
                          distance:
                            type: string
                            description: Units for distance, mi for miles or km for kilometers
                            example: km
                          pressure:
                            type: string
                            description: Units of barometric pressure, "in" for pounds per square inch or "mb" for millibars.
                            example: mb
                          speed:
                            type: string
                            description: Units of speed, "mph" for miles per hour or "kph" for kilometers per hour.
                            example: km/h
                          temperature:
                            type: string
                            description: Degree units, "f" for Fahrenheit or "c" for Celsius.
                            example: C

                    title:
                      type: string
                      description: The title of the feed, which includes the location city
                      example: Yahoo! Weather - Singapore, South West, SG

                    link:
                      type: string
                      description: The URL for the Weather page of the forecast for this location
                      example: http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-91792352/

                    description:
                      type: string
                      description: The overall description of the feed including the location
                      example: Yahoo! Weather for Singapore, South West, SG

                    language:
                      type: string
                      description: The language of the weather forecast
                      example: en-us

                    lastBuildDate:
                      type: string
                      description: The last time the feed was updated. The format is in the date format defined by [RFC822 Section 5](http://www.rfc-editor.org/rfc/rfc822.txt).
                      example: Wed, 14 Jun 2017 10:30 PM SGT

                    ttl:
                      type: string
                      description: Time to Live -- how long in minutes this feed should be cached.
                      example: 60

                    location:
                      description: The location of this forecast
                      type: object
                      properties:
                        city:
                          type: string
                          description: City name
                          example: Singapore
                        country:
                          type: string
                          description: Two-character country code
                          example: Singapore
                        region:
                          type: string
                          description: State, territory, or region, if given
                          example: South West

                    wind:
                      description: Forecast information about wind
                      type: object
                      properties:
                        chill:
                          type: integer
                          description: Wind chill in degrees
                          format: int32
                          example: 81
                        direction:
                          type: integer
                          description: Wind direction, in degrees
                          format: int32
                          example: 158
                        speed:
                          type: integer
                          description: Wind speed, in the units specified in the speed attribute of the units element (mph or kph)
                          format: int32

                    atmosphere:
                      description: Forecast information about current atmospheric pressure, humidity, and visibility
                      type: object
                      properties:
                        humidity:
                          type: integer
                          description: humidity, in percent
                          format: int32
                          example: 87
                        pressure:
                          type: integer
                          description: Barometric pressure, in the units specified by the pressure attribute of the yweather:units element ("in" or "mb").
                          format: int32
                        rising:
                          type: integer
                          description: 'State of the barometric pressure: steady (0), rising (1), or falling (2).'
                          format: int32
                          example: 0
                        visibility:
                          type: integer
                          description: Visibility, in the units specified by the distance attribute of the units element ("mi" or "km"). Note that the visibility is specified as the actual value * 100. For example, a visibility of 16.5 miles will be specified as 1650. A visibility of 14 kilometers will appear as 1400.
                          format: int32

                    astronomy:
                      description: Forecast information about current astronomical conditions
                      type: object
                      properties:
                        sunrise:
                          type: string
                          description: Today's sunrise time. The time is a string in a local time format of "h:mm am/pm"
                          example: 6:59 am
                        sunset:
                          type: string
                          description: Today's sunset time. The time is a string in a local time format of "h:mm am/pm"
                          example: 7:11 pm

                    image:
                      description: The image used to identify this feed
                      type: object
                      properties:
                        title:
                          type: string
                          description: The title of the image.
                          example: Yahoo! Weather
                        width:
                          type: string
                          description: The width of the image, in pixels
                          example: 142
                        height:
                          type: string
                          description: The height of the image, in pixels
                          example: 18
                        link:
                          type: string
                          description: Description of link
                          example: http://weather.yahoo.com
                        url:
                          type: string
                          description: The URL of Yahoo! Weather
                          example: http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif

                    item:
                      description: The item element contains current conditions and forecast for the given location. There are multiple weather forecast elements for today and tomorrow.
                      type: object
                      properties:
                        title:
                          type: string
                          description: The forecast title and time.
                          example: Conditions for Singapore, South West, SG at 09:00 PM SGT
                        lat:
                          type: string
                          description: The latitude of the location.
                          example: 1.33464
                        long:
                          type: string
                          description: The longitude of the location.
                          example: 103.726471
                        link:
                          type: string
                          description: The Yahoo! Weather URL for this forecast.
                          example: http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-91792352/
                        pubDate:
                          type: string
                          description: The date and time this forecast was posted, in the date format defined by [RFC822 Section 5](http://www.rfc-editor.org/rfc/rfc822.txt).
                          example: Wed, 14 Jun 2017 09:00 PM SGT
                        condition:
                          description: The current weather conditions
                          type: object
                          properties:
                            code:
                              type: integer
                              description: The condition code for this forecast. You could use this code to choose a text description or image for the forecast. The possible values for this element are described in the [Condition Codes](https://developer.yahoo.com/weather/).documentation.html.
                              format: int32
                              example: 33
                            date:
                              type: string
                              description: The current date and time for which this forecast applies. The date is in RFC822 Section 5 format.
                              example: Wed, 14 Jun 2017 09:00 PM SGT
                            temp:
                              type: integer
                              description: The current temperature, in the units specified by the units element.
                              format: int32
                              example: 26
                            text:
                              type: string
                              description: A textual description of conditions
                              example: Mostly Clear


                        forecast:
                          description: The item element contains current conditions and forecast for the given location. There are multiple weather forecast elements for today and tomorrow.
                          type: array
                          items:
                            type: object
                            properties:
                              code:
                                type: integer
                                description: The condition code for this forecast. You could use this code to choose a text description or image for the forecast. The possible values for this element are described in the [Condition Codes](https://developer.yahoo.com/weather/documentation.html#codes).
                                format: int32
                                example: 4
                              date:
                                type: string
                                description: The date to which this forecast applies. The date is in 'dd Mmm yyyy' format, for example '30 Nov 2005'
                                example: 14 Jun 2017
                              day:
                                type: string
                                description: Day of the week to which this forecast applies. Possible values are Mon Tue Wed Thu Fri Sat Sun.
                                example: Wed
                              high:
                                type: integer
                                description: The forecasted high temperature for this day, in the units specified by the units element.
                                format: int32
                                example: 28
                              low:
                                type: integer
                                description: The forecasted low temperature for this day, in the units specified by the units element.
                                format: int32
                                example: 25
                              text:
                                type: string
                                description: A textual description of conditions
                                example: Thunderstorms
                            description: The weather forecast for a specific day. The item element contains multiple forecast elements for today and tomorrow.
                          Guid:
                            title: guid
                            type: object
                            properties:
                              isPermaLink:
                                type: string
                                description: The attribute isPermaLink is false.
                                example: false
                            description: Unique identifier for the forecast, made up of the location ID, the date, and the time.
                        description:
                          type: string
                          description: A simple summary of the current conditions and tomorrow's forecast, in HTML format, including a link to Yahoo! Weather for the full forecast.
                          example: "<![CDATA[<img src=\"http:\/\/l.yimg.com\/a\/i\/us\/we\/52\/4.gif\"\/>\n<BR \/>\n<b>Current Conditions:<\/b>\n<BR \/>Thunderstorms\n<BR \/>\n<BR \/>\n<b>Forecast:<\/b>\n<BR \/> Fri - Thunderstorms. High: 30Low: 25\n<BR \/> Sat - Thunderstorms. High: 28Low: 25\n<BR \/> Sun - Thunderstorms. High: 28Low: 25\n<BR \/> Mon - Thunderstorms. High: 28Low: 25\n<BR \/> Tue - Thunderstorms. High: 28Low: 25\n<BR \/>\n<BR \/>\n<a href=\"http:\/\/us.rd.yahoo.com\/dailynews\/rss\/weather\/Country__Country\/*https:\/\/weather.yahoo.com\/country\/state\/city-91792352\/\">Full Forecast at Yahoo! Weather<\/a>\n<BR \/>\n<BR \/>\n(provided by <a href=\"http:\/\/www.weather.com\" >The Weather Channel<\/a>)\n<BR \/>\n]]>"
                        guid:
                          type: string
                          description: Unique identifier for the forecast, made up of the location ID, the date, and the time.
                          format: uuid
```

One challenge is that it's difficult to keep all the levels straight. With so many nested objects, it's dizzying and confusing. But it works.

Another approach is to make each object its own entity in the `components`. Whenever an object contains an object, add a `$ref` value that points to the object. This way objects remain shallow and you won't get lost in a sea of confusing sublevels. However, this method is really tedious and somewhat cumbersome as well.

```yaml
components:
  schemas:
    WeatherdataResponse:
      title: weatherdata response
      type: object
      properties:
        query:
          $ref: '#/components/schemas/Query'
    Query:
      title: query
      type: object
      properties:
        count:
          type: integer
          description: The number of items (rows) returned -- specifically, the number of sub-elements in the results property
          format: int32
          example: 1
        created:
          type: string
          description: The date and time the response was created
          example: 6/14/2017 2:30:14 PM
        lang:
          type: string
          description: The locale for the response
          example: en-US
        results:
          $ref: '#/components/schemas/Results'
    Results:
      title: results
      type: object
      properties:
        channel:
          $ref: '#/components/schemas/Channel'
    Channel:
      title: channel
      type: object
      properties:
        units:
          description: Units for various aspects of the forecast. Note that the default is to use metric formats for the units (Celsius, kilometers, millibars, kilometers per hour).
          $ref: '#/components/schemas/Units'
        title:
          type: string
          description: The title of the feed, which includes the location city
          example: Yahoo! Weather - Singapore, South West, SG
        link:
          type: string
          description: The URL for the Weather page of the forecast for this location
          example: http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-91792352/
        description:
          type: string
          description: The overall description of the feed including the location
          example: Yahoo! Weather for Singapore, South West, SG
        language:
          type: string
          description: The language of the weather forecast
          example: en-us
        lastBuildDate:
          type: string
          description: The last time the feed was updated. The format is in the date format defined by [RFC822 Section 5](http://www.rfc-editor.org/rfc/rfc822.txt).
          example: Wed, 14 Jun 2017 10:30 PM SGT
        ttl:
          type: string
          description: Time to Live -- how long in minutes this feed should be cached.
          example: 60
        location:
          description: The location of this forecast
          $ref: '#/components/schemas/Location'
        wind:
          description: Forecast information about wind
          $ref: '#/components/schemas/Wind'
        atmosphere:
          description: Forecast information about current atmospheric pressure, humidity, and visibility
          $ref: '#/components/schemas/Atmosphere'
        astronomy:
          description: Forecast information about current astronomical conditions
          $ref: '#/components/schemas/Astronomy'
        image:
          description: The image used to identify this feed
          $ref: '#/components/schemas/Image'
        item:
          description: The item element contains current conditions and forecast for the given location. There are multiple weather forecast elements for today and tomorrow.
          $ref: '#/components/schemas/Item'
    Units:
      title: units
      type: object
      properties:
        distance:
          type: string
          description: Units for distance, mi for miles or km for kilometers
          example: km
        pressure:
          type: string
          description: Units of barometric pressure, "in" for pounds per square inch or "mb" for millibars.
          example: mb
        speed:
          type: string
          description: Units of speed, "mph" for miles per hour or "kph" for kilometers per hour.
          example: km/h
        temperature:
          type: string
          description: Degree units, "f" for Fahrenheit or "c" for Celsius.
          example: C
      description: Units for various aspects of the forecast. Note that the default is to use metric formats for the units (Celsius, kilometers, millibars, kilometers per hour).
    Location:
      title: location
      type: object
      properties:
        city:
          type: string
          description: City name
          example: Singapore
        country:
          type: string
          description: Two-character country code
          example: Singapore
        region:
          type: string
          description: State, territory, or region, if given
          example: South West
      description: The location of this forecast
    Wind:
      title: wind
      type: object
      properties:
        chill:
          type: integer
          description: Wind chill in degrees
          format: int32
          example: 81
        direction:
          type: integer
          description: Wind direction, in degrees
          format: int32
          example: 158
        speed:
          type: integer
          description: Wind speed, in the units specified in the speed attribute of the units element (mph or kph)
          format: int32
      description: Forecast information about wind
    Atmosphere:
      title: atmosphere
      type: object
      properties:
        humidity:
          type: integer
          description: humidity, in percent
          format: int32
          example: 87
        pressure:
          type: integer
          description: Barometric pressure, in the units specified by the pressure attribute of the yweather:units element ("in" or "mb").
          format: int32
        rising:
          type: integer
          description: 'State of the barometric pressure: steady (0), rising (1), or falling (2).'
          format: int32
          example: 0
        visibility:
          type: integer
          description: Visibility, in the units specified by the distance attribute of the units element ("mi" or "km"). Note that the visibility is specified as the actual value * 100. For example, a visibility of 16.5 miles will be specified as 1650. A visibility of 14 kilometers will appear as 1400.
          format: int32
      description: Forecast information about current atmospheric pressure, humidity, and visibility
    Astronomy:
      title: astronomy
      type: object
      properties:
        sunrise:
          type: string
          description: Today's sunrise time. The time is a string in a local time format of "h:mm am/pm"
          example: 6:59 am
        sunset:
          type: string
          description: Today's sunset time. The time is a string in a local time format of "h:mm am/pm"
          example: 7:11 pm
      description: Forecast information about current astronomical conditions
    Image:
      title: image
      type: object
      properties:
        title:
          type: string
          description: The title of the image.
          example: Yahoo! Weather
        width:
          type: string
          description: The width of the image, in pixels
          example: 142
        height:
          type: string
          description: The height of the image, in pixels
          example: 18
        link:
          type: string
          description: Description of link
          example: http://weather.yahoo.com
        url:
          type: string
          description: The URL of Yahoo! Weather
          example: http://l.yimg.com/a/i/brand/purplelogo//uh/us/news-wea.gif
      description: The image used to identify this feed
    Item:
      title: item
      type: object
      properties:
        title:
          type: string
          description: The forecast title and time.
          example: Conditions for Singapore, South West, SG at 09:00 PM SGT
        lat:
          type: string
          description: The latitude of the location.
          example: 1.33464
        long:
          type: string
          description: The longitude of the location.
          example: 103.726471
        link:
          type: string
          description: The Yahoo! Weather URL for this forecast.
          example: http://us.rd.yahoo.com/dailynews/rss/weather/Country__Country/*https://weather.yahoo.com/country/state/city-91792352/
        pubDate:
          type: string
          description: The date and time this forecast was posted, in the date format defined by [RFC822 Section 5](http://www.rfc-editor.org/rfc/rfc822.txt).
          example: Wed, 14 Jun 2017 09:00 PM SGT
        condition:
          description: The current weather conditions
          $ref: '#/components/schemas/Condition'
        forecast:
          type: array
          items:
            $ref: '#/components/schemas/ForecastArray'
          description: ''
        description:
          type: string
          description: A simple summary of the current conditions and tomorrow's forecast, in HTML format, including a link to Yahoo! Weather for the full forecast.
          example: "<![CDATA[<img src=\"http:\/\/l.yimg.com\/a\/i\/us\/we\/52\/4.gif\"\/>\n<BR \/>\n<b>Current Conditions:<\/b>\n<BR \/>Thunderstorms\n<BR \/>\n<BR \/>\n<b>Forecast:<\/b>\n<BR \/> Fri - Thunderstorms. High: 30Low: 25\n<BR \/> Sat - Thunderstorms. High: 28Low: 25\n<BR \/> Sun - Thunderstorms. High: 28Low: 25\n<BR \/> Mon - Thunderstorms. High: 28Low: 25\n<BR \/> Tue - Thunderstorms. High: 28Low: 25\n<BR \/>\n<BR \/>\n<a href=\"http:\/\/us.rd.yahoo.com\/dailynews\/rss\/weather\/Country__Country\/*https:\/\/weather.yahoo.com\/country\/state\/city-91792352\/\">Full Forecast at Yahoo! Weather<\/a>\n<BR \/>\n<BR \/>\n(provided by <a href=\"http:\/\/www.weather.com\" >The Weather Channel<\/a>)\n<BR \/>\n]]>"
        guid:
          type: string
          description: Unique identifier for the forecast, made up of the location ID, the date, and the time.
          format: uuid
      description: The item element contains current conditions and forecast for the given location. There are multiple weather forecast elements for today and tomorrow.
    Condition:
      title: condition
      type: object
      properties:
        code:
          type: integer
          description: The condition code for this forecast. You could use this code to choose a text description or image for the forecast. The possible values for this element are described in the [Condition Codes](https://developer.yahoo.com/weather/).documentation.html.
          format: int32
          example: 33
        date:
          type: string
          description: The current date and time for which this forecast applies. The date is in RFC822 Section 5 format.
          example: Wed, 14 Jun 2017 09:00 PM SGT
        temp:
          type: integer
          description: The current temperature, in the units specified by the units element.
          format: int32
          example: 26
        text:
          type: string
          description: A textual description of conditions
          example: Mostly Clear
      description: The current weather conditions
    ForecastArray:
      title: forecast array
      type: object
      properties:
        code:
          type: integer
          description: The condition code for this forecast. You could use this code to choose a text description or image for the forecast. The possible values for this element are described in the [Condition Codes](https://developer.yahoo.com/weather/documentation.html#codes).
          format: int32
          example: 4
        date:
          type: string
          description: The date to which this forecast applies. The date is in 'dd Mmm yyyy' format, for example '30 Nov 2005'
          example: 14 Jun 2017
        day:
          type: string
          description: Day of the week to which this forecast applies. Possible values are Mon Tue Wed Thu Fri Sat Sun.
          example: Wed
        high:
          type: integer
          description: The forecasted high temperature for this day, in the units specified by the units element.
          format: int32
          example: 28
        low:
          type: integer
          description: The forecasted low temperature for this day, in the units specified by the units element.
          format: int32
          example: 25
        text:
          type: string
          description: A textual description of conditions
          example: Thunderstorms
      description: The weather forecast for a specific day. The item element contains multiple forecast elements for today and tomorrow.
    Guid:
      title: guid
      type: object
      properties:
        isPermaLink:
          type: string
          description: The attribute isPermaLink is false.
          example: false
      description: Unique identifier for the forecast, made up of the location ID, the date, and the time.
```

Although I said to think of the `components` section like an appendix that simply provides the schema details for your endpoints, Swagger UI displays each object in `components` in a section called `Models` at the end of your Swagger UI display.

I'm not really sure why the Models section appears. If you use the latter method of breaking each object into its own entity in `components`, then each of these entities stands alone in the Models section.

What might be the purpose of describing your responses and requests with such great detail like this? Swagger UI will take the description and display it in the Model view in Swagger UI, along with your descriptions of each parameter. It's a neat way of mixing in the objects and properties in your response along with the description.
