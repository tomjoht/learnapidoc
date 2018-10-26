##  <i class="fa fa-user-circle"></i> Make the request on a page with AJAX

For this activity, we'll use JavaScript to display the response on a web page. You can use some auto-generated jQuery code from Postman to create the code.

1.  Create a new HTML file and paste in the following boilerplate template (it contains basic HTML tags and a reference to jQuery):

    ```html
    <html>
    <meta charset="UTF-8">
      <head>
          <title>Sample page</title>
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      </head>
    <body>
      <h1>Sample page</h2>

    </body>
    </html>
    ```

    Save your file with a name such as weather.html.

2.  Open Postman and click the request to the `weather` endpoint that you [configured earlier](docapis_postman.html).
3.  Click the **Code** link (below the Save button), and then select **JavaScript > jQuery AJAX**.

    The AJAX code should look like this:

    <img src="images/postmanjqueryajax.png" class="medium" alt="JavaScript Ajax code snippet" />

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

5.  Copy **Copy to Clipboard** to copy the code sample.  
6.  In the same template you started building in step 1, add a pair of `<script></script>` tags below the jQuery script, and then insert the Postman code inside the new `script` tags.
7.  In the jQuery code, remove the headers that Postman inserts:

    ```
    "headers": {
      "cache-control": "no-cache",
      "postman-token": "e9be9756-b922-89b3-7109-66bc4cf06b17"
    }
    ```

    And also remove the comma after `"method": "GET"`.

    Your final code should look like this:

    ```html
    <!DOCTYPE html>
    <html>
       <meta charset="UTF-8">
       <head>
          <meta charset="UTF-8">
          <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
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

    The page body will be blank, but the weather response should be logged to the JavaScript Console. Open the Console by going to **View > Developer > JavaScript Console**. If you expand the object returned to the console, it will look as follows:

    <a class="noCrossRef" href="https://idratherbewriting.com/learnapidoc/assets/files/weather-plain.html"><img src="images/jsonpayloadweather.png" alt="JSON payload from weather API logged to console" /></a>

    Note that Chrome tells you whether each expandable section is an object or an array. Knowing this is important to accessing the value through JavaScript dot notation.

    The following sections will explain this AJAX code a bit more.
