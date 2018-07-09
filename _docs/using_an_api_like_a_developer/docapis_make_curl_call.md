---
title: "Make a curl call"
permalink: /docapis_make_curl_call.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.4
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
---

In this section, you'll use curl to make the same weather API requests you made previously with Postman. If you haven't installed curl, see [curl intro and installation](docapis_install_curl.html) first.

* TOC
{:toc}

## Prepare the weather request in curl format

{% include random_ad.html %}

1.  Assuming you completed the exercises in the [Postman tutorial](docapis_postman.html), go back into Postman.
2.  On any call you've configured, right below the Save button in Postman, click the **Code** link, then select **cURL** from the drop-down select, and click **Copy to Clipboard**.

    <img src="images/postmancurl.png" class="medium" />

    (The official name is "cURL" but most people just write it as "curl.")

    The code for the OpenWeatherMap weather request looks like this in curl format:

    ```bash
    curl -X GET -H "Cache-Control: no-cache" -H "Postman-Token: 930d08d6-7b2a-6ea2-0725-27324755c684" "http://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
    ```

    For whatever reason, Postman adds some of its own header information (designated with `-H`). You can optionally remove these extra header tags (including them won't hurt anything). Here's the curl call with the `-H` content removed:

    ```bash
    curl -X GET "http://api.openweathermap.org/data/2.5/weather?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
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

## Make curl requests for each of the Postman requests

{% include activity.html %}

Make a curl request for each of the requests you entered in Postman.

## Note about single and double quotes with Windows curl requests {#windows_notes}

If you're using Windows to submit a lot of curl requests, and the curl request require you to submit JSON in the request body, you might run into issues with single versus double quotes. Some API endpoints (usually for POST methods) require you to submit content in the body of the message request. The body content is formatted in JSON. Since you can't use double quotes inside of other double quotes, you'll run into issues in submitting curl requests in these scenarios.

{% include random_ad2.html %}

Here's the workaround. If you have to submit body content in JSON, you can store the content in a JSON file. Then you reference the file with an `@` symbol, like this:

```sh
curl -H "Content-Type: application/json" -H "Authorization: 123" -X POST -d @mypostbody.json http://endpointurl.com/example
```

Here curl will look in the existing directory for the mypostbody.json file. (You can also reference the complete path to the JSON file on your machine.)
