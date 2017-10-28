---
title: "OpenAPI tutorial: step 4"
permalink: /pubapis_openapi_step4_paths_object.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.264
section: restapispecifications
path1: /restapispecifications.html
---

{% include workflow_map.html step="4" map="content/openapi_tutorial_map.html"  %}

{: .note}
Content is under construction here...please be patient.

This is the meat of the spec, so let's break this up a bit between a path object, path item object, and operation object.

List the paths (endpoints) and their allowed operations (methods):

```yaml
paths:
  /aqi:
    get:

  /weather:
    get:

  /weatherdata:
    get:

```

Now fill in the placeholder objects for the paths. Each path item object can have these properties:

```yaml
  /aqi:
    get:
      tags:
      summary:
      description:
      operationId:
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
      parameters:
      responses:
      deprecated:
      security:        
```

Now you look at the spec to find the exact details required for each object. Here is the first endpoint with the most common details filled in. (The spec provides some additional fields for more advanced use cases that aren't listed here.) In comments to the side I've added brief explanations. The spec documentation provides more information.

```yaml
  /aqi:
    get:
      tags:
      - Air Quality # Swagger UI will organize endpoints under tag headings.
      summary: getAqi # Swagger UI displays the summary next to the heading. Limit to 5-10 words only.
      description: Gets the air quality index # Describe the endpoint in as much detail as you want. Markdown allowed.
      operationId: GetAqi # unique identifier for the parameter
      parameters: # parameters accepted by the endpoint
      - name: lat # parameter name
        in: query # the parameter type. options are query, path, ... body request parameters are treated with different syntax.
        description: "Latitude coordinates. Sunnyvale: 37.3708698"
        required: true # whether the parameter is required
        schema: # model for the parameter
          type: string # data type for the parameter
      - name: lng
        in: query
        description: "Longitude coordinates. Sunnyvale: -122.037593"
        required: true
        schema:
          type: string
      deprecated: false # whether the endpoint is deprecated or not
      responses: # response from the request
        200: # status code of the response
          description: AQI response # description of the response
          content: #  content of the response
            text/plain: # format of the response
              schema: # model of the response
                type: string # the response
                description: AQI response # description for the response
                example: 52 # Sample response value.
      security: # security authorization method used with the response
      - Mashape-Key: [] # reference for the security method used. defined in components/securitySchemes object
```


Now let's fill in the details for the `/weather` path.

```yaml
  /weather:
    get:
      servers:
      - url: https://simple-weather.p.mashape.com
      tags:
      - Weather Forecast
      summary: getWeather
      description: Gets the weather forecast in abbreviated form
      operationId: GetWeather
      parameters:
      - name: lat
        in: query
        description: "Latitude coordinates. Sunnyvale: 37.3708698"
        required: true
        schema:
          type: string
      - name: lng
        in: query
        description: "Longitude coordinates. Sunnyvale: -122.037593"
        required: true
        schema:
          type: string
      deprecated: false
      responses:
        200:
          description: weather response
          content:
            text/plain:
              schema:
                type: string
                description: weather response
                example: 26 c, Mostly Clear at Singapore, Singapore
      security:
      - Mashape-Key: []
```

And finally the `/weatherdata` path. This endpoint has a more robust response, so rather than try to list it directly under the `schema`, we will instead provide a reference to the schema in the `components` object.

```yaml
  /weatherdata:
    get:
      tags:
        - Full Weather Data
      summary: getWeatherData
      description: Get weather forecast with lots of details
      operationId: GetWeatherData
      parameters:
      - name: lat
        in: query
        description: "Latitude coordinates. Sunnyvale: 37.3708698"
        required: true
        schema:
          type: string
      - name: lng
        in: query
        description: "Longitude coordinates. Sunnyvale: -122.037593"
        required: true
        schema:
          type: string
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
