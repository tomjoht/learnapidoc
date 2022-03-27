---
title: "A new endpoint to document"
permalink: docapis_new_endpoint_to_doc.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.01
sidebar: docapis
section: docendpoints
path1: docendpoints.html
last-modified: 2019-01-03
---

Until this point, you've been [acting as a developer](likeadeveloper.html) with the task of integrating the weather data into your site. The point was to help you understand the type of information developers need and how they use APIs.

Now let's shift perspectives. Now suppose you're a technical writer working with the OpenWeatherMap team. The team is asking you to document a new endpoint. What do you cover, and how do you approach it?

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## You have a new endpoint to document

The project manager calls you over and says the team has a new endpoint for you to document for the next release. (Sometimes teams will also refer to each endpoint as an "API" as well.)

{% include random_ad3.html %}

{% include image_ad_right.html %}

"Here's the wiki page that contains info about the new API," the manager says. The information is scattered and random on the wiki page.

Most technical writers don't start from scratch with documentation projects. Engineers usually dump essential information onto an internal wiki page (or they communicate the info during meetings). However, the information on the wiki page will likely be incomplete and unnecessarily technical in places (like describing the database schema or high-level architectural workflows). The info might also include internal-only information (for example, test logins, access protocols, or code names) or have sections that are out-of-date.

Ultimately, the information will be oriented towards other engineers on the same knowledge level as the team's engineers. Your job as a technical writer will be to take this information and turn it into complete, accurate, usable information that communicates with your audience.

{% include ads.html %}

## Wiki page with information about the new endpoint

It's now your task to sort through the information on this mock wiki page and create documentation from it. You can read through the mock wiki page below to get a sense of the information. In the upcoming topics, we will proceed section by section through an API reference topic.

{% include random_ad4.html %}

Here's the mock internal wiki page:

<div class="docSample">{% raw %}
<h2 id="surf_report_api">The wiki page: "Surf Report API"</h2>

<p>The new endpoint is <code>/surfreport/{beachId}</code>. This endpoint is for surfers who want to check things like tide and wave conditions to determine whether they should head out to the beach to surf. <code>{beachId}</code> is retrieved from a list of beaches on our site.</p>

<p>Optional parameters: </p>

<ul>
<li>Number of days: Max is 7. Default is 3. Optional.</li>
<li>Units: imperial or metric. With imperial, you get feet and knots. With metric, you get centimeters and kilometers per hour. Optional.</li>
<li>Time: time of the day corresponding to time zone of the beach you're inquiring about. Format is unix time, aka epoch. Unix time is the milliseconds since 1970. Time zone is GMT or UTC. Optional.</li>
</ul>

<p>If you include the hour, then you only get back the surf condition for the hour you specified. Otherwise, you get back 3 days, with conditions listed out by hour for each day. </p>

<p>The response will include the surf height, the wind, temp, the tide, and overall recommendation.</p>

<p>Sample endpoint with parameters: </p>

<pre>
https://api.openweathermap.org/com/surfreport/123?&days=2&units=metrics&hour=1400
</pre>

<p>The response contains these elements:</p>

<p>surfreport: </p>

<ul>
<li>surfheight (units: feet)</li>
<li>wind (units: kts)</li>
<li>tide (units: feet)</li>
<li>water temperature (units: F degrees)</li>
<li>recommendation - string ("Go surfing!", "Surfing conditions okay, not great", "Not today -- try some other activity.")</li>
</ul>

<p>The recommendation is based on an algorithm that takes optimal surfing conditions, scores them in a rubric, and includes one of three responses.</p>

<p>Sample format:</p>

<div markdown="block">
```json
{
    "surfreport": [
        {
            "beach": "Santa Cruz",
            "monday": {
                "1pm": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 60,
                    "surfheight": 5,
                    "recommendation": "Go surfing!"
                },
                "2pm": {
                    "tide": -1,
                    "wind": 1,
                    "watertemp": 50,
                    "surfheight": 3,
                    "recommendation": "Surfing conditions are okay, not great"
                }
                ...

            }
        }
    ]
}
```
</div>

<p>Negative numbers in the tide represent incoming tide.</p>

<p>The report won't include any details about riptide conditions. </p>

<p>Although users can enter beach names, there are only certain beaches included in the report. Users can look to see which beaches are available from our website at <code>https://example.com/surfreport/beaches_available</code> (not a real URL). The beach names must be url encoded when passed in the endpoint as query strings.</p>

<p>To switch from feet to metrics, users can add a query string of <code>&units=metrics</code>. Default is <code>&units=imperial</code>.</p>

<p>Here's an <a href="https://www.surfline.com/surf-report/south-beach-ca-northern-california_5088/">example</a> of how developers might integrate this information. This site shows the height of the surf coupled with a cam.</p>

<p>If the query is malformed, you get error code 400 and an indication of the error.</p>
</div>
{% endraw %}

You can see that the information here is unstructured and hard to scan. By structuring the API reference information into five standard sections, the information will take more shape and be more readable.

{% include random_ad2.html %}

## Next steps

Let's jump into the [API reference tutorial overview](docapis_api_reference_tutorial_overview.html) for an overview of the five steps we'll cover in creating the API reference topic for this new endpoint.
