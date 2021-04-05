---
title: "Create an OpenAPI specification document using Stoplight Studio's visual editor"
permalink: pubapis_openapis_quickstart_stoplight.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.3
section: restapispecifications
path1: /restapispecifications.html
redirect_from:
- /learnapidoc/stoplight_studio_tutorial.html
last-modified: 2021-04-04
---

{: .note}
I recently updated this tutorial to match the latest Stoplight functionality but still need to smoothen and fine-tune this content in places. Be aware that the update might be rough in places.

In [Introduction to the OpenAPI specification](pubapis_openapi_intro.html), I explained that you can create an OpenAPI specification document in several ways: (a) auto-generating it from annotations in your source code, (b) coding it by hand in an editor such as the Swagger Editor, and (c) using a GUI editor such as Stoplight Studio. In this tutorial, I'll walk through the third approach: using Stoplight Studio, a GUI editor for modeling your API. You'll use Stoplight Studio to create a valid OpenAPI specification, using the OpenWeatherMap as the sample API.

{: .note}
A more conceptual introduction to Stoplight Studio is available here: [Stoplight — visual modeling tools for creating your OpenAPI spec](pubapis_stoplight.html).

* TOC
{:toc}

## Using a visual editor

When you create an OpenAPI spec, an initial consideration is how to create it, which editor to use, and which approach to follow. Why use a visual/GUI editor, which hides the code (unless you toggle the view open) instead of coding every detail of the spec by hand?

All approaches have their merits. If you don't work with the OpenAPI specification enough to remember all the fields and syntax for each property, or if you're learning it for the first time, trying to get the syntax valid in the raw code can be challenging. Coding it by hand leads to many errors and forces you to spend a lot of time troubleshooting why the syntax is invalid.

Using an editor helps you avoid these errors and focus instead on the content. For more on this philosophy, read this post by Phil Sturgeon, who says Stoplight Studio is "an absolute game changer for API Design, and something I've been waiting for since I found out about it somewhere in 2018" ([Reinventing API Design with Stoplight Studio](https://phil.tech/2019/08/22/reinventing-api-design-stoplight-studio/)).

## Before we begin

Before we begin the tutorial, note the following:

* Stoplight Studio isn't the only GUI editor for creating OpenAPI specifications. You can also use [OpenAPI-GUI](https://mermade.github.io/openapi-gui/), [Apibldr](https://apibldr.com/), [SwaggerHub's visual editor](https://app.swaggerhub.com/help/ui/visual-editor), and others.
* Although Stoplight has a commercial offering, their editor is free. In general, you can use the editor to create a valid specification and then choose the tool you want to use to render it (e.g., Stoplight, Redoc, Spectacle, Swagger UI, or some other display framework). My point is this: once you have a valid OpenAPI specification, the spec can be rendered by many different frameworks.
* Stoplight's platform gives you a nice path toward more comprehensive documentation, including not only API reference content but also [conceptual documentation](docconceptual.html) and [tutorial content](docapiscode.html). This lets you create a more seamless documentation experience for your readers across many different types of content. (This tutorial will only cover creating API reference docs, though.)
* In this tutorial, we'll use sample information from the [OpenWeatherMap API](https://openweathermap.org/api) (more specifically, the [Current weather data endpoint](https://openweathermap.org/current)), which is the same API we've been using in this course uses in other areas, such as the [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html).
* Stoplight is one of the sponsors of my site. I would still recommend this approach regardless of any site sponsorship. It makes sense to use an editor when your content must conform to a highly technical syntax.
* For full Stoplight documentation, see the [Stoplight Studio documentation](https://stoplight.io/p/docs/gh/stoplightio/studio).

## What you'll build

Here's a screenshot of what you'll build in this tutorial:

<a href="https://idratherbewriting.stoplight.io/docs/openweathermap3/reference/openweathermap.v1.yaml/paths/~1weather/get"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_tutorial_end_goal.png" alt="Final output from Stoplight tutorial" /></a>

{% include random_ad4.html %}

## Set up a project in Stoplight Studio

{: .note}
Stoplight provides a variety of options for working with projects &mdash; desktop editor versus web editor, syncing from GitHub or saving directly to Stoplight. In this tutorial, I take the simplest path using the web editor, but recognize that you have more options. See [Working with Projects](https://meta.stoplight.io/docs/studio/docs/Basics/01-working-with-projects.md).

1.  Go to [https://stoplight.io/studio/](https://stoplight.io/studio/) and click **On the Web**.
2.  Follow the on-screen instruction to create a workspace, and then sign into it, authenticating with one of the ID options.
3.  Click the **+** button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_plus_button.png" alt="Add project button" /> at the top to add a new project. Give the project a name, and then click **Create Project**.

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/add_project_stoplight.png" alt="Adding a project in Stoplight Studio" />

    The Stoplight Studio editor opens:

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_editor_opens.png" alt=" Stoplight Studio editor " />

    When the project loads, the left pane says, "You do not have any APIs or models."

4.  Click the **API** button in the sidebar.

5.  In the New API dialog box, name your API (e.g., "openweathermap"), and click **Create**. By default, the editor will use OpenAPI v3 and YAML.

    Stoplight Studio creates an OAS file ("<b>O</b>pen<b>A</b>PI <b>S</b>pecification") called, in this case, openweathermap.v1.yml and loads it as follows:

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/openweathermap_project_api_editor.png" alt="Open API editor in Stoplight" />

6.  Stoplight lets you toggle between a form and code editor. The above screenshot shows the form view. Click the **</> Code** button in the upper-right corner to see the code automatically created. The code includes some sample content for some fictitious user endpoints.

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_sample_code_editor.png" alt="Sample code from Stoplight code editor" />

    You could simply paste in a valid OpenAPI spec into the Code editor. However, presumably you don't already have an OpenAPI spec &mdash; this is why you're using the editor: you use the visual editor to build out the spec document.

7.  Click the **Preview** button in the upper-right corner to see what the content would look like when published.

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_published_view.png" alt="Stoplight's published view" />

    The ability to switch views between Form, Code, and Preview gives you a lot of authoring power.

7.  Click the **Form** button to switch back to the form view.

## Enter the API name, version, description, and contact information

Let's populate the fields in the API overview section (these include the version, name, description, security, contact, license, and other general details). For this tutorial, I've prepared sample information for you to insert into the Stoplight Editor.

In the sidebar, click **API Overview.** Then enter each of the form fields using information provided in the blue button titled "General API information" below. When finished, the forms should look like this:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_api_overview_screens.png" alt="Populating Stoplight info in API Overview section" />

Expand this button for the information you need:

<button type="button" class="btn btn-primary" onclick="$('#general_api_info').toggle( 'fast' )">API information &raquo;</button>
<div id="general_api_info" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">

**General API information**

* *1.0 [Version]*: 2.5
* *[Name]*: OpenWeatherMap API
* *API description ...*: Get the current weather, daily forecast for 16 days, and a three-hour-interval forecast for 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. \*\*Note\*\*: This sample Swagger file covers the \`current\` endpoint only from the OpenWeatherMap API. &lt;br/&gt;&lt;br/&gt; \*\*Note\*\*: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the \`id\` parameter) will provide the most precise location results.

**Note**: The Markdown source formatting in the sample text is intentional. When you copy and paste in the source, Stoplight will convert the Markdown into HTML when displaying the published page. Also note that Stoplight allows you to use [Stoplight-flavored Markdown](https://github.com/stoplightio/studio-demo/blob/master/docs/markdown/stoplight-flavored-markdown.md). This Markdown version allows all the same tags as [CommonMark](https://commonmark.org/) but also includes some special tags for callouts, alerts, and other formatting.

**Servers +**

* *https://todos.stoplight.io/v1 [url]*: https://api.openweathermap.org/data/2.5
* *Name (optional)*: prod

**Security schemes +**

* *left drop-down menu*: apiKey
* *key*: app_id
* *name*: appid
* *right drop-down menu*: query

**Global security +**

* Select *app_id**

**Contact**

* *Contact Name*: Support
* *Contact Url*: https://openweathermap.org/api
* *Contact Email*: some_email@gmail.com
* *Terms of Service URL*: https://openweathermap.org/terms

**License**

* *License (MIT, Apache 2.0, etc)*: Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)
* *License URL*: https://creativecommons.org/licenses/by-sa/4.0/

</div>

Now that you entered information for the first section, check out how it looks. Click the **Preview** button in the upper-right corner. It should look as follows:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_first_screen_preview.png" alt="Preview of first section of API docs" />

Return to the form view by clicking the **Form** button again.

## Enter the path and parameters

Now enter the path and parameter information:

1. In the sidebar, right-click the **Paths** folder and select **New Path**.

   <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/new_path_stoplight_tutorial.png" alt="New path in Stoplight editor" />

   (You can leave the dummy user fields in there for now.)

2.  Type **weather** and press enter. By default Stoplight creates a GET operation for the weather endpoint.
3.  Change the path's title from "Your GET endpoint" to "weather."
4.  [Data type] button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/tags_button_stoplight.png" alt="Stoplight tags button" /> in the upper-left corner and add a tag called "Weather endpoints". This tag will group the endpoints in the sidebar by this tag.

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/tags_button_stoplight_tutorial.png" alt="Tags button" />

5.  In the Description field, add the description for this endpoint. Expand the blue button below titled Path Parameter Information to get a description to paste here.

    {: .note}
    You don't need to add security for this endpoint because you already configured global security in the previous section. However, if this endpoint had unique security method, you could override the global security here.

5.  Click the **+ Query Param** button to expand the query parameters options. Query parameters are included in the path after a question mark: ?. (Note that our sample API has only query parameters, no path parameters.) Expand the blue button below titled Path Parameter Information and populate all the query parameter information into the Stoplight editor.

    {: .note}
    For this exercise, you don't need to enter all the parameters, but at least enter the `zip` parameter.

    When you're finished entering the parameters, Stoplight should look like this:

    {% include course_image.html url="" size="large" filename="stoplight_parameter_info2" ext_print="png" ext_web="png" alt="Parameters configuration" caption="Parameters configuration" %}

<button type="button" class="btn btn-primary" onclick="$('#paths_and_parameters').toggle( 'fast' )">Path and parameter information &raquo;</button>
<div id="paths_and_parameters" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">

**Paths:**

* */weather*
* *[Operation]*: GET
* *Operation ID*: get-weather
* *Description*: Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.

**Parameters ("Query Params"):**

All of the following parameters should be entered in the Query Params section. Click the **+ Query Param** button to add a query parameter into this section.

\-\-\-\-\-\-\-

* *Name*: **zip**
* *[Data type]*: string
* *Description...*: \*\*Zip code\*\*. Search by zip code. \*Example: 95050,us\*. Please note that if the country is not specified, the search uses USA as a default.

\-\-\-\-\-\-\-

* *Name ...*: **units**
* *[Data type]*: string
* *Description...*: \*\*Units\*\*. \*Example: imperial\*. Possible values: \`standard\`, \`metric\`, and \`imperial\`. When you do not use the \`units\` parameter, the format is \`standard\` by default.
* <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_other_properties_button2.png" alt="Other properties" /> *Other Properties*:
  * *enum*: standard, metric, imperial

  When you click the Other Properties button, the dialog looks like this:

  <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_other_properties.png" style="max-width: 375px" alt="Other Properties dialog box" />


\-\-\-\-\-\-\-

* *Name ...*: **q**
* *[Data type]*: string
* *Description...*: \*\*City name\*\*. \*Example: London\*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes.

\-\-\-\-\-\-\-

* *Name ...*: **id**
* *[Data type]*: string
* *Description...*: \*\*City ID\*\*. \*Example: \`2172797\`\*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded \[here\]\(http://bulk.openweathermap.org/sample/\). You can include multiple cities in this parameter &mdash; just separate them by commas. The limit of locations is 20. \*Note: A single ID counts as a one API call. So, if you have city IDs, it's treated as 3 API calls.\*

\-\-\-\-\-\-\-

* *Name ...*: **lat**
* *[Data type]*: string
* *Description...*: \*\*Latitude\*\*. \*Example: 35\*. The latitude coordinate of the location of your interest. Must use with \`lon\`.

\-\-\-\-\-\-\-

* *Name ...*: **lon**
* *[Data type]*: string
* *Description...*: \*\*Longitude\*\*. \*Example: 139\*. Longitude coordinate of the location of your interest. Must use with \`lat
\`.

\-\-\-\-\-\-\-

* *Name ...*: **lang**
* *[Data type]*: string
* *Description...*: \*\*Language\*\*. \*Example: en\*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - \`ar\`, Bulgarian - \`bg\`, Catalan - \`ca\`, Czech - \`cz\`, German - \`de\`, Greek - \`el\`, English - \`en\`, Persian (Farsi) - \`fa\`, Finnish - \`fi\`, French - \`fr\`, Galician - \`gl\`, Croatian - \`hr\`, Hungarian - \`hu\`, Italian - \`it\`, Japanese - \`ja\`, Korean - \`kr\`, Latvian - \`la\`, Lithuanian - \`lt\`, Macedonian - \`mk\`, Dutch - \`nl\`, Polish - \`pl\`, Portuguese - \`pt\`, Romanian - \`ro\`, Russian - \`ru\`, Swedish - \`se\`, Slovak - \`sk\`, Slovenian - \`sl\`, Spanish - \`es\`, Turkish - \`tr\`, Ukrainian - \`ua\`, Vietnamese - \`vi\`, Chinese Simplified - \`zh_cn\`, Chinese Traditional - \`zh_tw\`.
* <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_other_properties_button2.png" alt="Other properties" /> *Other Properties*:
  * *default*: en
  * *enum*: enums: "ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw"

\-\-\-\-\-\-\-

* *Name ...*: **mode**
* *[Data type]*: string
* *Description...*: \*\*Mode**. *Example: html*. Determines the format of the response. Possible values are \`json\`, \`xml\`, and \`html\`. If the mode parameter is empty, the format is \`json\` by default.
* <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_other_properties_button2.png" alt="Other properties" /> *Other Properties*:
  * *enum*: json, xml, html
  * *default*: json

</div>

## Re-using parameters

Note that the OpenAPI spec allows to re-use parameters by storing the information in the [`components`](pubapis_openapi_step5_components_object.html) section. In the Stoplight Studio editor, you can reuse parameters by entering the parameter information in the Parameters section in the sidebar.

For example, if you want to re-use the `lon` query parameter:

1.  Right-click **Parameters** in the lower-left corner of the sidebar and select **New Query Parameter**.

    A parameter section similar to the query parameter sections you just populated appears.  

2.  Populate the `lon` parameter here using the same information as before.
3.  Return to the previous query parameters section where you entered the `lon` parameter, and click the Reference button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_link_button.png" alt="Reference button" /> for this parameter.
4.  Search for "lon" and select it.

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_reuse_parameter_link.png" alt="Reusing parameters" />

    When you link the parameter to the reference like this, the icon turns red: <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight" alt="Reference button turns red when linked" />

5.  Switch to the code editor and search for lon. You'll see a reference to a component: `- $ref: '#/components/parameters/lon'`. You can re-use this same reference for multiple endpoints that might use it.

{% include random_ad3.html %}

Now that you finished entering parameters, you can delete the default `/users/` and `/user` parameters. (Just right-click them and select Delete.) Then preview your work. It should look like this:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_api_preview_with_endpoints.png" alt="Preview with parameters section populated" />

{% include image_ad_right.html %}

This endpoint in the OpenWeatherMap API doesn't have any path, header, or body parameters, so you can skip those sections.

## Enter the responses and response schema

As a final step for this endpoint, you need to enter the response information. The response includes not only an example response but also the schema describing the response. The schema describes all possible values in the response, their data types, and whether the values are required.

Here you'll experience one of the coolest features in the Stoplight Studio editor, and one reason why I endorse this editor more than any other. The editor will build out the response schema from a sample JSON response.

<button type="button" class="btn btn-primary" onclick="$('#response').toggle( 'fast' )">Sample response &raquo;</button>
<div id="response" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">

**Sample response:**

```json
{
    "coord": {
        "lon": -121.95,
        "lat": 37.35
    },
    "weather": [
        {
            "id": 803,
            "main": "Clouds",
            "description": "broken clouds",
            "icon": "04n"
        }
    ],
    "base": "stations",
    "main": {
        "temp": 45.25,
        "feels_like": 41.16,
        "temp_min": 41,
        "temp_max": 50,
        "pressure": 1026,
        "humidity": 75
    },
    "visibility": 16093,
    "wind": {
        "speed": 2.57,
        "deg": 36
    },
    "clouds": {
        "all": 75
    },
    "dt": 1579415808,
    "sys": {
        "type": 1,
        "id": 5845,
        "country": "US",
        "sunrise": 1579360793,
        "sunset": 1579396557
    },
    "timezone": -28800,
    "id": 0,
    "name": "Santa Clara",
    "cod": 200
}
```

**Descriptions and examples**

coord >
: lon:
    * description: City geo location, longitude
    * example: 145.77
: lat:
    * description: City geo location, latitude
    * example: -16.92

weather >
: id:
  * description: Weather condition id
  * example: '803'

: main:
  * description: 'Group of weather parameters (Rain, Snow, Extreme etc.)'
  * example: clouds

: description:
  * description: Weather condition within the group
  * example: broken clouds

: icon:
  * description: Weather icon id
  * example: 04n

**base:**
  * description: Internal parameter
  * example: cmc stations

main >
: temp:
  * description: 'Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
  * example: 293.25

: feels_like:
  * description: What the weather feels like despite the actual numbers
  * example: 41.16

: temp_min:
  * description: 'Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
  * example: 289.82

: temp_max:
  * description: 'Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.'
  * example: 295.37

: pressure:
  * description: 'Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa'
  * example: 1019

: humidity:
  * description: 'Humidity, %'
  * example: 83

wind >
: speed:
  * description: 'Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
  * example: 5.1

: deg:
  * description: ''
  * example: 150

: visibility:
  * description: 'Visibility, meter'
  * example: 16093

clouds >
: all:
  * description: 'Cloudiness, %'
  * example: 75

**dt:**
 * description: 'Time of data calculation, unix, UTC'
 * example: 1435658272

sys >
: type:
    * description: Internal parameter
    * example: 1
: id:
    * description: Internal parameter
    * example: 8166
: country:
    * description: 'Country code (GB, JP etc.)'
    * example: AU
: sunrise:
    * description: 'Sunrise time, unix, UTC'
    * example: 1435610796
: sunset:
    * description: 'Sunset time, unix, UTC'
    * example: 1435650870

**timezone:**
* description: the timezone for the station
* example: -28800

**id:**
* description: City ID
* example: 2172797

**name:**
* description: Name
* example: Cairns

**cod:**
 * description: Internal parameter
 * example: 200
</div>

To enter the response in Stoplight Studio:

1.  Below the parameter section for the endpoint, click the **+ Response** button. Then click the **+ Add Body** button that appears within this expanded Response section.

    {% include course_image.html size="large" filename="stoplight_response_button" ext_print="png" ext_web="png" alt="Adding a response" caption="Adding a response" %}

2.  On the Schema tab, click **Generate from JSON**.
3.  Expand the blue **Response information** button above and copy the sample response.
4.  Paste in the copied JSON into the gray area where it says "Paste or write a JSON example below..." (Remove the empty curly braces first, and then paste in your sample.)
5.  Click **Generate from JSON**. Stoplight builds the schema for you!
6.  Click the Description button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_description_button.png" alt="Description button" /> next to each property and add a description. Expand the blue button titled Sample Response information to get a description for each property.
7.  Click the Other Properties <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_other_properties_button2.png" alt="Other properties" /> button and add an example in the **example** field.

{% include random_ad1.html %}

Now that you finished entering schema information, click the Preview button. It should look like this:

<img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_response_info_section.png" alt="Schema section" />

{% include random_ad2.html %}

## Preview, test, and publish the output

Now that you've finished creating your OpenAPI spec, let's preview and test the documentation.

1.  Click the **Preview** button in the upper-right corner.
2.  In the sidebar, select the **/weather** endpoint.
3.  Click the **Try It** tab near the top of the screen.
4.  Clear all check boxes except for `zip` and `appid`.
5.  Enter your zip code for the `zip` parameter.
6.  Enter your API key for the API Key parameter. For details on getting the OpenWeatherMap API key, see [Get an OpenWeatherMap API Key](docapis_get_auth_keys.html#openweathermap_apikey).

    The screen should look like this:

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_demo_try_it.png" alt="Stoplight Try It screen" />

7.  Click the **Send** button.

    If your API key is valid and the zip code is supported, you should see a response like the following:

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_response_try_it.png" alt="Sample response from Try It" />

6.  At this point, you can either publish or export your API documentation. To publish, click the **Push** button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplightpushbutton.png" alt="Stoplight Push button" />. Then push the project to your workspace.

7.  From your workspace, look at the admin sidebar on the left. Click the **Share** button and choose the visibility settings for your documentation (e.g., Public).

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplight_share_button.png" alt="Share button" />

    You can view my [OpenWeatherMap API documentation on Stoplight here](https://idratherbewriting.stoplight.io/docs/openweathermap3/reference/openweathermap.v1.yaml).

    {: .note}
    If you don't want to publish docs through Stoplight, you can export your spec file from Stoplight and use your OpenAPI definition with [Redoc](https://github.com/Redocly/redoc), [Swagger UI](pubapis_swagger.html), [Spectacle](https://github.com/sourcey/spectacle), [Docsy](https://github.com/google/docsy), and other tools. See [Openapi.tools](https://openapi.tools/#documentation) for a list of possibilities. You can find a [Redoc tutorial in this course here](pubapis_redoc.html).

For various demos of Stoplight with different API docs, see [Stoplight Demo](pubapis_stoplight_demo.html).

For more details about working with Stoplight Studio, see their documentation here: [Stoplight Studio](https://stoplight.io/p/docs/gh/stoplightio/studio/README.md?srn=gh/stoplightio/studio/README.md).

<style>
dl {font-size: 18px !important;}
.expandedBox {
  background-color: #f0f0f0;
  border: 1px solid #dedede;
  padding: 15px;
  margin-bottom: 20px;
}
</style>
