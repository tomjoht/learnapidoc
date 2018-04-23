---
title: Workshop activities
permalink: /workshop-activities.html
course: "Documenting REST APIs"
weight: 1.32
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
---

The following are activities used in the [live workshops](http://idratherbewriting.com/2018/01/29/api-workshop-in-denver/).

* TOC
{:toc}

## Part I: Intro to API documentation

Slides: [Intro to API documentation](http://idratherbewriting.com/intro-to-api-documentation/index.html)

### Activity: Explore an API

Explore the basic sections in API reference documentation in these two weather APIs:

* [OpenWeatherMap API](https://openweathermap.org/api/)
* [Aeris Weather API](https://www.aerisweather.com/support/docs/api/)

[Generate your own API key](docapis_get_auth_keys.html#openweathermap_apikey) for at least the OpenWeatherMap API.

### Activity: Make a curl request

This is a curl request for the weather endpoint in the OpenWeatherMap API:

```bash
curl -I -X GET "http://api.openweathermap.org/data/2.5/weather?zip=95050%2Cus&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
```

Swap in your own API key for the `appid` value in the URL's query string.

### Activity: Postman client

1.  Download [Postman](https://www.getpostman.com/).
2.  Populate Postman from the Run in Postman buttons below (or from the import links):

    {% if site.format == "pdf" or site.format == "kindle" %}

    To view these buttons, go to the web page for this content at [http://idratherbewriting.com/learnapidoc/workshop-activities.html](http://idratherbewriting.com/learnapidoc/workshop-activities.html).

    {% elsif site.format == "web" %}
    **OpenWeatherMap API collection**

    <div class="postman-run-button"
    data-postman-action="collection/import"
    data-postman-var-1="abd0d0741e8206266958"></div>
    <script type="text/javascript">
      (function (p,o,s,t,m,a,n) {
        !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
        !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
          (n = o.createElement("script")),
          (n.id = s+t), (n.async = 1), (n.src = m), n
        ));
      }(window, document, "\_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
    </script>

    If this button doesn't work for you, copy this [import link](https://www.getpostman.com/collections/abd0d0741e8206266958).

    **Aeris Weather API collection**

    <div class="postman-run-button"
    data-postman-action="collection/import"
    data-postman-var-1="65dcddab41ff7a773bb1"></div>
    <script type="text/javascript">
      (function (p,o,s,t,m,a,n) {
        !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
        !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
          (n = o.createElement("script")),
          (n.id = s+t), (n.async = 1), (n.src = m), n
        ));
      }(window, document, "\_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
    </script>

    If this button doesn't work for you, copy this [import link](https://www.getpostman.com/collections/65dcddab41ff7a773bb1).
    {% endif %}

3.  Make requests in Postman.
4.  Generate code snippets in JavaScript (AJAX) from Postman.
5.  Create a Run in Postman button for your requests. In the Collections pane, click the **<** arrow to expand the pane and click **Share**.

## Part II: OpenAPI and Swagger

Slides: [OpenAPI and Swagger](http://idratherbewriting.com/openapi-and-swagger/#/)

### Activity: OpenAPI with Stoplight

1.  Open [v3 next Stoplight app](https://next.stoplight.io/). (You can also use the [Desktop app](https://github.com/stoplightio/desktop/releases/latest).)
2.  From main.oas, open the Code tab and paste in content for this 2.0 JSON Open API definition: [openweathermap_swagger20.json](http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openweathermap_swagger20.json).
3.  Edit, explore Basics, Requests, Responses sections.
4.  In the Responses area, click **Generate from JSON**, paste in complex JSON snippet into the Responses area, then click **Generate!**

    ```json
      {
      "coord": {
        "lon": -121.96,
        "lat": 37.35
      },
      "weather": [
        {
          "id": 804,
          "main": "Clouds",
          "description": "overcast clouds",
          "icon": "04d"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 57.18,
        "pressure": 1020,
        "humidity": 47,
        "temp_min": 53.6,
        "temp_max": 59
      },
      "visibility": 16093,
      "wind": {
        "speed": 3.29,
        "deg": 256.502
      },
      "clouds": {
        "all": 90
      },
      "dt": 1522947600,
      "sys": {
        "type": 1,
        "id": 479,
        "message": 0.0049,
        "country": "US",
        "sunrise": 1522935974,
        "sunset": 1522982091
      },
      "id": 420006397,
      "name": "Santa Clara",
      "cod": 200
    }
   ```

   More details about Stoplight are available here:

   * [Stoplight — visual modeling tools for creating your OpenAPI spec](pubapis_stoplight.html)
   * [Activity: Use Stoplight to edit your OpenAPI spec](pubapis_stoplight_activity.html)

### Activity: Swagger Editor

1. Paste [this YAML file](http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) into [Swagger Editor](https://editor.swagger.io/) and make updates.
2. Go to [this SwaggerHub API](https://app.swaggerhub.com/apis/IdRatherBeWriting/open-weather_map_api/). Observe Generate Client SDK options.

### Activity: Swagger UI

1. Download [Swagger UI](https://github.com/swagger-api/swagger-ui/tree/v3.4.1).
2. Uncompress and pull out the **dist** folder.
3. Save this file locally:  [openapi_openweathermap.yml](http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) into the **dist** folder.
4. Reference **openapi_openweathermap.yml** in place of the default `url` value.
5. Open in Firefox.

## Part III: Non-reference content in API docs

Slides: [Non-reference content in API docs](http://idratherbewriting.com/nonref-content-api-docs/#/)

###  Activity: GitHub workflow

This workflow is key for working with sample apps and code repositories.

1.  Create new repo and initialize with readme. Clone repo locally using `git clone`.
2.  Make update to readme file and push back into repo:

    ```
    git add .
    git commit -m "made update to readme"
    git pull
    git push
    ```
