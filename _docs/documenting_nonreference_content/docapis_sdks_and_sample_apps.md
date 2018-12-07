---
title: SDKs and sample apps
permalink: docapis_sdks_and_sample_apps.html
course: "Documenting REST APIs"
weight: 6.7
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

SDKs (software development kits) and sample apps are similar to [code samples and tutorials](docapis_codesamples_bestpractices.html) but are much more extensive and usually involve a whole collection of files that work together as a package or app. The SDK might include libraries that you download and incorporate into your application, and can include tools, sample apps, and other code. Sample apps are usually self-contained applications that implement the API for a specific scenario in a specific programming language.

* TOC
{:toc}

## What is an SDK?

The terms API and SDK are often used together, but they aren't synonyms. SDKs implement the language-agnostic REST API in a specific language, such as Java or C++. REST APIs by themselves aren't tied to any particular language; usually you demonstrate the APIs by [making calls using cURL](docapis_make_curl_call.html), a command-line tool for submitting web requests and getting responses. But developers won't use cURL requests when they implement your API. Instead, they will implement the API requests using the language their application is coded in.

For example, Python, C++, or Node applications make API requests in different ways. Each language has its own way of constructing requests to a web API. You can use Postman or Paw to auto-generate a simple request in a specific language (see [Auto-generating code samples](docapis_doc_sample_requests.html#auto-generating-code-samples)). However, the SDK takes the implementation to another level. SDKs might involve many more files or libraries as part of the implementation.

{% include random_ad.html %}

In [What is the Difference Between an API and an SDK?](https://nordicapis.com/what-is-the-difference-between-an-api-and-an-sdk/), Kristopher Sandoval explains an SDK as follows:

> SDK stands for “Software Development Kit”, which is a great way to think about it — a kit. Think about putting together a model car or plane. When constructing this model, a whole kit of items is needed, including the kit pieces themselves, the tools needed to put them together, assembly instructions, and so forth.
>
> An SDK or devkit functions in much the same way, providing a set of tools, libraries, relevant documentation, code samples, processes, and or guides that allow developers to create software applications on a specific platform. If an API is a set of building blocks that allows for the creation of something, an SDK is a full-fledged workshop, facilitating creation far outside the scopes of what an API would allow.

Sandoval compares examples from both Facebook APIs and SDKs to clarify the difference. He sums up the difference as follows: "The SDK is the building blocks of the application, whereas the API is the language of its requests." In other words, the SDK provides all the necessary code you would need to build an application that uses the API.

## What is your role in documenting the SDK and sample app

In the SwaggerHub tutorial (later in this course), I show how to [auto-generate client SDKs](pubapis_swaggerhub_smartbear.html#auto-generate-client-sdks) through SwaggerHub's interface. But usually, rather than relying on auto-generated SDKs, if your development team offers a client SDK, it will be code that the development team prepares and tests. The development team often provides the SDK in a few target languages based on their user's main language, making it easier for users to implement the API.

As an API technical writer, documenting SDKs and sample apps presents a tough challenge because SDKs require you to be familiar with one or more programming languages. I explored the question of [how much code you need to know](jobapis_learning_code.html) in another topic, so I won't get into too much detail here. Usually, engineers don't expect you to know multiple programming languages in depth, but some familiarity with them will be required in order to both write and review the documentation. When deciding whether to call a block of code a function, class, method, or other name, you need to have a basic understanding of the terms used in that language.

{% include course_image.html size="medium" border="true" filename="nonref_sdksampleapp" ext_print="png" ext_web="svg" alt="SDKs and sample apps" caption="SDKs and sample apps" %}

If you're unfamiliar with the language, you can just take what engineers write, clean it up a bit, try to walk through the steps to get them working, and see what feedback you get from users. Usually, if you can get a sample app installed and working, and make sure that the basic documentation for running the app works, as well as what the app does, that might be sufficient. But of course making any significant contributions to SDK documentation will require you to be familiar with that programming language.

{% include random_ad2.html %}

As I mentioned in the [code samples topic](docapis_codesamples_bestpractices.html), you don't need to document how a particular language works, just how your own company's SDK works. Presumably, if an engineer downloads the Java SDK for an API, it's because the engineer is already familiar with Java. However, if your API was implemented in a particular way in Java, you should explain *why* that approach was taken. (Granted, understanding the difference between documenting Java and documenting a particular approach in the Java implementation also sort of requires you to understand Java.)

## Sample SDKs and sample apps

The following examples show documentation for some sample SDKs and sample apps.

### OpenWeatherMap API

{% include course_image.html url="https://openweathermap.org/examples" filename="codesamples_openweathermap" ext_print="png" ext_web="png" alt="Code samples for OpenWeatherMap API" caption="Code samples for OpenWeatherMap API" %}

The example integrations for the OpenWeatherMap API aren't just short code snippets that show how to make a request to an endpoint. Instead, they are full-fledged, sophisticated integrations across a variety of platforms. As such, many of the code samples are stored in GitHub. Each scenario has a detailed explanation.

If you can put your sample apps and SDKs on GitHub, it's usually a good idea to do so. Storing code on GitHub accomplishes two purposes: First, it usually puts the burden on engineering to maintain and test the code samples as well as respond to issues users might log against the project. Second, it makes it easier to provide fully functional code, since users can clone the project and start working with it immediately. The development team can also push out updates easily.

### Paypal REST SDK

{% include course_image.html url="https://developer.paypal.com/docs/api/quickstart/" filename="sdk_paypal" ext_print="png" ext_web="png" alt="Paypal REST SDKs" caption="Paypal REST SDKs" %}

The SDKs in the [Paypal's Additional information](https://developer.paypal.com/docs/api/quickstart/#additional-information) section include Node JS, PHP, Python, Ruby, Java, and .NET SDKs. Each implementation has its own GitHub site, with its own wiki, sample code, source docs, and more. If you browse some of these GitHub pages (such as the [site for PHP](https://paypal.github.io/PayPal-PHP-SDK/)), you can see the whole collection of language-specific files for this SDK. These sites show how SDKs include a variety of file types.

{% include course_image.html url="https://paypal.github.io/PayPal-PHP-SDK/" filename="sdk_paypal_github" ext_print="png" ext_web="png" alt="Paypal PHP SDK" caption="Paypal PHP SDK" %}

### Heroku SDK

{% include course_image.html url="https://devcenter.heroku.com/articles/pubnub" filename="sdk_heroku" ext_print="png" ext_web="png" alt="Heroku SDK" caption="Heroku SDK" %}

The Heroku SDK is actually operated by PubNub and includes a Ruby, Java, Node JS, Python, and PHP SDK. If you look at, for example, the [Python SDK documentation](https://devcenter.heroku.com/articles/pubnub#python-sdk-documentation), you see links to Getting Started, Tutorials, and API reference.

As I mentioned earlier, it's unlikely that you'll be able to contribute significantly to either writing or reviewing the SDK documentation unless you're somewhat familiar with the language. Development groups usually don't expect technical writers to be conversant in half a dozen languages. More likely, you'll be reliant on engineers who are conversant in these languages and frameworks to author this content. But doing so will require you to interact skillfully with engineers and be somewhat familiar with programming lingo and concepts.

If engineers tell you that users should know X, don't simply submit to their judgment out of ignorance with the language. Instead, find some developers in that language (even internal engineers in other groups) to test the documentation against. If those users push back and say they need more detail, you can then interface with the engineering team to provide it.

Without more familiarity with the language of the SDK, technical writers act more as mediators between the engineering authors and the engineering users. Technical writers identify and fill gaps in the documentation, and they often manage the publishing and distribution of the docs. But the content itself might be too technical for most technical writers to play a content authoring role.

### Amazon SDK

{% include course_image.html url="https://aws.amazon.com/tools/#sdk" filename="sdk_amazon_aws" ext_print="png" ext_web="png" alt="Amazon AWS SDKs" caption="Amazon AWS SDKs" %}

One notable characteristic of the AWS docs is their consistency from doc set to doc set. The consistency leads to predictability and hence usability. However, in the SDK docs, you can see that different document generators are used to generate the docs for the various libraries. If you look at the API references for each of these SDK libraries, you'll see a C++ document generator for [C++ SDK docs](http://sdk.amazonaws.com/cpp/api/LATEST/index.html), a Ruby document generator for [Ruby SDK docs](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/index.html), a PHP document generator for [PHP SDK](https://docs.aws.amazon.com/aws-sdk-php/v3/api/), a .NET document generator for [.NET SDK docs](https://docs.aws.amazon.com/sdkfornet/v3/apidocs/Index.html), a Java document generator for [Java SDK docs](https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/index.html) and so on.

Each programming language typically has its own annotation syntax and document generation tools. The annotation syntax (which programmers use directly in the code &mdash; see [Javadoc tags](nativelibraryapis_javadoc_tags.html) for an example of Javadoc tags) differs by language and tool but is largely similar. Because the documentation is generated from annotations in the code, engineers usually write and maintain this documentation. (Having engineers write and maintain it also reduces documentation drift.)

Even so, there is probably quite a bit of variability from one library to the next. How do engineers ensure they use the same description for a class in Java that they do for Ruby and PHP? These document generator tools aren't usually smart enough to leverage snippets or includes stored in a common online repository. You also can't usually use variables or other single-sourcing techniques. As a result, there might be a lot of variation from one SDK's documentation to another for mostly the same concepts.

### Google Cloud SDK

{% include course_image.html url="https://cloud.google.com/sdk/docs/" filename="sdk_amazon_aws" ext_print="png" ext_web="png" alt="Google Cloud SDK documentation" caption="Google Cloud SDK documentation" %}

The Google Cloud SDK provides quickstart guides for Linux, Debian, Ubuntu, and other operating systems. The guides explain how to install, set up, and manage the SDK commands. An API reference for the commands is also included.

Looking at the Google Cloud SDK versus the Amazon SDK shows some of the breadth and variety of technologies you might have to document in SDK territory. These SDKs are specific to a particular programming language, operating system, or other framework, and as such, it can be daunting to try to ramp up in order to document this category of tools. For SDK documentation, you'll need to work closely with engineers and listen to feedback from users.
