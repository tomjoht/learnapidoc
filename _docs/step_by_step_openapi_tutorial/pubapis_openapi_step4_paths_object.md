---
title: "Step 4: The paths object (OpenAPI tutorial)"
permalink: pubapis_openapi_step4_paths_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.6
section: openapitutorial
path1: restapispecifications.html
path2: openapi_tutorial.html
map:
  step: 4
  definition: content/openapi_tutorial_map.html
last-modified: 2020-09-07
---

{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/openapistep4.png"/>
{% endif %}

The [`paths` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#pathsObject) contains the meat of your API information. The `paths` object has several sub-objects: a [path items object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#pathItemObject), an [operations object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#operationObject), and more.

{: .tip}
We've been moving along at about 5 mph in the previous steps but are going to speed up to 60 mph here quickly. It's okay if the content that follows doesn't entirely sink in. You can paste the example code that follows into Swagger UI for now and later go back to study it in more detail.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Paths objects

{: .note}
My preferred term is "endpoint" rather than "path," but to be consistent with the terminology of the OpenAPI spec, I use the term "paths" here.

{% include random_ad2.html %}

Each item in the `path` object contains an [operation object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#operation-object). (Operations are the GET, POST, PUT, and DELETE methods we explored in the [Endpoints section](docapis_resource_endpoints.html) of the API reference tutorial.)

Start by listing the paths (endpoints) and their allowed operations (methods). For the `weather` endpoint in the OpenWeatherMap API, there is just one path (`/weather`) and one operation (`get`) for that path:

```yaml
paths:
  /weather:
    get:
```

### Operation Objects

The operation object (`get` in the code above) contains various properties and objects:

* `tags`: A group name to organize paths in the Swagger UI. Swagger UI will group endpoints under tag headings.
* `summary`: A brief overview of the path. Swagger UI shows the summary next to the path name. Limit the summary to 5-10 words only. The display appears even when this section is collapsed.
* `description`: A full description of the path. Include as much detail as you want. There's a lot of space in the Swagger UI for these details. CommonMark Markdown is allowed.
* [`externalDocs`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#externalDocumentationObject) (object): Links to documentation for more information about the path.
* `operationId`: A unique identifier for the path.
* [`parameters`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#parameterObject) (object): Parameters accepted by the path. Does not include request bodies, which are instead detailed in the [`requestBody` object](). The `parameters` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#requestBodyObject) that contains a pointer to the description in the `components` object (this is explained in [Step 5: The components object](pubapis_openapi_step5_components_object.html)).
* [`requestBody`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#requestBodyObject) (object): The request body details for this path. The `requestBody` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#referenceObject) that contains a pointer to the description in the `components` object (explained in [step 5](pubapis_openapi_step5_components_object.html)). (You can find an example of a `requestBody` parameter in the [Swagger Petstore demo](https://petstore.swagger.io/#/pet/addPet). The `/pet` endpoint submits a request body when adding a pet. Check out the `requestBody` YAML syntax in [petstore-expanded.yml](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/petstore-expanded.yaml) &mdash; look at `post` under `/pets`. Also see [Describing Request Body](https://swagger.io/docs/specification/describing-request-body/).)
* [`responses`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#responsesObject) (object): Responses provided from requests with this path. The `responses` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#referenceObject) that contains a pointer to the description in the `components` object. Responses use standard [status codes](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#http-status-codes).
* [`callbacks`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#callbackObject) (object): Callback details to be initiated by the server if desired. Callbacks are operations performed after a function finishes executing. The `callbacks` object can also include a [reference object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#referenceObject) that contains a pointer to the description in the `components` object.
* `deprecated`: Whether the path is deprecated. Omit unless you want to indicate a deprecated field. Boolean.
* [`security`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#securityRequirementObject) (object): Security authorization method used with the operation. Include this object at the path level only if you want to overwrite the `security` object at the root level. The name is defined by the `securitySchemes` object in the `components` object. More details about this are provided in the [security object](pubapis_openapi_step6_security_object.html).
* [`servers`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#serverObject) (object): A servers object that might differ from the [global `servers` object](pubapis_openapi_step3_servers_object.html) for this path.

Each of the above hyperlinked properties that say "(object)" contain additional levels. Their values aren't just simple data types like strings but are rather objects that contain their own properties.

{: .tip}
You'll undoubtedly need to consult the [OpenAPI spec](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md) to see what details are required for each of the values and objects here. I can't replicate all the details you need, nor would I want to. I'm just trying to introduce you to the OpenAPI properties at a surface level.

Let's add a skeleton of the operation object details to our existing code:

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
      deprecated:
      security:
      servers:
      requestBody:
      callbacks:
```

{: .note}
At this point, if you paste this content into the Swagger Editor, you will get errors until some additional properties are added.

{% include ads.html %}

Now we can remove a few unnecessary fields that we don't need for our OpenWeatherMap API documentation:

* There's no need to include [`requestBody` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#requestBodyObject) because none of the OpenWeatherMap API paths contain request bodies.
* There's no need to include the [`servers` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#serverObject) because the paths use the same global `servers` URL that we [defined globally](pubapis_openapi_step3_servers_object.html) at the root level.
* There's no need to include [security](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#securityRequirementObject) because all the paths use the same `security` object, which we will define globally at the root level later (see [Step 6: The security object](pubapis_openapi_step6_security_object.html)).
* There's no need to include `deprecated` because none of the paths are deprecated.
* There's no need to include `callbacks` because none of the paths use callbacks.

As a result, we can reduce the number of relevant fields to the following:

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

Most of the properties for the operation object either require simple strings or include relatively simple objects. The most detailed object here is the [`parameters` object](#parameters) and the [`responses` object](#responses).

#### Parameters object {#parameters}

The [`parameters` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#parameterObject) contains an array with these properties:

* `name`: Parameter name.
* `in`: Where the parameter appears. Possible values are `header`, `path`, `query`, or `cookie`. (Request bodies are not described here.)
* `description`: Description of the parameter.
* `required`: Whether the parameter is required.
* `deprecated`: Whether the parameter is deprecated.
* `allowEmptyValue`: Whether the parameter allows an empty value to be submitted.
* `style`: How the parameter's data is serialized (converted to bytes during data transfer).
* `explode`: Advanced parameter related to arrays.
* `allowReserved`: Whether reserved characters are allowed.
* [`schema`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#schemaObject) (object): The schema or model for the parameter. The schema defines the input or output data structure. Note that the `schema` can also contain an `example` object.
* `example`: An example of the media type. If your `examples` object contains examples, those examples appear in Swagger UI rather than the content in the `example` object.
* [`examples`](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#exampleObject) (object): An example of the media type, including the schema.

Here's the `paths` object that includes the `parameters` details:

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
      summary: "Call current weather data for one location."
      description: "Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations."
      operationId: CurrentWeatherData
      parameters:
      - name: q
        in: query
        description: "**City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes."
        schema:
          type: string

      - name: id
        in: query
        description: "**City ID**. *Example: `2172797`*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](http://bulk.openweathermap.org/sample/). You can include multiple cities in this parameter &mdash; just separate them by commas. The limit of locations is 20. *Note: A single ID counts as a one API call. So, if you have city IDs, it's treated as 3 API calls.*"
        schema:
          type: string

      - name: lat
        in: query
        description: "**Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with `lon`."
        schema:
          type: string

      - name: lon
        in: query
        description: "**Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`."
        schema:
          type: string

      - name: zip
        in: query
        description: "**Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default."
        schema:
          type: string

      - name: units
        in: query
        description: '**Units**. *Example: imperial*. Possible values: `standard`, `metric`, and `imperial`. When you do not use the `units` parameter, the format is `standard` by default.'
        schema:
          type: string
          enum: [standard, metric, imperial]
          default: "imperial"

      - name: lang
        in: query
        description: '**Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`.'
        schema:
          type: string
          enum: [ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw]
          default: "en"

      - name: mode
        in: query
        description: "**Mode**. *Example: html*. Determines the format of the response. Possible values are `xml` and `html`. If the mode parameter is empty, the format is `json` by default."
        schema:
          type: string
          enum: [json, xml, html]
          default: "json"
```

{% include content/troubleshooting_spec_tip.md %}

#### Responses object {#responses}

{% include image_ad_right.html %}

The other substantial property in the operations object is the [`responses` object](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md#responsesObject). For the `responses` property, you typically reference a full definition in the `components` object, so I'll cover the `responses` object in the next section &mdash; [Step 5: The components object](pubapis_openapi_step5_components_object.html). (There's already too much detail in this step as is.)

For now, so that the Swagger Editor will validate and show our path, let's just add some placeholder content for `responses`:

```yaml
responses:
  200:
    description: Successful response
    content:
      application/json:
        schema:
          title: Sample
          type: object
          properties:
            placeholder:
              type: string
              description: Placeholder description

  404:
    description: Not found response
    content:
      text/plain:
        schema:
          title: Weather not found
          type: string
          example: Not found
```

See [Describing Parameters](https://swagger.io/docs/specification/describing-parameters/) in Swagger's OpenAPI documentation for more details.

{% include random_ad3.html %}

## Paths object code

Now let's combine the above two code blocks (both `parameters` and `responses`) for our `paths` object. You can paste the following code into the Swagger Editor &mdash; add this `paths` object below the `openapi`, `info`, and `servers` code you added in the previous tutorials.

```yaml
paths:
  /weather:
    get:
      tags:
      - Current Weather Data
      summary: "Call current weather data for one location."
      description: "Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations."
      operationId: CurrentWeatherData
      parameters:
      - name: q
        in: query
        description: "**City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes."
        schema:
          type: string

      - name: id
        in: query
        description: "**City ID**. *Example: `2172797`*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](http://bulk.openweathermap.org/sample/). You can include multiple cities in this parameter &mdash; just separate them by commas. The limit of locations is 20. *Note: A single ID counts as a one API call. So, if you have city IDs, it's treated as 3 API calls.*"
        schema:
          type: string

      - name: lat
        in: query
        description: "**Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with `lon`."
        schema:
          type: string

      - name: lon
        in: query
        description: "**Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`."
        schema:
          type: string

      - name: zip
        in: query
        description: "**Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default."
        schema:
          type: string

      - name: units
        in: query
        description: '**Units**. *Example: imperial*. Possible values: `standard`, `metric`, and `imperial`. When you do not use the `units` parameter, the format is `standard` by default.'
        schema:
          type: string
          enum: [standard, metric, imperial]
          default: "imperial"

      - name: lang
        in: query
        description: '**Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`.'
        schema:
          type: string
          enum: [ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw]
          default: "en"

      - name: mode
        in: query
        description: "**Mode**. *Example: html*. Determines the format of the response. Possible values are `xml` and `html`. If the mode parameter is empty, the format is `json` by default."
        schema:
          type: string
          enum: [json, xml, html]
          default: "json"

      responses:
        200:
          description: Successful response
          content:
            application/json:
              schema:
                title: Sample
                type: object
                properties:
                  placeholder:
                    type: string
                    description: Placeholder description

        404:
          description: Not found response
          content:
            text/plain:
              schema:
                title: Weather not found
                type: string
                example: Not found
```

## <i class="fa fa-user-circle"></i> View the Appearance in Swagger UI

Swagger UI displays the `paths` object like this:

<a href="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" class="noExtIcon"><img src="{{site.media}}/step5_aswaggeruiprogress.png" class="large" /></a>

Expand the Current Weather Data section to see the details. When you click **Try it out**, you'll notice that the field populates with the description. If you want the field to populate with a value, add a `default` property under `schema` (as shown with the `mode` parameter in the code above).

However, with this API, the parameters can't all be passed with the same request &mdash; you use only the parameters you want for the request you're making. (For example, you can't pass zip code *and* city name *and* lat/long, etc. in the same request.) As a result, it wouldn't make sense to use defaults for each parameter because the user would then need to remove most of them.

{: .tip}
Swagger's UI collapses each path by default. You can set whether the initial display is collapsed or open using the [`docExpansion` parameter in Swagger UI](https://github.com/swagger-api/swagger-ui#parameters). This `docExpansion` parameter is for Swagger UI and not part of the OpenAPI spec. Swagger UI has more than [20 different parameters](https://github.com/swagger-api/swagger-ui#parameters) of its own that control the display. For example, if you don't want the `Models` section to appear, add the parameter `defaultModelsExpandDepth: -1` in your Swagger UI file.

## Note about parameter dependencies

The OpenAPI specification doesn't allow you to declare dependencies with parameters, or mutually exclusive parameters. According to the Swagger OpenAPI documentation,

> OpenAPI 3.0 does not support parameter dependencies and mutually exclusive parameters. There is an open feature request at [https://github.com/OAI/OpenAPI-Specification/issues/256](https://github.com/OAI/OpenAPI-Specification/issues/256).
What you can do is document the restrictions in the parameter description and define the logic in the 400 Bad Request response. ([Parameter Dependencies](https://swagger.io/docs/specification/describing-parameters/#parameter-dependencies-19))

In the case of the weather endpoint with the OpenWeatherMap, most of the parameters are mutually exclusive. You can't search by City ID *and* zip code simultaneously. Although the parameters are optional, you must use at least one parameter. Also, if you use the `lat` parameter, you must also use the `lon` parameter because they're a pair. The OpenAPI spec can't programmatically reflect that structured logic, so you have to explain it in the `description` property or in other more conceptual documentation.

{% include random_ad4.html %}
