## <i class="fa fa-user-circle"></i> Make the OpenWeatherAPI request using curl

1.  Assuming you completed the exercises in the [Postman tutorial](docapis_postman.html), go back into Postman.
2.  On any call you've configured, right below the Save button in Postman, click the **Code** link, then select **cURL** from the drop-down select, and click **Copy to Clipboard**.

    <img src="images/postmancurl.png" class="medium" />

    (The official name is "cURL" but most people just write it as "curl.")

    The code for the OpenWeatherMap weather request looks like this in curl format:

    ```bash
    curl -X GET -H "Cache-Control: no-cache" -H "Postman-Token: 930d08d6-7b2a-6ea2-0725-27324755c684" "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
    ```

    For whatever reason, Postman adds some of its own header information (designated with `-H`). You can optionally remove these extra header tags (including them won't hurt anything). Here's the curl call with the `-H` content removed:

    ```bash
    curl -X GET "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
    ```

3.  If you're on a Mac, open Terminal by pressing **Cmd + space bar** and typing **Terminal**. Paste the request you have in your text editor into the command line and then press the **Enter** key.

    {: .tip}
    Mac users: Instead of using Terminal, download and use [iTerm](https://www.iterm2.com/) instead. It will give you the ability to open multiple tabs, save profiles, and more.

4.  If you're on Windows, go to **Start** and type **cmd** to open up the command line. (If you're on Windows 8, see [these instructions for accessing the commandline](http://pcsupport.about.com/od/windows-8/a/command-prompt-windows-8.htm).) Right-click and then select **Paste** to insert the call.

    The response from the OpenWeatherMap weather request should look as follows:

    ```
    {"coord":{"lon":-121.96,"lat":37.35},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"base":"stations","main":{"temp":65.59,"pressure":1014,"humidity":46,"temp_min":60.8,"temp_max":69.8},"visibility":16093,"wind":{"speed":4.7,"deg":270},"clouds":{"all":20},"dt":1522608960,"sys":{"type":1,"id":479,"message":0.1642,"country":"US","sunrise":1522590719,"sunset":1522636280},"id":420006397,"name":"Santa Clara","cod":200}
    ```

    This response is minified. You can un-minify it by going to a site such as [JSON pretty print](http://jsonprettyprint.com/), or on a Mac (with [Python installed](https://www.python.org/downloads/)) you can add <code>| python -m json.tool</code> at the end of your cURL request to minify the JSON in the response. See [this Stack Overflow thread](https://stackoverflow.com/questions/352098/how-can-i-pretty-print-json-in-a-unix-shell-script) for details.

5.  For more practice, make curl requests for each of the requests you have in Postman.
