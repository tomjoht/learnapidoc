---
title: 'Aeris Weather Example: Get wind speed and use as conditional value'
permalink: /docapis_aerisweather_example.html
keywords:
course: "Documenting REST APIs"
weight: 4.3
sidebar: docapis
section: otherapis
---

Use the Aeris Weather API to get the wind speed (MPH) for a specific place (your choice).

## The Aeris Weather API
Since you've been working with the weather API on Mashape, it's probably a good idea to compare this simple weather API with a more robust one. Check out the [Aeris Weather API here](http://www.aerisweather.com/support/docs/api/). This is one of the most interesting, well-documented and powerful APIs I've encountered.

In this example, you'll get the wind in MPH and then set an answer to display on the page based on some conditional logic.

## 1. Get the API keys

See the [Getting Started](http://www.aerisweather.com/support/docs/api/getting-started/) page for information on how to register and get API keys. (Obviously get the free version of the keys available to development projects.) You will need both the CLIENTID and CLIENTSECRET to make API calls.

## 2. Construct the request

Browse through the [available endpoints](http://www.aerisweather.com/support/docs/api/reference/endpoints/) and look for one that would give you the wind speed. The [forecasts](http://www.aerisweather.com/support/docs/api/reference/endpoints/forecasts/) resource provides information about wind speed.

<a href="http://www.aerisweather.com/support/docs/api/reference/endpoints/forecasts/"><img src="images/aerisforecasts.png" alt="Aeris Weather forecasts resource" /></a>

To get the forecast details for Santa Clara, California, add it after `/forecasts`, like this:

```
http://api.aerisapi.com/observations/santa%20clara,ca?client_id=CLIENT_ID&client_secret=CLIENT_SECRET
```

## 3. Analyze the response

Here's the response from the request:

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
      "tz": "America/Los_Angeles",
      "elevM": 24,
      "elevFT": 79
    },
    "obTimestamp": 1441083180,
    "obDateTime": "2015-08-31T21:53:00-07:00",
    "ob": {
      "timestamp": 1441083180,
      "dateTimeISO": "2015-08-31T21:53:00-07:00",
      "tempC": 18,
      "tempF": 64,
      "dewpointC": 14,
      "dewpointF": 57,
      "humidity": 78,
      "pressureMB": 1012,
      "pressureIN": 29.88,
      "spressureMB": 1009,
      "spressureIN": 29.8,
      "altimeterMB": 1012,
      "altimeterIN": 29.88,
      "windKTS": 5,
      "windKPH": 9,
      "windMPH": 6,
      "windSpeedKTS": 5,
      "windSpeedKPH": 9,
      "windSpeedMPH": 6,
      "windDirDEG": 300,
      "windDir": "WNW",
      "windGustKTS": null,
      "windGustKPH": null,
      "windGustMPH": null,
      "flightRule": "LIFR",
      "visibilityKM": 16.09344,
      "visibilityMI": 10,
      "weather": "Clear",
      "weatherShort": "Clear",
      "weatherCoded": "::CL",
      "weatherPrimary": "Clear",
      "weatherPrimaryCoded": "::CL",
      "cloudsCoded": "CL",
      "icon": "clearn.png",
      "heatindexC": 18,
      "heatindexF": 64,
      "windchillC": 18,
      "windchillF": 64,
      "feelslikeC": 18,
      "feelslikeF": 64,
      "isDay": false,
      "sunrise": 1441028278,
      "sunriseISO": "2015-08-31T06:37:58-07:00",
      "sunset": 1441075047,
      "sunsetISO": "2015-08-31T19:37:27-07:00",
      "snowDepthCM": null,
      "snowDepthIN": null,
      "precipMM": 0,
      "precipIN": 0,
      "solradWM2": null,
      "light": 0,
      "sky": 0
    },
    "raw": "KSJC 010453Z 30005KT 10SM CLR 18/14 A2989 RMK AO2 SLP122 T01830139",
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

`windSpeedMPH` is the value we want.

## 4. Pull out the values from the response

To get the `windSpeedMPH`, you would access it through dot notation like this: `data.response.ob.windSpeedMPH`.

To add a little variety to the code samples, here's one that's a bit different. We get the value for the `data.response.ob.windSpeedMPH` and then assign the variable based on a condition. The variable then gets appended to the page. See if you can understand this code logic by following the if-else condition:

```html
<html>
   <body>
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script>

         jQuery.ajax({
             url: "http://api.aerisapi.com/observations/santa%20clara,ca",
             type: "GET",
             data: {
                 "client_id": "CLIENTID",
                 "client_secret": "CLIENTSECRET",
             },
         })
         .done(function(data, textStatus, jqXHR) {
             console.log("HTTP Request Succeeded: " + jqXHR.status);
             console.log(data);
             if (data.response.ob.windSpeedMPH > 15) {
         	var windAnswer = "Yes, it's too windy.";
         }
         	else  {
         	 var windAnswer = "No, it's not that windy.";
         	}
             $("#windAnswer").append(windAnswer)
         })
         .fail(function(jqXHR, textStatus, errorThrown) {
             console.log("HTTP Request Failed");
         })
         .always(function() {
             /* ... */
         });


      </script>
      <p>Is it too windy to go on a bike ride?</p>
      <div id="windAnswer" style="font-size:76px"></div>

   </body>
</html>
```

Here's the result:

<img src="images/notthatwindy.png" alt="Aeris Weather example" />
