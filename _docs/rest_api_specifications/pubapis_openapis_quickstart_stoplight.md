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
---

In [Introduction to the OpenAPI specification](pubapis_openapi_intro.html), I explained that you can create an OpenAPI specification document in several ways: (a) auto-generating it from annotations in your source code, (b) coding it by hand in an editor such as the Swagger Editor, and (c) using a GUI editor such as Stoplight Studio. In this tutorial, I'll walk through the third approach: using Stoplight Studio, a GUI editor for modeling your API. In this tutorial, you'll use Stoplight Studio to create a valid OpenAPI specification, using the OpenWeatherMap as the sample API.

{: .note}
A more detailed, conceptual introduction to Stoplight Studio is provided in [Stoplight — visual modeling tools for creating your OpenAPI spec](pubapis_stoplight.html).

* TOC
{:toc}

## Using a visual editor

When you create an OpenAPI spec, an initial consideration is how to create it, which editor to use, and which approach to follow. Why use a visual/GUI editor, which hides the code (unless you toggle the view open) instead of coding every detail of the spec by hand?

All approaches have their merits. If you don't work with the OpenAPI specification enough to remember all the fields and syntax for each property, or if you're learning it for the first time, trying to get the syntax valid can be challenging. Coding it by hand leads to many errors and forces you to spend a lot of time troubleshooting why the syntax is invalid.

Using an editor helps you avoid these errors and focus instead on the content. For more on this philosophy, read this post by Phil Sturgeon, who says Stoplight Studio is "an absolute game changer for API Design, and something I've been waiting for since I found out about it somewhere in 2018" ([Reinventing API Design with Stoplight Studio](https://phil.tech/2019/08/22/reinventing-api-design-stoplight-studio/)).

## Before we begin

Before we begin the tutorial, note the following:

* Stoplight Studio isn't the only GUI editor for creating OpenAPI specifications. You can also use [OpenAPI-GUI](https://mermade.github.io/openapi-gui/), [Apibldr](https://apibldr.com/), [SwaggerHub's visual editor](https://app.swaggerhub.com/help/ui/visual-editor), and others.
* Although Stoplight has a commercial offering, their editor is free. In general, you can use the editor to create a valid specification and then choose the tool you want to use to render it (e.g., Stoplight, Redoc, Spectacle, Swagger UI, or some other display framework). You can also publish your spec on Stoplight for free as well. My point is this: once you have a valid OpenAPI specification, the spec is tool agnostic and can be rendered by many different frameworks.
* Stoplight's platform gives you a nice path toward more comprehensive documentation, including not only API reference but also [conceptual documentation](docconceptual.html) and [tutorial content](docapiscode.html). This lets you create a more seamless documentation experience for your readers across many different types of content.
* In this tutorial, we'll use sample information from the [OpenWeatherMap API](https://openweathermap.org/api) (more specifically, the [Current weather data endpoint](https://openweathermap.org/current)), which is the same API we've been using in this course uses in other areas, such as the [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html).
* Stoplight is one of the sponsors of my site. I would still recommend this approach regardless of any site sponsorship. It makes sense to use an editor when your content must conform to a highly technical syntax.
* For full documentation, see the [Stoplight Studio documentation](https://stoplight.io/p/docs/gh/stoplightio/studio).

## Which version of Stoplight Studio?

Stoplight offers both a [web app](https://stoplight.io/p/studio) and a [desktop app](https://stoplight.io/studio) (Mac, Windows, or Linux). In this tutorial, you will use the web app version of Stoplight Studio because only the web app gives you the ability to publish your content online and try out requests (see [Studio Desktop vs. Studio Web](https://stoplight.io/p/docs/gh/stoplightio/studio/docs/Basics/web-vs-desktop-app.md) for more on the difference). However, you could also use the desktop app if desired (such as for scenarios where you're working with private, unreleased data).

## Set up a project in Stoplight Studio

To get started in Stoplight Studio, you first create a GitHub repo to serve as the content source, and then you configure a new Stoplight Studio project to point to this GitHub source:

1.  Go to [GitHub.com](https://github.com) and create a repo, calling it something like "stoplight_openweathermap." If you've never created a Github repo before, see [Create a repo](https://help.github.com/en/github/getting-started-with-github/create-a-repo) from GitHub's docs. Copy the URL to your repo.
2.  Go to [https://stoplight.io/studio/](https://stoplight.io/studio/) and click **On the Web**.
3.  In the **Open Git Project** box, paste your GitHub URL, and then click **Clone**:

    {% include course_image.html size="medium" border="true" filename="stoplight_git_new_project" ext_print="png" ext_web="png" alt="Opening a Git project" caption="Opening a Git project" %}

4.  When the project loads, in the left pane you're prompted with the text "You do not have any APIs or models." Click the **API** button in the sidebar.

    {% include course_image.html size="medium" border="true" filename="openweathermap_create_api3" ext_print="png" ext_web="png" alt="Creating a new API file" caption="Creating a new API file" %}

5.  In the New API dialog box, name your API (e.g., "openweathermap"), and click **Create**. By default, the editor will use OAS 3.0 and YAML. (You can see options for using JSON or OAS 2.0 by clicking Advanced.)

    Stoplight Studio creates an OAS file ("<b>O</b>pen<b>A</b>PI <b>S</b>pecification") called, in this case, openweathermap.v1.yml and loads it as follows:

    {% include course_image.html border="true" filename="editor_loaded_with_oas_3" ext_print="png" ext_web="png" alt="Initial project in the Stoplight Studio editor" caption="Initial project in the Stoplight Studio editor" %}

6.  Stoplight lets you toggle between a form and code view. The above screenshot shows the form view. Click the **Code** button in the upper-right to see the code automatically created:

    ```yaml
    openapi: '3.0.0'
    info:
      title: openweathermap
      version: '1.0'
    servers:
    - url: http://localhost:3000
    paths: {}
    components:
      schemas: {}
    ```
The empty curly braces `{}` are placeholders for content and are required for the spec to be valid. You will be populating the specification information here in the upcoming sections.

## Enter the API name, version, description, and contact information

Let's populate the API name, version, description, and contact information. Note that in this tutorial, I've prepared sample information for you to insert into the Stoplight Editor. Each of the blue buttons expands to show detailed information that you can insert.

<button type="button" class="btn btn-primary" onclick="$('#general_api_info').toggle( 'fast' )">API information &raquo;</button>
<div id="general_api_info" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">

**General API information**

* *name*: OpenWeatherMap API
* *version*: 2.5
* *API description*: Get the current weather, daily forecast for 16 days, and a three-hour-interval forecast for 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. \*\*Note\*\*: This sample Swagger file covers the \`current\` endpoint only from the OpenWeatherMap API. &lt;br/&gt;&lt;br/&gt; \*\*Note\*\*: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the \`id\` parameter) will provide the most precise location results.

**Note**: The Markdown source formatting in the sample text is intentional. When you copy and paste in the source, Stoplight will convert the Markdown into HTML when displaying the published page. Also note that Stoplight allows you to use [Stoplight-flavored Markdown](https://github.com/stoplightio/studio-demo/blob/master/docs/markdown/stoplight-flavored-markdown.md). This Markdown version allows all the same tags as [CommonMark](https://commonmark.org/) but also includes some special tags for callouts, alerts, and other formatting.

**Contact information**

* *Contact name*: Support
* *Contact URL*: https://openweathermap.org/api
* *Contact email*: some_email@gmail.com
* *Terms of service URL*: https://openweathermap.org/terms

**Servers:**
* *url*: https://api.openweathermap.org/data/2.5
* *name*: prod

**Security schemes:**

* *key*: app_id
* *parameter name*: appid
* *type*: query

Tip: See the screenshot below to see how this section should appear.

**License information:**

* *License name*: CC Attribution-ShareAlike 4.0 (CC BY-SA 4.0)
* *License URL*: https://openweathermap.org/price

</div>

To populate the API info into Stoplight Studio, expand the **API information** button above and then complete the following:

1.  Insert the **General API** information.
2.  Insert the **Contact** information.
3.  Insert the **License** information.
4.  Insert the **Servers** information.
5.  Insert the **Security** information.

When finished, the editor should look as follows:

{% include course_image.html size="large"  filename="stoplight_studio_api_overview" ext_print="png" ext_web="png" alt="Creating the API overview" caption="Creating the API overview" %}

## Previewing the output

Now that you entered information for the first section, click the **Commit** button, type a commit message, and then click **Push**. Because the storage source is Git, each save is a commit following a Git workflow.

After you commit the changes, you can preview the OpenAPI documentation by clicking **Publish** and then sliding the **Show Preview** slider.

{% include course_image.html size="large" border="true" filename="stoplightstudio_preview_info_object3" ext_print="png" ext_web="png" alt="Previewing the docs" caption="Previewing the docs" %}

To close the preview, slide the **Show Preview** slider to off and click **publish** to hide the dialog.

## Enter the path and parameters

Now let's enter the path and parameter information.

<button type="button" class="btn btn-primary" onclick="$('#paths_and_parameters').toggle( 'fast' )">Path and parameter information &raquo;</button>
<div id="paths_and_parameters" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">

**Paths:**

* */weather*
* *Path params*: none
* *operation*: GET
* *Operation ID*: get-weather
* *description*: Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.

**Parameters ("Query Params"):**

All of the following parameters should be entered in the Query Params section. Click the **+ Query Param** button to add a query parameter into this section.

\-\-\-\-\-\-\-

* *Query parameter name*: **zip**
* *data type*: string
* *description*: \*\*Zip code\*\*. Search by zip code. \*Example: 95050,us\*. Please note that if the country is not specified, the search uses USA as a default.

\-\-\-\-\-\-\-

* *parameter name*: **units**
* *data type*: string
* *description*: \*\*Units\*\*. \*Example: imperial\*. Possible values: \`standard\`, \`metric\`, and \`imperial\`. When you do not use the \`units\` parameter, the format is \`standard\` by default.
* *default*: standard
* *validations*: enums: "standard, metric, imperial"

  When you enter the Validations, the dialog looks like this:

  {% include course_image.html size="medium" border="true" filename="stoplight_enums" ext_print="png" ext_web="png" alt="Entering validations" caption="Entering validations" %}

  If you're typing each enum manually, press your Enter key after each term.



\-\-\-\-\-\-\-

* *parameter name*: **q**
* *data type*: string
* *description*: \*\*City name\*\*. \*Example: London\*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes.
* *required*: no

\-\-\-\-\-\-\-

* *parameter name*: **id**
* *data type*: string
* *description*: \*\*City ID\*\*. \*Example: \`2172797\`\*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded \[here\]\(http://bulk.openweathermap.org/sample/\). You can include multiple cities in this parameter &mdash; just separate them by commas. The limit of locations is 20. \*Note: A single ID counts as a one API call. So, if you have city IDs, it's treated as 3 API calls.\*
* *required*: no

\-\-\-\-\-\-\-

* *parameter name*: **lat**
* *data type*: string
* *description*: \*\*Latitude\*\*. \*Example: 35\*. The latitude coordinate of the location of your interest. Must use with \`lon\`.
* *required*: no

\-\-\-\-\-\-\-

* *parameter name*: **lon**
* *data type*: string
* *description*: \*\*Longitude\*\*. \*Example: 139\*. Longitude coordinate of the location of your interest. Must use with \`lat
\`.
* *required*: no

\-\-\-\-\-\-\-

* *parameter name*: **lang**
* *data type*: string
* *description*: \*\*Language\*\*. \*Example: en\*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - \`ar\`, Bulgarian - \`bg\`, Catalan - \`ca\`, Czech - \`cz\`, German - \`de\`, Greek - \`el\`, English - \`en\`, Persian (Farsi) - \`fa\`, Finnish - \`fi\`, French - \`fr\`, Galician - \`gl\`, Croatian - \`hr\`, Hungarian - \`hu\`, Italian - \`it\`, Japanese - \`ja\`, Korean - \`kr\`, Latvian - \`la\`, Lithuanian - \`lt\`, Macedonian - \`mk\`, Dutch - \`nl\`, Polish - \`pl\`, Portuguese - \`pt\`, Romanian - \`ro\`, Russian - \`ru\`, Swedish - \`se\`, Slovak - \`sk\`, Slovenian - \`sl\`, Spanish - \`es\`, Turkish - \`tr\`, Ukrainian - \`ua\`, Vietnamese - \`vi\`, Chinese Simplified - \`zh_cn\`, Chinese Traditional - \`zh_tw\`.
* *required*: no
* *default*: en
{% comment %}* *validations*: enums: "ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw"  {% endcomment %}
{% comment %} if you include all these validations, the display looks terrible because the line doesn't wrap. {% endcomment %}


\-\-\-\-\-\-\-

* *parameter name*: **mode**
* *data type*: string
* *description*: \*\*Mode**. *Example: html*. Determines the format of the response. Possible values are \`json\`, \`xml\`, and \`html\`. If the mode parameter is empty, the format is \`json\` by default.
* *required*: no
* *validations*: json, xml, html
* *default*: json

</div>

To enter paths and parameters:

1. In the left sidebar, right-click the **Paths** folder and select **New Path**.

   {% include course_image.html size="medium" filename="new_path_stoplight" ext_print="png" ext_web="png" alt="New path" caption="New path" %}

2.  Type **weather** and press enter. By default Stoplight creates a GET operation for the weather endpoint. (If your path doesn't have a GET operation, you can right-click the path and delete the GET operation.)
3.  Change the path's title from "Your GET endpoint" to "weather."
4.  Click the **no tags** button and add a tag called "Weather endpoints". This tag will group the endpoints in the sidebar by this tag.

    {% include course_image.html size="medium" filename="addingtags_stoplight" ext_print="png" ext_web="png" alt="Adding tags" caption="Adding tags" %}

5.  Expand the **Path and parameter information** button above and enter the operation ID and description into Stoplight.
6.  Click **+ Security** and select **app_id**.
7.  Click **+ Query Param** and enter some of the parameter information from the above details as well. (Note that our sample API has only query parameters, no path parameters.)

    {: .note}
    For this exercise, you don't need to enter all the parameters, but at least enter the `zip` parameter.

    When you're finished entering the parameters, Stoplight should look like this:

    {% include course_image.html url="" size="large" filename="stoplight_parameter_info2" ext_print="png" ext_web="png" alt="Parameters configuration" caption="Parameters configuration" %}


## Re-using parameters

Note that the OpenAPI spec allows to re-use parameters by storing the information in the [`components`](pubapis_openapi_step5_components_object.html) section. In the Stoplight Studio editor, currently you can't directly add parameters into [`components`](pubapis_openapi_step5_components_object.html) using the GUI, but if you switch to the code view and manually enter the necessary code, then you can click the link button and select that reference.

For example, suppose you have the following inside `components`:

```yaml
components:
  parameters:
    lon:
      name: lon
      in: query
      description: '**Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`.'
      schema:
        type: string
```

Then you can click the link icon in the Stoplight editor and select this reference:

{% include course_image.html size="medium" filename="components_ref_selection_stoplight" ext_print="png" ext_web="png" alt="Selecting references from components" caption="Selecting references from components" %}

{% include random_ad3.html %}

If you have a lot of parameter re-use but still want to use Stoplight to create your OpenAPI file, you could first create the parameters using Stoplight's GUI and then  copy the same code (with minor adjustments and indentations) into the `components` section under a `parameters` sublevel. For more details, see the ["Re-using parameters across multiple paths"](../pubapis_openapi_step5_components_object.html#re-using-parameters-across-multiple-paths) section in the [Step 5: The components object](../pubapis_openapi_step5_components_object.html) tutorial.

## Save and preview your parameter work

Now that you finished entering parameters, save your work: Click the **Commit** button, type a brief description, and then click **Push**.

After you commit the changes, you can preview the OpenAPI documentation by clicking **Publish** and then sliding the **Show Preview** slider. The parameters display looks like this:

{% include course_image.html size="large" border="true" filename="parameters_published" ext_print="png" ext_web="png" alt="Parameters display in Stoplight" caption="Parameters display in Stoplight" %}

{% include image_ad_right.html %}

## Enter the responses and response schema

As a final step for this endpoint, you need to enter the response information. The response includes not only an example response but also the schema describing the response. The schema describes all possible values in the response, their data types, and whether the values are required.

Stoplight Studio's editor has a GUI feature that lets you build your response. This editor might seem a little unintuitive at first, but as you become familiar with it, the editor works well and makes coding your schema relatively easy.

<button type="button" class="btn btn-primary" onclick="$('#response').toggle( 'fast' )">Response information &raquo;</button>
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



**cod:**
  * description: Internal parameter
  * example: 200

**name:**
 * description: Name
 * example: Cairns

**id:**
 * description: City ID
 * example: 2172797

**timezone:**
 * description: the timezone for the station
 * example: -28800

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

**dt:**
 * description: 'Time of data calculation, unix, UTC'
 * example: 1435658272

clouds >
: all:
  * description: 'Cloudiness, %'
  * example: 75

wind >
: speed:
  * description: 'Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.'
  * example: 5.1

: deg:
  * description: 'Wind direction, degrees (meteorological)'
  * example: 150

: visibility:
  * description: 'Visibility, meter'
  * example: 16093

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

**base:**
  * description: Internal parameter
  * example: cmc stations

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

</div>


To enter the response in Stoplight Studio:

1.  Below the parameter section for the endpoint, click **+ Response**. Then click **+ Add Body**.

    {% include course_image.html size="large" filename="stoplight_response_button" ext_print="png" ext_web="png" alt="Adding a response" caption="Adding a response" %}

2.  Expand the **Response information** button above to see the sample response information you'll be adding. You'll likely need to consult this screenshot as you enter the response information:

    {% include course_image.html url="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/schema_object_stoplight.png" size="large" filename="schema_object_stoplight" ext_print="png" ext_web="png" alt="Schema object editor" caption="Schema object editor" %}

3.  In the schema editor, click the **+** button next to **object**. This adds a property under object. Then customize the property's key-value pairs until it looks like the example above.

    {% include callout.html type="primary" title="Tips for working with the Schema editor" content="As you enter content using the Schema editor, note the following behavior. Clicking the **+** plus button next to a property creates a new property at that level. If the property you're adding is an object, as soon as you change its data type from string (the default) to object, a plus button will appear at that level too. First get the structure right, and then go back and add descriptions, requirements, and other details." %}

4.  After you finish entering the property structure so that it looks like the preceding screenshot, go through and add a description and example for each property. Click the **Description** button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplightbookicon.png" alt="Description" /> and the **Additional Properties** button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplightadditionalproperties.png" alt="Additional Properties" /> to add this information.

    {% include course_image.html size="large" filename="stoplight_entering_descriptions" ext_print="png" ext_web="png" alt="Entering descriptions in the GUI editor" caption="Entering descriptions in the GUI editor" %}

8.  Click the **Example** tab and insert the example (from the same Response information button above). Call the example "Example."

{% include random_ad.html %}

## Save and preview your schema work

Now that you finished entering schema information, save your work: Click the **Commit** button, type a brief description, and then click **Push**. The schema display should look like this:

{% include course_image.html size="large" border="true" filename="responses_published_stoplight" ext_print="png" ext_web="png" alt="Schema display" caption="Schema display" %}


## Reusing responses through components

The OpenAPI spec allows you to re-use common components, including parameters and responses. If you have a dozen different endpoints that all return the same information, you can create a "model" for that information that can be re-used. (A *model* is a description of some object's properties). You can create models directly through the Stoplight editor. In the code, this model will be stored the inside the `components` section. Anytime you see a `$ref` button in Stoplight, you can choose to use those sections stored in `components` (called "Models" in the Stoplight Studio interface).

A common scenario for re-use with responses might be 401 (unauthorized response), which could likely be returned with each endpoint. To store this 401 response as a re-usable model:

1.  In the left sidebar, right-click **Models** and select **New Model**. Name the model "unauthorized_response".
2.  You can use the JSON schema editor to create the properties of your re-usable model. Click the **+ object** link twice to create two properties for the object. Name them `cod` and `message`. Change the  data type for the first from string to integer. The model should look as follows:

    {% include course_image.html size="large" filename="schema_editor_401_stoplight" ext_print="png" ext_web="png" alt="Creating a re-usable model" caption="Creating a re-usable model" %}

3.  Click the **Required?** button <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/stoplighteditorrequired.png" alt="Required button" /> and select required for both properties.
3.  Return to your **weather** path and click **+ Response** to create a new response.
4.  For the response code, select **401: Unauthorized**.
5.  Click **+ Add Body**.
6.  In the **$Ref Target**, click and select the **unauthorized_response** component:

    {% include course_image.html size="large" filename="ref_selection_json_schema_stoplight" ext_print="png" ext_web="png" alt="Selecting a re-usable model" caption="Selecting a re-usable model" %}

    Now you're re-using the same model. As you work with larger APIs that re-use components, be sure to store your re-usable parts as models (or other subsections under `components`). As you can see from the options in the $Ref Target, you can even store these components outside the existing OpenAPI file:

    {% include course_image.html size="small_medium" filename="reuse_locations_stoplight" ext_print="png" ext_web="png" alt="Reference target storage options" caption="Reference target storage options" %}

{% include random_ad2.html %}

## Preview, test, and publish the output

Now that you've finished creating your OpenAPI spec, let's preview, test, and publish your documentation.

1.  Click the **Commit** button, type a commit message, and then click **Push**.
2.  Click the **Publish** button, and then slide the **Preview** toggle on.
3.  In the left sidebar, expand **Weather Endpoints** and click the **Weather** endpoint. Your API should look as follows:

    {% include course_image.html url="https://stoplight.io/p/docs/gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml/paths/~1weather/get?srn=gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml/paths/~1weather/get" size="large" border="true" filename="stoplight_output_full_display" ext_print="png" ext_web="png" alt="Full display of Stoplight output" caption="Full display of Stoplight output" %}

4.  Click the **Try It** tab.
4.  Select **zip** check box and enter a zip code. (At least one location parameter is required for the API to retrieve weather information.)
5.  Enter an API key into the value for the **appid** parameter.
6.  Click the **Send** button. If you've done everything correctly, you will see a response returned.

    {% include course_image.html url="https://stoplight.io/p/docs/gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml?group=master" size="large" filename="stoplight_tryit_response2" ext_print="png" ext_web="png" alt="Successful response using Stoplight" caption="Successful response using Stoplight" %}

6.  At this point, you can either publish or export your API documentation. To publish, click the **Publish** button. You will receive a URL for the published content.

    You can view my [published API docs here](https://stoplight.io/p/docs/gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml?group=master).

7.  To export the OpenAPI content to publish in another tool, click **Export OpenAPI**. You can view mine [here](https://stoplight.io/api/nodes.raw?srn=gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml).

    {: .note}
    If you don't want to publish docs through Stoplight, you could use your OpenAPI definition with [Redoc](https://github.com/Redocly/redoc), [Swagger UI](pubapis_swagger.html), [Spectacle](https://github.com/sourcey/spectacle), [Docsy](https://github.com/google/docsy), and other tools. See [Openapi.tools](https://openapi.tools/#documentation) for a list of possibilities. You can find a [Redoc tutorial in this course here](pubapis_redoc.html).

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
