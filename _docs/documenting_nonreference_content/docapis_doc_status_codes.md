---
title: "Documenting status and error codes"
permalink: /docapis_doc_status_codes.html
redirect_from:
- http://idratherbewriting.com/learnapidoc/docapis_doc_response_codes.html
weight: 5.4
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

Status and error codes show a code number in the response header that indicates the general classification of the response &mdash; for example, whether the request was successful (200), resulted in an server error (500), had authorization issues (403), and so on. Standard status codes don't need documentation as much as custom status and error codes specific to the API. Error codes in particular help with troubleshooting bad requests.

* TOC
{:toc}

## Sample status code in curl header

Status codes don't appear in the response body. They appear in the response header, which you might not see by default.

Remember when we submitted the curl call back in [an earlier lesson](docapis_make_curl_call.html)? To get the response header, we need to add `--include` or `-i` to the curl request. If we want *only the response header returned*, we capitalize it: `-I`.

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

{% include course_image.html url="" size="medium" border="true" filename="nonref_statuscodes" ext_print="png" ext_web="svg" alt="Status codes" caption="Status codes are pretty subtle, but when a developer is working with an API, these codes may be the only \"interface\" the developer has. If you can control the messages the developer sees, it can be a huge win. All too often, status codes are uninformative, poorly written, and communicate little or no helpful information to the user to overcome the error. Ultimately, status codes should assist users in recovering from errors." %}

## Common status codes follow standard protocols

Most REST APIs follow a standard protocol for response headers. For example, `200` isn't just an arbitrary code decided upon by the OpenWeatherMap API developers. `200` is a universally accepted code for a successful HTTP request.

You can see a list of common [REST API status codes here](http://www.restapitutorial.com/httpstatuscodes.html) and a [general list of HTTP status codes here](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes). Although it's probably good to include a few standard status codes, comprehensively documenting all standard status codes, especially if rarely triggered by your API, is unnecessary.

## Where to list the HTTP response and error codes

Most APIs should have a general page listing response and error codes across the entire API. A standalone page allows you to expand on each code with more detail without crowding out the other documentation. It also reduces redundancy and the appearance of a heavy amount of information (information which is actually just repeated).

On the other hand, if some resources are prone to triggering certain status and error codes more than others, it makes sense to highlight those status and error codes on the relevant API reference pages. One strategy might be to call attention to any particularly relevant status or error codes on a specific endpoint topic, and then link to the centralized Response and Status Codes page for full information.

## Where to get status and error codes

Status and error codes may not be readily apparent when you're documenting your API. You will need to ask developers for a list of all the status and error codes that are unique to your API. Sometimes developers hard-code these status and error codes directly in the programming code and don't have easy ways to hand you a comprehensive list (this makes localization problematic as well).

As a result, you may need to experiment a bit to ferret out all the codes. Specifically, you might need to try to break the API to see all the potential error codes. For example, if you exceed the rate limit for a specific call, the API might return a special error or status code. You would especially need to document this custom code. A troubleshooting section in your API might make special use of the error codes.

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

## Example of status and error codes

**Context.io**

{% include course_image.html url="https://clearbit.com/docs?python#errors-error-types" filename="context_statuscodes" ext_print="png" ext_web="png" alt="Context.io status and error codes" caption="Context.io status and error codes" %}

Clearbit not only documents the standard status codes, they describe the unique parameters returned by their API. Find out if your API has unique codes returned because these especially need documentation. Most developers will probably be familiar with 200, 400, and 500 codes.

**Twitter**

{% include course_image.html url="https://developer.twitter.com/en/docs/basics/response-codes" filename="twitter_statuscodes" ext_print="png" ext_web="png" alt="Twitter status and error codes" caption="Twitter status and error codes" %}

Twitter's status codes not only describe the code and status, they provide a description that provides more information, potentially assisting with error recovery. For example, with the `500` error, the authors don't just say broken service, they explain, "This is usually a temporary error, for example in a high load situation or if an endpoint is temporarily having issues. Check in the [developer forums](https://twittercommunity.com/) in case others are having similar issues, or try again later." This kind of helpful message is what tech writers should aim for with status codes (at least for those codes that indicate problems).

**Mailchimp**

{% include course_image.html url="http://developer.mailchimp.com/documentation/mailchimp/guides/error-glossary/" filename="mailchimp_statuscodes" ext_print="png" ext_web="png" alt="Mailhimp status and error codes" caption="Mailchimp status and error codes" %}

Mailchimp provides extremely readable and friendly descriptions of the error message. For example, with the 403 errors, instead of just writing "Forbidden," they explain reasons why you might receive the Forbidden code. Apparently, with Mailchimp there are several types of 403 errors. Your request may be forbidden due to a disabled user account or request made to the wrong data center. For the "WrongDataCenter" error, they note that "It’s often associated with misconfigured libraries" and they link to more information on data centers. Again, this is the type of error code documentation that is helpful to users.

**Flickr**

{% include course_image.html url="https://www.flickr.com/services/api/upload.api.html" filename="flickr_statuscodes" ext_print="png" ext_web="png" alt="Flickr status and error codes" caption="Flickr status and error codes" %}

This Response Codes page is embedded within each API reference topic. As such, the descriptions are short. While this makes the error codes more visible, in some ways it's less helpful. Because it's embedded within each API topic, the descriptions about the error codes must be brief or the content would overwhelm the endpoint request information. In contrast, a standalone page listing error codes allows you to expand on each code with more detail without crowding out the other documentation. The standalone page also reduces redundancy and the appearance of a heavy amount of information (information which is actually just repeated).

If some resources are prone to triggering certain status and error codes more than others, it makes sense to highlight those status and error codes on the relevant API reference pages. I recommend calling attention to any particularly relevant status or error codes, and then linking to the centralized page for full information.
