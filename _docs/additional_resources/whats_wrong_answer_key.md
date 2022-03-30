---
title: What's wrong with this topic answer key
permalink: whats_wrong_answer_key.html
course: "Documenting REST APIs"
weight: 14.7
sidebar: docapis
section: resources
path1: resources.html
last-modified: 2019-08-29
---

{% include image_ad_right.html %}

This is the answer key for [Activity: What's wrong with this API reference topic](docapis_api_whats_wrong_activity.html).

After you've finished commenting on the Google Doc, go to this [annotated Google doc](https://idratherbewriting.site/whats-wrong-api-answer-key).

<figure><a target="_blank" class="noCrossRef" href="http://idratherbewriting.site/whats-wrong-api-answer-key"><img class="small" src="{{site.media}}/annotatedgoogledoc.png" /></a><figcaption>Annotated Google doc showing answers</figcaption></figure>

Alternatively, expand the answers below to see how many issues you found. If you found additional issues beyond those noted here, feel free to [drop me an email](http://idratherbewriting.com/learnapidoc/contact.html){: .noCrossRef} letting me know. You can also add your own comments on the Google Doc answer key.

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/docapis_whats_wrong_answer_key.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

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

- Number versus Integer is potentially inconsistent. Technically, a number refers to a float or double (which would allow for decimals), while an integer refers to a whole number. In this case, I doubt the beach IDs have decimals.

- No default specified for `time` parameter

- With `time` data types, why do some data types have examples but not all?

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

- for `wind`, "int" should be spelled out as integer

- `watertemp` doesn't indicate measurement units either

- `surfheight` data type is "Map" when it should be Integer

- `recommendation` doesn't include more detail such as how many possible recommendation strings are available, and what they even mean.

- `surfheight` should either be `surf_height` or `surfheight` -- response example conflicts with usage in response definition table

- no hierarchy expressed for child elements (e.g., `tide`, `wind`, `watertemp`)

</div>
</div>
{% endif %}

{% include ads.html %}
