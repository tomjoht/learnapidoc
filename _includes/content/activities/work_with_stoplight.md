{: .activity_subtitle}
##  <i class="fa fa-user-circle"></i> Activity 4d: Download and populate Stoplight with an OpenAPI specification
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

In this activity, you'll work with an OpenAPI file in [Stoplight Studio](https://stoplight.io/p/docs/gh/stoplightio/studio), which provides a GUI editor for working with the OpenAPI specification information. To speed things up, you'll start with a pre-built OpenAPI file that you paste into the Stoplight Studio editor. Then you'll make some modifications to it using Stoplight Studio's visual modeling tools. You can use Stoplight Studio in the browser or as a web app. We'll use the browser in this activity.

To work with an OpenAPI file in Stoplight:

1.  Download this pre-built 3.0 OpenAPI specification file: [`openapi_openweathermap.yml`](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml)
2.  Go to [Stoplight Studio](https://stoplight.io/p/studio).
3.  Click **Login** in the upper-right corner and log in using your GitHub account.
4.  In **New Local Project**, type a name for your project and then click **Create**.
5.  Click the **API** button, and then click **Import**. Select the `openapi_openweathermap.yml` that you downloaded in step 1.



5.  Type a **Project name** (e.g., "OpenWeatherMap API"), choose whether you want the visibility public or private (it doesn't matter), and click **Next**.
6.  On the next screen (Project Designer), select the **Import Existing** tab. Then the click **Upload OpenAPI (Swagger), Markdown or HTML File** button and select the **openweathermap_swagger20.json** file that you downloaded in step 1.
7.  Click the **+ Add openweathermap_swagger20.oas2.yml** button. The OpenAPI file gets uploaded into Stoplight, and the data populates the Stoplight interface.
8.  At the top of the screen, switch between the **Code** and **Design** views by clicking the corresponding buttons at the top. Make some edits in the code and then switch to the Design view to see the edits reflected. (Note that Stoplight prefers JSON as the code format.) The following video shows this process:

    {% if site.format == "kindle" or site.format == "pdf" %}
    {: .note}
    This content doesn't embed well in print, as it contains a YouTube video. Please go to https://idratherbewriting.com/learnapidoc/pubapis_stoplight.html to view the content.
    {% elsif site.format == "web" %}

    <figure><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/vqDJBa-haYs" width="560" height="340" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>When you switch to the code view, the editor automatically goes to the part of the spec you were creating in the visual editor and highlights it. When you switch back, the visual UI updates with any changes you made in the code. Switching between modes is seamless and easy.</figcaption></figure>

    {% endif %}

9.  Explore the different options in the Design editor (specifically, expand endpoint under "Current weather data" and make some arbitrary textual changes to see how to update information.
10. Scroll down to the "Send a Request" section at the bottom and see if you can make a successful request. (Hint: make sure to enter an API key for the `appid` value and add a value for a parameter such as `zip`).

### <i class="fa fa-user-circle"></i> Activity: Automatically generate schema documentation

One of the coolest features in Stoplight is the ability to auto-generate the schema documentation from a sample JSON response. Try out this auto-generation feature by doing the following:

1.  In the middle column of Stoplight, click **PATHS**, and then click **/weather**, and then click **Call current weather data for ...**.
2.  In the **Responses** section, click **Raw Schema** and delete the existing response schema. (Even when you delete the info here, it will leave empty curly braces `{}` there when you switch tabs, which is good.)
3.  Switch to the **Editor** tab, click **Generate from JSON**, and paste in the following JSON response from the OpenWeatherMap weather endpoint:

    ```json
    {
      "coord": {
        "lon": -121.96,
        "lat": 37.35
      },
      "weather": [
        {
          "id": 801,
          "main": "Clouds",
          "description": "few clouds",
          "icon": "02d"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 75.51,
        "pressure": 1014,
        "humidity": 8,
        "temp_min": 66.92,
        "temp_max": 80.6
      },
      "visibility": 16093,
      "wind": {
        "speed": 11.41,
        "deg": 330
      },
      "clouds": {
        "all": 20
      },
      "dt": 1541544960,
      "sys": {
        "type": 1,
        "id": 479,
        "message": 0.0043,
        "country": "US",
        "sunrise": 1541515128,
        "sunset": 1541552625
      },
      "id": 420006397,
      "name": "Santa Clara",
      "cod": 200
    }
    ```

6.  Click **Generate!**

    Stoplight automatically generates the JSON schema that conforms to the OpenAPI spec. You just saved yourself an afternoon of work!

    {% include course_image.html filename="stoplight_autogenerated_schema" ext_print="png" ext_web="png" alt="Autogenerated JSON schema" caption="Stoplight will autogenerate the JSON schema documentation" %}

    Here's a short video showing the process of auto-generating JSON. The Stoplight editor has evolved a bit, but it's still highly similar. (Also note that instead of starting with the above sample JSON, the video makes the request in Postman and then copies the response from there &mdash; but the idea should be clear.)

    {% if site.format == "kindle" or site.format == "pdf" %}
    {: .note}
    This content doesn't embed well in print, as it contains a YouTube video. Please go to https://idratherbewriting.com/learnapidoc/pubapis_stoplight.html to view the content.
    {% elsif site.format == "web" %}

    <figure><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/0IOWY0Hj3Xc?ecver=2" width="560" height="340" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>Stoplight's visual modeling tools let you automatically create the correct JSON schema definition from a block of JSON that you paste in.</figcaption></figure>

    {% endif %}

7.  Click the **Raw Schema** tab to see the code that Stoplight automatically wrote for you based on the sample JSON you copied in.

    This auto-generated schema documentation will make your life easier. Even if you prefer to hand-code your OpenAPI specification files in another editor, you might find that you visit Stoplight just to auto-generate your response schema documentation.

{% if page.workshop_activities == true %}*For more information related to this activity, see [Stoplight &mdash; visual modeling tools for creating your OpenAPI spec]({{site.rooturl}}pubapis_stoplight.html).*{% endif %}
