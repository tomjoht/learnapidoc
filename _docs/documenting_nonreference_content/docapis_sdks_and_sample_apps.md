---
title: SDKs and sample apps
permalink: docapis_sdks_and_sample_apps.html
keywords:
course: "Documenting REST APIs"
weight: 5.7
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

SDKs (software development kits) and sample apps are similar to [code samples](docapis_codesamples_bestpractices.html) but much more extensive and usually involve a whole collection of files that work together as a whole. SDK is a somewhat broad term that refers to any tooling that supports an API. Sample apps are usually self-contained applications that implement the API for a specific scenario on a particular platform or language.

* TOC
{:toc}

## SDKs show the implementation of an API in a specific language

The terms API and SDK are often used together, but they aren't synonyms. SDKs implement the language agnostic REST API in a specific language, such as Java or C++. REST APIs by themselves aren't tied to any particular language; usually you demonstrate the APIs by [making calls using cURL](docapis_make_curl_call.html), a command-line tool for submitting web requests and getting responses. But developers probably won't use cURL requests when they implement your API. Instead, they will implement the API requests using the language of their application.

For example, Java, C++, or Node applications make API requests in different ways. Each language has its own way of calling a web API. You can use Postman or Paw to auto-generate a request in a specific language (see [Auto-generating code samples](docapis_doc_sample_requests.html#auto-generating-code-samples). However, the SDK takes the implementation to another level. SDKs might involve many more files as part of the implementation. In the SwaggerHub tutorial in this course, I show how to [auto-generate client SDKs](pubapis_swaggerhub_smartbear.html#auto-generate-client-sdks) through SwaggerHub's interface. Usually, rather than relying on auto-generated SDKs, if your development team offers a client SDK, it will be code that the development team prepares and tests. The development team often provides the SDK in a few target languages based on their user's main language.

In addition to implementations of the API, SDKs loosely refer to any kind of additional tooling to support the API. As a "software development kit," the kit might involve a collection of tools, samples, and other files (again, focused on a specific language) that accompany the API.

Sample apps are similar to SDKs, in that they show how to implement the API in a specific language. But sample apps might differ from an SDK in the sense that they show a specific scenario, while the SDK is more general. Some of the examples below will provide more clarity around this difference.

## What is your role in documenting the SDK and sample app

As an API technical writer, documenting SDKs and sample apps present a tough challenge because they requires you to be familiar with one or more programming languages. I explored the question of [how much code you need to know](jobapis_learning_code.html) in another topic, so I won't get into too much detail here. Usually, engineers don't expect you to know other programming languages in depth, but some familiarity with them will be required in order to both write and review the documentation. Whether to call some code a function, class, method, or other name requires you to have a basic understanding of the terms used in that language.

{% include course_image.html size="medium" border="true" filename="nonref_sdksampleapp" ext_print="png" ext_web="svg" alt="SDKs and sample apps" caption="SDKs and sample apps" %}

If you're unfamiliar with the language, you can just take what engineers write, clean it up a bit, try to walk through the steps to get them working, and see what feedback you get from users. Usually, if you can get a sample app installed and working, and make sure that the basic documentation for running the app works, as well as what the app does, that might be sufficient. As I mentioned in the [code samples topic](docapis_codesamples_bestpractices.html), you don't need to document how a particular language works, just how your own company's SDK works. Presumably, if an engineer downloads the Java SDK for an API, it's because the engineer is already familiar with Java. However, if your API was implemented in a particular way in Java, you should explain *why* that approach was taken.

## Sample SDKs and sample apps

Here are some sample SDKs and sample apps.

**OpenWeatherMap API**

{% include course_image.html url="https://openweathermap.org/examples" filename="codesamples_openweathermap" ext_print="png" ext_web="png" alt="Code samples for OpenWeatherMap API" caption="Code samples for OpenWeatherMap API" %}

The example integrations for the OpenWeatherMap API aren't just short code snippets that show how to make a request to an endpoint. Instead, they are full-fledged, sophisticated integrations across a variety of platforms. As such, many of the code samples are stored in GitHub. Each scenario has a detailed explanation that precedes it.

If you can put your sample apps and SDKs on GitHub, it's usually a good idea to do so. It accomplishes two purposes: First, it usually puts the burden on engineering to maintain and test the code samples, as well as respond to issues users might log against the GitHub project. Second, it makes it easier to provide fully functional code, since users can clone the project and start working with the code immediately.

**Paypal REST SDK**

{% include course_image.html url="https://developer.paypal.com/docs/api/quickstart/" filename="sdk_paypal" ext_print="png" ext_web="png" alt="" caption="Paypal REST SDKs" %}

The SDKs in the [Additional information](https://developer.paypal.com/docs/api/quickstart/#additional-information) section include Node JS, PHP, Python, Ruby, Java, and .NET. Each implementation has its own GitHub site, with its own wiki, sample code, sourcd docs, and more. If you browse some of these GitHub pages, such as the [one for PHP](https://paypal.github.io/PayPal-PHP-SDK/), you can see the whole collection of language-specific files for this SDK.

{% include course_image.html url="https://paypal.github.io/PayPal-PHP-SDK/" filename="sdk_paypal_github" ext_print="png" ext_web="png" alt="Paypal PHP SDK" caption="Paypal PHP SDK" %}

**Heroku**

{% include course_image.html url="https://devcenter.heroku.com/articles/pubnub" filename="sdk_heroku" ext_print="png" ext_web="png" alt="" caption="Heroku SDK" %}

The Heroku SDK is actually operated by PubNub and includes a Ruby, Java, Node JS, Python, and PHP SDK. If you look at, for example, the [Python SDK documentation](https://devcenter.heroku.com/articles/pubnub#python-sdk-documentation), you see links to Getting Started, Tutorials, and API reference. As I mentioned earlier, it's unlikely that you'll be able to contribute significantly to either writing or reviewing the Python SDK documentation here unless you're somewhat familiar with Python. At the same time, you can't expect technical writers to be conversant in half a dozen languages. More likely, you'll be reliant on engineers who are conversant in these languages and frameworks to author this content. But doing so will require you to interact skillfully with engineers. If engineers tell you that users should know X, don't simply submit to their judgment out of ignorance with the language. Instead, find some Python users (even internal engineers in other groups) to test the documentation against. If those users push back and say they need more detail, you can then interface with the engineering team to provide it. Thus, in these cases the technical writers acts as a mediator between the engineering authors and the engineering users to identify and fill gaps in the documentation.

**Amazon**

{% include course_image.html url="https://aws.amazon.com/tools/#sdk" filename="sdk_amazon_aws" ext_print="png" ext_web="png" alt="Amazon AWS SDKs" caption="Amazon AWS SDKs" %}

**Google Cloud**

{% include course_image.html url="https://cloud.google.com/sdk/docs/" filename="sdk_amazon_aws" ext_print="png" ext_web="png" alt="Google Cloud SDK documentation" caption="Google Cloud SDK documentation" %}
