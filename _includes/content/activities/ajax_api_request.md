{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: Make an API request on a web page
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

For this activity, you'll use JavaScript to display the API response on a web page. Specifically, you'll use some auto-generated jQuery code from Postman to create the AJAX request. You'll get the wind speed from the response and print it to the page.

1.  In an editor such as Sublime Text, create a new HTML file called `weather.html` and insert the following boilerplate code:

    ```html
    <html>
       <meta charset="UTF-8">
       <head>
          <title>Sample page</title>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script>
          POSTMAN CODE GOES HERE
          </script>
       </head>
       <body>
          <h1>Sample Page</h1>
          wind speed: <span id="windSpeed"></span>
       </body>
    </html>
    ```

2.  Assuming you completed the exercises in the [Postman tutorial](docapis_postman.html) to configure a request, go back into Postman.
3.  In Postman, click the **Code** link (below the Save button) and go to **JavaScript - jQuery**:

    {% include course_image.html size="medium" filename="postman_javascript_ajax" ext_print="png" ext_web="png" alt="Copying JavaScript code from Postman" caption="Copying JavaScript code from Postman" %}

4.  Copy the Postman code above and insert it into the `POSTMAN CODE GOES HERE` place in your `weather.html` file.
5.  Directly below `console.log(response);`, add these two lines:

    ```js
    var content = response.wind.speed;
    $("#windSpeed").append(content);
    ```

6.  Your final code should look as follows:

    ```html
    <html>
       <meta charset="UTF-8">
       <head>
          <title>Sample page</title>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
          <script>
          var settings = {
            "url": "https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147",
            "method": "GET",
            "timeout": 0,
          };

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

    What is this code doing? When `ajax` (a jQuery function) retrieves the response from the API, it assigns the response to `response`. Then we create a variable called `content` and set it equal to `response.wind.speed` (this uses [dot notation]({{site.rooturl}}docapis_diving_into_dot_notation.html) to access this value). jQuery's `append` method is used to append `content` to an element called `#windSpeed`on the page.

7.  Start **Chrome** and open the JavaScript Console.

    To open the JavaScript Console, on Chrome on a Mac, go to **View > Developer > Javascript Console**; on Windows, click the **menu** button (vertical ellipses) and go to **More tools > Developer tools**. Then click the **Console** tab.
    
8.  In Chrome, press **Cmd+O** (Mac) or **Ctrl + O** (Windows) and select your `weather.html` file.

    The weather response should be logged to the JavaScript Console (due to the `console.log(response)` code in the request). If you expand the object returned to the console, it will look as follows:

    <a class="noCrossRef" href="https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html"><img src="https://idratherbewritingmedia.com/images/api/jsonpayloadweather.png" alt="JSON payload from weather API logged to console" /></a>

    {: .tip}
    You can view the file here: [weather-plain.html](https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html).
