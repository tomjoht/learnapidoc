---
title: "Documenting status and error codes"
permalink: /docapis_doc_status_codes.html
redirect_from:
- http://idratherbewriting.com/learnapidoc/docapis_doc_response_codes.html
weight: 5.41
sidebar: docapis
section: docnonref
path1: /docnonref.html
---
{% comment %}
{% include course_image.html url="" size="medium" border="true" filename="nonref_statuscodes" ext_print="png" ext_web="svg" alt="Status codes" caption="Status codes" %}
 {% endcomment %}

Status and error codes show a code number in the response header that indicates the general classification of the response &mdash; for example, whether the request was successful (200), resulted in an server error (500), had authorization issues (403), and so on.

Standard status codes don't need documentation as much as custom status and error codes specific to the API. Error codes in particular help with troubleshooting bad requests.

* TOC
{:toc}

## Example of status and error codes

Here's an example of a status and error codes section in Flickr's API:

<a class="noExtIcon" href="https://www.flickr.com/services/api/flickr.galleries.getPhotos.html"><img src="images/flickrerrorcodes.png" /></a>

Here you can see that mostly the status and error codes are not the standard codes common to all requests (like 200), but are rather codes that are specific to Flickr's API.

Here's an example from OpenSecret's API:

<a  class="noExtIcon" href="https://www.opensecrets.org/api/?method=candSummary&output=doc"><img src="images/opensecretsstatuscodes.png" alt="Open Secrets API status and error codes"/></a>

Honestly, I've never seen so many status and error codes listed. But I think it's great to document this information if it's relevant to the API. (Obviously, if users would rarely encounter a particular status code, don't include it.)

The status and error codes section of an API is often the same across most resources. As a result, this section might appear outside the reference topics. But as a convenience, the status and error codes are often embedded in each reference topic as well, with the assumption that developers need quick access to these codes as they're working with the endpoints.

In the Clearbit API, the error codes appears as its own topic:

<a class="noExtIcon" href="https://clearbit.com/docs?python#errors"><img src="images/clearbitstatuserrorcodes.png" alt="Clearbit status error codes" /></a>

Again, although many codes are standard, some unique codes specific to the Clearbit API are highlighted, such as 402: "Over plan quota on this endpoint."

Finally, here's an example of status and error codes from Dropbox's API:

<a href="https://www.dropbox.com/developers/core/docs" class="noExtIcon"><img src="images/apierrorsdropbox.png" alt="Dropbox API example with errors" /></a>

## Sample status code in curl header

Status codes don't appear in the response body. They appear in the response header, which you might not see by default.

Remember when we submitted the curl call back in [an earlier lesson](docapis_make_curl_call.html)? In order to get the response header, we need to add `--include` or `-i` to the curl request. If we want *only the response header returned*, we capitalize it: `-I`.

```
curl -I -X GET "http://api.openweathermap.org/data/2.5/weather?zip=95050%2Cus&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
```

The response header looks as follows:

```
HTTP/1.1 200 OK
Server: openresty
Date: Mon, 02 Apr 2018 01:14:13 GMT
Content-Type: application/json; charset=utf-8
Content-Length: 441
Connection: keep-alive
X-Cache-Key: /data/2.5/weather?units=imperial&zip=95050%2cus
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true
Access-Control-Allow-Methods: GET, POST
```

The first line, `HTTP/1.1 200 OK`, tells us the status of the request. (If you change the method, you'll get back a different status code.)

{% include random_ad.html %}

With a `GET` request, it's pretty easy to tell if the request is successful because you get back the expected response.

But suppose you're making a `POST`, `PUT`, or `DELETE` call, where you're changing data contained in the resource. How do you know if the request was successfully processed and received by the API? HTTP response codes in the header of the response will indicate whether the operation was successful. The HTTP status codes are just abbreviations for longer messages.

## Common status codes follow standard protocols

Most REST APIs follow a standard protocol for response headers. For example, `200` isn't just an arbitrary code decided upon by the OpenWeatherMap API developers. `200` is a universally accepted code for a successful HTTP request.

You can see a list of common [REST API status codes here](http://www.restapitutorial.com/httpstatuscodes.html) and a [general list of HTTP status codes here](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes
). Although it's probably good to include a few standard status codes, comprehensively documenting all standard status codes, especially if rarely triggered by your API, is unnecessary.

## Where to list the HTTP response and error codes

Most APIs should have a general page listing response and error codes across the entire API. In addition to the Clearbit example mentioned above, Twitter's API also has a good example of the possible status and error codes you will receive when making requests:

<a href="https://dev.twitter.com/overview/api/response-codes" class="noExtIcon"><img src="images/twitterstatuscode.png" alt="Twitter API status codes" /></a>

This Response Codes page stands alone rather than appearing embedded within each API reference topic. However, either location has merits. A standalone page allows you to expand on each code with more detail without crowding out the other documentation. It also reduces redundancy and the appearance of a heavy amount of information (information which is actually just repeated).

On the other hand, if some resources are prone to triggering certain status and error codes more than others, it makes sense to highlight those status and error codes on the relevant API reference pages. Perhaps you could call attention to any particularly relevant status or error codes, and then link to the centralized page for full information.

## Where to get status and error codes

Status and error codes may not be readily apparent when you're documenting your API. You will need to ask developers for a list of all the status and error codes that are unique to your API. Sometimes developers hard-code these status and error codes directly in the programming code and don't have easy ways to hand you a comprehensive list (this makes localization problematic as well).

As a result, you may need to experiment a bit to ferret out all the codes. Specifically, you might need to try to break the API to see all the potential error codes.

For example, if you exceed the rate limit for a specific call, the API might return a special error or status code. You would especially need to document this custom code. A troubleshooting section in your API might make special use of the error codes.

## How to list status codes

Your list of status codes can be done in a basic table or definition list, somewhat like this:

{% if site.format == "kindle" %}
200 status code
:  Successful request and response.

400 status code
:  Malformed parameters or other bad request

{% else %}
<table>
   <colgroup>
      <col width="30%" />
      <col width="70%" />
   </colgroup>
   <thead>
      <tr>
         <th markdown="span">Status code</th>
         <th markdown="span">Meaning</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td markdown="span">200</td>
         <td markdown="span">Successful request and response.</td>
      </tr>
      <tr>
         <td markdown="span">400</td>
         <td markdown="span">Malformed parameters or other bad request.</td>
      </tr>
   </tbody>
</table>
{% endif %}

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
