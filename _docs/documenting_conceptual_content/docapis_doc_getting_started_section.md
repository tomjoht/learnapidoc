---
title: API getting started
permalink: /docapis_doc_getting_started_section.html
keywords:
course: "Documenting REST APIs"
weight: 6.2
sidebar: docapis
section: docconceptual
path1: /docconceptual.html
---

Following the [API Overview section](docapis_doc_overview.html), you usually have a "Getting started" section that details the first steps users need to start using the API. This section often includes the whole process from beginning to end, compressed as simply as possible.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Purpose of the API overview

The Getting Started topic is somewhat like the typical Hello World tutorial in developer documentation, but with an API. The tutorial holds a user's hand from start to finish in producing the simplest possible output with the system. For Hello World tutorials, the simplest output might just be a message that says "Hello World." For an API, it might be a successful response from the most basic request.

{% include course_image.html size="medium" filename="timetohelloworld" ext_print="png" ext_web="svg" alt="Getting started tutorials are like Hello World tutorials." caption="Think of getting started tutorials as a kind of Hello World tutorial with the API. How long would it take for a developer to get the simplest possible response using your API?" %}

Both Hello World tutorials and Getting Started tutorials share the same goal: to show a user how to use a framework, API, or some other system to get the simplest and easiest result, so they get a end-to-end sense of how it works.

As an example, you could take a common, basic use case for your API and show how to construct a request, as well as what response returns. If a developer can make that call successfully, he or she can probably be successful with the other calls too.

The Getting Started tutorial might involve the following:

* Signing up for an account
* Getting API keys
* Making a request
* Evaluating the response

{% include course_image.html size="medium" border="true" filename="nonref_gettingstarted" ext_print="png" ext_web="svg" alt="Getting started" caption="The Getting started tutorial usually walks users through the process from beginning to end but in a compressed, simple way" %}

Put a link to your Getting Started tutorial on your documentation homepage. Make it as easy as possible for developers to use the API to get some result. If this means using pre-provisioned accounts or setup configurations, consider doing so.

## Run in Postman button {#runinpostmanbutton}

In your Getting Started tutorial, consider including a Run in Postman button. (Postman is a REST API GUI client that we explored earlier in [Submit requests through Postman](docapis_postman.html).) If you have your [API endpoints integrated with Postman](docapis_postman.html), you can export your Postman collections as a widget to embed in an HTML page.  

The [Run in Postman button](https://www.getpostman.com/integrations/run-button) provides a button that, when clicked, imports your API info into Postman so users can run calls using the Postman client. As such, the Run in Postman button provides a way to import the interactive, try-it-out API explorer for your endpoints into a web page.

To try out Run in Postman, you can either [import an OpenAPI spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually. Then see the Postman docs on how to [Create the Run in Postman button](https://www.getpostman.com/docs/postman_for_publishers/run_button/creating_run_button).

You can see the many [demos of Run in Postman here](https://www.getpostman.com/integrations/run-button). Many of these demos are listed in [Postman's API Network](https://www.getpostman.com/api-network/).

{% include course_image.html filename="postmanapinetwork" ext_print="png" ext_web="png" alt="Postman API network" caption="Postman API network" %}

Here's a demo of Run in Postman using the OpenWeatherMap API's `weather` endpoint (which we worked with in [earlier tutorials](docapis_scenario_for_using_weather_api.html)):

{% if site.format == "pdf" or site.format == "kindle" %}

To view this code, go to [https://idratherbewriting.com/learnapidoc/docapis_doc_getting_started_section.html##postman](https://idratherbewriting.com/learnapidoc/docapis_doc_getting_started_section.html#postman).

{% elsif site.format == "web" %}

<div style="margin-top:15px; margin-bottom: 15px;" class="postman-run-button"
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

When you click the button, you should be prompted to open the collection in a Postman client:

{% include course_image.html size="small" filename="postmanlaunchhandler" ext_print="png" ext_web="png" alt="Options to open the Postman collection" caption="Options to open the Postman collection" %}

[Postman](docapis_postman.html) provides a powerful REST API client that many developers are familiar with. It allows users to customize the API key and parameters and save those values. Although Postman doesn't provide the in-browser experience to try out calls as with [Swagger UI](pubapis_swagger_demo.html), in many ways the Postman client is more useful because it lets users configure and save the calls they make. Postman is what internal developers often use to save and store API calls as they test and explore the functionality.

{% include random_ad2.html %}

Especially if your users are already familiar with Postman, Run in Postman is a good option to provide (especially as one option of many for users to try out your API) because it allows users to easily generate the needed code to make requests in practically any language. It gives users a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

The downside is that your parameter and endpoint descriptions don't get pulled into Postman. Additionally, if users are unfamiliar with Postman, they may struggle a bit to understand how to use it. In contrast, the "Try it out" editors that run directly in the browser tend to be more straightforward and do a better job integrating documentation.

## Samples of Getting Started Topics

Here are a few sample Getting Started topics in APIs. If you compare the various Getting Started sections, you'll see that some are detailed and some are high-level and brief. In general, the more you can hold the developer's hand, the better. However, the tutorial should still be brief and not simply redundant with the other documentation. The key is that you show the user the beginning-to-end, full process for working with the API.

### Paypal

{% include course_image.html url="https://developer.paypal.com/docs/api/overview/"   filename="paypalgetstarted" ext_print="png" ext_web="png" alt="Paypal getting started tutorial" caption="Paypal getting started tutorial" %}

Paypal's getting started tutorial contains quite a bit of detail, starting with authorization, requests, and other details before making the first call. Although not so brief, this level of details helps orient users with the information they need. The format is clean and easy to follow.

### Twitter

{% include course_image.html url="https://developer.twitter.com/en/docs/basics/getting-started" filename="twittergettingstarted" ext_web="png" ext_print="png" alt="Paypal getting started tutorial" caption="Twitter getting started" %}

Twitter's getting started page has several getting started sections for different development goals. The text is concise and easy to follow. The tutorial links frequently to other documentation for more details. In the need for brevity, you might need to follow this same strategy &mdash; being brief and linking out to other pages that have more detail.

### Parse Server

{% include course_image.html url="http://docs.parseplatform.org/parse-server/guide/#getting-started" filename="parseservergettingstarted" ext_web="png" ext_print="png" alt="Parse Server getting started" caption="Parse Server getting started" %}

The Parse Server tutorial provides a fair amount of detail and handholding through the various steps. For the more detailed steps on connecting your app and running the server elsewhere, the tutorial links out to more information.

### Adsense

{% include course_image.html url="https://developers.google.com/adsense/management/getting_started" filename="adsensegettingstarted" ext_web="png" ext_print="png" alt="Parse Server getting started" caption="Adsense getting started" %}

The Adsense tutorial separates out some foundational prerequisites for getting started on the platform. After you get set up, it then provides a "quick start tutorial." The tutorial walks users through a simple scenario from end to end, helping them get a sense of the product and its capabilities.

### Aeris

{% include course_image.html url="http://www.aerisweather.com/support/docs/api/getting-started/" filename="aerisgettingstarted" ext_web="png" ext_print="png" alt="Aeris getting started tutorial" caption="Aeris getting started tutorial" %}

The Aeris weather getting started provides information for setting up an application and then making a request in one of several popular languages. While showing code in specific languages is undoubtedly more helpful for programmers coding in those languages, the code samples might be irrelevant to other users (e.g., Java devs might find the Python code irrelevant and vice versa). Focusing in a specific language is often a tradeoff.

### Watson and IBM Cloud

{% include course_image.html url="https://console.bluemix.net/docs/services/watson/index.html#about" filename="watsongettingstarted" ext_print="png" ext_web="png" alt="Watson and IBM Cloud getting started tutorial" caption="Watson and IBM Cloud getting started tutorial" %}

The Watson and IBM Cloud getting started tutorial lists three steps. It's not an end-to-end getting started tutorial, though. It just gets the user started in selecting a service for your project. At the end, you start to code using the Watson Dashboard. Ideally, a getting started tutorial should help a user see some tangible output, but whether that's possible or not depends on your API.

{% include random_ad.html %}

## <i class="fa fa-user-circle"></i> Activity with getting started tutorials

With the [open-source project you identified](docapis_find_open_source_project.html), identify the getting started tutorial. Then answer the following questions:

1. Does the API have a getting started tutorial?
2. Does the getting-started tutorial walk you through an end-to-end scenario?
3. Can you follow all the steps in the getting started tutorial successfully?
4. How long does the getting started tutorial take to complete?
5. In an attempt to simplify the instruction and keep it brief, does the documentation make assumptions about your technical level and familiarity with the domain?
