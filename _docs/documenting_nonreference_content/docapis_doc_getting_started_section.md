---
title: Documenting getting started section
permalink: /docapis_doc_getting_started_section.html
keywords:
course: "Documenting REST APIs"
weight: 5.2
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

Following the Overview section, you usually have a "Getting started" section that details the first steps users need to start using the API. This section often includes the whole process from beginning to end, compressed as simply as possible.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Purpose of the API overview

The Getting Started topic is somewhat like the typical Hello World tutorial in developer documentation, but with an API. The tutorial holds a user's hand from start to finish in producing the simplest possible output with the system. For Hello World tutorials, the simplest output might just be a message that says "Hello World." For an API, it might be a successful response from the most basic request.

{% include course_image.html size="small" filename="timetohelloworld" ext_print="png" ext_web="svg" alt="Getting started tutorials are like Hello World tutorials." caption="Think of getting started tutorials as a kind of Hello World tutorial with the API. How long would it take for a developer to get the most basic possible response using your API" %}

Both Hello World tutorials and Getting started tutorials with APIs share the same goal: To show a user how to use your API to get the simplest and easiest result, so they get a sense of how it works and feel productive.

As an example, you could take a common, basic use case for your API and show how to construct a request, as well as what response returns. If a developer can make that call successfully, he or she can probably be successful with the other calls too.

The Getting Started tutorial might involve the following:

* Signing up for an account
* Getting API keys
* Making a request
* Reviewing the endpoints available
* Calling a specific endpoint
* Evaluating a response

{% include course_image.html size="medium" border="true" filename="nonref_gettingstarted" ext_print="png" ext_web="svg" alt="Getting started" caption="The Getting started tutorial usually walks users through the process from beginning to end but in a compressed, simple way." %}

Put a link to your Getting Started tutorial on your documentation homepage. Make it as easy as possible for developers to use the API to get some result. If this means using pre-provisioned accounts or setup configurations, do so.

## Run in Postman button

In your Getting Started tutorial, consider including a Run in Postman button. If you have your [API endpoints integrated into Postman](docapis_postman.html), you can export your Postman collections as a widget to embed in an HTML page. Postman is a REST API GUI client that we explored earlier in [Submit requests through Postman](docapis_postman.html). The [Run in Postman button](https://www.getpostman.com/integrations/run-button) provides a button (labeled "Run in Postman") that, when clicked, imports your API info into Postman so users can run calls using the Postman client. As such, this isn't a full-fledged authoring tool but rather a way to import the interactive, try-it-out API explorer for your endpoints into a web page.

To try out Run in Postman, first [import your OpenAPI spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually. Then see the Postman docs on how to [Create the Run in Postman button](https://www.getpostman.com/docs/postman_for_publishers/run_button/creating_run_button).

You can see the many [demos of Run in Postman here](https://www.getpostman.com/integrations/run-button). Many of these demos are listed in [Postman's API Network](https://www.getpostman.com/api-network/).

{% include course_image.html filename="postmanapinetwork" ext_print="png" ext_web="png" alt="Postman API network" caption="Postman API network" %}

Here's a demo of Run in Postman using the OpenWeatherMap API (`weather` endpoint):

{% if site.format == "pdf" or site.format == "kindle" %}

To view this code, go to [http://idratherbewriting.com/learnapidoc/docapis_doc_getting_started_section.html##postman](http://idratherbewriting.com/learnapidoc/docapis_doc_getting_started_section.html#postman).

{% elsif site.format == "web" %}

<div class="postman-run-button"
data-postman-action="collection/import"
data-postman-var-1="abd0d0741e8206266958"></div>
<script type="text/javascript">
  (function (p,o,s,t,m,a,n) {
    !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
    !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
      (n = o.createElement("script")),
      (n.id = s+t), (n.async = 1), (n.src = m), n
    ));
  }(window, document, "\_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>
{% endif %}

Postman provides a powerful REST API client that many developers are familiar with. It allows users to customize the API key and parameters and save those values. Although you don't have the in-browser experience to try out calls, in many ways the Postman client is more useful. This is what developers often use to save and store API calls as they test and explore the functionality.

Especially if your users are already familiar with Postman, Run in Postman is a good option to provide (especially as one option of many for users to try out your API), as it allows users to easily integrate your API into a client they can use. It gives them a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

The downside is that your parameter and endpoint descriptions don't get pulled into Postman. Additionally, if users are unfamiliar with Postman, they may struggle a bit to understand how to use it. In contrast, the "Try it out" editors that run directly in the browser tend to be more straightforward and do a better job integrating documentation.

## Samples of API overviews

Here are a few sample Getting Started topics in APIs. If you compare the various Getting Started sections, you'll see that some are detailed and some are high-level and brief. In general, the more you can hold the developer's hand, the better. However, the tutorial should still be brief and not simply duplicate the regular documentation. The key is that you show the user the beginning to end full process in working with the API.

**Paypal**

{% include course_image.html url="https://developer.paypal.com/docs/api/overview/" size="" border="" filename="paypalgetstarted" ext_print="png" ext_web="png" alt="Paypal getting started tutorial" caption="Paypal getting started tutorial" %}

Paypal's getting started tutorial contains quite a bit of detail, starting out with authorization, requests, and other details before making the first call. Although not so brief, this level of details surely helps orient users with the information they need. The format is clean and easy to follow.

**Twitter**

{% include course_image.html url="https://developer.twitter.com/en/docs/basics/getting-started" filename="twittergettingstarted" ext_web="png" ext_print="png" alt="Paypal getting started tutorial" caption="Twitter getting started" %}

Twitter's getting started page has several getting started sections for different development goals. The text is concise and easy to follow. The tutorial links frequently to other documentation for more details. This is usually the required strategy for getting started documentation. In the need for brevity, you have to link out to other pages that have more detail if the user needs it.

**Parse Server**

{% include course_image.html url="http://docs.parseplatform.org/parse-server/guide/#getting-started" filename="parseservergettingstarted" ext_web="png" ext_print="png" alt="Parse Server getting started" caption="Parse Server getting started" %}

The Parse Server tutorial provides a good amount of detail and handholding through the various steps. For the more detailed steps of connecting your app and running the server elsewhere, the tutorial links out to more information.

**Adsense**

{% include course_image.html url="https://developers.google.com/adsense/management/getting_started" filename="adsensegettingstarted" ext_web="png" ext_print="png" alt="Parse Server getting started" caption="Adsense getting started" %}

The Adsense tutorial separates out some foundational prerequisites to getting started on the platform. After you get set up, it then provides a "quick start tutorial." The information provides a user through a simple scenario from end to end, helping them get a sense of the product and its capabilities.

**Aeris**

{% include course_image.html url="http://www.aerisweather.com/support/docs/api/getting-started/" filename="aerisgettingstarted" ext_web="png" ext_print="png" alt="Aeris getting started tutorial" caption="Aeris getting started tutorial" %}

The Aeris weather getting started provides information for setting up an application and then making a request in one of several popular languages. While showing code in specific languages is undoubtedly more helpful for programmers coding in those languages, the code samples are irrelevant to other users. Ideally, code samples in a getting started tutorial might be more practical in a more language-agnostic framework, but if you have a good sense of user's preferred languages, this approach can also work.

**Watson and IBM Cloud**

{% include course_image.html url="https://console.bluemix.net/docs/services/watson/index.html#about" filename="watsongettingstarted" ext_print="web" ext_web="png" alt="Watson and IBM Cloud getting started tutorial" caption="Watson and IBM Cloud getting started tutorial" %}

The Watson and IBM Cloud getting started lists 3 steps. It's not an end-to-end getting started, though. It just gets the user started in selecting a service for your project. At the end, you start to code using the Watson Dashboard. Ideally, a getting started tutorial should help a user see some tangible output, but whether that's possible or not probably depends on your API.

{% include random_ad.html %}
