---
title: "OpenAPI tutorial step 4: The paths object"
permalink: /pubapis_openapi_step4_paths_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.33
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="4" map="content/openapi_tutorial_map.html"  %}

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/openapistep4.png"/>
{% endif %}

The [`paths` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#pathsObject) contains the meat of your API information. The `paths` object has a number of sub-objects: a [path items object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#pathItemObject), an [operations object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#operationObject), and more.

{: .note}
My preferred term is "endpoint" rather than "path," but to be consistent with the terminology of the openAPI spec, I refer to them as "paths" here.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Start by listing the paths

Start by listing the paths (endpoints) and their allowed operations (methods). For the Mashape Weather API, there are just 3 paths, each with the `get` operation:

```yaml
paths:
  /aqi:
    get:

  /weather:
    get:

  /weatherdata:
    get:

```

## Operation Objects

Each path item object contains an [operation object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#operation-object). Operations are the GET, POST, PUT, and DELETE methods we explored in the [methods section](docapis_doc_methods.html) of the API reference tutorial methods. The operation object contains a number of potential properties and objects:

* `tags`: A tag to organize the path under when displayed in the Swagger UI. Swagger UI will organize or group endpoints under tag headings.
* `summary`: A brief overview of the path. Swagger UI displays the summary next to the path name. Limit the summary to 5-10 words only. The display appears even when this section is collapsed.
* `description`: A full description of the path. Include as much detail as you want. There's a lot of space in the Swagger UI for these details. CommonMark Markdown is allowed.
* [`externalDocs`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#externalDocumentationObject) (object): Links to documentation for more information about the path.
* `operationId`: A unique identifier for the path.
* [`parameters`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#parameter-object) (object): Parameters accepted by the path. Does not include request body parameters, which are instead detailed in the `requestBody` object. The `parameters` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object (this is explained in [step 5](pubapis_openapi_step5_components_object.html)).
* [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#requestBodyObject) (object): The request body parameter details for this path. The `requestBody` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object (explained in [step 5](pubapis_openapi_step5_components_object.html)).
* [`responses`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#responsesObject) (object): Responses provided from requests with this path. The `responses` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object. Responses use standard [status codes](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#http-status-codes).
* [`callbacks`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#callbackObject) (object): Callback details to be initiated by the server if desired. Callbacks are operations performed after a function finishes executing. The `callbacks` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object.
* `deprecated`: Whether the path is deprecated. Omit unless you want to indicate a deprecated field. Boolean.
* [`security`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject) (object): Security authorization method used with the operation. Only include this object at the path level if you want to overwrite the `security` object at the root level. The name is defined by the `securitySchemes` object in the `components` object. More details about this are provided in the [security object](pubapis_openapi_step6_security_object.html).
* [`servers`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject) (object): A servers object that might differ for this path than the [global `servers` object](pubapis_openapi_step3_servers_object.html).

{: .note}
Each of the above hyperlinked properties that say "(object)" contain additional levels. Their values aren't just simple data types like strings but are rather objects that contain their own properties.

Let's add a skeleton of the operation object details to our existing code:

```yaml
paths:
  /aqi:
    get:
      tags:
      summary:
      description:
      operationId:
      externalDocs:
      parameters:
      responses:
      deprecated:
      security:
      servers:
      requestBody:
      callbacks:

  /weather:
    get:
      tags:
      summary:
      description:
      operationId:
      externalDocs:
      parameters:
      responses:
      deprecated:
      security:
      servers:
      requestBody:
      callbacks:

  /weatherdata:
    get:
      tags:
      summary:
      description:
      operationId:
      externalDocs:
      parameters:
      responses:
      deprecated:
      security:  
      servers:
      requestBody:
      callbacks:     
```

Now we can remove a few unnecessary fields:

* There's no need to include [`requestBody` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#requestBodyObject) here because none of the Mashape Weather API paths contain request body parameters.
* There's no need to include the  [`servers` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject) because the paths just use the same global `servers` URL that we [defined globally](pubapis_openapi_step3_servers_object.html) at the root level.
* There's no need to include [security](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject) because all the paths use the same `security` object, which we defined globally at the root (see [step 6](pubapis_openapi_step6_security_object.html)).
* There's no need to include `deprecated` because none of the paths are deprecated.
* There's no need to include `callbacks` because our paths don't use callbacks.

As a result, we can reduce the number of fields to concern ourselves with:

```yaml
paths:
  /aqi:
    get:
      tags:
      summary:
      description:
      operationId:
      externalDocs:
      parameters:
      responses:

  /weather:
    get:
      tags:
      summary:
      description:
      operationId:
      externalDocs:
      parameters:
      responses:

  /weatherdata:
    get:
      tags:
      summary:
      description:
      operationId:
      externalDocs:
      parameters:
      responses:      
```

{: .tip}
You'll undoubtedly need to consult the [OpenAPI spec](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) to see what details are required for each of the values and objects here. I can't replicate all the detail you need, nor would I want to. I'm just trying to introduce you to the OpenAPI properties at a surface level.

Most of the properties for the operation object either require simple strings or include relatively simple objects. The most detailed object here is the `parameters` object.

## Parameters object

The [`parameters` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#parameter-object) contains an array (list designated with dashes) with these properties:

**parameters**:

* `name`: Parameter name.
* `in`: Where the parameter appears. Possible values: `header`, `path`, `query`, or `cookie`. (Request body parameters are not described here.)
* `description`: Description of the parameter.
* `required`: Whether the parameter is required.
* `deprecated`: Whether the parameter is deprecated.
* `allowEmptyValue`: Whether the parameter allows an empty value to be submitted.
* `style`: How the parameter's data is serialized (converted to bytes during data transfer).
* `explode`: Advanced parameter related to arrays.
* `allowReserved`: Whether reserved characters are allowed.
* [`schema`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#schemaObject) (object): The schema or model for the parameter. The schema defines the input or output data structure. Note that the `schema` can also contain an `example` object.
* `example`: An example of the media type. If your `examples` object contains examples, those examples appear in Swagger UI rather than the content in the `example` object.
* [`examples`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#exampleObject) (object): An example of the media type, including the schema.

{: .note}
Rather than defining the schema here, it's common to place a `$ref` (reference) pointer to a fuller definition in the `components` object. This approach also allows you to single source the schema, because now you can have many references pointing to the same defined schema in `components`. You can use the same technique for `responses`, `parameters`, and other properties. I explain more about using `$ref` below in [Re-using definitions across objects](#reusing_definitions) and in [step 5](pubapis_openapi_step5_components_object.html).

Here's the `operation` object defined for the Mashape Weather API:

```yaml
paths:
  /aqi:
    get:
      tags:
      - Air Quality
      summary: getAqi
      description: Gets the air quality index
      operationId: GetAqi
      externalDocs:
        description: More details
        url: "https://market.mashape.com/fyhao/weather-13#aqi"
      parameters:

      - name: lat
        in: query
        description: "Latitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: "37.3708698"

      - name: lng
        in: query
        description: "Longitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: "-122.037593"

      responses:
        200:
          description: AQI response
          content:
            text/plain:
              schema:
                type: string
                description: AQI response
                example: 52
  /weather:
    get:
      servers:
      - url: https://simple-weather.p.mashape.com
      tags:
      - Weather Forecast
      summary: getWeather
      description: Gets the weather forecast in abbreviated form
      operationId: GetWeather
      externalDocs:
        description: More details
        url: "https://market.mashape.com/fyhao/weather-13#weather"
      parameters:

      - name: lat
        in: query
        description: "Latitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: "37.3708698"

      - name: lng
        in: query
        description: "Longitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: "-122.037593"

      responses:
        200:
          description: weather response
          content:
            text/plain:
              schema:
                type: string
                description: weather response
                example: 26 c, Mostly Clear at Singapore, Singapore

  /weatherdata:
    get:
      tags:
      - Weather Forecast
      summary: getWeatherData
      description: Get weather forecast with lots of details
      operationId: GetWeatherData
      externalDocs:
        description: More details
        url: "https://market.mashape.com/fyhao/weather-13#weatherdata"
      parameters:

      - name: lat
        in: query
        description: "Latitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: "37.3708698"

      - name: lng
        in: query
        description: "Longitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: "-122.037593"

      responses:
        200:
          description: Successful operation
          content:
            application/json:
              schema:
                description: Successful operation
                $ref: '#/components/schemas/WeatherdataResponse'
```

## Re-using definitions across objects {#reusing_definitions}

In this API, the `lat` and `lng` parameters are duplicated in each path. Copying and pasting this information multiple times is inefficient and can lead to inconsistency. The OpenAPI spec allows you to single source the parameter information from a common definition.

I'll dive into more details in the [`components` step](pubapis_openapi_step5_components_object.html), but for now, note that we can use a `$ref` property to refer to more details in the `components` object. See how `parameters` simply contains a [`reference` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject):

```yaml
paths:
  /aqi:
    get:
      tags:
      - Air Quality
      summary: getAqi
      description: Gets the air quality index
      operationId: GetAqi
      externalDocs:
        description: More details
        url: "https://market.mashape.com/fyhao/weather-13#aqi"
      parameters:
        - $ref: '#/components/parameters/latParam'
        - $ref: '#/components/parameters/lngParam'
      responses:
        200:
          description: AQI response
          content:
            text/plain:
              schema:
                type: string
                description: AQI response
                example: 52
  /weather:
    get:
      servers:
      - url: https://simple-weather.p.mashape.com
      tags:
      - Weather Forecast
      summary: getWeather
      description: Gets the weather forecast in abbreviated form
      operationId: GetWeather
      externalDocs:
        description: More details
        url: "https://market.mashape.com/fyhao/weather-13#weather"
      parameters:
        - $ref: '#/components/parameters/latParam'
        - $ref: '#/components/parameters/lngParam'
      responses:
        200:
          description: weather response
          content:
            text/plain:
              schema:
                type: string
                description: weather response
                example: 26 c, Mostly Clear at Singapore, Singapore

  /weatherdata:
    get:
      tags:
        - Weather Forecast
      summary: getWeatherData
      description: Get weather forecast with lots of details
      operationId: GetWeatherData
      externalDocs:
        description: More details
        url: "https://market.mashape.com/fyhao/weather-13#weatherdata"
      parameters:
        - $ref: '#/components/parameters/latParam'
        - $ref: '#/components/parameters/lngParam'
      responses:
        200:
          description: Successful operation
          content:
            application/json:
              schema:
                description: Successful operation
                $ref: '#/components/schemas/WeatherdataResponse'
```

Now we're not repeating the parameter information multiple times. Instead, in `components`, we define these parameters:

```yaml
components:
  parameters:
  - name: lat
    in: query
    description: "Latitude coordinates."
    required: true
    style: form
    explode: false
    schema:
      type: string
    example: "37.3708698"

  - name: lng
    in: query
    description: "Longitude coordinates."
    required: true
    style: form
    explode: false
    schema:
      type: string
    example: "-122.037593"
```


See [Storing re-used parameters in components](pubapis_openapi_step5_components_object.html#reused_parameters) for more details. Also see [Describing Parameters](https://swagger.io/docs/specification/describing-parameters/) in Swagger's OpenAPI documentation.

## Appearance of paths in Swagger UI

Swagger UI displays the `paths` object like this:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapiparameters.png" /></a>

When you click **Try it out**, the `example` value populates the parameters field.

Each path is collapsed by default, but you can set whether the initial display is collapsed or open using the [`docExpansion` parameter in Swagger UI](https://github.com/swagger-api/swagger-ui#parameters).

{: .tip}
This `docExpansion` parameter is for Swagger UI and isn't part of the OpenAPI spec. Swagger UI has more than [20 different parameters](https://github.com/swagger-api/swagger-ui#parameters) that control its display. Currently, there isn't a parameter to hide the Models section or to disable the Try It Out section, but you can hide these functions through `display: none` with CSS, targeting the elements you want to hide. Additional Swagger UI parameters may be added in the future.
