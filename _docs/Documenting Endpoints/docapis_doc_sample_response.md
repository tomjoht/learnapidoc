---
title: Documenting sample responses
permalink: /docapis_doc_sample_responses.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.9
sidebar: docapis
section: docendpoints
---

It's important to provide a sample response from the endpoint. This lets developers know if the endpoint contains the information they want, and how that information is labeled.

Here's an example from Flattr's API. In this case, the response actually includes the response header as well as the response body:

<a href="http://developers.flattr.net/api/resources/activities/"><img src="images/flattr.png" alt="Flattr example" /></a>

If the header information is important, include it. Otherwise, leave it out.

## Define what the values mean in the endpoint response

Some APIs describe each item in the response, while others, perhaps because the responses are self-evident, omit the response documentation. In the Flattr example above, the response isn't explained. Neither is the response explained in [Twitter's API](https://dev.twitter.com/rest/public).

If the labels in the response are abbreviated or non-intuitive, however, you definitely should document the responses. Developers sometimes abbreviate the responses to increase performance by reducing the amount of text sent.

Additionally, if you're documenting some of the response items but not others, the doc will look inconsistent.

One of the problems with the Mashape Weather API is that it doesn't describe the meaning of the responses. If the air quality index is `25`, is that a good or bad value when compared to `65`? What is the scale based on?

Does each city/country define its own index? Does a high number indicate a poor quality of air or a high quality? How does air quality differ from air pollution? These are the types of answers one would hope to learn in a description of the responses.

## Strategies for documenting nested objects

Many times the response contains nested objects (objects within objects). Here Dropbox represents the nesting with a slash. For example, `team/name` provides the documentation for the `name` object within the `team` object.

<a href="https://www.dropbox.com/developers/core/docs#disable-token"><img src="images/returnvaluedefinitions.png" alt="Dropbox nested example" /></a>

{: .tip}
Notice how the response values are in a monospaced font while the descriptions are in a regular font? This helps improve the readability.

Other APIs will nest the response definitions to imitate the JSON structure. Here's an example from bit.ly's API:

<a href="http://dev.bitly.com/user_info.html"><img src="images/bitlyresponsedoc.png" alt="Bitly response" /></a>

The indented approach with different levels of bullets can be an eyesore, so I recommend avoiding it.

In [Peter Gruenbaum's API tech writing course on Udemy](https://www.udemy.com/api-documentation-1-json-and-xml/), he also represents the nested objects using tables:

<a href="http://idratherbewriting.com/2015/05/22/api-technical-writing-course-on-udemy/"><img src="images/gruenbaumtable.png" alt="Peter Gruenbaum course" /></a>

Gruenbaum's use of tables is mostly to reduce the emphasis on tools and place it more on the content.

eBay's approach is a little more unique:

<a href="http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html"><img src="images/ebayexampleresponse.png" alt="eBay example response" /></a>

For example, `MinimumAdvertisedPrice` is nested inside `DiscountPriceInfo`, which is nested in `Item`, which is nested in `ItemArray`. (Note also that this response is in XML instead of JSON.)

<a href="http://developer.ebay.com/Devzone/shopping/docs/CallRef/FindPopularItems.html"><img src="images/ebaycode.png" alt="eBay nested example" /></a>

It's also interesting how much detail eBay includes for each item. Whereas the Twitter writers appear to omit descriptions, the eBay authors write small novels describing each item in the response.

{: .note}
A lot of APIs also return responses in XML, especially if the API is an older API. (Initially, XML was more popular than JSON, but now it's the reverse.) Some APIs give you the option of returning responses in either XML or JSON. If you're going to consume the API on a web page, JSON is probably much more popular because you can use JavaScript dot notation to grab the information you want.

## Where to include the response

Some APIs collapse the response into a show/hide toggle to save space. Others put the response in a right column so you can see it while also looking at the endpoint description and parameters. Stripe's API made this tri-column design famous:

<a href="https://stripe.com/docs/api#charge_object"><img src="images/stripetripanedesign.png" alt="Stripe's tri-column design" /></a>

A lot of APIs have modeled their design after Stripe's. (For example, see <a href="https://github.com/tripit/slate">Slate</a> or <a href="http://readme.io">readme.io</a>.)

To represent the child objects, Stripe uses an expandable section under the parent (see the "Hide Child Attributes" link in the screenshot above).

I'm not sure that the tripane column is so usable. The original idea of the design was to allow you to see the response and description at the same time, but when the description is lengthy (such as is the case with `source`), it creates unevenness in the juxtaposition.

Many times in Stripe's documentation, the descriptions aren't in the same viewing area as the sample response, so what's the point of arranging them side by side? It splits the viewer's focus and causes more up and down scrolling.

## Use realistic values in the response

The response should contain realistic values. If developers give you a sample response, make sure each of the possible items that can be included are shown. The values for each should be reasonable (not bogus test data that looks corny).

## Format the JSON in a readable way

Use proper JSON formatting for the response. A tool such as [JSON Formatter and Validator](http://jsonformatter.curiousconcept.com/) can make sure the spacing is correct.

## Add syntax highlighting
If you can add syntax highlighting as well, definitely do it. One good Python-based syntax highlighter is [Pygments](http://pygments.org/). This highlighter relies on "lexers" to indicate how the code should be highlighted. For example, some common lexers are `java`, `json`, `html`, `xml`, `cpp`, `dotnet`, and `javascript`. A non-python-based equivalent to Pygments is Rouge.

Since your tool and platform dictate the syntax highlighting options available, look for syntax highlighting options within the system that you're using. If you don't have any syntax highlighters to integrate directly into your tool, you could add syntax highlighting manually for each code sample by pasting it into the [syntaxhighlight.in](http://syntaxhighlight.in/) highlighter.

## Embedding dynamic responses

Sometimes responses are generated dynamically based on API calls to a test system. For example, look at the [Rhapsody API](https://developer.rhapsody.com/api) and click an endpoint &mdash; it appears to be generated dynamically.

At one company I worked for, we had a test system we used to generate the responses. It was important that the test system had the right data to create good responses. You don't want a bunch of null or missing items in the response.

However, once the test system generated the responses, those responses were imported into the documentation through a script.

## Creative approaches in documenting lengthy JSON responses

In addition to using standard tables to document JSON responses, you can also implement some more creative approaches.

### The scrolling-to-definitions approach

In my [documentation theme for Jekyll](http://idratherbewriting.com/documentation-theme-jekyll), I tried an approach to documenting JSON that uses a jQuery plugin called ScrollTo. You can [see it here](http://idratherbewriting.com/documentation-theme-jekyll/mydoc_scroll.html):

<a href="http://idratherbewriting.com/documentation-theme-jekyll/mydoc_scroll.html"><img src="images/scrollto-550x310.png" alt="Scrollto"  style="border:1px solid #dedede;"/></a>

When you click on an item in the JSON object, the right-pane scrolls to the item's description. I like this approach, though I've not really seen it done in other API documentation sites.

One problem is that you end up with three scroll bars on one page, which isn't the best design. Additionally, the descriptions in this demo are just paragraphs. Usually you structure the information with more detail (for example, data type, description, notes, etc.).

Also, this approach doesn't allow for easy scanning. However, this scrolling view might be an alternative view to a more scannable table. That is, you could store the definitions in another file and then include the definitions in both this scrolling view and a master table list, allowing the user to choose the view he or she wants.

### The side-by-side approach

In Stripe's API documentation, the writers try to juxtapose the responses in a right side pane with the documentation in the main window.

<a href="https://stripe.com/docs/api#charge_object"><img src="images/stripe-550x373.png" alt="Stripe" style="border:1px solid #dedede;"/> </a>

The idea is that you can see both the description and a sample response at the same time, and just scroll down.

However, the description doesn't always line up with the sample response. (In some places, child attributes are collapsed to save space.) I'm not sure why some items (such as `livemode`) aren't documented.

### The no-need-for-descriptions approach

Some sites, like Twitter's API docs, don't seem to describe the items in the JSON response at all. Looking at this [long response for the post status/retweet endpoint](https://dev.twitter.com/rest/reference/post/statuses/retweet/%3Aid) in Twitter's API docs, there isn't even an attempt to describe what all the items mean. Maybe they figure most of the items in the response are self-evident?

<a href="https://dev.twitter.com/rest/reference/post/statuses/retweet/%3Aid"><img src="images/twitternojsondoc.png" alt="Twitter" style="border:1px solid #dedede;"/></a>

Theoretically, each item in the JSON response should be a clearly chosen word that represents what it means in an obvious way. However, to reduce the size and increase the speed of the response, developers often resort to shorter terms or use abbreviations. The shorter the term, the more it needs accompanying documentation.

In one endpoint I documented, the response included about 20 different two-letter abbreviations. I spent days tracking down what each abbreviation meant. Many developers didn't even know what the abbreviations meant.

### The RAML API Console approach

When you use [RAML](http://idratherbewriting.com/pubapis_raml/) to document endpoints with JSON objects in the request body, the RAML API Console output looks something like this:

<img src="images/ramljsonrepresentation.png" alt="RAML" />

Here each body parameter is a named JSON object that has standard values such as `description` and `type`. While this looks a little cleaner initially, it's also somewhat confusing. The actual request body object won't contain `description` and `type` parameters like this, nor would it contain the `schema`, `type`, or `properties` keys either.

The problem with RAML is that it tries to describe a JSON structure using a JSON structure itself, but the JSON structure of the description doesn't match the JSON structure it describes, so it's confusing.

Further, this approach doesn't provide an example in context, which is what usually clarifies the data for the user.

### Custom-styled tables

The MYOB Developer Center takes an interesting approach in documenting the JSON in their APIs. They list the JSON structure in a table-like way, with different levels of indentation. You can move your mouse over a field for a tooltip description, or you can click it to have a description expand below.

To the right of the JSON definitions is a code sample with real values. When you select a value, both the element in the table and the element in the code sample highlight at the same time.

<a href="http://developer.myob.com/api/accountright/v2/generalledger/account/#GET"><img src="images/myobjsondoc.png" alt="MYOB JSON doc approach" /></a>

If you have long JSON objects like this, a custom table with different classes applied to different levels might be the only truly usable solution. It facilitates scanning, and the popover + collapsible approach allows you to compress the table so you can jump to the part you're interested in.

However, this approach requires more manual work from a documentation point of view, and there isn't any interactivity to try out the endpoints. Still, if you have long JSON objects, it might be worth it.

## Create a sample response in your surfreport/{beachId} endpoint

For your `surfreport/{beachId}` endpoint, create a section that shows the sample response. Look over the response to make sure it shows what it should.

Here's what mine looks like:

<div class="docSample">

<h2>Sample response</h2>

The following is a sample response from the <code>surfreport/{beachId}</code> endpoint:

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
            }
        }
    ]
}
</pre>

<p>The following table describes each item in the response.*</p>

<table><thead>
<tr>
<th>Response item</th>
<th>Description</th>
</tr>
</thead><tbody>
<tr>
<td><strong>beach</strong></td>
<td>The beach you selected based on the beach ID in the request. The beach name is the official name as described in the National Park Service Geodatabase.</td>
</tr>
<tr>
<td><strong>{day}</strong></td>
<td>The day of the week selected. A maximum of 3 days get returned in the response.</td>
</tr>
<tr>
<td><strong>{time}</strong></td>
<td>The time for the conditions. This item is only included if you include a time parameter in the request.</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/tide</strong></td>
<td>The level of tide at the beach for a specific day and time. Tide is the distance inland that the water rises to, and can be a positive or negative number. When the tide is out, the number is negative. When the tide is in, the number is positive. The 0 point reflects the line when the tide is neither going in nor out but is in transition between the two states.</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/wind</strong></td>
<td>The wind speed at the beach, measured in knots (nautical miles per hour). Wind affects the surf height and general wave conditions. Wind speeds of more than 15 knots make surf conditions undesirable, since the wind creates white caps and choppy waters.</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/watertemp</strong></td>
<td>The temperature of the water, returned in Farenheit or Celsius depending upon the units you specify. Water temperatures below 70 F usually require you to wear a wetsuit. With temperatures below 60, you will need at least a 3mm wetsuit and preferably booties to stay warm.</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/surfheight</strong></td>
<td>The height of the waves, returned in either feet or centimeters depending on the units you specify. A surf height of 3 feet is the minimum size needed for surfing. If the surf height exceeds 10 feet, it is not safe to surf.</td>
</tr>
<tr>
<td><strong><span class="muted">{day}/{time}</span>/recommendation</strong></td>
<td>An overall recommendation based on a combination of the various factors (wind, watertemp, surfheight). Three responses are possible: (1) &quot;Go surfing!&quot;, (2) &quot;Surfing conditions are okay, not great&quot;, and (3) &quot;Not a good day for surfing.&quot; Each of the three factors is scored with a maximum of 33.33 points, depending on the ideal for each element. The three elements are combined to form a percentage. 0% to 59% yields response 3, 60% - 80% and below yields response 2, and 81% to 100% yields response 3.</td>
</tr>
</tbody></table>

<small>*Because this is a fictitious endpoint, I'm making the descriptions up.</small>
</div>
