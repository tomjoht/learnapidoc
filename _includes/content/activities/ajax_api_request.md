{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: Make an API request on a web page
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

For this activity, you'll use JavaScript to display the API response on a web page. Specifically, you'll use some auto-generated jQuery code from Postman to create the AJAX request. You'll get the wind speed from the response and print it to the page.

1.  Open a text editor such as Sublime Text.
2.  Paste in the following code:

    ```html
    <html>
       <meta charset="UTF-8">
       <head>
          <title>Sample page</title>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script>
             var settings = {
             "async": true,
             "crossDomain": true,
             "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147",
             "method": "GET"
             }

             $.ajax(settings).done(function (response) {
                     console.log(response);
                     var content = response.wind.speed;
                     $("#windSpeed").append(content);
                   });

          </script>
       </head>
       <body>
          <h1>Sample Page</h1>
          wind speed: <span id="windSpeed"></span>
       </body>
    </html>
    ```
    {% unless page.permalink == "/workshop.html" %}
    This code is explained in more detail later on in the tutorial.
    {% endunless %}

3.  Save the file as an HTML file named `weather.html`.
4.  Start **Chrome** and open the JavaScript Console. (To open the JavaScript Console, on Chrome on a Mac, go to **View > Developer > Javascript Console**; on Windows, click the **menu** button (vertical ellipses) and go to **More tools > Developer tools**. Then click the **Console** tab.)
5.  In Chrome, press **Cmd+O** (Mac) or **Ctrl + O** (Windows) and select your `weather.html` file.

    The weather response should be logged to the JavaScript Console (due to the `console.log(response)` code in the request). If you expand the object returned to the console, it will look as follows:

    <a class="noCrossRef" href="https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html"><img src="https://idratherbewritingmedia.com/images/api/jsonpayloadweather.png" alt="JSON payload from weather API logged to console" /></a>

    One of the properties in the response is `wind.speed`. The wind speed is shown on the page as well.

{% if page.permalink == "/workshop.html" %}
For a detailed explanation of the code, see the "Step-by-step explanation" in [Inspect the JSON from the response payload](docapis_json_console.html#step-by-step-explanation).
{% endif %}

{% unless page.permalink == "/workshop.html" %}
### Step-by-step explanation

The above activity simply had you paste a chunk of prewritten code onto a web page, without much explanation. In this section, we'll step through that code with details about how it was assembled. However, we won't dive too deeply into JavaScript and jQuery here, as this is somewhat beyond the scope of the instruction.

To create the web page code from scratch:

1.  In a text editor (such as Sublime Text), create a new HTML file and paste in the following boilerplate template (which contains basic HTML tags and a reference to jQuery):

    ```html
    <html>
    <meta charset="UTF-8">
      <head>
          <title>Sample page</title>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      </head>
    <body>
      <h2>Sample page</h2>

    </body>
    </html>
    ```

    jQuery is necessary because we're using the `ajax` method to make the API request.

2.  Save your file (anywhere convenient) with a name such as **weather.html**.
3.  Open Postman and go to the Current weather data (`weather`) endpoint that you configured in an earlier activity (see [Submit requests through Postman]({{site.rooturl}}docapis_postman.html) for more information).
4.  Click the **Code** link (below the Save button), and then select **JavaScript > Jquery AJAX**.

    {% include course_image.html size="small_medium" filename="postmanjqueryajax" ext_print="png" ext_web="png" alt="JavaScript jQuery AJAX code snippet" caption="JavaScript jQuery AJAX code snippet" %}

    The code looks as follows:

    ```js
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147",
      "method": "GET",
      "headers": {
        "User-Agent": "PostmanRuntime/7.15.2",
        "Accept": "*/*",
        "Cache-Control": "no-cache",
        "Postman-Token": "8a9aeae7-f063-42e8-b0e3-09d1a7069bd5,5468d865-c341-4596-9acc-faba0e0c0c7d",
        "Host": "api.openweathermap.org",
        "Accept-Encoding": "gzip, deflate",
        "Connection": "keep-alive",
        "cache-control": "no-cache"
      }
    }

    $.ajax(settings).done(function (response) {
      console.log(response);
    });
    ```

5.  Click **Copy to Clipboard** to copy the code sample.  
6.  In your HTML file, insert the copied code inside a pair of `<script></script>` inside the `header` tags.
7.  In the jQuery code, remove the entire `headers` object from the Postman code:

    ```json
    "headers": {
      "User-Agent": "PostmanRuntime/7.15.2",
      "Accept": "*/*",
      "Cache-Control": "no-cache",
      "Postman-Token": "8a9aeae7-f063-42e8-b0e3-09d1a7069bd5,5468d865-c341-4596-9acc-faba0e0c0c7d",
      "Host": "api.openweathermap.org",
      "Accept-Encoding": "gzip, deflate",
      "Connection": "keep-alive",
      "cache-control": "no-cache"
    }
    ```
8.  Remove the extra comma after `"method": "GET"` to keep the JSON valid.
9.  Below `console.log(response);` (but still inside the function's closing brace `});`), create a variable called `content` and set it equal to `response.wind.speed`. Then use the jQuery `append` method to append `content` to an element called `#windSpeed`:

    ```js
    $.ajax(settings).done(function (response) {
        console.log(response);
        var content = response.wind.speed;
        $("#windSpeed").append(content);
      });
      ```

      When `ajax` retrieves the response from the API, it assigns it to `response`. You can access the properties in the `response` using [dot notation]({{site.rooturl}}docapis_diving_into_dot_notation.html). The `append` method in jQuery allows you to append content to a particular element.

9.  Create an element on the page (below the `h1` tags) with the `id="windSpeed"`:

      ```html
      <body>
         <h1>Sample Page</h1>
         wind speed: <span id="windSpeed"></span>
      </body>
      ```
10. Save the file and open it in Chrome. Open the JavaScript Console to view the object logged. (To open the JavaScript Console, on Chrome on a Mac, go to **View > Developer > Javascript Console**; on Windows, click the **menu** button (vertical ellipses) and go to **More tools > Developer tools**. Then click the **Console** tab.)

    {: .tip}
    You can view the file here: [weather-plain.html](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html).

{% endunless %}
