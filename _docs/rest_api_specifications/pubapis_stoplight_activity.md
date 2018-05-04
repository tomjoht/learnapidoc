---
title: "Activity: Use Stoplight to edit your OpenAPI spec"
permalink: pubapis_stoplight_activity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.91
section: restapispecifications
path1: /restapispecifications.html
---

In previous activities, you created your own [OpenAPI specification document](pubapis_openapi_activity.html) and also created a [Swagger UI display](pubapis_swagger_ui_activity.html) with that specification document. In this example, you'll make some modifications to your specification document using [Stoplight](pubapis_stoplight.html), a visual editor.

{: .note}
If you landed on this activity before learning about Stoplight, read [Stoplight &mdash; visual modeling tools for creating your OpenAPI spec](pubapis_stoplight.html) first.

## Download and populate Stoplight with an OpenAPI specification

In this activity, you'll download and explore Stoplight. To speed things up, you'll start with an OpenAPI definition that you paste into the Stoplight editor, and then you'll make some modifications to it using Stoplight's visual modeling tools.

You can use Stoplight in the browser or as a web app. For simplicity, we'll use the browser version. For the OpenAPI spec that you paste in, use the custom specification you created in an [earlier activity with the spec](pubapis_openapi_activity.html). However, because Stoplight supports only the 2.0 version of the spec (as do most tools currently), you'll need to convert your 3.0 version to 2.0 using the [API Transformer](https://apimatic.io/transformer) (a nifty converter tool from APIMATIC). Alternatively, you can use the [2.0 version of the Sunrise and Sunset OpenAPI spec](http://idratherbewriting.com/learnapidoc/assets/files/swagger/openapi_sunrise_sunset_20.json) that I've already converted, or the [2.0 version of the OpenWeather Map API](http://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openweathermap_swagger20.json) that I've already converted.

To download and populate Stoplight with an existing OpenAPI spec:

1.  Go to [next.stoplight.io/](https://next.stoplight.io/).
2.  Click **Login** in the upper-right corner and log in through your GitHub account.
3.  Click **New Project**.
4.  Type a **Project name** (e.g., Sunrise and Sunset API), a **Project path** (e.g., the default path), and a **Summary** (e.g., "Documentation for Sunrise and Sunset API"). Leave the visibility as **Public** and click **Create Project**.
4.  In the left pane, click the **Files** icon to expand the left pane, and then click under Modeling, click **main.oas2**.
5.  At the top of the screen, click **</> Code** to switch into the code view.
6.  In the main content area, delete any existing code shown, and then paste in a 2.0 version of your Swagger spec. (See the introductory text above for a sample spec to use.)
7.  Click **Save** and then **Confirm**.
8.  Click the **Design** button at the top to switch back to the visual view.

## Explore Stoplight

Now that you have some data populated in Stoplight, let's explore Stoplight a bit more by expanding various sections and making some modifications.

1.  In the side pane, expand **PATHS** and then expand your endpoint. It should look something like this:

    <img class="large" src="images/stoplight-editor-view-openweathermap.png"/>

2.  In the main content area, the API content is grouped in several sections: Basics, Request, and Responses. Explore each of these sections by expanding them and viewing the content.
3.  Expand the **Requests** section, then expand **[#] Query Parameters**. Make an edit to one of your query parameter descriptions by clicking the <img style="display:inline" src="images/stoplighteditbutton"/> button.
4.  Expand the **Responses** section, and for the **200** response, select the **Raw Schema** tab and delete the existing content. It will leave `{}` there, which is good.
5.  Switch to the **Editor** tab, click **Generate from JSON** and paste in the following JSON response from the OpenWeatherMap weather endpoint.

    ```json
    {
      "coord": {
        "lon": -121.96,
        "lat": 37.35
      },
      "weather": [
        {
          "id": 721,
          "main": "Haze",
          "description": "haze",
          "icon": "50n"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 67.42,
        "pressure": 1012,
        "humidity": 40,
        "temp_min": 55.4,
        "temp_max": 77
      },
      "visibility": 16093,
      "wind": {
        "speed": 12.75,
        "deg": 300,
        "gust": 8.7
      },
      "clouds": {
        "all": 75
      },
      "dt": 1524448800,
      "sys": {
        "type": 1,
        "id": 479,
        "message": 0.0043,
        "country": "US",
        "sunrise": 1524489736,
        "sunset": 1524538230
      },
      "id": 420006397,
      "name": "Santa Clara",
      "cod": 200
    }
    ```

6.  Then click **Generate!**.

    This video shows the process of auto-generating JSON. (Instead of starting with the above sample JSON, the video makes request in Postman and then copies the response from there &mdash; but the idea should be clear.)

    <figure><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/0IOWY0Hj3Xc?ecver=2" width="560" height="340" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>Stoplight's visual modeling tools let you automatically create the correct JSON schema definition from a block of JSON that you paste in.</figcaption></figure>

7.  Switch between the **Code** and **Design** views by clicking the corresponding buttons at the top. Make some edits in the code and then switch to the Design view to see the edits reflected. The following video shows this process:

    <figure><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/vqDJBa-haYs" width="560" height="340" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>When you switch to the code view, the editor automatically goes to the part of the spec you were creating in the visual editor and highlights it. When you switch back, the visual UI updates with any changes you made in the code. Switching between modes is seamless and easy.</figcaption></figure>

<small>Note that Stoplight is one of the sponsors of my site.</small>
