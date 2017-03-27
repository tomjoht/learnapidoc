---
title: "API Interactivity"
permalink: /pubapis_api_interactivity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.8
section: designpatterns
---

A recurring feature in many API doc publishing sites is interactivity. Swagger, readme.io, Apiary, and many other platforms allow you to try out calls and see responses.

For APIs not on these platforms, wiring up an API Explorer is often done by engineers. Since you already have the API wiring to make calls and receive responses, creating an API Explorer is a feasible task for a UI developer.

Here's a sample API explorer from Twitter:

<a href="https://dev.twitter.com/rest/tools/console"><img src="images/twitterapiexplorer.png" alt="Twitter API Explorer" /></a>

## Novel or actually instructive?

Are API explorers novel, or extremely instructive? If you're going to be making a lot of calls, there's no reason why you couldn't just use cURL to quickly make the request and see the response. The API Explorer provides more of a GUI, however, that makes the endpoints accessible to more people. You don't have to worry about entering exactly the right syntax in your cURL call -- you just have to fill in the blanks.

However, API Explorers tend to work better with simpler APIs. If your API requires you to retrieve data before you can use a certain endpoint, or if the data you submit is a JSON object in the body of the post, or you have some other complicated interdependency with the endpoints, the API Explorer might not be as helpful.

Nevertheless, clearly it is a design pattern to provide this kind of interactivity in the documentation.

## Dynamically populated code samples with API keys

If your users log in, you can store their API keys and dynamically populate the calls with API keys. Not doing so seems a bit lazy with the user experience. The API key can most likely be a variable that stores the user's API key.

However, if you store customer API keys on your site, this might create authentication and login requirements that make your site more complicated. If you have users logging in and dynamically populating the explorer with their API keys, you'll probably need a front-end designer and web developer to pull this off. [readme.io](http://readme.io) is one of the platforms that allows you to store API keys for users and dynamically populate your code samples with them.
