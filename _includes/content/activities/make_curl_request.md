## <i class="fa fa-user-circle"></i>  Activity: Make the OpenWeatherAPI request using curl
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

1.  Assuming you completed the exercises in the [Postman tutorial](docapis_postman.html), go back into Postman.
2.  On any call you've configured, and below the Save button in Postman, click the **Code** link.
3.  In the Generate Code Snippets dialog box, select **cURL** from the drop-down list, and then click **Copy to Clipboard**.

    <img src="https://idratherbewritingmedia.com/images/api/postmancurl.png" class="medium" />

    The Postman code for the OpenWeatherMap weather request in curl looks as follows:

    ```bash
    curl -X GET \
      'https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147' \
      -H 'Accept: */*' \
      -H 'Accept-Encoding: gzip, deflate' \
      -H 'Cache-Control: no-cache' \
      -H 'Connection: keep-alive' \
      -H 'Host: api.openweathermap.org' \
      -H 'Postman-Token: 8a9aeae7-f063-42e8-b0e3-09d1a7069bd5,62f56707-3a65-4d68-a774-8e677ef4487e' \
      -H 'User-Agent: PostmanRuntime/7.15.2' \
      -H 'cache-control: no-cache'
    ```

    Postman adds its own header information (designated with `-H`). Do the following:

    * Remove all the header (`-H`) tags.
    * Remove the backslashes (`\`) (these are just added for readability).
    * Put everything on one line
    * If you're on Windows, change the single quotation marks to double quotation marks.

    Here's the same curl call with these modifications:

    ```bash
    curl -X GET "https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147"
    ```

3.  curl is available on Mac and Windows 10 by default. (If you're on an older Windows machine that doesn't have curl, see [installing curl here](http://www.confusedbycode.com/curl/#downloads) for details.)

4.  Go to your Terminal (Mac) or Command Prompt (Windows).

    You can open your Terminal / Command Crompt by doing the following:

    * If you're on Windows, go to **Start** and search for **cmd** to open up the command prompt. Paste in the curl request and then press **Enter**. (If you can't paste it in, look for paste options on the right-click menu.)

    * If you're on a Mac, open Terminal by pressing **Cmd + spacebar** and typing **Terminal**. (Or go to **Applications > Utilities > Terminal**). (You could also use [iTerm](https://www.iterm2.com/).) Paste in the curl request and then press **Enter**.

    The response from the OpenWeatherMap weather request should look as follows:

    ```json
    {"coord":{"lon":-121.95,"lat":37.35},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"base":"stations","main":{"temp":68.34,"pressure":1014,"humidity":73,"temp_min":63,"temp_max":72},"visibility":16093,"wind":{"speed":3.36},"clouds":{"all":40},"dt":1566664878,"sys":{"type":1,"id":5122,"message":0.0106,"country":"US","sunrise":1566653501,"sunset":1566701346},"timezone":-25200,"id":0,"name":"Santa Clara","cod":200}
    ```

    This response is minified. You can un-minify it by going to a site such as [JSON pretty print](http://jsonprettyprint.com/), or if you have [Python installed](https://www.python.org/downloads/)), you can add <code>| python -m json.tool</code> at the end of your cURL request to minify the JSON in the response (see [this Stack Overflow thread](https://stackoverflow.com/questions/352098/how-can-i-pretty-print-json-in-a-unix-shell-script) for details).

5.  If you want additional practice, make a similar curl request for the 5 day forecast request that you also have in Postman. And another curl request for the third OpenWeatherMap API request you made in Postman.

{% if page.workshop_activities == true %}*For more information related to this activity, see [Make a curl call](docapis_make_curl_call.html).*{% endif %}
