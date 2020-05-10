FORMAT: 1A
HOST: https://api.openweathermap.org/data/2.5/

# OpenWeatherMap API
Get the current weather, daily forecast for 16 days, and a three-hour-interval forecast for 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format. **Note**: This sample Swagger file covers the `current` endpoint only from the OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the `id` parameter) will provide the most precise location results.

## Authentication
This API uses Custom Query Parameter for its authentication.

The parameters that are needed to be sent for this type of authentication are as follows:
+ `appid` - API key to authorize requests.

# Group Current Weather Data

## Weather [/weather{?q,id,lat,lon,zip,units,lang,Mode}]

### Call current weather data for one location [GET]
Access current weather data for any location on Earth including over 200,000 cities! Current weather is frequently updated based on global models and data from more than 40,000 weather stations.
+ Parameters
    + q (string, optional)

        **City name**. *Example: London*. You can call by city name, or by city name and country code. The API responds with a list of results that match a searching word. For the query value, type the city name and optionally the country code divided by a comma; use ISO 3166 country codes.

    + id (string, optional)

        **City ID**. *Example: `2172797`*. You can call by city ID. The API responds with the exact result. The List of city IDs can be downloaded [here](http://bulk.openweathermap.org/sample/). You can include multiple cities in this parameter &mdash; just separate them by commas. The limit of locations is 20. *Note: A single ID counts as a one API call. So, if you have city IDs, it's treated as 3 API calls.*

    + lat (string, optional)

        **Latitude**. *Example: 35*. The latitude coordinate of the location of your interest. Must use with `lon`.

    + lon (string, optional)

        **Longitude**. *Example: 139*. Longitude coordinate of the location of your interest. Must use with `lat`.

    + zip (string, optional) -

        **Zip code**. Search by zip code. *Example: 95050,us*. Please note that if the country is not specified, the search uses USA as a default.

        + Default: 94040,us
        + Sample: 94040,us
    + units (enum[string], optional)

        **Units**. *Example: imperial*. Possible values: `metric`, `imperial`. When you do not use the `units` parameter, the format is `standard` by default.

        + Default: standard
        + Sample: imperial
        + Members
            + `standard`
            + `metric`
            + `imperial`

    + lang (enum[string], optional)

        **Language**. *Example: en*. You can use lang parameter to get the output in your language. We support the following languages that you can use with the corresponded lang values: Arabic - `ar`, Bulgarian - `bg`, Catalan - `ca`, Czech - `cz`, German - `de`, Greek - `el`, English - `en`, Persian (Farsi) - `fa`, Finnish - `fi`, French - `fr`, Galician - `gl`, Croatian - `hr`, Hungarian - `hu`, Italian - `it`, Japanese - `ja`, Korean - `kr`, Latvian - `la`, Lithuanian - `lt`, Macedonian - `mk`, Dutch - `nl`, Polish - `pl`, Portuguese - `pt`, Romanian - `ro`, Russian - `ru`, Swedish - `se`, Slovak - `sk`, Slovenian - `sl`, Spanish - `es`, Turkish - `tr`, Ukrainian - `ua`, Vietnamese - `vi`, Chinese Simplified - `zh_cn`, Chinese Traditional - `zh_tw`.

        + Default: en
        + Sample: en
        + Members
            + `ar`
            + `bg`
            + `ca`
            + `cz`
            + `de`
            + `el`
            + `en`
            + `fa`
            + `fi`
            + `fr`
            + `gl`
            + `hr`
            + `hu`
            + `it`
            + `ja`
            + `kr`
            + `la`
            + `lt`
            + `mk`
            + `nl`
            + `pl`
            + `pt`
            + `ro`
            + `ru`
            + `se`
            + `sk`
            + `sl`
            + `es`
            + `tr`
            + `ua`
            + `vi`
            + `zh_cn`
            + `zh_tw`

    + Mode (enum[string], optional)

        **Mode**. *Example: html*. Determines the format of the response. Possible values are `xml` and `html`. If the mode parameter is empty, the format is `json` by default.

        + Default: json
        + Sample: json
        + Members
            + `json`
            + `xml`
            + `html`


+ Response 200 (application/json)

        Successful response

    + Attributes (Successful response)


+ Response 404

        Not found response






# Data Structures

## Successful response (object)


### Properties
+ `coord` (Coord, optional)
+ `weather` (array[Weather], optional) - (more info Weather condition codes)
+ `base`: `cmc stations` (string, optional) - Internal parameter
+ `main`: `cmc stations` (Main, optional)
+ `visibility`: `16093` (number, optional) - Visibility, meter
+ `wind`: `16093` (Wind, optional)
+ `clouds`: `16093` (Clouds, optional)
+ `rain`: `16093` (Rain, optional)
+ `snow`: `16093` (Snow, optional)
+ `dt`: `1435658272` (number, optional) - Time of data calculation, unix, UTC
+ `sys`: `1435658272` (Sys, optional)
+ `id`: `2172797` (number, optional) - City ID
+ `name`: `Cairns` (string, optional)
+ `cod`: `200` (number, optional) - Internal parameter


## Coord (object)


### Properties
+ `lon`: `145.77` (number, optional) - City geo location, longitude
+ `lat`: `-16.92` (number, optional) - City geo location, latitude


## Weather (object)


### Properties
+ `id`: `803` (number, optional) - Weather condition id
+ `main`: `Clouds` (string, optional) - Group of weather parameters (Rain, Snow, Extreme etc.)
+ `description`: `broken clouds` (string, optional) - Weather condition within the group
+ `icon`: `04n` (string, optional) - Weather icon id


## Main (object)


### Properties
+ `temp`: `293.25` (number, optional) - Temperature. Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
+ `pressure`: `1019` (number, optional) - Atmospheric pressure (on the sea level, if there is no sea_level or grnd_level data), hPa
+ `humidity`: `83` (number, optional) - Humidity, %
+ `temp_min`: `289.82` (number, optional) - Minimum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
+ `temp_max`: `295.37` (number, optional) - Maximum temperature at the moment. This is deviation from current temp that is possible for large cities and megalopolises geographically expanded (use these parameter optionally). Unit Default: Kelvin, Metric: Celsius, Imperial: Fahrenheit.
+ `sea_level`: `984` (number, optional) - Atmospheric pressure on the sea level, hPa
+ `grnd_level`: `990` (number, optional) - Atmospheric pressure on the ground level, hPa


## Wind (object)


### Properties
+ `speed`: `5.1` (number, optional) - Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour.
+ `deg`: `150` (number, optional) - Wind direction, degrees (meteorological)


## Clouds (object)


### Properties
+ `all`: `75` (number, optional) - Cloudiness, %


## Rain (object)


### Properties
+ `3h`: `3` (number, optional) - Rain volume for the last 3 hours


## Snow (object)


### Properties
+ `3h`: `6` (number, optional) - Snow volume for the last 3 hours


## Sys (object)


### Properties
+ `type`: `1` (number, optional) - Internal parameter
+ `id`: `8166` (number, optional) - Internal parameter
+ `message`: `0.0166` (number, optional) - Internal parameter
+ `country`: `AU` (string, optional) - Country code (GB, JP etc.)
+ `sunrise`: `1435610796` (number, optional) - Sunrise time, unix, UTC
+ `sunset`: `1435650870` (number, optional) - Sunset time, unix, UTC
