---
title: API getting started tutorial
permalink: /docapis_doc_getting_started_section.html
keywords:
course: "Documenting REST APIs"
weight: 6.2
sidebar: docapis
section: docconceptual
path1: /docconceptual.html
last-modified: 2021-04-21
---

Following the [product overview section](docapis_doc_overview.html), you usually have a "Getting started" section that details the first steps users need to start using the API. This section often includes an end-to-end process of some starter task, complete in itself, to help users get started with your product.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Purpose of the product overview

The Getting Started tutorial is somewhat like the typical Hello World tutorial in developer documentation, but with an API. Your goal is to hold a user's hand from start to finish in producing the simplest possible output with the system. For Hello World tutorials, the simplest output might just be a message that says "Hello World." For an API, it might be a successful response from the most basic request.

{% include course_image.html size="medium" filename="timetohelloworld" ext_print="png" ext_web="svg" alt="Getting started tutorials are like Hello World tutorials." caption="Think of getting started tutorials as a kind of Hello World tutorial with the API. How long would it take for a developer to get the simplest possible response using your API?" %}

Both hello-world tutorials and getting-started tutorials share the same goal: to show a user how to use a framework, API, or some other system to get the simplest and easiest result, so they get a end-to-end sense of how it works.

{% include random_ad4.html %}

As an example, you could take a common, basic use case for your API and show how to construct a request, as well as what response returns. If developers can make that call successfully, they can probably be successful with the other calls too.

The Getting Started tutorial might involve the following:

* Signing up for an account
* Getting API keys
* Making a request
* Evaluating the response

{% include course_image.html size="medium" border="true" filename="nonref_gettingstarted" ext_print="png" ext_web="svg" alt="Getting started" caption="The Getting started tutorial usually walks users through the process from beginning to end but in a compressed, simple way" %}

Put a link to your Getting Started tutorial on your documentation homepage. Make it as easy as possible for developers to use the API to get some result. If this means using pre-provisioned accounts or setup configurations, consider doing so.

{% include image_ad_right.html %}

## Philosophic foundations for getting started tutorials {#philosophic_foundations}

A getting started tutorial is more than just another type of content to include. Prioritizing a getting started tutorial in your documentation supports an action-oriented approach to learning that aligns with the preferences of many users, especially engineering-oriented developers.

In general, consider how people prefer to learn a new system. Do they prefer to sit passively while reading a manual? Or do they want to jump in, write some code, run it, see what it does, tweak a few buttons, and learn through some trial and error, experimentation and feedback?

While user learning types can fall all along this spectrum, from "systematic" [read first] to "opportunistic" [try first], as some researchers call it, I think the engineering mindset tends to favor the opportunistic (hands-on, experiential) approach. (For more on different learning behaviors, see [How Developers Use API Documentation: An Observation Study](/learnapidoc/docapiscode_research_on_documenting_code.html#how-developers-use-api-documentation-an-observation-study).)

The more action-oriented, experiential approach to learning has its roots in a movement called "minimalism" that John Carroll identified long ago. Describing John Carroll's minimalism approach, David Farkas and Thomas Williams write:

> The premise behind minimalism is that people learning to use computer software are impatient, mentally active, and curious. They want to begin right away getting their work done; they want to exercise their problem-solving abilities; and they are apt to utterly reject or diverge from highly constraining instruction such as tutorials. Training material, therefore, must not impede the natural impulses of computer users, as systems approach documentation does. It should be as brief as possible, support the accomplishment of real work, help leaners recognize and recover from errors, and, when possible, permit non-sequential reading. Such documentation cannot be generated mechanically from a theory of instruction but requires careful attention to the needs and behavior of the intended users of the software and reiterative testing of the design. (See [John Carroll's *The Nurnberg Funnel* and Minimalist Documentation](https://www.hcde.washington.edu/files/people/docs/farkaswilliamsonnurnbergfunnel.pdf). *IEEE Transactions on Professional Communication*, Vol. 33, Nov. 4, Dec 1990.)

In other words, minimize the amount of explanatory text that you require readers to wade through before getting to a more hands-on activity. Instead of constructing long walls of text, provide activities that get users interacting with the system in a direct way, learning as they go. Integrate some of your instruction within the tutorial. Make the learning action-oriented.

When users can experiment with your system and see the result, and learn by doing, something magical happens. Not only do users start to understand the product, they feel confidence with it. There's nothing more exhilarating than learning something new and getting it to work. This inspired confidence can add the motivation users need to continue learning and using your product.

## Run in Postman button {#runinpostmanbutton}

The quicker you can get users started, the better. One way to jumpstart the configuration of an API is by using Run in Postman buttons. This can reduce more lengthy and tedious explanations about parameters and other configurations for an API.

Postman is a REST API GUI client that we explored earlier in [Submit requests through Postman](docapis_postman.html). If you have your [API endpoints integrated with Postman](docapis_postman.html), you can either create a workspace that contains your API endpoints, or you can export your Postman collections as a widget to embed in an HTML page. When users click the Run in Postman button, they will fork your collection into their own workspace.  

To see how these Run in Postman buttons work, click this button:

<div class="postman-run-button" style="margin-top:15px; margin-bottom: 15px"
data-postman-action="collection/fork"
data-postman-var-1="3578416-16cf5af1-26e2-4c89-bb99-c6be4e510dcb"
data-postman-collection-url="entityId=3578416-16cf5af1-26e2-4c89-bb99-c6be4e510dcb&entityType=collection"></div>
<script type="text/javascript">
  (function (p,o,s,t,m,a,n) {
    !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
    !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
      (n = o.createElement("script")),
      (n.id = s+t), (n.async = 1), (n.src = m), n
    ));
  }(window, document, "_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>

When prompted, click **Fork Collection**. You'll then be prompted to sign into Postman first (create an account if you don't have one). Then you'll see the Postman web interface like this:

{% include course_image.html size="large" filename="postmanlaunchhandler3" ext_print="png" url="https://www.postman.com/tomjoht/workspace/openweathermap-demo/request/3578416-84eb6497-c2f8-4d83-8922-a0330dd50694?ctx=code" ext_web="png" alt="Postman web interface" caption="Postman web interface" %}

Expand the collection to view the endpoints, and click **Send**. You'll see the response generated.

Now change the `zip` code parameter to your own zip code and click **Send** again. In the response, look for `temp` and see if it matches the weather outside your home right now.

You can see the many [demos of Run in Postman here](https://www.getpostman.com/integrations/run-button). Many of these demos are listed in [Postman's API Network](https://www.getpostman.com/api-network/).

{% include course_image.html filename="postmanapinetwork" ext_print="png" ext_web="png" url="https://www.getpostman.com/api-network/" alt="Postman API network" caption="Postman API network" %}

For details on how to share your Postman collections like this, see [Creating Run in Postman buttons](https://learning.postman.com/docs/publishing-your-api/run-in-postman/creating-run-button/) in the Postman documentation. To try out Run in Postman, you can either [import an OpenAPI spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually.

What's especially good about Postman is that it allows users to customize the API key and parameters and save those values. You can also safely share an API key. Although Postman doesn't provide same direct, in-documentation experience as [Swagger UI](pubapis_swagger_demo.html), in many ways the Postman client is more useful because it lets users configure and save the calls they make. They can easily save many different variations of the same endpoint, with different configurations. Postman is what internal developers often use to save and store API calls as they test and explore the functionality.

{% include random_ad2.html %}

Postman also allows users to easily generate the needed code to make requests in practically any language. In the same Postman workspace, click the **</>** (Code) button on the right side (highlighted in yellow) to expand the Code pane.

<a href="https://www.postman.com/tomjoht/workspace/openweathermap-demo/request/3578416-84eb6497-c2f8-4d83-8922-a0330dd50694?ctx=code"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/postmanhighlightedcodebutton.png" alt="Code options" /></a>

You can see the many options for running this same code in other languages. This gives users a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

## Samples of Getting Started Topics

Here are a few sample Getting Started topics in APIs. If you compare the various Getting Started sections, you'll see that some are detailed and some are high-level and brief. In general, the more you can hold the developer's hand, the better. However, the tutorial should still be brief and not simply redundant with the other documentation. The key is that you show the user the beginning-to-end, full process for working with the API.

{: .tip}
See also [Activity: Complete the SendGrid Getting Started tutorial](/learnapidoc/docapis_getting_started_activity.html) for another getting started tutorial you can complete right now.

### Paypal

{% include course_image.html url="https://developer.paypal.com/docs/api/overview/" filename="paypalgetstarted" ext_print="png" ext_web="png" alt="Paypal getting started tutorial" caption="Paypal getting started tutorial" %}

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

{% include random_ad1.html %}

## <i class="fa fa-user-circle"></i> Activity with getting started tutorials

With the [open-source project you identified](docapis_find_open_source_project.html), identify the getting started tutorial. Then answer the following questions:

1. Does the API have a getting started tutorial?
2. Does the getting-started tutorial walk you through an end-to-end scenario?
3. Can you follow all the steps in the getting started tutorial successfully?
4. How long does the getting started tutorial take to complete?
5. In an attempt to simplify the instruction and keep it brief, does the documentation make assumptions about your technical level and familiarity with the domain?

{% comment %}{% include random_ad3.html %}{% endcomment %}
