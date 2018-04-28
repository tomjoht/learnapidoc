---
title: Documenting getting started section
permalink: /docapis_doc_getting_started_section.html
keywords:
course: "Documenting REST APIs"
weight: 5.3
sidebar: docapis
section: docnonref
path1: /docnonref.html
---


Following the Overview section, you usually have a "Getting started" section that details the first steps users need to start using the API. This section often includes the whole process from beginning to end, compressed as simply as possible.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Description

The Getting Started topic is somewhat like the typical Hello World tutorial in developer documentation, but with an API. The tutorial holds a user's hand from start to finish in producing the simplest possible output with the system. For Hello World tutorials, the simplest output might just be a message that says "Hello World." For an API, it might be a successful response from the most basic request.

Both Hello World tutorials and Getting started tutorials with APIs share the same goal: To show a user how to use your API to get the simplest and easiest result, so they get a sense of how it works and feel productive.

As an example, you could take a common, basic use case for your API and show how to construct a request, as well as what response returns. If a developer can make that call successfully, he or she can probably be successful with the other calls too.

The Getting Started tutorial might involve the following:

* Signing up for an account
* Getting API keys
* Making a request
* Reviewing the endpoints available
* Calling a specific endpoint
* Evaluating a response

{% include course_image.html url="" size="medium" border="true" filename="nonref_gettingstarted" ext_print="png" ext_web="svg" alt="Getting started" caption="The Getting started tutorial usually walks users through the process from beginning to end but in a compressed, simple way." %}

Put a link to your Getting Started tutorial on your documentation homepage. Make it as easy as possible for developers to use the API to get some result. If this means using pre-provisioned accounts or setup configurations, do so.

## Samples

Here are a few sample Getting Started topics in APIs. If you compare the various Getting Started sections, you'll see that some are detailed and some are high-level and brief. In general, the more you can hold the developer's hand, the better. However, the tutorial should still be brief and not simply duplicate the regular documentation. The key is that you show the user the beginning to end full process in working with the API.

**Paypal**

<a href="https://developer.paypal.com/docs/api/overview/" class="noCrossRef"><img src="images/paypalgetstarted.png" alt="Paypal getting started tutorial" /></a>

Paypal's getting started tutorial contains quite a bit of detail, starting out with authorization, requests, and other details before making the first call. Although not so brief, this level of details surely helps orient users with the information they need. The format is clean and easy to follow.

**Twitter**
<a href="https://developer.twitter.com/en/docs/basics/getting-started" class="noCrossRef"><img src="images/twittergettingstarted.png" alt="Twitter getting started" /></a>

Twitter's getting started page has several getting started sections for different development goals. The text is concise and easy to follow. The tutorial links frequently to other documentation for more details. This is usually the required strategy for getting started documentation. In the need for brevity, you have to link out to other pages that have more detail if the user needs it.

**Parse Server**

<a href="http://docs.parseplatform.org/parse-server/guide/#getting-started" class="noExtIcon"><img src="images/parseservergettingstarted.png" alt="Parse Server getting started" /></a>

The Parse Server tutorial provides a good amount of detail and handholding through the various steps. For the more detailed steps of connecting your app and running the server elsewhere, the tutorial links out to more information.

**Adsense**
<a href="https://developers.google.com/adsense/management/getting_started" class="noCrossRef"><img src="images/adsensegettingstarted.png" alt="Adsense getting started" /></a>

The Adsense tutorial separates out some foundational prerequisites to getting started on the platform. After you get set up, it then provides a "quick start tutorial." The information provides a user through a simple scenario from end to end, helping them get a sense of the product and its capabilities.

**Aeris**

<a href="http://www.aerisweather.com/support/docs/api/getting-started/" class="noCrossRef"><img src="images/aerisgettingstarted.png.png" alt="Aeris getting started" /></a>

The Aeris weather getting started provides information for setting up an application and then making a request in one of several popular languages. While showing code in specific languages is undoubtedly more helpful for programmers coding in those languages, the code samples are irrelevant to other users. Ideally, code samples in a getting started tutorial might be more practical in a more language-agnostic framework, but if you have a good sense of user's preferred languages, this approach can also work.

**Watson and IBM Cloud**

<a href="https://console.bluemix.net/docs/services/watson/index.html#about" class="noCrossRef"><img src="images/watsongettingstarted.png" alt="Watson and IBM Cloud getting started tutorial" /></a>

The Watson and IBM Cloud getting started lists 3 steps. It's not an end-to-end getting started, though. It just gets the user started in selecting a service for your project. At the end, you start to code using the Watson Dashboard. Ideally, a getting started tutorial should help a user see some tangible output, but whether that's possible or not probably depends on your API.

{% include random_ad.html %}
