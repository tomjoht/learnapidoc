---
title: "Activity: What's wrong with this API reference topic"
permalink: docapis_api_whats_wrong_activity.html
weight: 3.9
sidebar: docapis
section: docendpoints
path1: docendpoints.html
last-modified: 2019-04-05
---

In this activity, you'll critique an existing API reference topic to identify what's wrong with it.

* TOC
{:toc}

## <i class="fa fa-user-circle"></i> Activity: What's wrong with this API reference topic {#whats_wrong}

{% include image_ad_right.html %}

The following is a sample API reference topic for an endpoint called `surfreport`. There are about 25 things wrong in the topic. A copy of this same content is available in a read-only [Google Doc here](https://idratherbewriting.site/whats-wrong-api). In Google Docs, go to **File > Make a Copy** to create your own instance. Then make comments in Google docs to note as many errors as you can find.

<figure><a target="_blank" class="noExtIcon" href="https://idratherbewriting.site/whats-wrong-api"><img class="docimage small" src="{{site.media}}/google_doc_surf_report.png" alt="Make a copy of this Google doc and make comments on it." /></a><figcaption>Make a copy of this Google doc and make comments on it.</figcaption></figure>

Here's the same doc (with problems) displayed on the web:

<div class="docSample" markdown="block">

# Surfreport

Knowing whether the conditions are optimal for surfing is a necessary detail in every surfer's life. This endpoint includes information about surfing conditions, including the surf height, water temperature, wind, and tide. Also provides an overall recommendation about whether to go surfing. As an added touch, recommendations are expressed in surfer lingo. Surf's up!

## Endpoints

**GET/POST <code>surfreport/{:beachId}</code>**

Gets the surf conditions for a specific beach ID.

## Parameters

<table>
  <tr>
   <td><strong>Parameter</strong>
   </td>
   <td><strong>Use</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Type of data</strong>
   </td>
  </tr>
  <tr>
   <td><code>{beachId}</code>
   </td>
   <td>Required
   </td>
   <td>Refers to the ID for the beach you want to look up.
   </td>
   <td>Number
   </td>
  </tr>
  <tr>
   <td><code>days</code>
   </td>
   <td>Optional
   </td>
   <td>The number of days to include in the response. Default is 3. Max 10.
   </td>
   <td>Integer
   </td>
  </tr>
  <tr>
   <td><code>time</code>
   </td>
   <td>Optional
   </td>
   <td>The time you want the report for.
   </td>
   <td>Integer. ISO 8601 format. Example: <code>20180915T155300+0500</code>
   </td>
  </tr>
</table>

## Sample request

```
https://api.openweathermap.org/data/2.5/surfreport/12345?zip=95050&appid=APIKEY&days=1
```
(In the above code, replace `APIKEY` with your actual API key.)

## Sample response

```json
{
    "surfreport": [
        {
            "beach": "Santa Cruz",
            "monday": {
                "1pm": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 80,
                    "surf_height": 5,
	          "riptide":  "moderate",
                    "recommendation": "Carve it up, brah! The waves are crankin' wild out there."
                },
                "2pm": {
                    "tide": -1,
                    "wind": 1,
                    "watertemp": 50,
                    "surf_height": 3,
	         "riptide": extreme
                    "recommendation": "Waves are foam and frothy but rideable in places. Gravitate to the impact zone, due, and hang loose."
                },
                "3pm": {
                    "tide": -1,
                    "wind": 10,
                    "watertemp": 65,
                    "surf_height": 1,
                    "recommendation": "Scene is blown out. Bail inland and chill on the beach instead or you’ll the one who’ll be shredded, due."
                }
                ...
            }
        }
    ]
}
```

## Response definitions

The following table describes each item in the response.

<table>
<colgroup>
   <col width="20%" />
   <col width="60%" />
   <col width="20%" />
</colgroup>
  <tr>
   <td><strong>Response item</strong>
   </td>
   <td><strong>Description</strong>
   </td>
   <td><strong>Data type</strong>
   </td>
  </tr>
  <tr>
   <td><code>beach</code>
   </td>
   <td>The beach you selected based on the beach ID in the request. The beach name is the official name as described in the National Park Service Geodatabase.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td><code>{day}</code>
   </td>
   <td>The day(s) of the week requested.
   </td>
   <td>object
   </td>
  </tr>
  <tr>
   <td><code>{time}</code>
   </td>
   <td>The time for the conditions.
   </td>
   <td>string
   </td>
  </tr>
  <tr>
   <td><code>tide</code>
   </td>
   <td>The level of tide at the beach for a specific day and time. Tide is the distance inland that the water rises to, and can be a positive or negative number. When the tide is out, the number is negative. When the tide is in, the number is positive. The 0 point reflects the line when the tide is neither going in nor out but is in transition between the two states.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td><code>wind</code>
   </td>
   <td>The wind speed at the beach. Wind affects the surf height and general wave conditions. Wind speeds of more than 15 make surf conditions undesirable because the wind creates white caps and choppy waters.
   </td>
   <td>Int
   </td>
  </tr>
  <tr>
   <td><code>watertemp</code>
   </td>
   <td>The temperature of the water. Water temperatures below 70 usually require you to wear a wetsuit. With temperatures below 60, you will need at least a 3mm wetsuit and preferably booties to stay warm.
   </td>
   <td>String
   </td>
  </tr>
  <tr>
   <td><code>surfheight</code>
   </td>
   <td>The height of the waves, returned in either feet or centimeters depending on the units you specify. A surf height of 3 feet is the minimum size needed for surfing. If the surf height exceeds 10 feet, it is not safe to surf.
   </td>
   <td>Map
   </td>
  </tr>
  <tr>
   <td><code>recommendation</code>
   </td>
   <td>An overall recommendation based on a combination of the various factors (wind, watertemp, surfheight), etc.
   </td>
   <td>String
   </td>
  </tr>
</table>

</div>

{% include random_ad4.html %}

## Answers

You can view the answer key here: [What's wrong with this topic answer key](https://docs.google.com/document/d/1ogj99YHhFMkXb-HMMMko-G9Hq9Rg6cztdT06-oUZm4E/edit).

{% include ads.html %}

{% include random_ad3.html %}

{% include random_ad2.html %}
