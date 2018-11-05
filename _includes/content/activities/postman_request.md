## <i class="fa fa-user-circle"></i>  Activity 2c: Make requests with Postman

### Make a request

In this exercise, you'll make a REST call using OpenWeatherMap's [current weather data API endpoint](https://openweathermap.org/current).

1.  If you haven't already done so, download and install the Postman app at [http://www.getpostman.com](https://www.getpostman.com/).
2.  Start the Postman app (and enjoy the quirky messages that appear while the app loads).
3.  If necessary, select **GET** for the method. (This is the default.)
4.  Insert the following endpoint into the box next to GET: `https://api.openweathermap.org/data/2.5/weather`.
5.  Click the **Params** button (to the right of the box where you inserted the endpoint) and then add the following three parameters. You'll need to insert the key into the Param's **key** field and the value into the Param's **value** field:

    * key: `zip` / value: `95050`
    * key: `units` / value: `imperial`
    * key: `appid`/ value: `APIKEY`

    Customize the `zip` and `appid` values to your own zip code and [OpenWeatherMap API key](docapis_get_auth_keys.html). Replace `APIKEY` with your own API key.

    Your Postman UI should look like this:

    <img src="images/postmanopenweatherapi.png" class="medium"/>

	  When you add these parameters, they will dynamically be added as a query string to the endpoint URI. For example, your endpoint will now look like this: `https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial` (but with different query string values). Query string parameters appear after the question mark `?` symbol and are separated ampersands `&`. The order of query string parameters doesn't matter.

    Many APIs pass the API key in the header rather than as a query string parameter in the request URL. (If that were the case, you would click the **Headers** tab &mdash; below the GET button &mdash; and insert the required key-value pairs in the header.)

7.  Click **Send**.

	  The response appears in the lower window. For example:

    <img src="images/postmanopenweatherapiresponse.png" class="medium"/>

{% include random_ad.html %}

### Save the request

1.  In Postman, click the **Save** button (next to Send).
1.  In the Save Request dialog box, in the **Request Name** box at the top of the dialog box, type a friendly name for the request, such as "Current weather for 95050."
3.  Scroll down a bit in the Save Request dialog box. Next to **Or create new collection**, create a new collection by typing the collection name in the box, such as OpenWeatherMap. Collections are simply groups to organize your saved requests.

    Your Postman collection should look something like this:

    <img src="images/postmancollectiondialog.png" class="small"/>

4.  Click **Save.**

Saved endpoints appear in the left side pane under Collections. (If you don't see the Collections pane, click the **Show/Hide Sidebar** button <img style="vertical-align: bottom" src="images/postmanexpandcollections.png"/> in the upper-left corner to expand it.)

### Make a request for the OpenWeatherMap 5 day forecast

Now instead of getting the current weather, let's use another endpoint to get the forecast. Enter details into Postman for the [5 day forecast request](https://openweathermap.org/forecast5). You can click a new tab, or click the arrow next to Save and choose **Save As**. Then choose your collection and request name.

The 5 day forecast request looks like this:

```bash
https://api.openweathermap.org/data/2.5/forecast?zip=95050&appid=APIKEY&units=imperial
```

(In the above code, replace out `APIKEY` with your own API key.)
