## <i class="fa fa-user-circle"></i> Activity: What's wrong with this Surfreport API reference topic

The following is a sample API reference topic for an endpoint called `surfreport`. There are about 25 things wrong in the topic. A copy of this same content is available in a read-only [Google Doc here](https://docs.google.com/document/d/1LU0QJTDHHKFu9FIC24ZrF1I5HC7mzX86fH0YZ1SUHyo/edit?usp=sharing). In Google Docs, go to **File > Make a Copy** to create your own instance. Then make comments in Google docs to note as many errors as you can find.

<figure><a href="https://docs.google.com/document/d/1LU0QJTDHHKFu9FIC24ZrF1I5HC7mzX86fH0YZ1SUHyo/edit?usp=sharing"><img style="max-width: 300px" src="images/google_doc_surf_report.png"/></a><figcaption>Make a copy of this Google doc and make comments on it.</figcaption></figure>

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
   <td>Integer. Unix format (ms since 1970) in UTC.
   </td>
  </tr>
</table>

## Sample request

```
https://api.openweathermap.org/data/2.5/surfreport/12345?zip=95050&appid=fd4698c940c6d1da602a70ac34f0b147&days=1
```

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
                    "recommendation": "Scene is blown out. Bail inland and chill on the beach instead or you'll be eating beef jerky."
                }
                ...
            }
        }
    ]
}
```

### Response definitions

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
   <td>The day of the week selected.
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

After you've finished commenting on the Google Doc, expand the answers below to see how many issues you found. If you found additional issues beyond those noted here, feel free to [drop me an email](contact.html) letting me know.

<button class="btn btn-danger" type="button" data-toggle="collapse" data-target="#answerkey" aria-expanded="false" aria-controls="collapseExample">
Answer key
</button>
<div class="collapse" id="answerkey">
<div class="card card-body" markdown="block">

Answer key:

**Resource description:**

- wordy. should be more concise and action-oriented
- Surfreport probably shouldn’t capitalized

**Endpoints and definition:**

- GET/POST should just be GET

- no need for colon in `{:beachId}`

- consider color coding <span style="color: green">{beachId}</span>

**Parameters:**

- Query string parameters are mixed into same table as Path parameters. Separate into different tables.

- Where you get the beach ID isn't specified

- Number versus Integer is potentially inconsistent.

- No default specified for `time` parameter

- For `tide`, data type should be an Integer rather than a String

- For `wind`, "int" should be spelled out as integer

- for `time`, no details about 12h versus 24h format or time zone

**Sample request:**

- not in curl format

- only one query string parameter shown; should include `time` too

- `zip` query string parameter is included but not defined anywhere

- `appID` includes long API key that should likely be shortened to a variable such as `APIKEY`

**Sample response:**

- includes `riptide` element that isn't defined in response definition

- `riptide` missing comma after second instance

- `riptide` not shown in third hour block

- indentation formatting is a bit messed up with word riptide

**Response definition:**

- `wind` description doesn't indicate what measurement is used (knots?)

- `watertemp` doesn't indicate measurement units either

- `surfheight` data type is "Map" when it should be Integer

- `recommendation` doesn't include more detail such as how many possible recommendation strings are available, and what they even mean.

- `surfheight` should either be `surf_height` or `surfheight` -- response example conflicts with usage in response definition table

- no hierarchy expressed for child elements (e.g., `tide`, `wind`, `watertemp`)


</div>
</div>
