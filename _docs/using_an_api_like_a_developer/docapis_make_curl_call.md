---
title: Make a cURL call
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

In this section, you'll use cURL to make the same weather API requests you made previously with Postman. If you haven't installed cURL, see [cURL intro and installation](docapis_install_curl.html) first.

* TOC
{:toc}

## Prepare the weather request in cURL format

1.  Go back into the [Weather API on Mashape](https://www.mashape.com/fyhao/weather-13).
2.  Copy the cURL request example for the second endpoint (`weather`) into your text editor:

    ```sh
	  curl --get --include 'https://simple-weather.p.mashape.com/weather?lat=1.0&lng=1.0' \
      -H 'X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p' \
      -H 'Accept: text/plain'
    ```

3.  If you're on Windows, do the following:

    * Change the single quotation marks to double quotation marks
    * Remove the backslashes (`\`)
    * Add `-k` after `--get`  as well to work around security certificate issues.

    The request should now look like this:

    ```sh
    curl --get -k --include "https://simple-weather.p.mashape.com/weather?lat=1.0&lng=1.0" -H "X-Mashape-Key: APIKEY" -H "Accept: text/plain"
    ```

4.  Swap in your own API key in place of `APIKEY`.

    {: .note}
    In the instruction in this course, <code>APIKEY</code> will always be used instead of an actual API key. You should replace that text with your own API key.

5.  Customize the `lat` and `lng` values to the following:

    * `lat=1.3319164`
    * `lng=103.7231246`

## Make the request in cURL (Mac)

1.  Open a terminal. To open Terminal, press **Cmd + space bar** and type **Terminal**.

    {: .tip}
    Instead of using Terminal, download and use [iTerm](https://www.iterm2.com/) instead. It will give you the ability to open multiple tabs, save profiles, and more.

2.  Paste the request you have in your text editor into the command line.

    My request for the Mashape Weather API looks like this:

    ```sh
	  curl --get --include 'https://simple-weather.p.mashape.com/weather?lat=1.3319164&lng=103.7231246' -H 'X-Mashape-Key: APIKEY' -H 'Accept: text/plain'
    ```

    For the Aeris Weather observations endpoint, it looks like this:

    ```sh
	  curl --get --include "http://api.aerisapi.com/observations/santa%20clara,ca?client_id=CLIENTID&client_secret=CLIENTSECRET" "Accept: application/json"
    ```

3.  Press your **Enter** key.

    You should see something like this as a response:

    The response should look something like this:

    ```
    29 c, Thunderstorms at Singapore, Singapore
    ```

## Make the request in cURL (Windows 7)

1.  Copy the cURL call from your text editor.
2.  Go to **Start** and type **cmd** to open up the commandline. (If you're on Windows 8, see [these instructions for accessing the commandline](http://pcsupport.about.com/od/windows-8/a/command-prompt-windows-8.htm).)
3.  Right-click and then select **Paste** to insert the call. My call for the Mashape API looks like this:

    ```sh
	  curl --get -k --include "https://simple-weather.p.mashape.com/weather?lat=1.3319164&lng=103.7231246" -H "X-Mashape-Key: APIKEY" -H "Accept: text/plain"
    ```

    For the Aeris endpoint, it looks like this:

    ```sh
    curl --get --include "http://api.aerisapi.com/observations/santa%20clara,ca?client_id=CLIENTID&client_secret=CLIENTSECRET" -H "Accept: application/json"
    ```

    The response should look something like this:

    ```
    29 c, Thunderstorms at Singapore, Singapore
    ```

## Single and Double Quotes with Windows cURL requests

Note that if you're using Windows to submit a lot of cURL requests, you'll eventually run into issues with single versus double quotes. Some API endpoints (usually for POST methods) require you to submit content in the body of the message request. The body content is formatted in JSON. Since you can't use double quotes inside of other double quotes, you run into issues in submitting cURL requests.

{% include random_ad.html %}

Here's the workaround. If you have to submit body content in JSON, you can store the content in a JSON file. Then you reference the file with an `@` symbol, like this:

```sh
curl -H "Content-Type: application/json" -H "Authorization: 123" -X POST -d @mypostbody.json http://endpointurl.com/example
```

Here cURL will look in the existing directory for the mypostbody.json file, but you can also reference the complete path to the JSON file.

## Make cURL requests for each of the weather endpoints

Make a cURL request for each of the weather endpoints for both the Mashape weather endpoints and the Aeris Weather endpoints, similar to how you made the requests in Postman.
