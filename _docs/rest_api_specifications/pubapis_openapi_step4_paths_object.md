---
title: "Step 4: The paths object (OpenAPI tutorial)"
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

The [`paths` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#pathsObject) contains the meat of your API information. The `paths` object has a number of sub-objects: a [path items object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#pathItemObject), an [operations object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#operationObject), and more.

{: .note}
My preferred term is "endpoint" rather than "path," but to be consistent with the terminology of the openAPI spec, I refer to them as "paths" here.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Start by listing the paths

Start by listing the paths (endpoints) and their allowed operations (methods). For the `current` endpoint in the OpenWeatherMap API, there is just 1 path with the `get` operation:

```yaml
paths:
  /weather:
    get:
```

## Operation Objects

Each path item object contains an [operation object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#operation-object). Operations are the GET, POST, PUT, and DELETE methods we explored in the [Endpoints section](docapis_resource_endpoints.html) of the API reference tutorial methods. The operation object contains a number of potential properties and objects:

* `tags`: A tag to organize the path under when displayed in the Swagger UI. Swagger UI will organize or group endpoints under tag headings.
* `summary`: A brief overview of the path. Swagger UI displays the summary next to the path name. Limit the summary to 5-10 words only. The display appears even when this section is collapsed.
* `description`: A full description of the path. Include as much detail as you want. There's a lot of space in the Swagger UI for these details. CommonMark Markdown is allowed.
* [`externalDocs`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#externalDocumentationObject) (object): Links to documentation for more information about the path.
* `operationId`: A unique identifier for the path.
* [`parameters`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#parameterObject) (object): Parameters accepted by the path. Does not include request body parameters, which are instead detailed in the `requestBody` object. The `parameters` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#referenceObject) that simply contains a pointer to the description in the `components` object (this is explained in [step 5](pubapis_openapi_step5_components_object.html)).
* [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#requestBodyObject) (object): The request body parameter details for this path. The `requestBody` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#referenceObject) that simply contains a pointer to the description in the `components` object (explained in [step 5](pubapis_openapi_step5_components_object.html)).
* [`responses`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#responsesObject) (object): Responses provided from requests with this path. The `responses` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#referenceObject) that simply contains a pointer to the description in the `components` object. Responses use standard [status codes](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#http-status-codes).
* [`callbacks`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#callbackObject) (object): Callback details to be initiated by the server if desired. Callbacks are operations performed after a function finishes executing. The `callbacks` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#referenceObject) that simply contains a pointer to the description in the `components` object.
* `deprecated`: Whether the path is deprecated. Omit unless you want to indicate a deprecated field. Boolean.
* [`security`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#securityRequirementObject) (object): Security authorization method used with the operation. Only include this object at the path level if you want to overwrite the `security` object at the root level. The name is defined by the `securitySchemes` object in the `components` object. More details about this are provided in the [security object](pubapis_openapi_step6_security_object.html).
* [`servers`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#serverObject) (object): A servers object that might differ for this path than the [global `servers` object](pubapis_openapi_step3_servers_object.html).

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

* There's no need to include [`requestBody` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#requestBodyObject) here because none of the OpenWeatherMap API paths contain request body parameters.
* There's no need to include the  [`servers` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#serverObject) because the paths just use the same global `servers` URL that we [defined globally](pubapis_openapi_step3_servers_object.html) at the root level.
* There's no need to include [security](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#securityRequirementObject) because all the paths use the same `security` object, which we defined globally at the root (see [step 6](pubapis_openapi_step6_security_object.html)).
* There's no need to include `deprecated` because none of the paths are deprecated.
* There's no need to include `callbacks` because our paths don't use callbacks.

As a result, we can reduce the number of fields to concern ourselves with:

```yaml
paths:
  /weather:
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
You'll undoubtedly need to consult the [OpenAPI spec](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md) to see what details are required for each of the values and objects here. I can't replicate all the detail you need, nor would I want to. I'm just trying to introduce you to the OpenAPI properties at a surface level.

Most of the properties for the operation object either require simple strings or include relatively simple objects. The most detailed object here is the `parameters` object.

## Parameters object

The [`parameters` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#parameterObject) contains an array (list designated with dashes) with these properties:

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
* [`schema`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#schemaObject) (object): The schema or model for the parameter. The schema defines the input or output data structure. Note that the `schema` can also contain an `example` object.
* `example`: An example of the media type. If your `examples` object contains examples, those examples appear in Swagger UI rather than the content in the `example` object.
* [`examples`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#exampleObject) (object): An example of the media type, including the schema.

Here's the `operation` object defined for the OpenWeather API:

```yaml
paths:
  /weather:
    get:
      tags:
      - weather
      summary: Get current weather data
      description: Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.
      operationId: WeatherGet
      parameters:

      - name: q
        in: query
        description: "**City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by comma; use ISO 3166 country codes."
        schema:
          type: string

      - name: id
        in: query
        description: "**City ID**. *Example: `2172797`*. You can call by city ID. API responds with exact result. The List of city IDs can be downloaded here http://bulk.openweathermap.org/sample/. You can include multiple cities in parameter -- just separate them by commas. The limit of locations is 20. NOTE: A single ID counts as a one API call. So, if you have city IDs. it's treated as 3 API calls."
        schema:
          type: string

      - name: lat
        in: query
        description: "**Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with longitude."
        schema:
          type: string

      - name: Longitude
        in: query
        description: "**Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with latitude."
        schema:
          type: string

      - name: zip
        in: query
        description: "Search by zip code. *Example: 95050,us*. Please note if country is not specified then the search works for USA as a default."
        schema:
          type: string
          default: "94040,us"
        example:
          "94040,us"

      - name: units
        in: query
        description: '**Units**. *Example: imperial*. Possible values: `standard`, `metric`, `imperial`. When you do not use units parameter, the format is `standard` by default.'
        schema:
          type: string
          enum: [standard, metric, imperial]
        example: "imperial"

      - name: lang
        in: query
        description: '**Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`.'
        schema:
          type: string
          enum: [ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw]
        example: "en"

      - name: Mode
        in: query
        description: "**Mode**. *Example: html*. Determines format of response. Possible values are `xml` and `html`. If mode parameter is empty the format is `json` by default."
        schema:
          type: string
          enum: [json, xml, html]
        example: "json"
```

## Single-sourcing definitions across objects {#reusing_definitions}

Instead of defining all your parameters and schemas in the `paths` object, if you re-use the same parameters or schemas across multiple endpoints, you can store these definitions in `components` and then reference them using `$ref` pointers (`$ref` stands for [`reference` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#referenceObject)). I explain more about using `$ref` in [step 5](pubapis_openapi_step5_components_object.html).

In this example, I'm just documenting one endpoint in the OpenWeatherMap API. But suppose some parameters such as `lat` and `lon` are re-used across many endpoints. In that case, you would want to store each of these parameters in `components` so that you can re-use them. Copying and pasting information multiple times is inefficient and can lead to inconsistency. The OpenAPI spec allows you to single source the parameter information from a common definition.

The code below shows how you reference a common definition stored in `components`. See how `parameters` simply contains a `$ref: '#/components/parameters/q`, which is defined in `components`. For brevity, I included just 2 parameters in this example.

```yaml

paths:
  /weather:
    get:
      tags:
      - weather
      summary: Get current weather data
      description: Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.
      operationId: WeatherGet
      parameters:
        - $ref: '#/components/parameters/q'
        - $ref: '#/components/parameters/id'

components:
  parameters:
    q:
      in: query
      description: "**City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by comma; use ISO 3166 country codes."
      schema:
        type: string
    id:
      in: query
      description: "**City ID**. *Example: `2172797`*. You can call by city ID. API responds with exact result. The List of city IDs can be downloaded here http://bulk.openweathermap.org/sample/. You can include multiple cities in parameter -- just separate them by commas. The limit of locations is 20. NOTE: A single ID counts as a one API call. So, if you have city IDs. it's treated as 3 API calls."
      schema:
        type: string
```

See [Storing re-used parameters in components](pubapis_openapi_step5_components_object.html#reused_parameters) for more details. Also see [Describing Parameters](https://swagger.io/docs/specification/describing-parameters/) in Swagger's OpenAPI documentation.

## Responses

One property of the operation object that we haven't yet defined is the [`responses` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.1.md#responsesObject). `responses` is at the same level as `parameters`. For the `responses` property, we typically just reference a full definition in the `components` object, so I'll cover the `responses` object in the next section &mdash; [Step 5: The components object](pubapis_openapi_step5_components_object.html).

For now, just add a `$ref` pointer to it:

```yaml
paths:
  /weather:
    get:
      tags:
      summary: Get current weather data
      description: Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.
      operationId: WeatherGet
      parameters:

      - name: q
        in: query
        description: "**City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by comma; use ISO 3166 country codes."
        schema:
          type: string

      - name: id
        in: query
        description: "**City ID**. *Example: `2172797`*. You can call by city ID. API responds with exact result. The List of city IDs can be downloaded here http://bulk.openweathermap.org/sample/. You can include multiple cities in parameter -- just separate them by commas. The limit of locations is 20. NOTE: A single ID counts as a one API call. So, if you have city IDs. it's treated as 3 API calls."
        schema:
          type: string

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

We'll define the details for `$ref: '#/components/schemas/WeatherGetResponse'` in the [next topic]((pubapis_openapi_step5_components_object.html)).

## Appearance of paths in Swagger UI

Swagger UI displays the `paths` object like this:

<a href="http://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="images/openapiparameters.png" /></a>

When you click **Try it out**, the `example` value populates the parameters field.

Each path is collapsed by default, but you can set whether the initial display is collapsed or open using the [`docExpansion` parameter in Swagger UI](https://github.com/swagger-api/swagger-ui#parameters).

{: .tip}
This `docExpansion` parameter is for Swagger UI and isn't part of the OpenAPI spec. Swagger UI has more than [20 different parameters](https://github.com/swagger-api/swagger-ui#parameters) that control its display. If you don't want the `Models` section to appear, add the parameter `defaultModelsExpandDepth: -1,` in your Swagger UI file.
