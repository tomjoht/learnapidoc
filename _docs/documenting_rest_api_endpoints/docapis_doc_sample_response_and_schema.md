---
title: "Step 5: Response example and schema (API reference tutorial)"
permalink: /docapis_doc_sample_responses_and_schema.html
keywords:
course: "Documenting REST APIs"
weight: 3.5
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
redirect_from:
- http://idratherbewriting.com/learnapidoc/docapis_doc_sample_responses.html
---

{% include workflow_map.html step="5" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/apiref6.png"/>
{% endif %}

> **{{site.data.apirefsections.response_example_and_schema.term}}**: {{site.data.apirefsections.response_example_and_schema.def}}

* TOC
{:toc}

## Example of a response example and response schema

The following is a sample response from the SendGrid API. Their documentation provides a tabbed display with an example on one tab:

<a class="noExtIcon" href="https://sendgrid.com/docs/API_Reference/api_v3.html"><img src="images/sendgridresponseexample1.png" /></a>

And a definition of the response schema on another tab:

<a class="noExtIcon" href="https://sendgrid.com/docs/API_Reference/api_v3.html"><img src="images/sendgridresponseexample2.png" /></a>

The definition of the response is called the [schema or the model](http://json-schema.org/). What works particularly well with the SendGrid example is the use of expand/collapse tags to mirror the same structure as the example, with objects at different levels.

Swagger UI also provides both an example value and a schema or model. For example, in the sample Sunset and sunrise times API doc that I created for the [SwaggerUI activity](/learnapidoc/assets/files/swagger-sunrise-sunset/index.html#/default/getSunriseSunset), you can see a distinction between the response example and the response schema. Here's the example value:

<a class="noExtIcon" href="/learnapidoc/assets/files/swagger-sunrise-sunset/index.html#/default/getSunriseSunset"><img src="images/sunriseexample.png" alt="Sunrise example value" /></a>

The response example should correspond with the request example. However, just as the request example might only include a subset of all possible parameters, the response might also be a subset of all possible returned information.

However, the response schema's documentations comprehensive of all possible properties returned in the response. This is why you need both a response example and a response schema/model. Here's the response model for the Sunrise and sunset API:

<a class="noExtIcon" href="/learnapidoc/assets/files/swagger-sunrise-sunset/index.html#/default/getSunriseSunset"><img src="images/sunrisemodelexample.png" alt="Sunrise model" /></a>

The schema or model provides the following:

* Description of each property
* Definition of the data type for each property
* Whether each property is required or optional

If the header information is important to include in the response example (because it provides unique information other than standard [status codes](docapis_doc_status_codes.html)), you can include it as well.

## Do you need to define the response?

One distinguishing characteristic of good API documentation is the inclusion of the response schema, with descriptions of each property. Some API documentation omits this section because the responses might seem self-evident or intuitive. That might be the case. In Twitter's API, the responses aren't explained (you can see an [example here](https://developer.twitter.com/en/docs/accounts-and-users/manage-account-settings/api-reference/get-account-settings)).

However, most documentation would be better with the response described, especially if the properties are abbreviated or cryptic. Developers sometimes abbreviate the responses to increase performance by reducing the amount of text sent. In one endpoint I documented, the response included about 20 different two-letter abbreviations. I spent days tracking down what each abbreviation meant, and found that many developers didn't know what half the responses meant.

One of the problems with the [Mashape Weather API](https://market.mashape.com/fyhao/weather-13) we've been using [as an example](docapis_new_endpoint_to_doc.html) is that it doesn't describe the meaning of the responses. If the air quality index is `25`, is that a good or bad value when compared to `65`? What is the max or min value that the API might return? Further, what exactly does the "air quality index" mean? Also, what longitude and latitude values are supported?

## Use realistic values in the example response

In the example response, the values should be realistic without being real. If developers give you a sample response, make sure each of the possible values are reasonable and not bogus (or consisting of comic book character names).

Also, the sample response should not contain real customer data. If you get a sample response from an engineer, and the data looks real, make sure it's not just from a cloned production database, which is common. Developers may not realize that the data needs to be fictitious but representative, and scraping a production database may be the easiest approach for them.

## Format the JSON and use code syntax highlighting

Use proper JSON formatting for the response. A tool such as [JSON Formatter and Validator](http://jsonformatter.curiousconcept.com/) can make sure the spacing is correct.

If you can add syntax highlighting as well, definitely do it. If you're using a static site generator such as [Jekyll](pubapis_jekyll.html) or markdown syntax with [GitHub](pubapis_github_wikis.html), you can probably use the [Rouge](https://github.com/jneen/rouge) built-in syntax highlighter. Other tools use [Pygments](http://pygments.org/). Rouge and Pygments rely on "lexers" to indicate how the code should be highlighted. For example, some common lexers are `java`, `json`, `html`, `xml`, `cpp`, `dotnet`, and `javascript`.

If you don't have any syntax highlighters to integrate directly into your tool, you could add syntax highlighting manually for each code sample by pasting it into the [syntaxhighlight.in](http://syntaxhighlight.in/) highlighter.

## Strategies for documenting nested objects

Many times the response contains nested objects (objects within objects), or has repeating elements. Formatting the documentation for the response schema is one of the more challenging aspects of API reference documentation.

Tables are most commonly used. In [Peter Gruenbaum's API tech writing course on Udemy](https://www.udemy.com/api-documentation-1-json-and-xml/), he represents the nested objects using tables with various columns:

<a href="http://idratherbewriting.com/2015/05/22/api-technical-writing-course-on-udemy/" class="noExtIcon"><img src="images/gruenbaumtable.png" alt="Peter Gruenbaum course" /></a>

Gruenbaum's use of tables is mostly to reduce the emphasis on tools and place it more on the content.

The Dropbox API represents the nesting with a slash. For example, `name_details/` and `team/` indicate the multiple object levels.

<a href="https://www.dropbox.com/developers/core/docs#disable-token" class="noExtIcon"><img src="images/returnvaluedefinitions.png" alt="Dropbox nested example" /></a>

Other APIs will nest the response definitions to imitate the JSON structure. Here's an example from bit.ly's API:

<a href="http://dev.bitly.com/user_info.html" class="noExtIcon"><img src="images/bitlyresponsedoc.png" alt="Bitly response" /></a>

Multiple levels of bullets is usually an eyesore, but here it serves a purpose here that works well without requiring sophisticated styling.

{% include random_ad.html %}

eBay's approach is a little more unique:

<a href="http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html" class="noExtIcon"><img src="images/ebayexampleresponse.png" alt="eBay example response" /></a>

For example, `MinimumAdvertisedPrice` is nested inside `DiscountPriceInfo`, which is nested in `Item`, which is nested in `ItemArray`. (Note also that this response is in XML instead of JSON.)

<a href="http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html" class="noExtIcon"><img src="images/ebaycode.png" alt="eBay nested example" /></a>

It's also interesting how much detail eBay includes for each item. Whereas the Twitter writers appear to omit descriptions, the eBay authors write small novels describing each item in the response.

## Three-column designs

Some APIs put the response in a right column so you can see it while also looking at the resource description and parameters. Stripe's API made this three-column design popular:

<a href="https://stripe.com/docs/api#charge_object" class="noExtIcon"><img src="images/stripetripanedesign.png" alt="Stripe's tri-column design" /></a>

Stripe's design juxtaposes the sample response in a right side pane with the response schema in the main window. The idea is that you can see both at the same time. The description won't always line up with the response, which might be confusing. Still, separating the response example from the response schema in separate columns helps differentiate the two.

A lot of APIs have modeled their design after Stripe's. For example, see <a href="https://github.com/tripit/slate">Slate</a>, <a href="https://github.com/sourcey/spectacle">Spectacle</a>, or <a href="http://readme.io">readme.io</a>.

Should you use a three-column layout with your API documentation? Maybe. However, if the response example and description doesn't line up, the viewer's focus is somewhat split, and the user must resort to more up-and-down scrolling. Additionally, if your layout uses three columns, your middle column will have some narrow constraints that doesn't leave much room for screenshots and code examples.

The MYOB Developer Center takes an interesting approach in documenting the JSON in their APIs. They list the JSON structure in a table-like way, with different levels of indentation. You can move your mouse over a field for a tooltip description, or you can click it to have a description expand below.

To the right of the JSON definitions is a code sample with real values. When you select a value, both the element in the table and the element in the code sample highlight at the same time.

<a href="http://developer.myob.com/api/accountright/v2/generalledger/account/#GET" class="noExtIcon"><img src="images/myobjsondoc.png" alt="MYOB JSON doc approach" /></a>

If you have long JSON objects like this, a custom table with different classes applied to different levels might be the only truly usable solution. It facilitates scanning, and the popover + collapsible approach allows you to compress the table so you can jump to the part you're interested in.

However, this approach requires more manual work from a documentation point of view, and there isn't any interactivity to try out the endpoints. Still, if you have long JSON objects, it might be worth it.

## Embedding dynamic responses

Sometimes responses are generated dynamically based on API calls to a test system. For example, look at the [Rhapsody API](https://developer.rhapsody.com/api) and click an endpoint &mdash; the response is generated dynamically.

Another API with dynamic responses is the [Open Weather API](https://openweathermap.org/current). When you click one of the "Examples of API calls," such as [http://samples.openweathermap.org/data/2.5/weather?q=London](http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1), you see the response dynamically returned in the browser.

<a href="http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1" class="noExtIcon"><img class="medium" src="images/dynamicresponseinbrowser.png"/></a>

The Citygrid API, which we explored in the [requests example topic](docapis_doc_sample_requests.html), also dynamically generates responses.

This approach works well for GET requests that return public information. However, it probably wouldn't scale for other methods (such as POST or DELETE) or which request authorization.

## Create a sample response in your surfreport/{beachId} endpoint

For the `surfreport/{beachId}` endpoint that we've been exploring in our [sample API scenario](docapis_new_endpoint_to_doc.html), let's create a section that shows the response example and a response schema. Here's my approach for these sections:

<div class="docSample">

<h2>Sample response</h2>

<p>The following is a sample response from the <code>surfreport/{beachId}</code> endpoint:</p>

<pre class="json">
{
    "surfreport": [
        {
            "beach": "Santa Cruz",
            "monday": {
                "1pm": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 80,
                    "surfheight": 5,
                    "recommendation": "Go surfing!"
                },
                "2pm": {
                    "tide": -1,
                    "wind": 1,
                    "watertemp": 50,
                    "surfheight": 3,
                    "recommendation": "Surfing conditions are okay, not great."
                },
                "3pm": {
                    "tide": -1,
                    "wind": 10,
                    "watertemp": 65,
                    "surfheight": 1,
                    "recommendation": "Not a good day for surfing."
                }
                ...
            }
        }
    ]
}
</pre>

<p>The following table describes each item in the response.<sup>&ast;</sup></p>

{% if site.format == "web" or site.format == "pdf" %}
<table>
<colgroup>
   <col width="30%" />
   <col width="55%" />
   <col width="15%" />
</colgroup>
<thead>
<tr>
<th>Response item</th>
<th>Description</th>
<th>Data type</th>
</tr>
</thead><tbody>
<tr>
<td><strong>beach</strong></td>
<td>The beach you selected based on the beach ID in the request. The beach name is the official name as described in the National Park Service Geodatabase.</td>
<td>String</td>
</tr>
<tr>
<td><strong>{day}</strong></td>
<td>The day of the week selected. A maximum of 3 days get returned in the response.</td>
<td>Object</td>
</tr>
<tr>
<td><strong>{time}</strong></td>
<td>The time for the conditions. This item is only included if you include a time parameter in the request.</td>
<td>String</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/tide</strong></td>
<td>The level of tide at the beach for a specific day and time. Tide is the distance inland that the water rises to, and can be a positive or negative number. When the tide is out, the number is negative. When the tide is in, the number is positive. The 0 point reflects the line when the tide is neither going in nor out but is in transition between the two states.</td>
<td>Integer</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/wind</strong></td>
<td>The wind speed at the beach, measured in knots (nautical miles per hour). Wind affects the surf height and general wave conditions. Wind speeds of more than 15 knots make surf conditions undesirable, since the wind creates white caps and choppy waters.</td>
<td>Integer</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/watertemp</strong></td>
<td>The temperature of the water, returned in Farenheit or Celsius depending upon the units you specify. Water temperatures below 70 F usually require you to wear a wetsuit. With temperatures below 60, you will need at least a 3mm wetsuit and preferably booties to stay warm.</td>
<td>Integer</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/surfheight</strong></td>
<td>The height of the waves, returned in either feet or centimeters depending on the units you specify. A surf height of 3 feet is the minimum size needed for surfing. If the surf height exceeds 10 feet, it is not safe to surf.</td>
<td>Integer</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/recommendation</strong></td>
<td>An overall recommendation based on a combination of the various factors (wind, watertemp, surfheight). Three responses are possible: (1) &quot;Go surfing!&quot;, (2) &quot;Surfing conditions are okay, not great&quot;, and (3) &quot;Not a good day for surfing.&quot; Each of the three factors is scored with a maximum of 33.33 points, depending on the ideal for each element. The three elements are combined to form a percentage. 0% to 59% yields response 3, 60% - 80% and below yields response 2, and 81% to 100% yields response 3.</td>
<td>String</td>
</tr>
</tbody></table>

{% elsif site.format == "kindle" %}

<p class="note">Tables don't display well on Kindle devices, so I've converted them into definition lists in this course. However, here I've also included an image of the table. Tables are more common and easier to create, but definition lists work better on mobile and tablet devices.</p>

<img src="images/kindle-table-surfreport.png" />

<dl style="margin-top: 20px; margin-bottom: 20px;" markdown="block">
<code>beach</code>
:  The beach you selected based on the beach ID in the request. The beach name is the official name as described in the National Park Service Geodatabase.
:  String

<code>{day}</code>
:  The day of the week selected. A maximum of 3 days get returned in the response.
:  Object

<code>{time}</code>
:  The time for the conditions. This item is only included if you include a time parameter in the request.
:  String

<code><span class="muted">{day}/{time}</span>/tide</code>
:  The level of tide at the beach for a specific day and time. Tide is the distance inland that the water rises to, and can be a positive or negative number. When the tide is out, the number is negative. When the tide is in, the number is positive. The 0 point reflects the line when the tide is neither going in nor out but is in transition between the two states.
:  Integer

<code><span class="muted">{day}/{time}</span>/wind</code>
:  The wind speed at the beach, measured in knots (nautical miles per hour). Wind affects the surf height and general wave conditions. Wind speeds of more than 15 knots make surf conditions undesirable, since the wind creates white caps and choppy waters
:  Integer

<code><span class="muted">{day}/{time}</span>/watertemp</code>
:  The temperature of the water, returned in Farenheit or Celsius depending upon the units you specify. Water temperatures below 70 F usually require you to wear a wetsuit. With temperatures below 60, you will need at least a 3mm wetsuit and preferably booties to stay warm.
:  Integer

<code><span class="muted">{day}/{time}</span>/surfheight</code>
:  The height of the waves, returned in either feet or centimeters depending on the units you specify. A surf height of 3 feet is the minimum size needed for surfing. If the surf height exceeds 10 feet, it is not safe to surf.
:  Integer

<code><span class="muted">{day}/{time}</span>/recommendation</code>
:  An overall recommendation based on a combination of the various factors (wind, watertemp, surfheight). Three responses are possible: (1) &quot;Go surfing!&quot;, (2) &quot;Surfing conditions are okay, not great&quot;, and (3) &quot;Not a good day for surfing.&quot; Each of the three factors is scored with a maximum of 33.33 points, depending on the ideal for each element. The three elements are combined to form a percentage. 0% to 59% yields response 3, 60% - 80% and below yields response 2, and 81% to 100% yields response 3.
:  String

</dl>

{% endif %}

<small>\*Because this is a fictitious endpoint, I'm making the descriptions up.</small>
</div>

## Next steps

Now that you've completed the [API reference tutorial](docapis_api_reference_tutorial_overview.html), you're ready to either critique or create your own API reference topic. See the next topic, [Activity: Critique or create an API reference topic](docapis_api_reference_activity.html).
