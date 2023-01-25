---
title: "Make a curl call"
permalink: docapis_make_curl_call.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.4
sidebar: docapis
section: likeadeveloper
path1: likeadeveloper.html
last-modified: 2020-09-07
---

In this section, you'll use curl to make the same weather API requests you made previously with Postman. If you haven't installed curl, see [curl intro and installation](docapis_install_curl.html) first.

* TOC
{:toc}

## <i class="fa fa-user-circle"></i> Activity: Make the OpenWeatherAPI request using curl {#make_request_curl}

This activity assumes you have curl installed. curl is available on Mac and some Windows 10 versions by default. If you're on an older Windows machine that doesn't have curl, see [installing curl here](http://www.confusedbycode.com/curl/#downloads) for details. (Most likely, choose "With Administrator Privileges (free)" 64-bit version.) Close and restart your Command Prompt after installing curl.

To make a request with curl:

1.  Assuming you completed the exercises in the [Postman tutorial]({{site.rooturl}}docapis_postman.html), go back into Postman.
2.  On any request you've configured, below the Save button in Postman, click the **Code** link. (If you don't see the link, scroll up.)
3.  In the Generate Code Snippets dialog box, select **cURL** from the drop-down list, and then click **Copy to Clipboard**.

    <figure><img class="docimage medium" src="{{site.media}}/postman_curl_request5.png" alt="curl request in Postman" /><figcaption>curl request in Postman</figcaption></figure>

    The Postman code for the OpenWeatherMap weather request in curl looks as follows:

    ```bash
    curl --location --request GET 'https://api.openweathermap.org/data/2.5/weather?zip=95050&units=imperial&appid=APIKEY'
    ```

    (In the above code, replace `APIKEY` with your actual API key.)

    The [`--location`](https://curl.haxx.se/docs/manpage.html#-L) parameter will prompt curl to submit a new request if the URL is a redirect. The [`--request`](https://curl.haxx.se/docs/manpage.html#-X) parameter specifies the operation for the request.

    (Note that previously, Postman would include its own header information, designated with `-H`. If you see these parameters, delete them since they cause issues when submitted outside of Postman.)

    {: .warning}
    In general, the code snippets can be copied and pasted directly into your terminal on a Mac. However, for Windows, you must change the single quotation marks to double quotation marks.

    Also, on Windows, if your curl has any backslashes, (`\`) remove them and put all content onto the same line. (Backslashes are just added for readability). You can make these adjustments in a text editor before pasting the curl command into the Command Prompt.

5.  Go to your Terminal (Mac) or Command Prompt (Windows).

    You can open your Terminal / Command Prompt by doing the following:

    * If you're on Windows, go to **Start** and search for **cmd** to open up the Command Prompt. Paste in the curl request and then press **Enter**. (If you can't paste it in, look for paste options on the right-click menu.)

    * If you're on a Mac, open Terminal by pressing **Cmd + spacebar** and typing **Terminal**. (Or go to **Applications > Utilities > Terminal**). (You could also use [iTerm](https://www.iterm2.com/).) Paste in the curl request and then press **Enter**.

    The response from the OpenWeatherMap weather request should look as follows:

    ```json
    {"coord":{"lon":-121.95,"lat":37.35},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"base":"stations","main":{"temp":68.34,"pressure":1014,"humidity":73,"temp_min":63,"temp_max":72},"visibility":16093,"wind":{"speed":3.36},"clouds":{"all":40},"dt":1566664878,"sys":{"type":1,"id":5122,"message":0.0106,"country":"US","sunrise":1566653501,"sunset":1566701346},"timezone":-25200,"id":0,"name":"Santa Clara","cod":200}
    ```

    This response is minified. You can un-minify it by going to a site such as [JSON pretty print](http://jsonprettyprint.com/), or if you have [Python installed](https://www.python.org/downloads/), you can add <code>| python -m json.tool</code> at the end of your cURL request to un-minify the JSON in the response (see [this Stack Overflow thread](https://stackoverflow.com/questions/352098/how-can-i-pretty-print-json-in-a-unix-shell-script) for details).

{% include ads.html %}

{% include image_ad_right.html %}

## Note about single and double quotes with Windows curl requests {#windows_notes}

If you're using Windows to submit a lot of curl requests, and the curl requests require you to submit JSON in the [request body](docapis_doc_parameters.html#request_bodies), you might run into issues with single versus double quotes. The problem is that request body content is often formatted in JSON, which requires double quotes.

{% include random_ad4.html %}

Since you can't use double quotes inside of other double quotes, you'll run into issues in submitting curl requests in these scenarios.

{% include random_ad2.html %}

Here's the workaround. If you have to submit body content in JSON, you can store the content in a JSON file. Then you reference the file with an `@` symbol, like this:

```sh
curl -H "Content-Type: application/json" -H "Authorization: 123" -X POST -d @mypostbody.json http://endpointurl.com/example
```

Here curl will look in the existing directory for the `mypostbody.json` file. (You can also reference the complete path to the JSON file on your machine.)

{% include random_ad3.html %}
