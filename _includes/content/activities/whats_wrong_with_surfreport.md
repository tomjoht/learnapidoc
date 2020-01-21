{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: What's wrong with this API reference topic
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

The following is a sample API reference topic for an endpoint called `surfreport`. There are about 25 things wrong in the topic. A copy of this same content is available in a read-only [Google Doc here](https://idratherbewriting.site/whats-wrong-api). In Google Docs, go to **File > Make a Copy** to create your own instance. Then make comments in Google docs to note as many errors as you can find.

{% include course_image.html url="https://idratherbewriting.site/whats-wrong-api" size="small" filename="google_doc_surf_report" ext_print="png" ext_web="png" alt="Make a copy of this Google doc and make comments on it." caption="Make a copy of this Google doc and make comments on it." %}

Here's the same doc (with problems) displayed on the web:

<div class="docSample" markdown="block">

# Surfreport
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

Knowing whether the conditions are optimal for surfing is a necessary detail in every surfer's life. This endpoint includes information about surfing conditions, including the surf height, water temperature, wind, and tide. Also provides an overall recommendation about whether to go surfing. As an added touch, recommendations are expressed in surfer lingo. Surf's up!

## Endpoints
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

**GET/POST <code>surfreport/{:beachId}</code>**

Gets the surf conditions for a specific beach ID.

## Parameters
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

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
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

```
https://api.openweathermap.org/data/2.5/surfreport/12345?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&days=1
```

## Sample response
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

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
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

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


## Answers
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

You can view the answer key here: [What's wrong with this topic answer key](https://docs.google.com/document/d/1ogj99YHhFMkXb-HMMMko-G9Hq9Rg6cztdT06-oUZm4E/edit).
