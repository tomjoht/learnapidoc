---
title: Make a curl call
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

1.  Go back into the [Weather API on Mashape](https://www.mashape.com/fyhao/weather-13).
2.  Copy the curl request example for the second endpoint (`weather`) into your text editor:

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
    In the instruction in this course, <code>APIKEY</code> will always be used instead of an actual API key. You should replace that text with your own API key. (If you want to borrow an API key, see [API keys](/learnapidoc/assets/files/apikeys.txt).)

5.  Customize the `lat` and `lng` values to the following:

    * `lat=37.3710062`
    * `lng=-122.0375935`

## Make the request in curl (Mac)

1.  Open a terminal. To open Terminal, press **Cmd + space bar** and type **Terminal**.

    {: .tip}
    Instead of using Terminal, download and use [iTerm](https://www.iterm2.com/) instead. It will give you the ability to open multiple tabs, save profiles, and more.

2.  Paste the request you have in your text editor into the command line and then press the **Enter** key.

    My request for the Mashape Weather API looks like this:

    ```sh
	  curl --get --include 'https://simple-weather.p.mashape.com/weather?lat=37.3710062&lng=-122.0375935' -H 'X-Mashape-Key: APIKEY' -H 'Accept: text/plain'
    ```

    For the Aeris Weather observations endpoint, the request looks like this:

    ```sh
	  curl --get --include "http://api.aerisapi.com/observations/santa%20clara,ca?client_id=CLIENTID&client_secret=CLIENTSECRET" "Accept: application/json"
    ```

## Make the request in curl (Windows 7)

1.  Copy the curl call from your text editor.
2.  Go to **Start** and type **cmd** to open up the command line. (If you're on Windows 8, see [these instructions for accessing the commandline](http://pcsupport.about.com/od/windows-8/a/command-prompt-windows-8.htm).)
3.  Right-click and then select **Paste** to insert the call. My call for the Mashape API looks like this:

    ```sh
	  curl --get -k --include "https://simple-weather.p.mashape.com/weather?lat=37.3710062&lng=-122.0375935" -H "X-Mashape-Key: APIKEY" -H "Accept: text/plain"
    ```

    For the Aeris endpoint, it looks like this:

    ```sh
    curl --get --include "http://api.aerisapi.com/observations/santa%20clara,ca?client_id=CLIENTID&client_secret=CLIENTSECRET" -H "Accept: application/json"
    ```

## Responses from the requests

The response from the Mashape request should look as follows:

```
9 c, Mostly Cloudy at Sunnyvale, United States
```

For the Aeris Weather API, the [prettified JSON response](http://jsonprettyprint.com/) looks as follows:

```json
{
  "success": true,
  "error": null,
  "response": {
    "id": "KSJC",
    "loc": {
      "long": -121.91666666667,
      "lat": 37.366666666667
    },
    "place": {
      "name": "san jose",
      "state": "ca",
      "country": "us"
    },
    "profile": {
      "tz": "America\/Los_Angeles",
      "elevM": 24,
      "elevFT": 79
    },
    "obTimestamp": 1511110380,
    "obDateTime": "2017-11-19T08:53:00-08:00",
    "ob": {
      "timestamp": 1511110380,
      "dateTimeISO": "2017-11-19T08:53:00-08:00",
      "tempC": 10,
      "tempF": 50,
      "dewpointC": 6.1,
      "dewpointF": 43,
      "humidity": 77,
      "pressureMB": 1021,
      "pressureIN": 30.15,
      "spressureMB": 1019,
      "spressureIN": 30.09,
      "altimeterMB": 1022,
      "altimeterIN": 30.18,
      "windKTS": 0,
      "windKPH": 0,
      "windMPH": 0,
      "windSpeedKTS": 0,
      "windSpeedKPH": 0,
      "windSpeedMPH": 0,
      "windDirDEG": 0,
      "windDir": "N",
      "windGustKTS": null,
      "windGustKPH": null,
      "windGustMPH": null,
      "flightRule": "LIFR",
      "visibilityKM": 16.09344,
      "visibilityMI": 10,
      "weather": "Mostly Cloudy",
      "weatherShort": "Mostly Cloudy",
      "weatherCoded": "::BK",
      "weatherPrimary": "Mostly Cloudy",
      "weatherPrimaryCoded": "::BK",
      "cloudsCoded": "BK",
      "icon": "mcloudy.png",
      "heatindexC": 10,
      "heatindexF": 50,
      "windchillC": 10,
      "windchillF": 50,
      "feelslikeC": 10,
      "feelslikeF": 50,
      "isDay": true,
      "sunrise": 1511103155,
      "sunriseISO": "2017-11-19T06:52:35-08:00",
      "sunset": 1511139250,
      "sunsetISO": "2017-11-19T16:54:10-08:00",
      "snowDepthCM": null,
      "snowDepthIN": null,
      "precipMM": 0,
      "precipIN": 0,
      "solradWM2": 184,
      "solradMethod": "estimated",
      "ceilingFT": 20000,
      "ceilingM": 6096,
      "light": 28,
      "QC": "O",
      "QCcode": 10,
      "sky": 81
    },
    "raw": "KSJC 191653Z 00000KT 10SM FEW060 FEW110 BKN200 10\/06 A3017 RMK AO2 SLP216 T01000061",
    "relativeTo": {
      "lat": 37.35411,
      "long": -121.95524,
      "bearing": 68,
      "bearingENG": "ENE",
      "distanceKM": 3.684,
      "distanceMI": 2.289
    }
  }
}
```

## Single and Double Quotes with Windows curl requests

Note that if you're using Windows to submit a lot of curl requests, you'll eventually run into issues with single versus double quotes. Some API endpoints (usually for POST methods) require you to submit content in the body of the message request. The body content is formatted in JSON. Since you can't use double quotes inside of other double quotes, you'll run into issues in submitting curl requests in these scenarios.

{% include random_ad.html %}

Here's the workaround. If you have to submit body content in JSON, you can store the content in a JSON file. Then you reference the file with an `@` symbol, like this:

```sh
curl -H "Content-Type: application/json" -H "Authorization: 123" -X POST -d @mypostbody.json http://endpointurl.com/example
```

Here curl will look in the existing directory for the mypostbody.json file. (You can also reference the complete path to the JSON file on your machine.)

## Make curl requests for each of the weather endpoints

{% include activity.html %}

Make a curl request for each of the weather endpoints for both the Mashape weather endpoints and the Aeris Weather endpoints, similar to how you made the requests in Postman.
