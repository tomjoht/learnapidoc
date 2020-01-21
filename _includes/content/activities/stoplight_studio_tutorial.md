{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: Stoplight Studio tutorial for creating an OpenAPI spec
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

In this tutorial, you'll use Stoplight Studio to create a valid OpenAPI specification, using the OpenWeatherMap as the sample API.

{% if page.permalink == "/workshop.html" %} Note that this version of the activity is an abbreviated version of the tutorial at [Fastest Way to Create an OpenAPI Specification Document (Using Stoplight Studio)](pubapis_openapis_quickstart_stoplight.html). To complete the activity during the workshop, I removed the sections about how to re-use parameters and responses; I also shortened the number of parameters and response values to enter. {% endif %}

### Set up a project in Stoplight Studio

To get started in Stoplight Studio, you first create a GitHub repo to serve as the content source, and then you configure a new Stoplight Studio project to point to this GitHub source:

1.  Go to [GitHub.com](https://github.com) and create a repo, calling it something like "stoplight_openweathermap." If you've never created a Github repo before, see [Create a repo](https://help.github.com/en/github/getting-started-with-github/create-a-repo) from GitHub's docs. Copy the URL to your repo.
2.  Go to [https://stoplight.io/studio/](https://stoplight.io/studio/) and click **On the Web**.
3.  In the **Open Git Project** box, paste your GitHub URL, and then click **Clone**:

    {% include course_image.html size="medium" border="true" filename="stoplight_git_new_project" ext_print="png" ext_web="png" alt="Opening a Git project" caption="Opening a Git project" %}

4.  When the project loads, in the left pane you're prompted with the text "You do not have any APIs or models." Click the **API** button in the sidebar.

    {% include course_image.html size="medium" border="true" filename="openweathermap_create_api3" ext_print="png" ext_web="png" alt="Creating a new API file" caption="Creating a new API file" %}

5.  In the New API dialog box, name your API (e.g., "openweathermap"), and click **Create**. By default, the editor will use OAS 3.0 and YAML (you can see more options, such as JSON or OAS 2.0, by clicking Advanced).

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
The empty curly braces `{}` are placeholders for content required for the spec to be valid. You will be populating the specification information here in the upcoming sections.

### Enter the API name, version, description, and contact information

Let's populate the API name, version, description, and contact information.

<button type="button" class="btn btn-primary" onclick="$('#general_api_info').toggle( 'fast' )">API information &raquo;</button>
<div id="general_api_info" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">

**General API information**

* *parameter name*: OpenWeatherMap API
* *Version*: 2.5
* *API description*: Get the current weather, daily forecast for 16 days, and a three-hour-interval forecast for 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. **Note**: This sample Swagger file covers the `current` endpoint only from the OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the `id` parameter) will provide the most precise location results.

**Contact information**

* *Contact URL*: https://openweathermap.org/api
* *Contact email*: some_email@gmail.com
* *Terms of service URL*: https://openweathermap.org/terms

**License information:**

* License name*: CC Attribution-ShareAlike 4.0 (CC BY-SA 4.0)
* *License URL*: https://openweathermap.org/price

**Servers:**
* *url*: https://api.openweathermap.org/data/2.5
* *parameter name*: prod

**Security schemes:**

* *key*: app_id
* *parameter name*: appid
* *type*: query

</div>

To populate the API info into Stoplight Studio, expand the **API information** section above and then complete the following:

1.  Insert the **General API** information.
2.  Insert the **Contact** information.
3.  Insert the **License** information.
4.  Insert the **Servers** information.
5.  Insert the **Security** information.

{% include course_image.html url="" size="large"  filename="stoplight_studio_api_overview" ext_print="png" ext_web="png" alt="Creating the API overview" caption="Creating the API overview" %}

Note that with descriptions, Stoplight allows you to use [Stoplight flavored Markdown](https://github.com/stoplightio/studio-demo/blob/master/docs/markdown/stoplight-flavored-markdown.md). This Markdown version allows all the same tags as Commonmark but also includes some special tags for callouts, alerts, and other formatting.

{% unless page.permalink == "/workshop.html" %}
### Previewing the output

At any time, you can preview the OpenAPI documentation by clicking **Publish** and then sliding the **Show Preview** slider.

{% include course_image.html size="large" border="true" filename="stoplightstudio_preview_info_object3" ext_print="png" ext_web="png" alt="Previewing the docs" caption="Previewing the docs" %}
{% endunless %}

### Enter the path and parameters

Now let's enter the path and parameter information.

<button type="button" class="btn btn-primary" onclick="$('#paths_and_parameters').toggle( 'fast' )">Path and parameter information &raquo;</button>
<div id="paths_and_parameters" markdown="block" class="expandedBox" aria-expanded="false" style="display: none;">

**Paths:**

* */weather*
* *operation*: GET
* *Path params*: none
* *Operation ID*: get-weather
* *description*: Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.
* *security*: app_id

**Parameters:**

* *parameter name*: **zip**
* *data type*: string
* *description*: \*\*Zip code\*\*. Search by zip code. \*Example: 95050,us\*. Please note that if the country is not specified, the search uses USA as a default.
* *required*: no

\-\-\-\-\-\-\-

* *parameter name*: **units**
* *data type*: string
* *description*: \*\*Units\*\*. \*Example: imperial\*. Possible values: \`standard\`, \`metric\`, and \`imperial\`. When you do not use the \`units\` parameter, the format is \`standard\` by default.
* *required*: no
* *validations*: enums are "standard, metric, imperial"
* *default*: standard

{% unless page.permalink == "/workshop.html" %}

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
* *validations*: enums are "ar, bg, ca, cz, de, el, en, fa, fi, fr, gl, hr, hu, it, ja, kr, la, lt, mk, nl, pl, pt, ro, ru, se, sk, sl, es, tr, ua, vi, zh_cn, zh_tw"
* *default*: en

\-\-\-\-\-\-\-

* *parameter name*: **mode**
* *data type*: string
* *description*: \*\*Mode**. *Example: html*. Determines the format of the response. Possible values are \`json\`, \`xml\`, and \`html\`. If the mode parameter is empty, the format is \`json\` by default.
* *required*: no
* *validations*: json, xml, html
* *default*: json

{% endunless %}

</div>

To enter paths and parameters:

1. In the left sidebar, right-click the **Paths** folder and select **New Path**.

   {% include course_image.html size="medium" filename="new_path_stoplight" ext_print="png" ext_web="png" alt="New path" caption="New path" %}

2.  Type **weather** and press enter. By default Stoplight creates a GET operation for the weather endpoint (which you could delete by right-clicking the path and selecting Delete GET Operation).
3.  Expand the **Path and parameter information** button above and enter the operation ID and description into Stoplight.
4.  Click the **No tags** button and enter a tag name to group the endpoint, such as "Weather endpoints."
5.  Click **+ Security** and select **app_id**.
3.  Click **+ Query Param** and enter some of the parameter information from the above details as well. (Note that our sample API has only query parameters, no path parameters.)

    {: .note}
    For this exercise, you don't need to enter all the parameters, but at least enter the `zip` parameter.

{% unless page.permalink == "/workshop.html" %}
### Re-using parameters

Note that the OpenAPI spec allows to re-use parameters by storing the information in the [`components`](pubapis_openapi_step5_components_object.html) section. In the Stoplight Studio editor, currently you can't directly add parameters into `components` using the GUI, but if you switch to the code view and manually enter the necessary code, then you can click the link button and select that reference.

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

Then you can click the link icon and select this reference:

{% include course_image.html size="medium" filename="components_ref_selection_stoplight" ext_print="png" ext_web="png" alt="Selecting references from components" caption="Selecting references from components" %}

You could first create the parameters using Stoplight's GUI and then basically copy the same code (with minor adjustments) into the `components` section under a `parameters` sublevel.

{% endunless %}

### Enter the responses and response schema

As a final step for this endpoint, you need to enter the response information. The response includes not only an example response but also the schema describing the response. The schema describes all possible values in the response, their data types, and whether the values are required or not.

Stoplight Studio's editor has a GUI feature that lets you build your response. However, if you have a lengthy response, or if you're unfamiliar with the JSON schema editor, it might be faster to use an external tool to automatically convert the response into the JSON schema first. This will give you a skeleton structure that you can then easily add more information to.

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
    * description: 'City geo location, longitude'
    * example: 145.77
: lat:
    * description: 'City geo location, latitude'
    * example: -16.92

{% unless page.permalink == "/workshop.html" %}

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
{% endunless %}

</div>


To enter the response in Stoplight Studio:

1.  Below the parameter section for the endpoint, click **+ Response**. Then click **Add Body**.

    {% include course_image.html size="medium" filename="stoplightadding_response" ext_print="png" ext_web="png" alt="Adding a response" caption="Adding a response" %}

2.  In your web browser (outside of Stoplight Studio), go to [Generate JSON Schema in YAML format](https://bikcrum.github.io/Swagger-JSON-Schema-In-YAML_webversion/) and paste in the response in the **Input: JSON response** section. Then click **Submit**. Copy the output.
3.  Return to Stoplight Studio and enter into the code view by clicking **Code**.
4.  Locate this code:

    ```yaml
    responses:
      '200':
        description: OK
        content:
          application/json:
            schema:
              type: object
              properties: {}
            examples: {}
    ```

5.  Under `schema`, insert the generated output from the step 2, so that it looks like this:

    ```yaml
    responses:
      '200':
        description: OK
        content:
          application/json:
            schema:
              type: object
              properties:
                coord:
                  type: object
                  properties:
                    lon:
                      type: number
                    lat:
                      type: number
                weather:
                  type: array
                  items:
                    type: object
                    properties:
                      id:
                        type: number
                      main:
                        type: string
                      description:
                        type: string
                      icon:
                        type: string
                base:
                  type: string
                main:
                  type: object
                  properties:
                    temp:
                      type: number
                    feels_like:
                      type: number
                    temp_min:
                      type: number
                    temp_max:
                      type: number
                    pressure:
                      type: number
                    humidity:
                      type: number
                visibility:
                  type: number
                wind:
                  type: object
                  properties:
                    speed:
                      type: number
                    deg:
                      type: number
                clouds:
                  type: object
                  properties:
                    all:
                      type: number
                dt:
                  type: number
                sys:
                  type: object
                  properties:
                    type:
                      type: number
                    id:
                      type: number
                    country:
                      type: string
                    sunrise:
                      type: number
                    sunset:
                      type: number
                timezone:
                  type: number
                id:
                  type: number
                name:
                  type: string
                cod:
                  type: number

            examples: {}
    ```

    When you insert this code block, even if you start with your cursor in the right place, the `properties` section will be left-aligned. Highlight that section and then click your Tab key a few times to indent it (or Shift+Tab to reverse indent). Make sure Stoplight doesn't flag a validation error due to improper indentation.

6.  Switch back to the form view by clicking **Form**. Then observe that the schema is populated in the GUI editor:

    {% include course_image.html size="medium" filename="schema_populated_stoplight2" ext_print="png" ext_web="png" alt="Schema editor populated in Form view" caption="Schema editor populated in Form view" %}

7.  For each property, click the associated buttons in the same row to enter a description and example. Expand some of the **Response information** above button for this information.

    {% include course_image.html url="" size="medium" filename="stoplight_entering_descriptions" ext_print="png" ext_web="png" alt="Entering descriptions in the GUI editor" caption="Entering descriptions in the GUI editor" %}

8.  Click the **Example** tab and insert the example (from the same Response information section above). Call the example "Example."

{% unless page.permalink == "/workshop.html" %}
### Reusing responses through components

The OpenAPI spec allows you to re-use common components. If you have a dozen different endpoints that all return the same information, you can create a "model" for that information (a model is a description of some object's properties). In the code, this model will be stored the inside the `components` section. Anytime you see a `$ref` button in Stoplight, you can choose to use those sections stored in `components` (or "Models" in the Stoplight Studio interface).

A common scenario for re-use with responses might be 401 (unauthorized responses), which could conceivably be returned with each endpoint. To store this 401 response as a re-usable model:

1.  In the left sidebar, right-click **Models** and select **New Model**. Name the model "unauthorized_response".
2.  You can use the JSON schema editor to create the properties of your re-usable model. Click the **+ object** link twice to create two properties for the object. Name them `cod` and `message`. Change the  data type for the first from string to integer.

    {% include course_image.html size="medium" filename="schema_editor_401_stoplight" ext_print="png" ext_web="png" alt="Creating a re-usable model" caption="Creating a re-usable model" %}

3.  Return to your **weather** path and click **+ Response** to create a new response.
4.  For the response code, select **401: Unauthorized**.
5.  Click **+ Add Body**.
6.  In the **$Ref Target**, click and select the **unauthorized_response** component:

    {% include course_image.html size="large" filename="ref_selection_json_schema_stoplight" ext_print="png" ext_web="png" alt="Selecting a re-usable model" caption="Selecting a re-usable model" %}

Now you're re-using the same model. As you work with larger APIs that re-use components, be sure to store your re-usable parts as models (or other subsections under `components`). As you can see from the options in the $Ref Target, you can even store these components outside the existing OpenAPI file:

{% include course_image.html url="" size="small" filename="reuse_locations_stoplight" ext_print="png" ext_web="png" alt="Reference target storage options" caption="Reference target storage options" %}

{% endunless %}

### Preview, test, and publish the output

Now that you've finished creating your OpenAPI spec, let's preview, test, and publish your documentation.

1.  Click the **Commit** button, type a commit message, and then click **Push**. This creates a commit in your GitHub repo, which is where this content actually lives.
2.  Click the **Publish** button, and then slide the **Preview** toggle on.
3.  In the left sidebar, expand **Weather Endpoints** and click the **Weather** endpoint.
4.  Click the **Try It** tab.
4.  Select **zip** check box and enter a zip code. (At least one location parameter is required for the API to retrieve weather information.)
5.  Enter an API key into the value for the **appid** parameter. If you don't have an [OpenWeatherMap API key](docapis_get_auth_keys.html#openweathermap_apikey), you can use this: `fd4698c940c6d1da602a70ac34f0b147`.

    If you've done everything correctly, you will see a response returned.

6.  At this point, you can either publish or export your API documentation. To publish, click the **Publish** button. You will receive a URL for the published content.

    You can view my [published API docs here](https://stoplight.io/p/docs/gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml?group=master).

7.  To export the OpenAPI content to publish in another tool, click **Export OpenAPI**. You can view mine [here](https://stoplight.io/api/nodes.raw?srn=gh/tomjoht/stoplight_studio_weathermap/reference/openweathermap.v1.yaml).

    If you don't want to publish docs through Stoplight, you could use your OpenAPI definition with [Redoc](https://github.com/Redocly/redoc), [Swagger UI](pubapis_swagger.html), [Spectacle](https://github.com/sourcey/spectacle), [Docsy](https://github.com/google/docsy), and other tools. See [Openapi.tools](https://openapi.tools/#documentation) for a list of possibilities.

{% if page.permalink == "/workshop.html" %}*For more information related to this activity, see [Fastest Way to Create an OpenAPI Specification Document (Using Stoplight Studio)](pubapis_openapis_quickstart_stoplight.html).*{% endif %}

<style>
dl {font-size: 18px !important;}
.expandedBox {
  background-color: #f0f0f0;
  border: 1px solid #dedede;
  padding: 15px;
  margin-bottom: 20px;
}
</style>
