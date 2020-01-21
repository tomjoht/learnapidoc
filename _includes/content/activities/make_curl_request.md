{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: Make the OpenWeatherAPI request using curl
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

This activity assumes you have curl installed. curl is available on Mac and some Windows 10 versions (in Powershell) by default. If you're on an older Windows machine that doesn't have curl, see [installing curl here](http://www.confusedbycode.com/curl/#downloads) for details.

To make a request with curl:

1.  Assuming you completed the exercises in the [Postman tutorial]({{site.rooturl}}docapis_postman.html), go back into Postman.
2.  On any request you've configured, below the Save button in Postman, click the **Code** link. (If you don't see the link, scroll up.)
3.  In the Generate Code Snippets dialog box, select **cURL** from the drop-down list, and then click **Copy to Clipboard**.

    {% include course_image.html size="medium" filename="postman_curl_request5" ext_print="png" ext_web="png" alt="curl request in Postman" caption="curl request in Postman" %}

    The Postman code for the OpenWeatherMap weather request in curl looks as follows:

    ```bash
    curl --location --request GET 'https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=fd4698c940c6d1da602a70ac34f0b147'
    ```

    The [`--location`](https://curl.haxx.se/docs/manpage.html#-L) parameter will prompt curl to submit a new request if the URL is a redirect. The [`--request`](https://curl.haxx.se/docs/manpage.html#-X) parameter specifies the operation for the request.

    (Note that previously, Postman would its own header information, designated with `-H`. If you see these parameters, delete them since they cause issues when submitted outside of Postman.)

    In general, the code snippets can be copied and pasted directly into your terminal on a Mac. For Windows, you might have to clean the code up a bit:

    * Paste it into a text editor such as Sublime Text
    * If you see any backslashes, (`\`) remove them and put all content onto the same line. (Backslashes are just added for readability).
    * Change the single quotation marks to double quotation marks.

5.  Go to your Terminal (Mac) or Command Prompt (Windows).

    You can open your Terminal / Command Prompt by doing the following:

    * If you're on Windows, go to **Start** and search for **cmd** to open up the Command Prompt. Paste in the curl request and then press **Enter**. (If you can't paste it in, look for paste options on the right-click menu.)

    * If you're on a Mac, open Terminal by pressing **Cmd + spacebar** and typing **Terminal**. (Or go to **Applications > Utilities > Terminal**). (You could also use [iTerm](https://www.iterm2.com/).) Paste in the curl request and then press **Enter**.

    The response from the OpenWeatherMap weather request should look as follows:

    ```json
    {"coord":{"lon":-121.95,"lat":37.35},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"base":"stations","main":{"temp":68.34,"pressure":1014,"humidity":73,"temp_min":63,"temp_max":72},"visibility":16093,"wind":{"speed":3.36},"clouds":{"all":40},"dt":1566664878,"sys":{"type":1,"id":5122,"message":0.0106,"country":"US","sunrise":1566653501,"sunset":1566701346},"timezone":-25200,"id":0,"name":"Santa Clara","cod":200}
    ```

    This response is minified. You can un-minify it by going to a site such as [JSON pretty print](http://jsonprettyprint.com/), or if you have [Python installed](https://www.python.org/downloads/), you can add <code>| python -m json.tool</code> at the end of your cURL request to un-minify the JSON in the response (see [this Stack Overflow thread](https://stackoverflow.com/questions/352098/how-can-i-pretty-print-json-in-a-unix-shell-script) for details).

{% if page.workshop_activities == true %}*For more information related to this activity, see [Make a curl call]({{site.rooturl}}docapis_make_curl_call.html).*{% endif %}
