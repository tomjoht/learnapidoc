---
title: Workshop activities
permalink: /workshop-activities.html
course: "Documenting REST APIs"
weight: 13.5
sidebar: docapis
section: resources
path1: /resources.html
---

When I give API workshops, it helps to consolidate activities into a single page with brief instructions. The following are activities I use when teaching an API workshop. (The content for the activities is the same content that appears in other parts of the course &mdash; it's just pulled in here for convenience.)

## Part I: Intro to API documentation

Slides: [Intro to API documentation](https://idratherbewriting.com/intro-to-api-documentation/index.html)

**Activities**:

{% include workshop_button.html title="Activity 1: Explore OpenWeatherMap API" activity="explore_openweathermap_api" %}

{% include workshop_button.html title="Activity 2: Get OpenWeatherMap authorization keys" activity="get_authorization_keys" %}

{% include workshop_button.html title="Activity 3: Make requests with Postman" activity="postman_request" %}

{% include workshop_button.html title="Activity 4: Make requests with curl" activity="make_curl_request" %}

{% include workshop_button.html title="Activity 5: Make AJAX request and inspect payload" activity="ajax_api_request" %}


## Part II: OpenAPI and Swagger

Slides: [OpenAPI and Swagger](https://idratherbewriting.com/openapi-and-swagger/#/)

### Activity: OpenAPI with Stoplight

1.  Open [v3 next Stoplight app](https://next.stoplight.io/). (You can also use the [Desktop app](https://github.com/stoplightio/desktop/releases/latest).)
2.  From main.oas, open the Code tab and paste in content for this 2.0 JSON Open API definition: [openweathermap_swagger20.json](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openweathermap_swagger20.json).
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
   * [Activity: Use Stoplight to edit your OpenAPI spec](pubapis_stoplight.html#workshop_activity)

{% include random_ad.html %}

### Activity: Swagger Editor

1. Paste [this YAML file](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) into [Swagger Editor](https://editor.swagger.io/) and make updates.
2. Go to [this SwaggerHub API](https://app.swaggerhub.com/apis/IdRatherBeWriting/open-weather_map_api/). Observe Generate Client SDK options.

### Activity: Swagger UI

1. Download [Swagger UI](https://github.com/swagger-api/swagger-ui/tree/v3.4.1).
2. Uncompress and pull out the **dist** folder.
3. Save this file locally:  [openapi_openweathermap.yml](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) into the **dist** folder.
4. Reference **openapi_openweathermap.yml** in place of the default `url` value.
5. Open in Firefox.

## Part III: Non-reference content in API docs

Slides: [Non-reference content in API docs](https://idratherbewriting.com/nonref-content-api-docs/#/)

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


{% include random_ad2.html %}
