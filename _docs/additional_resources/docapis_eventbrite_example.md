---
title: 'Get event information using the Eventbrite API'
permalink: docapis_eventbrite_example.html
sidebar: docapis
course: "Documenting REST APIs"
weight: 14.2
sidebar: docapis
section: resources
path1: resources.html
last-modified: 2018-12-29
---

Use the [Eventbrite API](https://www.eventbrite.com/developer/v3/) to get the event title and description of an event.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## About Eventbrite

Eventbrite is an event management tool, and you can interact with it through an API to pull out the event information you want. In this example, you'll use the Eventbrite API to print a description of an event to your page.

{% include ads.html %}

## 1. Get an OAuth token

Eventbrite uses the [OAuth method for authorization](docapis_more_about_authorization.html#oauth). To make any kind of requests, you'll need an OAuth token, which you can learn about in [Eventbrite's Authentication docs](https://www.eventbrite.com/developer/v3/api_overview/authentication/).

{% include image_ad_right.html %}

If you want to sign up for your own token, first [sign in to Eventbrite](https://www.eventbrite.com), and then create and register your app [here](https://www.eventbrite.com/myaccount/apps/). After you create your app, click **Show Client Secret and OAuth Token** and copy the "Anonymous access OAuth token."

## 2. Determine the resource and endpoint you need

The Eventbrite API documentation is available at [https://www.eventbrite.com/platform/api/](https://www.eventbrite.com/platform/api/). Look through the endpoints available (listed under "Reference" in the sidebar). Which endpoint should we use?

{% include random_ad4.html %}

To get event information, we'll use the [event](https://www.eventbrite.com/platform/api#/reference/event) object, which "represents an Eventbrite Event." (The Eventbrite API uses the term "objects" instead of resources.") Specifically, we'll use [Retrieve](https://www.eventbrite.com/platform/api#/reference/event/retrieve-an-event). The only parameter we need to pass is the event ID.

{% include random_ad3.html %}

## 3. Construct the request

Although Eventbrite explains how to pass the authorization into requests, it's easier to use the prebuilt curl from the documentation code samples, and then use Postman to convert it to JavaScript jQuery AJAX.

Eventbrite's documentation uses [Apiary](https://apiary.io/), which provides a try-it-out feature (or [API explorer](pubapis_design_patterns.html#interactive_api_explorers)) in the right pane. This pane opens up when you click **Retrieve an Event**:

<figure><a href="https://www.eventbrite.com/platform/api#/reference/event/retrieve-an-event" class="noCrossRef"><img src="{{site.media}}/eventsendpointeventbrite.png" alt="Retrieving an Eventbrite Event" class="large" /></a><figcaption>Retrieving an Eventbrite Event</figcaption></figure>

In the Console pane on the right, click the **Try** button to enable the ability to call the resource (if the Call Resource button isn't already shown).

Before you can call the resource successfully, do the following:

* Click the **URI Parameters** tab and customize the value for the event ID to `49216045517`. This ID corresponds to a workshop I recently gave called Documenting REST APIs, which you can view [here](https://www.eventbrite.com/e/documenting-rest-apis-a-jumpstart-workshop-for-technical-writers-tickets-49216045517#). The event ID appears in the URL.
* Click the **Headers** tab and add your own OAuth token in place of `PERSONAL_OAUTH_TOKEN`.

<figure><img src="{{site.media}}/eventbritepersonaloauthtoken.png" alt="Customizing the Parameters and Authorization information the Eventbrite Console" class="large" /><figcaption>Customizing the Parameters and Authorization information the Eventbrite Console</figcaption></figure>

Click the **Call Resource** button and then scroll down to the Response Body section to observe the response. It should contain the body text for the Eventbrite page. (If there's an error with the OAuth token or event ID, you'll see an error response instead.)

## 4. Get the jQuery AJAX code for the request

We retrieved the response. Now for fun let's print the response to the page (as if we were promoting the event on our own site).

In the Console pane, below the parameters section, click **Show Code Example**:

<figure><img src="{{site.media}}/eventbriteshowcode.png" alt="Show code example" class="medium" /><figcaption>Show code example</figcaption></figure>

In the language drop-down that appears, select the **cURL** option and copy the value. It should look something like this:

```curl
curl --include \
     --header "Authorization: Bearer IO6EB7MM6TSCIL2TIOHC" \
     --header "Content-Type: application/json" \
  'https://www.eventbriteapi.com/v3/events/49216045517/'
```

Open up [Postman](docapis_postman.html). In Postman, go to **File > Import** and then select the **Paste Raw Text** tab. Paste in the cURL code you copied.

{% include random_ad2.html %}

<figure><img src="{{site.media}}/postmanpasterawtext.png" alt="Pasting curl into Postman" class="medium" /><figcaption>Pasting curl into Postman</figcaption></figure>

Then click **Import**. The information will populate in a new Postman tab. In Postman, if you expand the Headers tab, you will see the OAuth information. The GET box includes the Eventbrite retrieve endpoint with the event ID added as a [path parameter](docapis_doc_parameters.html#path_parameters).

In Postman, below the Send button, click **Code**. In the Generate Code Snippets dialog box, select **JavaScript > Jquery AJAX**. Copy the value shown:

<figure><img src="{{site.media}}/jquery_ajax_postman.png" alt="jQuery AJAX code in Postman" class="medium" /><figcaption></figcaption>jQuery AJAX code in Postman</figure>

In the value, remove the `cache-control` and `Postman-Token` key-value pairs, so that your code sample looks like this:

```js
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://www.eventbriteapi.com/v3/events/49216045517/",
  "method": "GET",
  "headers": {
    "Authorization": "Bearer IO6EB7MM6TSCIL2TIOHC",
    "Content-Type": "application/json"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
});
```

## 5. Customize the response on the page

The information returned from the event object has a lot more detail than we need. We just want to display the event's title and description on our site. We'll use the jQuery AJAX code copied from the earlier step to do this. Note that I won't go into full detail about this code. I covered this AJAX call in more detail in some earlier tutorials:

* [Inspect the JSON from the response payload](docapis_json_console.html)
* [Access and print a specific JSON value](docapis_access_json_values.html)
* [Dive into dot notation](docapis_diving_into_dot_notation.html)

To integrate the jQuery AJAX Postman code into your website and print the `title` and `description` fields in the response, use the following code:

```html
<!DOCTYPE html>
<html>
<meta charset="UTF-8">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script>
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "https://www.eventbriteapi.com/v3/events/49216045517/",
    "method": "GET",
    "headers": {
      "Authorization": "Bearer IO6EB7MM6TSCIL2TIOHC",
      "Content-Type": "application/json"
    }
  }

  $.ajax(settings).done(function (data) {
    console.log(data);
    var content = "<h2>" + data.name.text + "</h2>" + data.description.html;
    $("#eventbrite").append(content);
  });
</script>

<div id="eventbrite"></div>

</body>
</html>
```

Here's the <a href="https://idratherbewriting.com/learnapidoc/assets/files/eventbrite-example.html">result</a>:

<figure><a href="https://idratherbewriting.com/learnapidoc/assets/files/eventbrite-example.html"><img src="{{site.media}}/eventbriteresult.png" alt="Eventbrite result printed to the page" /></a><figcaption>Eventbrite result printed to the page</figcaption></figure>

## Code explanation

The sample implementation is as plain as it can be concerning style. But with API documentation code examples, you want to keep code examples simple. In fact, you most likely don't need a demo at all. Simply showing the payload returned in the browser is sufficient for a UI developer. However, for testing it's fun to make content actually appear on the page.

In a nutshell, here's what's going on. The `ajax` method from jQuery gets a payload for an endpoint URL and then assigns it to the `data` argument. We optionally log `data` to the console to more easily inspect its payload. To pull out the various properties of the object, we use dot notation. `data.name.text` gets the text property from the name object, and `data.description.html` gets the body.

We then rename the content we want with a variable (`var content`) and use jQuery's `append` method to assign the variable's contents to a specific tag (`eventbrite`) on the page.
