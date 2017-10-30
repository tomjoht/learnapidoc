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
* [`parameters`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#parameter-object): Parameters accepted by the path. Usual values are query, header, or path.
* [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#requestBodyObject): The request body parameter details for this path.
* [`responses`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#responsesObject): Responses provided from requests with this path
* [`callbacks`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#callbackObject): Callback details to be initiated by the server if desired. Callbacks are operations performed after a function finishes executing.
* `deprecated`: Whether the path is deprecated. Omit unless you want to indicate a deprecated field. Boolean.
* [`security`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#securityRequirementObject): Security authorization method used with the response. Here you refer to the security method you're using; this name is defined by the `securitySchemes` object in the `components` object. More details about this are provided in the [security object](pubapis_openapi_step6_security_object.html).
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
```

I didn't include [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#requestBodyObject) here because none of the Mashape Weather API endpoints contain request body parameters. Additionally, I didn't include [`servers`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#serverObject) either because the paths just use the same servers URL that we defined earlier.

{: .tip}
You'll undoubtedly need to consult the [OpenAPI spec](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md) to see what details are required for each of the values and objects here. I can't replicate all the detail you need, nor would I want to. I'm just trying to introduce you to the OpenAPI properties at a surface level here.

Most of the properties for the operation object either require simple strings or include relatively simple objects. The most detailed object here is the `parameters` object. The [`parameters` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#parameter-object) can have these properties:

* `name`: Parameter name.
* `in`: Where the parameter appears. Possible values: `header`, `path`, `query`, or `cookie`.
* `description`: Description of the parameter.
* `required`: Whether the parameter is required.
* `deprecated`: Whether the parameter is deprecated.
* `allowEmptyValue`: Whether the parameter allows an empty value to be submitted.
* `style`: How the parameter's data is serialized (converted to bytes during data transfer)
* `explode`
* `allowReserved`: Whether reserved characters are allowed.
* [`schema`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#schemaObject): The schema or model for the parameter. The schema defines the input or output format. Note that the `schema` can also contain an `example` object.
* `example`: An example of the media type. If your `examples` object contains examples, those examples appear in Swagger UI rather than the content in the `example` object.
* [`examples`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#exampleObject): An example of the media type, including the schema.

{% include callout.html type="primary" title="References to components" content="The details of the [`responses` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#responsesObject) is usually referenced in the `components` object rather than included in the `paths` object. In other words, rather than defining the details of the `response` with all the details in the `paths` object, we place a `$ref` (reference) pointer to a fuller definition in the `components` object. This approach also allows you to single source the referring object, because you can have many references pointing to the same definition in components. If a parameter has a detailed [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md#requestBodyObject), a reference pointer is also commonly used.<br/><br/>

With the Mashape Weather API, the first two paths (`/aqi` and `/weather`) have simple strings as their responses, so we won't refer to response objects defined in `components` for those paths. However, the `/weatherdata` path has a more robust response, so rather than try to list it directly under the `schema`, we will instead provide a reference to the schema in the `components` object." %}

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
        example: 37.3708698
      - name: lng
        in: query
        description: "Longitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: -122.037593
      responses:
        200:
          description: AQI response
          content:
            text/plain:
              schema:
                type: string
                description: AQI response
                example: 52
              example: 52
      deprecated: false
      security:
      - Mashape-Key: []
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
        example: 37.3708698
      - name: lng
        in: query
        description: "Longitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: -122.037593
      responses:
        200:
          description: weather response
          content:
            text/plain:
              schema:
                type: string
                description: weather response
                example: 26 c, Mostly Clear at Singapore, Singapore
              example: 26 c, Mostly Clear at Singapore, Singapore
      deprecated: false
      security:
      - Mashape-Key: []

  /weatherdata:
    get:
      tags:
        - Full Weather Data
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
        example: 37.3708698
      - name: lng
        in: query
        description: "Longitude coordinates."
        required: true
        style: form
        explode: false
        schema:
          type: string
        example: -122.037593
      responses:
        200:
          description: Successful operation
          content:
            application/json:
              schema:
                description: Successful operation
                $ref: '#/components/schemas/WeatherdataResponse'
      deprecated: false
      security:
      - Mashape-Key: []
```

The Swagger UI display shows the `path` object like this:

<img src="/learnapidoc/images/openapiparameters.png" />

When you click **Try it out**, the `example` value populates the parameters field.
