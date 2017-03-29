---
title: New API endpoint to document
permalink: docapis_new_endpoint_to_doc.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.4
sidebar: docapis
section: docendpoints
---

Until this point, you've been acting as a developer with the task of integrating the weather data into your site. The point was to help you understand the type of information developers need and how they use APIs.

Now let's shift perspectives. Now you're a technical writer working with the Mashape weather API team. The team is asking you to document a new endpoint.

{: .note}
For this exercise, you could equally document a new endpoint for the Aeris Weather API, but since that API is already quite robust, we'll keep it simple and work with the more minimalist Mashape weather API.

{% if site.target == "web" %}
* TOC
{:toc}
{% endif %}

## You have a new endpoint to document

The project manager calls you over and says they have a new API for you to document for the next release. (By "API," the manager really just means a new endpoint to the existing API. Some APIs like [Alchemy API](http://www.alchemyapi.com/api/) even refer to each endpoint as an API.)

"Here's the wiki page that contains all the data," the manager says. The information is scattered and random on the wiki page. In reality, you probably wouldn't have all the information available that you need, but to facilitate the course scenario (you can't ask the "team" questions about this fictitious new endpoint), the page will help.

It's now your task to sort through the information on this page and create documentation from it.

Read through the wiki page to get a sense of the information. The upcoming topics will guide you through creating documentation for this new endpoint.

{: .tip}
Most technical writers don't start from scratch with documentation projects. Engineers usually dump essential information onto an internal wiki page. However, the information on the wiki page will likely be incomplete, unnecessarily technical in places (like describing the database schema when users won't ever need this info), and have other issues. The info might include internal-only information (e.g., test logins, access protocols). Ultimately, the information will be written for other engineers on the same knowledge level. Your job as a technical writer will be to take this information and turn it into complete, accurate, usable information that meets your audience's goal.

<div class="docSample">{% raw %}
<h2>The wiki page: "Surf Report API"</h2>

<p>The new endpoint is <code>/surfreport/{beachId}</code>. This is for surfers who want to check things like tide and wave conditions to determine whether they should head out to the beach to surf. <code>{beachId}</code> is retrieved from a list of beaches on our site.</p>

<p>Optional parameters: </p>

<ul>
<li>Number of days: Max is 7. Default is 3. Optional.</li>
<li>Units: imperial or metric. With imperial, you get feet and knots. With metric, you get centimeters and kilometers per hour. Optional.</li>
<li>Time: time of the day corresponding to time zone of the beach you're inquiring about. Format is unix time, aka epoch. This is the milliseconds since 1970. Time zone is GMT or UTC. Optional.</li>
</ul>

<p>If you include the hour, then you only get back the surf condition for the hour you specified. Otherwise you get back 3 days, with conditions listed out by hour for each day. </p>

<p>The response will include the surf height, the wind, temp, the tide, and overall recommendation.</p>

<p>Sample endpoint with parameters: </p>

<code>
https://simple-weather.p.mashape.com/surfreport/123?&days=2&units=metrics&hour=1400
</code>

<p>The response contains these elements:</p>

<p>surfreport: </p>

<ul>
<li>surfheight (time: feet)</li>
<li>wind (time: kts)</li>
<li>tide (time: feet)</li>
<li>water temperature (time: F degrees)</li>
<li>recommendation - string ("Go surfing!", "Surfing conditions okay, not great", "Not today -- try some other activity.")</li>
</ul>

<p>The recommendation is based on an algorithm that takes optimal surfing conditions, scores them in a rubric, and includes one of three responses.</p>

<p>Sample format:</p>

<pre>
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
                // ...  the other hours of the day are truncated here.
            }
        }
    ]
}
</pre>

<p>Negative numbers in the tide represent incoming tide.</p>

<p>The report won't include any details about riptide conditions. </p>

<p>Note that although users can enter beach names, there are only certain beaches included in the report. Users can look to see which beaches are available from our website at <code>http://example.com/surfreport/beaches_available</code>. The beach names must be url encoded when passed in the endpoint as query strings.</p>

<p>To switch from feet to metrics, users can add a query string of <code>&units=metrics</code>. Default is <code>&units=imperial</code>.</p>

<p>Here's an <a href="http://www.surfline.com/surf-report/south-beach-ca-northern-california_5088/">example</a> of how developers might integrate this information.</p>

<p>If the query is malformed, you get error code 400 and an indication of the error.</p>
</div>
{% endraw %}

## Essential sections in REST API documentation

In the next topics, you'll work on sorting this information out into eight common sections in REST API documentation:

* Resource description
* Endpoint
* Methods
* Parameters
* Request submission example
* Request response example
* Status and error codes
* Code samples

## Create the basic structure for the endpoint documentation

Open up a new text file and create sections for each of these elements.

Each of your endpoints should follow this same pattern and structure. A common template helps increase consistency and familiarity/predictability with how users consume the information.

{: .note}
Although there are automated ways to publish API docs, we're focusing on content rather than tools in this course. For the sake of simplicity, try just using a text editor (such as [Sublime Text](https://www.sublimetext.com/)) and [Markdown syntax](https://help.github.com/articles/github-flavored-markdown).
