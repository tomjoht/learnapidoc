---
title: Writing the Getting Started section
permalink: /docapis_doc_getting_started_section.html
keywords:
course: "Documenting REST APIs"
weight: 3.4
sidebar: docapis
section: docnonref
---

Following the Overview section, you usually have a "Getting started" section that details the first steps users need to start using the API.

The "Getting started" section should explain the first steps users must take to start using the API. Some of these steps might involve the following:

* Signing up for an account
* Getting API keys
* Making a request
* Reviewing the endpoints available
* Calling a specific endpoint

## Show the general pattern for requests

When you start listing out the endpoints for your resources, you just list the "end point" part of the URL. You don't list the full HTTP URL that users will need to make the request. Listing out the full HTTP URL with each endpoint would be tedious and take up a lot of space.

You generally list the full HTTP URL in a Getting Started section that shows how to make a call to the API.

For example, you might explain that the domain root for making a request is this:

```
http://myapi.com/v2/
```

And when you combine the domain root with a sample endpoint (or resource root), it looks like this:

```
http://myapi.com/v2/homes/{id}
```

Once users know the domain root, they can easily add any endpoint to that domain root to construct a request.

## Sample Getting Started sections
Here's the Getting Started section from the Alchemy API:

<a href="http://www.alchemyapi.com/developers/getting-started-guide"><img src="images/alchemyapigettingstarted.png" alt="Alchemy API" /></a>

Here's a Getting Started tutorial from the HipChat API:

<a href="https://www.hipchat.com/docs/apiv2"><img src="images/hipchatgettingstarted.png" alt="HipChat API Getting Started" /></a>

Here's a Getting Started section from the Aeris Weather API:

<a href="http://www.aerisweather.com/support/docs/api/getting-started/"><img src="images/aerisgettingstarted.png" alt="Aeris weather Getting started" /></a>

Here's another example of a Getting Started tutorial from Smugmug's API:

<a href="https://api.smugmug.com/api/v2/doc"><img src="images/smugmuggettingstarted.png" alt="Smugmug" /></a>

I like how, right from the start, Smugmug tries to hold your hand to get you started. In this case, the tutorial for getting started is integrated directly in with the main documentation.

If you compare the various Getting Started sections, you'll see that some are detailed and some are high-level and brief. In general, the more you can hold the developer's hand, the better.

## Hello World tutorials

In developer documentation, one common topic type is a Hello World tutorial. The Hello World tutorial holds a user's hand from start to finish in producing the simplest possible output with the system. The simplest output might just be a message that says "Hello World."

Although you don't usually write Hello World messages with the API, the concept is the same. You want to show a user how to use your API to get the simplest and easiest result, so they get a sense of how it works and feel productive. That's what the Getting Started section is all about.

You could take a common, basic use case for your API and show how to construct a request, as well as what response returns. If a developer can make that call successfully, he or she can probably be successful with the other calls too.
