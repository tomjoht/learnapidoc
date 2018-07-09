---
title: "Step 5: The components object (OpenAPI tutorial)"
permalink: /pubapis_openapi_step5_components_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.34
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="5" map="content/openapi_tutorial_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep5.png"/>
{% endif %}

In the [step 4](pubapis_openapi_step4_paths_object.html), when we described the [`responses` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#responsesObject) object, we used a [`schema`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#schemaObject) object to describe the model for the request or response. The `schema` refers to the data structure (the fields, values, and hierarchy of the various objects and properties of a JSON or YAML object &mdash; see [What is a schema?](https://spacetelescope.github.io/understanding-json-schema/about.html#what-is-a-schema) for more details). It's common to use a reference pointer (`$ref`) for the `schema` object that points to more details in the `components` object.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Reasons to use the components object {#reused_parameters}

{% include random_ad2.html %}

Describing the schema of complex responses can be one of the more challenging aspects of the OpenAPI spec. Although you can define the schema directly in the `requestBody` or `responses` object, you typically don't list it there for two reasons:

* You might want to re-use parts of the schema in other requests or responses. It's common to have the same object, such as `units` or `days`, appear in multiple places in an API. Through the `components` object, OpenAPI allows you to re-use these same definitions in multiple places.
* You might not want to clutter up your `paths` object with too many request and response details, since the `paths` object is already somewhat complex with several levels of objects.

Instead of listing the schema for your requests and responses in the `paths` object, for more complex schemas (or for schemas that are re-used in multiple operations or paths), you typically use a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#referenceObject) (referenced with `$ref`) that refers to a specific definition in the [`components` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#componentsObject). See [Using $ref](https://swagger.io/docs/specification/using-ref/) for more details on this standard JSON reference property.

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

## Re-using response objects {#reusing_objects}

In the previous topic, I explained how to [re-use parameter definitions in components](pubapis_openapi_step4_paths_object.html#reusing_definitions), so I won't re-explain the approach. Here we'll cover how to re-use the schema definitions in the `responses` objects.

{% include random_ad.html %}

Although we don't need to reuse the `weather` response in this exercise (because we're only documenting one endpoint), it'll be better to organize this schema definition under `components` anyway because it reduces the detail under the `paths` object. If you recall in the previous step ([OpenAPI tutorial step 4: The paths object](pubapis_openapi_step4_paths_object.html), the `responses` object for the `weather` endpoint looked like this:

```yaml
paths:
  /current:
    get:
      parameters:

      ...

      responses:
        200:
          description: Successful response
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/200'
        404:
          description: Not found response
          content:
            text/plain:
              schema:
                title: Weather not found
                type: string
                example: Not found
```

Then in `components/schemas`, we define the `200` schema.

Before we describe the response in the `components` object, it might be helpful to review what the [`weather` response] from the OpenWeatherMap API looks like. The response contains multiple nested objects at various levels.


```json
{
  "coord": {
    "lon": 145.77,
    "lat": -16.92
  },
  "weather": [
    {
      "id": 803,
      "main": "Clouds",
      "description": "broken clouds",
      "icon": "04n"
    }
  ],
  "base": "cmc stations",
  "main": {
    "temp": 293.25,
    "pressure": 1019,
    "humidity": 83,
    "temp_min": 289.82,
    "temp_max": 295.37,
    "sea_level": 984,
    "grnd_level": 990
  },
  "wind": {
    "speed": 5.1,
    "deg": 150
  },
  "clouds": {
    "all": 75
  },
  "rain": {
    "3h": 3
  },
  "snow": {
    "3h": 6
  },
  "dt": 1435658272,
  "sys": {
    "type": 1,
    "id": 8166,
    "message": 0.0166,
    "country": "AU",
    "sunrise": 1435610796,
    "sunset": 1435650870
  },
  "id": 2172797,
  "name": "Cairns",
  "cod": 200
}
```

There are a couple of ways to go about describing this response. You could create one long description that contains all the hierarchy reflected. One challenge is that it's difficult to keep all the levels straight. With so many nested objects, it's dizzying and confusing. Additionally, it's easy to make mistakes. Worst of all, you can't re-use the individual objects. This undercuts one of the main reasons for storing this object in `components` in the first place.

Another approach is to make each object its own entity in the `components`. Whenever an object contains an object, add a `$ref` value that points to the new object. This way objects remain shallow and you won't get lost in a sea of confusing sublevels.

Here's the description of the `200` response for the `weather` endpoint:

```yaml
components:
  schemas:
    200:
      title: Successful response
      type: object
      properties:
        coord:
          $ref: '#/components/schemas/Coord'
        weather:
          type: array
          items:
            $ref: '#/components/schemas/Weather'
          description: (more info Weather condition codes)
        base:
          type: string
          description: Internal parameter
          example: cmc stations
        main:
          $ref: '#/components/schemas/Main'
        visibility:
          type: integer
          description: Visibility, meter
          example: 16093
        wind:
          $ref: '#/components/schemas/Wind'
        clouds:
          $ref: '#/components/schemas/Clouds'
        rain:
          $ref: '#/components/schemas/Rain'
        snow:
          $ref: '#/components/schemas/Snow'
        dt:
          type: integer
          description: Time of data calculation, unix, UTC
          format: int32
          example: 1435658272
        sys:
          $ref: '#/components/schemas/Sys'
        id:
          type: integer
          description: City ID
          format: int32
          example: 2172797
        name:
          type: string
          example: Cairns
        cod:
          type: integer
          description: Internal parameter
          format: int32
          example: 200
    Coord:
      title: Coord
      type: object
      properties:
        lon:
          type: number
          description: City geo location, longitude
          example: 145.77000000000001
        lat:
          type: number
          description: City geo location, latitude
          example: -16.920000000000002
    Weather:
      title: Weather
      type: object
      properties:
        id:
          type: integer
          description: Weather condition id
          format: int32
          example: 803
        main:
          type: string
          description: Group of weather parameters (Rain, Snow, Extreme etc.)
          example: Clouds
        description:
          type: string
          description: Weather condition within the group
          example: broken clouds
        icon:
          type: string
          description: Weather icon id
          example: 04n
    Main:
      title: Main
      type: object
      properties:
        temp:
          type: number
          description: 'Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          example: 293.25
        pressure:
          type: integer
          description: Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
          format: int32
          example: 1019
        humidity:
          type: integer
          description: Humidity, %
          format: int32
          example: 83
        temp_min:
          type: number
          description: 'Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          example: 289.81999999999999
        temp_max:
          type: number
          description: 'Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
          example: 295.37
        sea_level:
          type: number
          description: Atmospheric pressure on the sea level, hPa
          example: 984
        grnd_level:
          type: number
          description: Atmospheric pressure on the ground level, hPa
          example: 990
    Wind:
      title: Wind
      type: object
      properties:
        speed:
          type: number
          description: 'Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
          example: 5.0999999999999996
        deg:
          type: integer
          description: Wind direction, degrees (meteorological)
          format: int32
          example: 150
    Clouds:
      title: Clouds
      type: object
      properties:
        all:
          type: integer
          description: Cloudiness, %
          format: int32
          example: 75
    Rain:
      title: Rain
      type: object
      properties:
        3h:
          type: integer
          description: Rain volume for the last 3 hours
          format: int32
          example: 3
    Snow:
      title: Snow
      type: object
      properties:
        3h:
          type: number
          description: Snow volume for the last 3 hours
          example: 6
    Sys:
      title: Sys
      type: object
      properties:
        type:
          type: integer
          description: Internal parameter
          format: int32
          example: 1
        id:
          type: integer
          description: Internal parameter
          format: int32
          example: 8166
        message:
          type: number
          description: Internal parameter
          example: 0.0166
        country:
          type: string
          description: Country code (GB, JP etc.)
          example: AU
        sunrise:
          type: integer
          description: Sunrise time, unix, UTC
          format: int32
          example: 1435610796
        sunset:
          type: integer
          description: Sunset time, unix, UTC
          format: int32
          example: 1435650870
```

As you can see, not only can you use `$ref` properties in other parts of your spec, you can use it within `components` too.

## Automatically generate the schema from JSON using Stoplight

Describing a JSON response can be complicated and confusing. Fortunately, there's a somewhat easy workaround. Download [Stoplight](https://next.stoplight.io/). Use the **Generate JSON** feature to have Stoplight automatically create the OpenAPI schema description. Here's a short (silent) video showing how to do this:

{% if site.format == "pdf" or site.format == "kindle" %}

Go to [http://idratherbewriting.com/learnapidoc/pubapis_openapi_step5_components_object.html](http://idratherbewriting.com/learnapidoc/pubapis_openapi_step5_components_object.html) to view this content.

{% elsif site.format == "web" %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/o8aTo6e0kCY" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

{% endif %}

The only catch is that Stoplight uses OpenAPI 2.0, not 3.0. You might need to use [API Transformer](https://apimatic.io/transformer) to convert the 2.0 schema output to 3.0. Even so, this approach can save you a lot of time.

## Automating the examples

Notice how the schema definition includes an `example` property for element? Swagger UI will take this `example` and use it to automatically build a full code sample. It's one of the neat things about Swagger UI. This wy, your schema documentation and example remain consistent.

## Appearance of components in Swagger UI

By default, Swagger UI displays each object in `components` in a section called `Models` at the end of your Swagger UI display. If you consolidate all schemas into a single object, without using the `$ref` property to point to new objects, you will see just one object in Models. If you split out the objects, then you see each object listed separately, including the object that contains all the references.

Because I want to re-use objects, I'm going define each object in `components` separately. As a result, the Models section looks like this:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/swaggerui_models_broken_out.png" class="medium" /></a>

## The Models section -- why it exists, how to hide it

The Models section is now in the latest version of Swagger UI. I'm not really sure why the Models section appears at all, actually. Apparently, it was added by popular request because the online Swagger Editor showed the display, and many users asked for it to be incorporated into Swagger UI.

You don't need this Models section in Swagger UI because both the request and response sections of Swagger UI provide a "Model" link that lets the user toggle to this view. For example:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/models_options_in_responses.png" class="medium" /></a>

You might confuse users by including the Models section. To hide Models, simply add the `    defaultModelsExpandDepth: -1` parameter in your Swagger UI project.

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
