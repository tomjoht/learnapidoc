---
title: 'EventBrite example: Get Event information and display it on a page'
permalink: /docapis_eventbrite_example.html
sidebar: docapis
course: "Documenting REST APIs"
weight: 4.0
keywords: Eventbrite API example, REST APIs
section: otherapis
---

Use the EventBrite API to get the event title and description of [this event](https://www.eventbrite.com/myevent?eid=17920884849).

## About EventBrite
EventBrite is an event management tool, and you can interact with it through an API to pull out the event information you want. In this example, you'll use the EventBrite API to print a description of an event to your page.

## 1. Get an anonymous OAuth token
To make any kind of requests, you'll need a tokaen, which you can learn about in the [Authentication section](https://www.eventbrite.com/developer/v3/reference/authentication/). Although it's best to pass an Oauth token in the header, for simplicity purposes you can just get a token to make direct calls.

If you want to sign up for your own token, register your app [here](https://www.eventbrite.com/myaccount/apps/). Then copy the "Anonymous access OAuth token."

## 2. Determine the resource and endpoint you need
The EventBrite API documentation is here: [developer.eventbrite.com](https://www.eventbrite.com/developer/v3/). Looking through the endpoints available (listed under Endpoints in the sidebar). Which endpoint should we use?

To get event information, we'll use the [event](https://www.eventbrite.com/developer/v3/endpoints/events/) object.

<a href="https://www.eventbrite.com/developer/v3/endpoints/events/"><img src="images/eventsendpointeventbrite.png" alt="EventBrite Event" /></a>

{: .note}
Instead of calling them \"resources,\" the EventBrite API uses the term \"objects.\"" %}

The events object allows us to "retrieve a paginated response of public event objects from across Eventbrite's directory, regardless of which user owns the event."

The events object has a lot of different endpoints available. However, the GET `events/:id/` URL, described [here](https://www.eventbrite.com/developer/v3/endpoints/events/#ebapi-get-events-id) seems to provide what we need.

{: .note}
The Eventbrite docs convention is to use <code>:id</code> instead of <code>{id}</code> to represent values you pass into the endpoint.

## 3. Construct the request

Reading the quick start page, the sample request format is here:

```
https://www.eventbriteapi.com/v3/users/me/?token=MYTOKEN
```

This is for a users object endpoint, though. For events, we would change it to this:

```
https://www.eventbriteapi.com/v3/events/:id/?token={your api key}
```

Find an ID of an event you want to use, such as this event:

<a href="https://www.eventbrite.com/myevent?eid=17920884849"><img src="images/eventbrite_event.png" alt="Sample event" /></a>

The event ID appears in the URL. Now populate the request with the ID of this event:
```
https://www.eventbriteapi.com/v3/events/17920884849/?token={your api key}
```

## 4. Make a request and analyze the response

Now that you have an endpoint and API token, make the request.

The response from the endpoint is as follows:

```json
{
    "name": {
        "text": "An Aggressive Approach to Concise Writing, with Joe Welinske",
        "html": "An Aggressive Approach to Concise Writing, with Joe Welinske"
    },
    "description": {
        "text": "Webinar Description \nWriting concisely is one of the fundamental skills central to any mobile user assistance. The minimal screen real estate can\u2019t support large amounts of text and graphics without extensive gesturing by the users. Using small font sizes just makes the information unreadable unless the user pinches and stretches the text.   Even outside of the mobile space, your ability to streamline your content improves the likelihood it will be effectively consumed by your target audience.   This session offers a number of examples and techniques for reducing the footprint of your prose while maintaining a quality message. The examples used are in the context of mobile UA but can be applied to any technical writing situation. \nAbout Joe Welinske Joe Welinske specializes in helping your software development effort through crafted communication. The best user experience features quality words and images in the user interface. The UX of a robust product is also enhanced through comprehensive user assistance. This includes Help, wizards, FAQs, videos and much more. For over twenty-five years, Joe has been providing training, contracting, and consulting services for the software industry. Joe recently published the book, Developing User Assistance for Mobile Apps. He also teaches courses for Bellevue College, the University of California, and the University of Washington. Joe is an Associate Fellow of STC. ",
        "html": "<P><SPAN STYLE=\"font-size: medium;\"><STRONG>Webinar Description<\/STRONG><\/SPAN><\/P>\r\n<P>Writing concisely is one of the fundamental skills central to any mobile user assistance. The minimal screen real estate can\u2019t support large amounts of text and graphics without extensive gesturing by the users. Using small font sizes just makes the information unreadable unless the user pinches and stretches the text.<BR> <BR>Even outside of the mobile space, your ability to streamline your content improves the likelihood it will be effectively consumed by your target audience.<BR> <BR>This session offers a number of examples and techniques for reducing the footprint of your prose while maintaining a quality message. The examples used are in the context of mobile UA but can be applied to any technical writing situation.<\/P>\r\n<P><SPAN STYLE=\"font-size: medium;\"><STRONG>About Joe Welinske<\/STRONG><\/SPAN><BR>Joe Welinske specializes in helping your software development effort through crafted communication. The best user experience features quality words and images in the user interface. The UX of a robust product is also enhanced through comprehensive user assistance. This includes Help, wizards, FAQs, videos and much more. For over twenty-five years, Joe has been providing training, contracting, and consulting services for the software industry. Joe recently published the book, Developing User Assistance for Mobile Apps. He also teaches courses for Bellevue College, the University of California, and the University of Washington. Joe is an Associate Fellow of STC.<\/P>"
    },
    "id": "17920884849",
    "url": "http://www.eventbrite.com/e/an-aggressive-approach-to-concise-writing-with-joe-welinske-tickets-17920884849",
    "start": {
        "timezone": "America/Los_Angeles",
        "local": "2015-09-24T12:00:00",
        "utc": "2015-09-24T19:00:00Z"
    },
    "end": {
        "timezone": "America/Los_Angeles",
        "local": "2015-09-24T13:00:00",
        "utc": "2015-09-24T20:00:00Z"
    },
    "created": "2015-07-27T15:14:49Z",
    "changed": "2015-07-27T16:19:40Z",
    "capacity": 24,
    "status": "live",
    "currency": "USD",
    "shareable": true,
    "online_event": false,
    "tx_time_limit": 480,
    "logo_id": null,
    "organizer_id": "7774592843",
    "venue_id": "11047889",
    "category_id": "102",
    "subcategory_id": "2004",
    "format_id": "2",
    "resource_uri": "https://www.eventbriteapi.com/v3/events/17920884849/",
    "logo": null
}
```

## 5. Pull out the information you need
The information has a lot more than we need. We just want to display the event's title and description on our site. To do this, we use some simple jQuery code to pull out the information and append it to a tag on our web page:

```html
<html>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script>
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "https://www.eventbriteapi.com/v3/events/17920884849/?token=APIKEY",
    "method": "GET",
    "headers": {}
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

We covered this approach earlier in the course, so I won't go into much detail here.

{: .note}
My API key is hidden from the above code sample to protect it from unauthorized access.

Here's the result:

<img src="images/eventbriteresultjoewelinske.png" alt="Eventbrite result" />

## Code explanation

The result is as plain-jane as it can be in terms of style. But with API documentation code examples, you want to keep code examples simple. In fact, you most likely don't need a demo at all. Simply showing the payload returned in the browser is sufficient for a UI developer. However, for testing it's fun to make content actually appear on the page.

The `ajax` method from jQuery gets a payload for an endpoint URL, and then assigns it to the `data` argument. We log `data` to the console to more easily inspect its payload. To pull out the various properties of the object, we use dot notation. `data.name.text` gets the text property from the name object that is embedded inside the data object.

We then rename the content we want with a variable (`var content`) and use jQuery's `append` method to assign it to a specific tag (`eventbrite`) on the page.
