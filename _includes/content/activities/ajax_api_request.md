## <i class="fa fa-user-circle"></i> Activity 2e: Make the request on a page with AJAX

For this activity, you'll use JavaScript to display the API response on a web page. You'll use some auto-generated jQuery code from Postman to create the AJAX request.

1.  In a text editor (such as Sublime Text), create a new HTML file and paste in the following boilerplate template (which contains basic HTML tags and a reference to jQuery):

    ```html
    <html>
    <meta charset="UTF-8">
      <head>
          <title>Sample page</title>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      </head>
    <body>
      <h1>Sample page</h2>

    </body>
    </html>
    ```

2.  Save your file (anywhere convenient) with a name such as weather.html.

2.  Open Postman and go to the Current weather data (`weather`) endpoint that you [configured earlier](docapis_postman.html).
3.  Click the **Code** link (below the Save button), and then select **JavaScript > jQuery AJAX**.

    <img src="images/postmanjqueryajax.png" class="medium" alt="JavaScript Ajax code snippet" />

    The AJAX code should look as follows:

    ```js
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial",
      "method": "GET",
      "headers": {
        "cache-control": "no-cache",
        "postman-token": "e9be9756-b922-89b3-7109-66bc4cf06b17"
      }
    }

    $.ajax(settings).done(function (response) {
      console.log(response);
    });
    ```

5.  Click **Copy to Clipboard** to copy the code sample.  
6.  In the same template you started building in step 1, add a pair of `<script></script>` tags below the jQuery reference, and then insert the Postman code inside your `script` tags.
7.  In the jQuery code, remove the `headers` object that Postman inserts:

    ```json
    "headers": {
      "cache-control": "no-cache",
      "postman-token": "e9be9756-b922-89b3-7109-66bc4cf06b17"
    }
    ```

8.  And also remove the comma after `"method": "GET"`.

    Your final code should look like this:

    ```html
    <!DOCTYPE html>
    <html>
       <meta charset="UTF-8">
       <head>
          <meta charset="UTF-8">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <title>Sample Page</title>
          <script>
             var settings = {
               "async": true,
               "crossDomain": true,
               "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial",
               "method": "GET"
             }

             $.ajax(settings).done(function (response) {
               console.log(response);
             });
          </script>
       </head>
       <body>
          <h1>Sample Page</h1>
       </body>
    </html>
    ```

    {: .tip}
    You can view the file here: [idratherbewriting.com/learnapidoc/assets/files/weather-plain.html](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html)

8.  Start **Chrome** and open the JavaScript Console by going to **View > Developer > JavaScript Console**.
9.  In Chrome, go to **File > Open File** and select the **weather.html** file.

    The page body will be blank, but the weather response should be logged to the JavaScript Console (due to the `console.log(response)` code in the request). If you expand the object returned to the console, it will look as follows:

    <a class="noCrossRef" href="https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html"><img src="images/jsonpayloadweather.png" alt="JSON payload from weather API logged to console" /></a>

    This information is now available for you to integrate into your page.

10. To use a value from the JSON response, add the following inside the `ajax` function:

    <pre>
    $.ajax(settings).done(function (response) {
    console.log(response);

    <span class="red">var content = response.wind.speed;
    $("#windSpeed").append(content);
    </span>
    });
    </pre>

11. In the page body (inside the `body` tags), add the following div tag:

    <pre>
    &lt;body&gt;
      &lt;h1&gt;Sample page&lt;/h2&gt;
      <span class="red">&lt;div id=&quot;windSpeed&quot;&gt;Wind speed: &lt;/div&gt;</span>
    &lt;/body&gt;
    </pre>

12.  Refresh the page and you will see the wind speed printed to the page. (Here's [an example](https://idratherbewriting.com/learnapidoc/assets/files/weather-windspeed.html).)

{% if page.workshop_activities == true %}*For more information related to this activity, see [Inspect the JSON from the response payload](docapis_json_console.html) and [Access and print a specific JSON value](docapis_access_json_values.html).*{% endif %}
