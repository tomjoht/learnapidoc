---
title: API authentication and authorization
permalink: docapis_more_about_authorization.html
weight: 7.3
sidebar: docapis
section: docconceptual
path1: docconceptual.html
last-modified: 2019-03-30
---

Before users can make requests with your API, they'll usually need to register for an API key or learn other ways to authenticate the requests. APIs vary in the way they authenticate users. Some APIs require you to include an API key in the request header, while other APIs require elaborate security due to the need to protect sensitive data, prove identity, and ensure the requests aren't tampered with. In this section, you'll learn more about authentication and authorization and what you should focus on in documentation.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Defining terms

First, let's define some key terms:

* **Authentication**: Refers to proving correct identity
* **Authorization**: Refers to allowing a certain action

An API might authenticate you but not authorize you to make a certain request.

<figure><img class="docimage medium border" src="{{site.media}}/{% if site.format == "kindle" %}nonref_authentication.png{% else %}nonref_authentication.svg{% endif %}" alt="Authentication versus authorization" /><figcaption>Authentication and authorization</figcaption></figure>

## Consequences if an API lacks security

{% include random_ad2.html %}

Why do APIs even need authentication? For read-only APIs, sometimes users don't need keys. But most commercial APIs do require authorization in the form of API keys or other methods. If you *didn't* have any security with your API, users could make unlimited amounts of API calls without any kind of registration. Allowing unrestricted requests would make a revenue model for your API difficult.

Additionally, without authentication, there wouldn't be an easy way to associate requests with specific user data. And there wouldn't be a way to protect against requests from malicious users that might delete another user's data (such as by making DELETE requests on another's account).

{% include random_ad4.html %}

Finally, you couldn't track who is using your API, or what endpoints are most used. Clearly, API developers must think about ways to authenticate and authorize requests made to their API.

Overall, authentication and authorization with APIs serves the following purposes:

* Authenticate calls to the API to registered users only
* Track who is making the requests
* Track usage of the API
* Block or throttle any requester who exceeds the [rate limits](docapis_rate_limiting_and_thresholds.html)
* Apply different permission levels to different users

## Different types of authorization

There are several methods for authorization. The following are various types of API authorization you might encounter:

* [API keys](#api_keys)
* [Basic Auth](#basic_auth)
* [HMAC](#hmac)
* [OAuth](#oauth)

### API keys {#api_keys}

Most APIs require you to sign up for an API key in order to use the API. The API key is a long string that you usually include either in the request URL or request header. The API key mainly functions as a way to identify the person making the API call (authenticating you to use the API). The API key might also be associated with a specific app that you register.

<figure><img class="docimage large" src="{{site.media}}/{% if site.format == "kindle" %}nonref-docs-preso_apikey.png{% else %}nonref-docs-preso_apikey.svg{% endif %}" alt="APK keys use a string in a header property to authorize requests" /><figcaption>APK keys use a string in a header property to authorize requests</figcaption></figure>

APIs might give you both a public and private key. The public key is usually included in the request, while the private key is treated more like a password and used only in server-to-server communication. For some API documentation sites, when you're logged into the site, your API key automatically gets populated into the sample code and API Explorer.

### Basic Auth {#basic_auth}

Another type of authorization is called Basic Auth. With this method, the sender places a `username:password` into the request header. The username and password are encoded with Base64, which is an encoding technique that converts the username and password into a set of 64 characters to ensure safe transmission. Here's an example of a Basic Auth in a request header:

```
Authorization: Basic bG9sOnNlY3VyZQ==
```

APIs that use Basic Auth will also use HTTPS, which means the message content will be encrypted within the HTTP transport protocol. (Without HTTPS, it would be easy for people to decode the username and password.)

{% include ads.html %}

When the API server receives the message, it decrypts the message and examines the header. After decoding the string and analyzing the username and password, it then decides whether to accept or reject the request.

{% include image_ad_right.html %}

In Postman, you can configure Basic Authorization by clicking the **Authorization** tab, selecting **Basic Auth** from the drop-down selector, and then typing the **username** and **password** on the right of the colon on each row. The Headers tab will show a key-value pair that looks like this:

```
Authorization: Basic RnJlZDpteXBhc3N3b3Jk
```

Postman handles the Base64 encoding for you automatically when you enter a username and password with Basic Auth selected.

### HMAC (Hash-based message authorization code) {#hmac}

HMAC stands for Hash-based message authorization code and is a stronger type of authentication, more common in financial APIs. With HMAC, both the sender and receiver know a secret key that no one else does. The sender creates a message based on some system properties (for example, the request timestamp plus account ID).

The message is then encoded by the secret key and passed through a secure hashing algorithm (SHA). (A hash is a scramble of a string based on an algorithm.) The resulting value, referred to as a signature, is placed in the request header.

When the receiver (the API server) receives the request, it takes the same system properties (the request timestamp plus account ID) and uses the secret key (which only the requester and API server know) and SHA to generate the same string. If the string matches the signature in the request header, it accepts the request. If the strings don't match, then the request is rejected.

{% include random_ad3.html %}

Here's a diagram depicting this workflow:

<figure><img class="docimage medium border" src="{{site.media}}/{% if site.format == "kindle" %}restapi_hmac.png{% else %}restapi_hmac.svg{% endif %}" alt="HMAC workflow" /><figcaption>HMAC workflow</figcaption></figure>

The important point is that the secret key (critical to reconstructing the hash) is known only to the sender and receiver. The secret key is not included in the request. HMAC security is used when you want to ensure the request is both authentic and hasn't been tampered with.

### OAuth 2.0 {#oauth}

One popular method for authenticating and authorizing users is OAuth 2.0. This approach relies on an authentication server to communicate with the API server to grant access. You often see OAuth 2.0 when you're using a site and are prompted to log in using a service like Twitter, Google, or Facebook.

<figure><img class="docimage " src="{{site.media}}/oauthwindow.png" alt="OAuth login window" /><figcaption>OAuth login window</figcaption></figure>

There are a few varieties of OAuth &mdash; namely, "one-legged OAuth" and "three-legged OAuth." One-legged OAuth is used when you don't have sensitive data to secure. This might be the case if you're just retrieving general, read-only information.

In contrast, three-legged OAuth is used when you need to protect sensitive data. Three groups are interacting in this scenario:

* The authentication server
* The resource server (API server)
* The user or app

Here's the basic workflow of OAuth 2.0:

<figure><img class="docimage medium border" src="{{site.media}}/{% if site.format == "kindle" %}restapi_oauth.png{% else %}restapi_oauth.svg{% endif %}" alt="OAuth authentication" /><figcaption>OAuth authentication</figcaption></figure>

First, the consumer application sends over an application key and secret to a login page at the authentication server. If authenticated, the authentication server responds to the user with an access token.

The access token is packaged into a query parameter in a response redirect (302) to the request. The redirect points the user's request back to the resource server (the API server).

The user then makes a request to the resource server (API server). The access token gets added to the header of the API request with the word `Bearer` followed by the token string. The API server checks the access token in the user's request and decides whether to authenticate the user.

Access tokens not only provide authentication for the requester but also define the permissions of how the user can use the API. Additionally, access tokens usually expire after a period of time and require the user to log in again. For more information about OAuth 2.0, see these resources:

* [Learn API Technical Writing 2: REST for Writers (Udemy)](https://www.udemy.com/learn-api-technical-writing-2-rest-for-writers/), by Peter Gruenbaum
* [OAuth simplified](https://aaronparecki.com/articles/2012/07/29/1/oauth2-simplified), by Aaron Parecki

## What to document with authentication

In API documentation, you don't need to explain how your authentication works in detail to outside users. In fact, *not* explaining the internal details of your authentication process is probably a best practice as it would make it harder for hackers to abuse the API.

However, you do need to explain some necessary information such as:

* How to get API keys
* How to authenticate requests
* Error messages related to invalid authentication
* Sensitivity around authentication information
* Token expiration times

If you have public and private keys, you should explain where each key should be used, and note that private keys should not be shared. If different license tiers provide different access to the API calls, these licensing tiers should be explicit in your authorization section or elsewhere.

Since the API keys section is usually essential before developers can start using the API, this section needs to appear at the beginning of your help.

## Samples of authorization sections

The following are a few samples of authorization sections in API documentation.

### SendGrid

<figure><a target="_blank" class="noExtIcon" href="https://sendgrid.com/docs/User_Guide/Settings/api_keys.html"><img class="docimage" src="{{site.media}}/sendgrid_authorization.png" alt="SendGrid API keys" /></a><figcaption>SendGrid API keys</figcaption></figure>

SendGrid offers a detailed explanation of API keys, starting with the basics by explaining, "What are API keys?" Contextually, the topic on API keys appears with other account management topics.

### Twitter

<figure><a target="_blank" class="noExtIcon" href="https://developer.twitter.com/en/docs/basics/authentication/guides/authorizing-a-request"><img class="docimage" src="{{site.media}}/twitter_authentication.png" alt="Twitter authorization" /></a><figcaption>Twitter authorization</figcaption></figure>

With Twitter, because the OAuth 2.0 authorization requirements are a bit more involved, a detailed example is warranted and provided.

### Amazon Web Services

<figure><a target="_blank" class="noExtIcon" href="https://docs.aws.amazon.com/AWSECommerceService/latest/DG/HMACSignatures.html"><img class="docimage" src="{{site.media}}/amazon_authentication.png" alt="Amazon authorization" /></a><figcaption>Amazon authorization</figcaption></figure>

The Amazon example uses HMAC. The process is complex enough that a full-fledged diagram is included to show the steps users need to perform.

### Dropbox

<figure><a target="_blank" class="noExtIcon" href="https://www.dropbox.com/developers/reference/oauth-guide"><img class="docimage" src="{{site.media}}/dropbox_authentication.png" alt="Dropbox authorization" /></a><figcaption>Dropbox authorization</figcaption></figure>

Like Twitter, Dropbox also uses OAuth 2.0. Their documentation includes not just one but two diagrams and an extended explanation of the process.

## <i class="fa fa-user-circle"></i> Activity with authorization

With the [open-source project you identified](docapis_find_open_source_project.html), identify the information about authorization for requests to the API. Answer the following questions:

1. What kind of authorization is required to make requests to the API?
2. Are there different access levels within the authorization (for example, free versus pro tiers) that determine how many requests you can make or the types of information you can access?
3. Are you able to get an API key or whatever authorization method is required to make test calls to the API?
4. How is the information about authorization integrated into the getting started tutorial?
