---
title: "OpenAPI tutorial step 4: The paths object"
permalink: /pubapis_openapi_step4_paths_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.264
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="4" map="content/openapi_tutorial_map.html"  %}

The [`paths` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#pathsObject) contains the meat of your API information. The `paths` object has a number of sub-objects: a path items object, an operations object, and more.

{: .note}
My preferred term is "endpoint" rather than "path," but to be consistent with the terminology of the openAPI spec, I'll refer to them as "paths" here.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Start by listing the paths

Start by listing the paths (endpoints) and their allowed operations (methods). For the Mashape Weather API, there are just 3 paths, each with the `get` method:

```yaml
paths:
  /aqi:
    get:

  /weather:
    get:

  /weatherdata:
    get:

```

Each path item object contains an [operation object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#operation-object). Operations are the GET, POST, PUT, and DELETE methods we [explored in endpoints definitions and methods](docapis_doc_endpoint_definitions.html). The operation object contains a number of potential properties and objects:

* `tags`: A tag to organize the path under when displayed in the Swagger UI. Swagger UI will organize or group endpoints under tag headings.
* `summary`: A brief overview of the path. Swagger UI displays the summary next to the path name. Limit the summary to 5-10 words only. The display appears even when this section is collapsed.
* `description`: A full description of the path. Include as much detail as you want. There's a lot of space in the Swagger UI for these details. Markdown is allowed.
* [`externalDocs`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#externalDocumentationObject): Links to documentation for more information about the path.
* `operationId`: A unique identifier for the path.
* [`parameters`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#parameter-object): Parameters accepted by the path. Usual values are query, header, or path. The `parameters` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object.
* [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#requestBodyObject): The request body parameter details for this path. The `requestBody` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object.
* [`responses`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#responsesObject): Responses provided from requests with this path. The `responses` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object. Responses use standard [status codes](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#http-status-codes).
* [`callbacks`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#callbackObject): Callback details to be initiated by the server if desired. Callbacks are operations performed after a function finishes executing. The `callbacks` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#referenceObject) that simply contains a pointer to the description in the `components` object.
* `deprecated`: Whether the path is deprecated. Omit unless you want to indicate a deprecated field. Boolean.
* [`security`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject): Security authorization method used with the operation. Only include this object at the path level if you want to overwrite the `security` object at the root level. The name is defined by the `securitySchemes` object in the `components` object. More details about this are provided in the [security object](pubapis_openapi_step6_security_object.html).
* [`servers`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject): A servers object that might differ for this path than the [global `servers` object](pubapis_openapi_step3_servers_object.html).

{: .note}
Each of the above properties that are linked are objects, so they contain additional levels. Their values aren't just simple data types like strings but are rather objects that contain their own properties.

Let's add a skeleton of the operation object details to our existing code:

```yaml
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
* There's no need to include the  [`servers` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject) because the paths just use the same global `servers` URL that we [defined earlier](pubapis_openapi_step3_servers_object.html) at the root level.
* There's no need to include [security](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject) because all the paths use the same `security` object, which is defined globally at the root (see [step 6](pubapis_openapi_step6_security_object.html)).
* There's no need to include `deprecated` because none of the paths are deprecated, and the default value is `true`.
* There's no need to include `callbacks` because our paths don't use callbacks.

As a result, we can reduce the number of fields to concern ourselves with:

```yaml
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
You'll undoubtedly need to consult the [OpenAPI spec](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) to see what details are required for each of the values and objects here. I can't replicate all the detail you need, nor would I want to. I'm just trying to introduce you to the OpenAPI properties at a surface level here.

Most of the properties for the operation object either require simple strings or include relatively simple objects. The most detailed object here is the `parameters` object. The [`parameters` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#parameter-object) can have these properties:

**parameters**:

* `name`: Parameter name.
* `in`: Where the parameter appears. Possible values: `header`, `path`, `query`, or `cookie`.
* `description`: Description of the parameter.
* `required`: Whether the parameter is required.
* `deprecated`: Whether the parameter is deprecated.
* `allowEmptyValue`: Whether the parameter allows an empty value to be submitted.
* `style`: How the parameter's data is serialized (converted to bytes during data transfer)
* `explode`: Advanced parameter related to arrays.
* `allowReserved`: Whether reserved characters are allowed.
* [`schema`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#schemaObject): The schema or model for the parameter. The schema defines the input or output format. Note that the `schema` can also contain an `example` object.
* `example`: An example of the media type. If your `examples` object contains examples, those examples appear in Swagger UI rather than the content in the `example` object.
* [`examples`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#exampleObject): An example of the media type, including the schema.

{% include callout.html type="primary" title="References to components" content="The details of the [`responses` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#responsesObject) is usually referenced in the `components` object rather than included in the `paths` object. In other words, rather than defining the details of the `response` with all the details in the `paths` object, we place a `$ref` (reference) pointer to a fuller definition in the `components` object. This approach also allows you to single source the referring object, because you can have many references pointing to the same definition in components. If a parameter has a detailed [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#requestBodyObject), a reference pointer is also commonly used.<br/><br/>

With the Mashape Weather API, the first two paths (`/aqi` and `/weather`) have simple strings as their responses, so we won't define the response objects defined in `components` for those paths. However, the `/weatherdata` path has a more robust response, so rather than try to list it directly under the `schema`, we will instead provide a reference to the schema in the `components` object." %}

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

The Swagger UI display shows the `path` object like this:

<img src="/learnapidoc/images/openapiparameters.png" />

When you click **Try it out**, the `example` value populates the parameters field.

## Reducing duplication

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


See [Storing re-used parameters in components](pubapis_openapi_step5_components_object.html#reused_parameters) for more details. Also see [Describing Parameters](https://swagger.io/docs/specification/describing-parameters/) in Swagger's OpenAPI documentation.
