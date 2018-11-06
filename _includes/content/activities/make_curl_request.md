## <i class="fa fa-user-circle"></i>  Activity 2d: Make the OpenWeatherAPI request using curl

1.  Assuming you completed the exercises in the Postman tutorial, go back into Postman.
2.  On any call you've configured, below the Save button in Postman, click the **Code** link, then select **cURL** from the drop-down select, and click **Copy to Clipboard**.

    <img src="images/postmancurl.png" class="medium" />

    (The official name is "cURL" but most people just write it as "curl.")

    The Postman code for the OpenWeatherMap weather request looks like this in curl format:

    ```bash
    curl -X GET -H "Cache-Control: no-cache" -H "Postman-Token: 930d08d6-7b2a-6ea2-0725-27324755c684" "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
    ```

    Postman adds some of its own header information (designated with `-H`). You can optionally remove these extra header tags (including them won't hurt anything). Here's the curl call with the `-H` content removed:

    ```bash
    curl -X GET "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
    ```

3.  Curl is available on Mac by default. If you're on Windows and you haven't installed curl, follow the instructions for installing curl [here](http://www.confusedbycode.com/curl/). (Note: Choose one of the "free" versions).

4.  Go to your terminal:

    * If you're on Windows, go to **Start** and type **cmd** to open up the command line. (If you're on Windows 8, see [these instructions for accessing the commandline](http://pcsupport.about.com/od/windows-8/a/command-prompt-windows-8.htm).) Right-click and then select **Paste** to insert the call.

    * If you're on a Mac, either open [iTerm](https://www.iterm2.com/) or Terminal (by pressing **Cmd + space bar** and typing **Terminal**). Paste the request you have in your text editor into the command line and then press the **Enter** key.

    The response from the OpenWeatherMap weather request should look as follows:

    ```
    {"coord":{"lon":-121.96,"lat":37.35},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"base":"stations","main":{"temp":65.59,"pressure":1014,"humidity":46,"temp_min":60.8,"temp_max":69.8},"visibility":16093,"wind":{"speed":4.7,"deg":270},"clouds":{"all":20},"dt":1522608960,"sys":{"type":1,"id":479,"message":0.1642,"country":"US","sunrise":1522590719,"sunset":1522636280},"id":420006397,"name":"Santa Clara","cod":200}
    ```

    This response is minified. You can un-minify it by going to a site such as [JSON pretty print](http://jsonprettyprint.com/), or on a Mac (with [Python installed](https://www.python.org/downloads/)) you can add <code>| python -m json.tool</code> at the end of your cURL request to minify the JSON in the response. See [this Stack Overflow thread](https://stackoverflow.com/questions/352098/how-can-i-pretty-print-json-in-a-unix-shell-script) for details.

5.  Now make a similar curl request for the 5 day forecast request that you also have in Postman. 
