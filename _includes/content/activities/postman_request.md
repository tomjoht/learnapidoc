## <i class="fa fa-user-circle"></i> Activity: Make requests with Postman
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

### Make a request

In this exercise, you'll use Postman to make a request using OpenWeatherMap's [current weather data API endpoint](https://openweathermap.org/current). To make the request:

1.  If you haven't already done so, download and install the Postman app at [https://www.getpostman.com/downloads/](https://www.getpostman.com/downloads/). (Make sure you download the app and not the deprecated Chrome extension.)
2.  Start the Postman app.
3.  Insert the following endpoint into the box next to **GET**: `https://api.openweathermap.org/data/2.5/weather`.
4.  Click the **Params** tab (below the box where you inserted the endpoint) and then add the following three parameters in the **key** and **value** rows:

    * key: `zip` / value: `95050`
    * key: `units` / value: `imperial`
    * key: `appid`/ value: &lt;insert your own API key&rt;

    For the value for `appid`, use your own API key. (If you didn't [get an API key](docapis_get_auth_keys.html), use [one of the keys here](http://idratherbewriting.site/apikeys).) Your Postman UI should look like this:

    <img src="https://idratherbewritingmedia.com/images/api/postmanopenweatherapi.png" class="medium"/>

	  When you add these parameters, they appear as a query string to the endpoint URL in the GET box. For example, your endpoint will now look like this: `https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147` (but with different query string values). Query string parameters appear after the question mark `?` symbol and are separated ampersands `&`. The order of query string parameters doesn't matter.

    Note that many APIs pass the API key in the header rather than as a query string parameter in the request URL. (If that were the case, you would click the **Headers** tab and insert the required key-value pairs in the header. But OpenWeatherMap passes the API key as a query string parameter.)

7.  Click **Send**.

	  The response appears in the lower pane. For example:

    <img src="https://idratherbewritingmedia.com/images/api/postmanopenweatherapiresponse.png" class="medium"/>

### Save the request

1.  In Postman, click the **Save** button (next to Send). The Save Request dialog box appears.
1.  In the **Request Name** box, type a friendly name for the request, such as "OpenWeatherMap Current API."
1.  In the **Request description (Optional)** field, type a description such as "gets the current weather for 95050 in imperial units."
3.  Scroll down a bit and click **Create collection** to create a folder to save the request in. Name your new collection (e.g., "OpenWeatherMap") and click the check mark. Then select the new collection you just created.

    After you create the collection, the Save button will be enabled. Your Postman collection should look something like this:

    <img src="https://idratherbewritingmedia.com/images/api/postmancollectiondialog.png" class="small" alt="Collection dialog box"/>

4.  Click **Save to [collection name]**

    Saved endpoints appear in the left side pane under Collections. (If you don't see the Collections pane, click the **Show/Hide Sidebar** button <img src="https://idratherbewritingmedia.com/images/api/show_hide_sidebar.png" style="width: 20px"/> in the lower-left corner to expand it.

### Make a request for the OpenWeatherMap 5 day forecast

Now instead of getting the current weather, let's use another OpenWeatherMap endpoint to get the forecast. Enter details into Postman for the [5 day forecast request](https://openweathermap.org/forecast5). In Postman, you can click a new tab, or click the arrow next to Save and choose **Save As**. Then choose your collection and request name.

A sample endpoint for the 5 day forecast, which specifies location by zip code, looks like this:

```bash
https://api.openweathermap.org/data/2.5/forecast?zip=95050,us
```

Add in the query parameters for the API key and units:

```bash
https://api.openweathermap.org/data/2.5/forecast?zip=95050&appid=APIKEY&units=imperial
```

(In the above code, replace out `APIKEY` with your own API key.)

Observe how the response contains a `list` that provides the forecast details for five days.

### Make one more OpenWeatherMap API request

Make one more OpenWeatherMap API request, this time changing the way you specify the location. Instead of specifying the location by zip code, specify the location using `lat` and `lon` geocoordinates instead. For example:

```bash
https://api.openweathermap.org/data/2.5/weather?lat=37.3565982&lon=-121.9689848&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147
```

Postman has a lot of other functionality you can use. We'll revisit Postman later in the course for some other activities.

{% if page.workshop_activities == true %}*For more information related to this activity, see [Submit requests through Postman](docapis_postman.html).*{% endif %}
