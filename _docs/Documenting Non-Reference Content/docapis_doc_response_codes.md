---
title: Documenting response and error codes
permalink: /docapis_doc_response_codes.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.6
sidebar: docapis
section: docnonref
---

Remember when we submitted the cURL call back in <a href="docapis_make_curl_call.html">an earlier lesson</a>? We submitted a cURL call and specified that we wanted to see the response headers (`--include` or `-i`):

```bash
  curl --get -include 'https://simple-weather.p.mashape.com/aqi?lat=37.354108&lng=-121.955236' \-H 'X-Mashape-Key: APIKEY' \
  -H 'Accept: text/plain'
```

The response, including the header, looked like this:

```
HTTP/1.1 200 OK
Content-Type: text/plain
Date: Mon, 08 Jun 2015 14:09:34 GMT
Server: Mashape/5.0.6
X-Powered-By: Express
Content-Length: 3
Connection: keep-alive

16
```

The first line, `HTTP/1.1 200 OK`, tells us the status of the request. (If you change the method, you'll get back a different status code.)

With a GET request, it's pretty easy to tell if the request is successful or not because you get back something in the response.

But suppose you're making a POST, PUT, or DELETE call, where you're changing data contained in the resource. How do you know if the request was successfully processed and received by the API?

HTTP response codes in the header of the response will indicate whether the operation was successful. The HTTP status codes are just abbreviations for longer messages.

## Common status codes follow standard protocols
Most REST APIs follow a standard protocol for response headers. For example, `200` isn't just an arbitrary code decided upon by the Mashape Weather API developers. `200` is a universally accepted code for a successful HTTP request.

You can see a list of common [REST API status codes here](http://www.restapitutorial.com/httpstatuscodes.html) and a [general list of HTTP status codes here](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
).

## Where to list the HTTP response and error codes

Most APIs should have a general page listing response and error codes across the entire API. Twitter's API has a good example of the possible status and error codes you will receive when making requests:

<a href="https://dev.twitter.com/overview/api/response-codes"><img src="images/twitterstatuscode.png" alt="Twitter API status codes" /></a>

In contrast, with the Flickr API, each "method" (endpoint) lists error codes:

<a href="https://www.flickr.com/services/api/flickr.galleries.getPhotos.html"><img src="images/flickrerrorcodes.png" alt="Flickr API" /></a>

Either location has merits, but my preference is a single centralized page for the entire API because listing them out on each endpoint page would add a lot of extra repeated words on each page.

## Where to get error codes
Error code may not be readily apparent when you're documenting your API. You will need to ask developers for a list of all the status codes. In particular, if developers have created special status codes for the API, highlight these in the documentation.

For example, if you exceed the rate limit for a specific all, the API might return a special status code. You would especially need to document this custom code. Listing out all the error codes is a reference section in the "Troubleshooting" topic of your API documentation.

## When endpoints have specific status codes

In the Flattr API, sometimes endpoints return particular status codes. For example, when you "Check if a thing exists," the response includes `HTTP/1.1 302 Found` when the object is found. This is a standard HTTP response. If it's not found, you see a 404 status code.

<a href="http://developers.flattr.net/api/resources/things/#update-a-thing"><img src="images/flattrnotfound.png" alt="Not found status code" /></a>

If the status code is specific to a particular endpoint, you can include it with that endpoint's documentation.

Alternatively, you can have a general status and error codes page that lists all possible codes for all the endpoints. For example, with the Dropbox API, the writers list out the error codes related to the API:

<a href="https://www.dropbox.com/developers/core/docs"><img src="images/apierrorsdropbox.png" alt="Dropbox API example with errors" /></a>

In particular, you should look for codes that return when there is an error, since this information helps developers troubleshoot problems.

{: .tip}
You can run some of the cURL calls you made earlier (this time adding <code>-i</code>) and looking at the HTTP status code in the response.

## How to list status codes

Your list of status codes can be done in a basic table, somewhat like this:

| Status code | Meaning |
|---------|-----------|
| 200 | Successful request and response. |
| 400 | Malformed parameters or other bad request |

## Status codes aren't readily visible

Status codes are pretty subtle, but when a developer is working with an API, these codes may be the only "interface" the developer has. If you can control the messages the developer sees, it can be a huge win. All too often, status codes are uninformative, poorly written, and communicate little or no helpful information to the user to overcome the error.

## Status/error codes can assist in troubleshooting

Status and error codes can be particularly helpful when it comes to troubleshooting. Therefore, you can think of these error codes as complementary to a section on troubleshooting.

Almost every set of documentation could benefit from a section on troubleshooting. Document what happens when users get off the happy path and start stumbling around in the dark forest.

A section on troubleshooting could list possible error messages users get when they do any of the following:

* The wrong API keys are used
* Invalid API keys are used
* The parameters don't fit the data types
* The API throws an exception
* There's no data for the resource to return
* The rate limits have been exceeded
* The parameters are outside the max and min boundaries of what's acceptable
* A required parameter is absent from the endpoint

Where possible, document the exact text of the error in the documentation so that it easily surfaces in searches.
