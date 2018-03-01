---
title: "Step 5: The components object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step5_components_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.34
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="5" map="content/openapi_tutorial_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep5.png"/>
{% endif %}

In the [step 4](pubapis_openapi_step4_paths_object.html), when we described the [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#requestBodyObject) and [`responses` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#responsesObject) objects, we used a [`schema`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#schemaObject) object to describe the model for the request or response. The `schema` refers to the data structure ( the fields, values, and hierarchy of the various objects and properties of a JSON or YAML object &mdash; see [What is a schema?](https://spacetelescope.github.io/understanding-json-schema/about.html#what-is-a-schema) for more details). It's common to use a reference pointer (`$ref`) for the `schema` object that points to more details in the `components` object.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Reasons to use the components object

Describing the schema of complex responses can be one of the more challenging aspects of the OpenAPI spec. While our Mashape weather API is simple, the response from the `weatherdata` endpoint is complex. Although you can define the schema directly in the `requestBody` or `responses` object, you typically don't list it there for two reasons:

* You might want to re-use parts of the schema in other requests or responses. It's common to have the same object, such as `units` or `days`, appear in multiple places in an API. Through the `components` object, OpenAPI allows you to re-use these same definitions in multiple places.
* You might not want to clutter up your `paths` object with too many request and response details, since the `paths` object is already somewhat complex with several levels of objects.

Instead of listing the schema for your requests and responses in the `paths` object, for more complex schemas (or for schemas that are re-used in multiple operations or paths), you typically use a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#referenceObject), referenced through `$ref`, that refers to a specific definition in the [`components` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#componentsObject).

Think of the `components` object like an appendix where the re-usable details are provided. If multiple parts of your spec have the same schema, you point each of these references to the same object in your `components` object, and in so doing you single source the content. The `components` object can even be [stored in a separate file](http://apihandyman.io/writing-openapi-swagger-specification-tutorial-part-8-splitting-specification-file/) if you have a large API and want to organize the information that way. (However, with multiple files, you wouldn't be able to use the online Swagger Editor to validate the content.)

## Objects in components

You can store a lot of different re-usable objects in the `components` object. The [`components` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#componentsObject) can contain these objects:

* [`schemas`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#schemaObject)
* [`responses`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#responses-object)
* [`parameters`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#parameterObject)
* [`examples`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#examples-object)
* [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#requestBodyObject)
* [`headers`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#headerObject)
* [`securitySchemes`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#securitySchemeObject)
* [`links`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#linkObject)
* [`callbacks`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#callbackObject)

The properties for each object inside `components` are the same as they are when used in other parts of the OpenAPI spec.

## Re-using parameters in components {#reused_parameters}

In the Mashape Weather API, the `lat` and `lng` parameters are the same for each of the paths. Rather than duplicate this same description in each path, we can store the object in the `components`. To do this, in the `path` object, we simply include a `$ref` pointer that refers to the location in `components` that contains these details:

```yaml
paths:
  /aqi:
    get:
      ...
      parameters:
            - $ref: '#/components/parameters/latParam'
            - $ref: '#/components/parameters/lngParam'
      ...
```

(Ellipses (`...`) indicate truncated code.)

The `latParam` and `lngParam` names are arbitrary. These names just act like variables that are defined in the `components` section.

Notice that the `parameters` are stored under `components/parameters`. Now let's define the parameters one time in `components`:

```yaml
components:
  parameters:
    latParam:
      name: lat
      in: query
      description: "Latitude coordinates."
      required: true
      style: form
      explode: false
      schema:
        type: string
      example: "37.3708698"
    lngParam:
      name: lng
      in: query
      description: "Longitude coordinates."
      required: true
      style: form
      explode: false
      schema:
        type: string
      example: "-122.037593"
```

{: .tip}
See [Using $ref](https://swagger.io/docs/specification/using-ref/) for more details on this standard JSON reference property.

## Re-using response objects

Response objects are another common object to re-use across paths. In this API, suppose we had a `404` response for each path indicating a resource is not found. Here's how we can reference that in the response object:

```yaml
paths:
  /aqi:
    get:
      ...
      responses:
        200:
          description: AQI response
          content:
            text/plain:
              schema:
                type: string
                description: AQI response
                example: 52
        404:
          $ref: '#/components/responses/404'
```

Then in `components/responses`, we define it:

```yaml
components:
  responses:
    404:
      description: Not found
      content:
        text/plain:
          schema:
            type: string
            description: Not found
            example: Not found
```

## The weatherdata response

Although we don't need to reuse the `weatherdata` response, it's so lengthy and complex, it'll be better to organize it under `components`. If you recall in the previous step ([OpenAPI tutorial step 4: The paths object](pubapis_openapi_step4_paths_object.html), the `responses` object for the `weatherdata` endpoint looked like this:

```yaml
responses:
  200:
    description: Successful operation
    content:
      application/json:
        schema:
          description: Successful operation
          $ref: '#/components/schemas/WeatherdataResponse'
```

The `$ref` points to a definition stored in the `components` object. Before we describe the response in the `components` object, it might be helpful to review what the [`weatherdata` response looks like](http://idratherbewriting.com/learnapidoc/assets/files/swagger/#/Weather_Forecast/GetWeatherData). The response contains multiple nested objects at various levels. (Note that this Mashape Weather API builds off of a [Yahoo weather service API](https://developer.yahoo.com/weather/documentation.html), so the data returned in the `weather` and `weatherdata` endpoints is highly similar to the data returned by the Yahoo weather service API.)

There are a couple of ways to go about describing this response. You could create one long description like this:

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

One challenge is that it's difficult to keep all the levels straight. With so many nested objects, it's dizzying and confusing. Additionally, it's easy to make mistakes. Worst of all, you can't re-use the individual objects. This undercuts one of the main reasons for storing this object in `components` in the first place.

Another approach is to make each object its own entity in the `components`. Whenever an object contains an object, add a `$ref` value that points to the new object. This way objects remain shallow and you won't get lost in a sea of confusing sublevels.

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

Not only can you use `$ref` properties in other parts of your spec, you can use it within `components` too.

## Appearance of components in Swagger UI

Swagger UI displays each object in `components` in a section called `Models` at the end of your Swagger UI display. If you decided to consolidate all schemas into a single object, without using the `$ref` property to point to new objects, then you will see just one object in Models. If you split out the objects, then you see each object listed separately, including the object that contains all the references.

Because I want to re-use objects, I'm going define each object in `components` separately. As a result, the Models section looks like this:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/swaggerui_models_broken_out.png" /></a>

## Reason for models in the first place

The Models section is now in the latest version of Swagger UI. I'm not really sure why the Models section appears at all, actually. Apparently, it was added by popular request because the online Swagger Editor showed the display, and many users asked for it to be incorporated into Swagger UI.

You don't need this Models section in Swagger UI because both the request and response sections of Swagger UI provide a "Model" link that lets the user toggle to this view. For example:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/models_options_in_responses.png" /></a>

## Hiding the Models section

You might confuse users by including the Models section. Currently, there isn't a [Swagger UI parameter](https://github.com/swagger-api/swagger-ui#parameters) to hide the Models section. To hide Models, simply add this style to the Swagger UI page:

```html
<style>
section.models {
    display: none;
}
</style>
```

## Describing a schema

For most of the sections in `components`, you follow the same object descriptions as detailed in the rest of the spec. However, when describing a `schema` object, you use standard keywords and terms from the [JSON Schema](http://json-schema.org/), specifically the [JSON Schema Specification Wright Draft 00](https://tools.ietf.org/html/draft-wright-json-schema-00).

In other words, you aren't merely using terms defined by the OpenAPI spec to describe the models for your JSON. As you describe your JSON models (the data structures for input and output objects), the terminology in the OpenAPI spec feeds into the larger JSON definitions and description language for modeling JSON. (Note that the OpenAPI's usage of the JSON Schema is just a subset of the full JSON Schema.)

The OpenAPI specification doesn't attempt to document how to model JSON schemas. This would be redundant with what's already documented in the [JSON Schema](http://json-schema.org/) site, and outside of the scope of the OpenAPI spec. Therefore you might need to consult [JSON Schema](http://json-schema.org) for more details. (One other helpful tutorial is [Advanced Data](http://apihandyman.io/writing-openapi-swagger-specification-tutorial-part-4-advanced-data-modeling/) from API Handyman.)

To describe your JSON objects, you might use the following keywords:

* `title`
* `multipleOf`
* `maximum`
* `exclusiveMaximum`
* `minimum`
* `exclusiveMinimum`
* `maxLength`
* `minLength`
* `pattern`
* `maxItems`
* `minItems`
* `uniqueItems`
* `maxProperties`
* `minProperties`
* `required`
* `enum`
* `type`
* `allOf`
* `oneOf`
* `anyOf`
* `not`
* `items`
* `properties`
* `additionalProperties`
* `description`
* `format`
* `default`

A number of [data types](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#data-types) are also available:

* `integer`
* `long`
* `float`
* `double`
* `string`
* `byte`
* `binary`
* `boolean`		
* `date`
* `dateTime`
* `password`

I suggest you start by looking in the OpenAPI's [schema object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#schemaObject), and then consult the [JSON Schema](https://tools.ietf.org/html/draft-wright-json-schema-00) if something isn't covered.

Additionally, look at some example schemas. You can view [3.0 examples here](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v3.0). I usually find a spec that resembles what I'm trying to represent and mimic the same properties and structure.

The `schema` object in 3.0 differs slightly from the schema object in 2.0 &mdash; see this [post on Nordic APIs](https://nordicapis.com/whats-new-in-openapi-3-0/#jsonandotherschema) for some details on what's new. However, example schemas from [2.0 specs](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v2.0) (which are a lot more abundant online) would probably also be helpful as long as you just look at the schema definitions (and not the rest of the spec). (A lot has changed from 2.0 to 3.0 in the spec.)

## Security definitions

The `components` object also contains a [`securitySchemes` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#securitySchemeObject) that defines the authorization method used with each `path`. Rather than dive into the security configuration details here, I explore security in the [step 6](pubapis_openapi_step6_security_object.html).
