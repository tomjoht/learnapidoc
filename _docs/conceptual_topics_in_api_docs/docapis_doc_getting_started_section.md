---
title: API getting started tutorials
permalink: docapis_doc_getting_started_section.html
keywords:
course: "Documenting REST APIs"
weight: 7.2
sidebar: docapis
section: docconceptual
path1: docconceptual.html
last-modified: 2021-09-17
---

Following the [product overview section](docapis_doc_overview.html), you usually have a "Getting started" section that details the first steps users need to start using the API. This section often includes an end-to-end process of some starter task, complete in itself, to help users get started with your product.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Purpose of the getting started tutorial

The Getting Started tutorial is somewhat like the typical Hello World tutorial in developer documentation, but with an API. Your goal is to hold a user's hand from start to finish in producing the simplest possible output with the system. For Hello World tutorials, the simplest output might just be a message that says "Hello World." For an API, it might be a successful response from the most basic request.

<figure><img class="docimage medium" src="{{site.media}}/{% if site.format == "kindle" %}timetohelloworld.png{% else %}timetohelloworld.svg{% endif %}" alt="Getting started tutorials are like Hello World tutorials." /><figcaption>Think of getting started tutorials as a kind of Hello World tutorial with the API. How long would it take for a developer to get the simplest possible response using your API?</figcaption></figure>

Both hello-world tutorials and getting-started tutorials share the same goal: to show a user how to use a framework, API, or some other system to get the simplest and easiest result, so they get a end-to-end sense of how it works.

{% include random_ad4.html %}

As an example, you could take a common, basic use case for your API and show how to construct a request, as well as what response returns. If developers can make that call successfully, they can probably be successful with the other calls too.

The Getting Started tutorial might involve the following:

* Signing up for an account
* Getting API keys
* Making a request
* Evaluating the response

<figure><img class="docimage medium border" src="{{site.media}}/{% if site.format == "kindle" %}nonref_gettingstarted.png{% else %}nonref_gettingstarted.svg{% endif %}" alt="Getting started" /><figcaption>The Getting started tutorial usually walks users through the process from beginning to end but in a compressed, simple way</figcaption></figure>

Put a link to your Getting Started tutorial on your documentation homepage. Make it as easy as possible for developers to use the API to get some result. This might mean using pre-provisioned accounts or setup configurations.

{% include image_ad_right.html %}

## Presentation on getting started tutorials

I recently gave a presentation on [product overviews](docapis_doc_overview.html) and getting started tutorials. You can watch the presentation here:

<iframe width="560" height="315" src="https://www.youtube.com/embed/6Reo17LxaS4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<p></p>

## Philosophic foundations for getting started tutorials {#philosophic_foundations}

A getting started tutorial is more than just another type of content to include. Prioritizing a getting started tutorial in your documentation supports an action-oriented approach to learning that aligns with the preferences of many users, especially engineering-oriented developers.

In general, consider how people prefer to learn a new system. Do they prefer to sit passively while reading a manual? Or do they want to jump in, write some code, run it, see what it does, tweak a few buttons, and learn through some trial and error, experimentation and feedback?

While user learning types can fall all along this spectrum, from "systematic" (read first) to "opportunistic" (try first), as some researchers call it, the engineering mindset tends to favor the opportunistic (hands-on, experiential) approach. For more on different learning behaviors, see [How Developers Use API Documentation: An Observation Study](docapiscode_research_on_documenting_code.html#how_devs_use_docs).

The more action-oriented, experiential approach to learning has its roots in a movement called "minimalism" that John Carroll identified long ago. Describing John Carroll's minimalism approach, David Farkas and Thomas Williams write:

> The premise behind minimalism is that people learning to use computer software are impatient, mentally active, and curious. They want to begin right away getting their work done; they want to exercise their problem-solving abilities; and they are apt to utterly reject or diverge from highly constraining instruction such as tutorials. Training material, therefore, must not impede the natural impulses of computer users, as systems approach documentation does. It should be as brief as possible, support the accomplishment of real work, help leaners recognize and recover from errors, and, when possible, permit non-sequential reading. Such documentation cannot be generated mechanically from a theory of instruction but requires careful attention to the needs and behavior of the intended users of the software and reiterative testing of the design. (See [John Carroll's *The Nurnberg Funnel* and Minimalist Documentation](https://www.hcde.washington.edu/files/people/docs/farkaswilliamsonnurnbergfunnel.pdf). *IEEE Transactions on Professional Communication*, Vol. 33, Nov. 4, Dec 1990.)

In other words, minimize the amount of explanatory text that you require readers to wade through before getting to a more hands-on activity. Instead of constructing long walls of text, provide activities that get users interacting with the system in a direct way, learning as they go. Integrate some of your instruction within the tutorial. Make the learning action-oriented.

When users can experiment with your system and see the result, and learn by doing, something magical happens. Not only do users start to understand the product, they feel confidence with it. There's nothing more exhilarating than learning something new and getting it to work. This inspired confidence can add the motivation users need to continue learning and using your product.

## Run in Postman button {#runinpostmanbutton}

The quicker you can get users started, the better. One way to jumpstart the configuration of an API is by using Run in Postman buttons. This can reduce more lengthy and tedious explanations about parameters and other configurations for an API.

Postman is a REST API GUI client that we explored earlier in [Submit requests through Postman](docapis_postman.html). If you have your [API endpoints integrated with Postman](docapis_postman.html), you can either create a workspace that contains your API endpoints, or you can export your Postman collections as a widget to embed in an HTML page. When users click the Run in Postman button, they will fork your collection into their own workspace.  

To see how these Run in Postman buttons work, click this button:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/docapis_doc_getting_started_section.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

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

{% endif %}

When prompted, click **Fork Collection**. You'll then be prompted to sign into Postman first (create an account if you don't have one). Then you'll see the Postman web interface like this:

<figure><a target="_blank" class="noExtIcon" href="https://www.postman.com/tomjoht/workspace/openweathermap-demo/request/3578416-84eb6497-c2f8-4d83-8922-a0330dd50694?ctx=code"><img class="docimage large" src="{{site.media}}/postmanlaunchhandler3.png" alt="Postman web interface" /></a><figcaption>Postman web interface</figcaption></figure>

Expand the collection to view the endpoints, and click **Send**. You'll see the response generated.

Now change the `zip` code parameter to your own zip code and click **Send** again. In the response, look for `temp` and see if it matches the weather outside your home right now.

You can see the many [demos of Run in Postman here](https://www.getpostman.com/integrations/run-button). Many of these demos are listed in [Postman's API Network](https://www.getpostman.com/api-network/).

<figure><a target="_blank" class="noExtIcon" href="https://www.getpostman.com/api-network/"><img class="docimage" src="{{site.media}}/postmanapinetwork.png" alt="Postman API network" /></a><figcaption>Postman API network</figcaption></figure>

For details on how to share your Postman collections like this, see [Creating Run in Postman buttons](https://learning.postman.com/docs/publishing-your-api/run-in-postman/creating-run-button/) in the Postman documentation. To try out Run in Postman, you can either [import an OpenAPI spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually.

What's especially good about Postman is that it allows users to customize the API key and parameters and save those values. You can also safely share an API key. Although Postman doesn't provide same direct, in-documentation experience as [Swagger UI](pubapis_swagger_demo.html), in many ways the Postman client is more useful because it lets users configure and save the calls they make. They can easily save many different variations of the same endpoint, with different configurations. Postman is what internal developers often use to save and store API calls as they test and explore the functionality.

{% include random_ad2.html %}

Postman also allows users to easily generate the needed code to make requests in practically any language. In the same Postman workspace, click the **</>** (Code) button on the right side (highlighted in yellow) to expand the Code pane.

<a href="https://www.postman.com/tomjoht/workspace/openweathermap-demo/request/3578416-84eb6497-c2f8-4d83-8922-a0330dd50694?ctx=code"><img src="{{site.media}}/postmanhighlightedcodebutton.png" alt="Code options" /></a>

You can see the many options for running this same code in other languages. This gives users a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

## Samples of getting started topics

Here are a few sample Getting Started topics in APIs. If you compare the various Getting Started sections, you'll see that some are detailed and some are high-level and brief. In general, the more you can hold the developer's hand, the better. However, the tutorial should still be brief and not simply redundant with the other documentation. The key is that you show the user the beginning-to-end, full process for working with the API.

### SendGrid

<figure><a target="_blank" class="noExtIcon" href="https://docs.sendgrid.com/for-developers/sending-email/api-getting-started"><img class="docimage" src="{{site.media}}/sendgrid_getting_started_tutorial.png" alt="SendGrid getting started tutorial" /></a><figcaption>SendGrid getting started tutorial</figcaption></figure>

This getting started tutorial from SendGrid is one of my favorites and one that I've had workshop participants try to complete in about 10 minutes. Interestingly, although it seems rather simple, only few participants could successfully send the email.

### Paypal

<figure><a target="_blank" class="noExtIcon" href="https://developer.paypal.com/docs/api/overview/"><img class="docimage" src="{{site.media}}/paypalgetstarted.png" alt="Paypal getting started tutorial" /></a><figcaption>Paypal getting started tutorial</figcaption></figure>

Paypal's getting started tutorial contains quite a bit of detail, starting with authorization, requests, and other details before making the first call. Although not so brief, this level of details helps orient users with the information they need. The format is clean and easy to follow.

### Twitter

<figure><a target="_blank" class="noExtIcon" href="https://developer.twitter.com/en/docs/basics/getting-started"><img class="docimage" src="{{site.media}}/twittergettingstarted.png" alt="Paypal getting started tutorial" /></a><figcaption>Twitter getting started</figcaption></figure>

Twitter's getting started page has several getting started sections for different development goals. The text is concise and easy to follow. The tutorial links frequently to other documentation for more details. In the need for brevity, you might need to follow this same strategy &mdash; being brief and linking out to other pages that have more detail.

### Parse Server

<figure><a target="_blank" class="noExtIcon" href="http://docs.parseplatform.org/parse-server/guide/#getting-started"><img class="docimage" src="{{site.media}}/parseservergettingstarted.png" alt="Parse Server getting started" /></a><figcaption>Parse Server getting started</figcaption></figure>

The Parse Server tutorial provides a fair amount of detail and handholding through the various steps. For the more detailed steps on connecting your app and running the server elsewhere, the tutorial links out to more information.

### Adsense

<figure><a target="_blank" class="noExtIcon" href="https://developers.google.com/adsense/management/getting_started"><img class="docimage" src="{{site.media}}/adsensegettingstarted.png" alt="Parse Server getting started" /></a><figcaption>Adsense getting started</figcaption></figure>

The Adsense tutorial separates out some foundational prerequisites for getting started on the platform. After you get set up, it then provides a "quick start tutorial." The tutorial walks users through a simple scenario from end to end, helping them get a sense of the product and its capabilities.

### Aeris

<figure><a target="_blank" class="noExtIcon" href="http://www.aerisweather.com/support/docs/api/getting-started/"><img class="docimage" src="{{site.media}}/aerisgettingstarted.png" alt="Aeris getting started tutorial" /></a><figcaption>Aeris getting started tutorial</figcaption></figure>

The Aeris weather getting started provides information for setting up an application and then making a request in one of several popular languages. While showing code in specific languages is undoubtedly more helpful for programmers coding in those languages, the code samples might be irrelevant to other users (e.g., Java devs might find the Python code irrelevant and vice versa). Focusing in a specific language is often a tradeoff.

### Watson and IBM Cloud

<figure><a target="_blank" class="noExtIcon" href="https://console.bluemix.net/docs/services/watson/index.html#about"><img class="docimage" src="{{site.media}}/watsongettingstarted.png" alt="Watson and IBM Cloud getting started tutorial" /></a><figcaption>Watson and IBM Cloud getting started tutorial</figcaption></figure>

The Watson and IBM Cloud getting started tutorial lists three steps. It's not an end-to-end getting started tutorial, though. It just gets the user started in selecting a service for your project. At the end, you start to code using the Watson Dashboard. Ideally, a getting started tutorial should help a user see some tangible output, but whether that's possible or not depends on your API.

{% include ads.html %}

### Other getting started tutorials

For other inspiration with getting started tutorials, explore the links below. Most of these samples come from the [Pronovix Dev Portal awards](https://devportalawards.org/) in the [Best Onboarding category](https://devportalawards.org/categories/developer-experience/best-onboarding). Pronovix lists the [nominees here](https://devportalawards.org/nominees?filter=8&filtertext=Best-Onboarding).

* [Onfido: Getting started integrating](https://developers.onfido.com/guide/get-started-integrating)
* [Deutsche Bank: Getting Started Guide](https://developer.db.com/apidocumentation/apigettingstartedguide/introduction)
* [Yolt Technology Services: Getting started](https://developer.yolt.com/docs/getting-started)
* [PlatformOS: Get Started](https://documentation.platformos.com/get-started)
* [Getting Started with Hazelcast Cloud](https://docs.hazelcast.com/cloud/getting-started)
* [Seon: Getting started](https://docs.seon.io/getting-started)
* [Fedex: Getting started](https://developer.fedex.com/api/en-us/get-started.html)
* [Vonage Developer: Getting Started](https://developer.nexmo.com/getting-started/overview)
* [Shopify: Getting started building payments apps](https://shopify.dev/apps/payments/getting-started)
* [Amadeus: Self-Service APIs](https://developers.amadeus.com/get-started/get-started-with-self-service-apis-335)
* [Tapix](https://developers.tapix.io/sandbox/findByCardTransaction/All)
* [Thingworx: Getting Started](https://developer.thingworx.com/en/resources/getting-started)
* [Codat: Getting Started](https://docs.codat.io/docs/get-started)

## Summary of best practices for getting started tutorials

As a recap, include following characteristics in your getting started tutorial:

*  Allow a new user to have some success with your product, even if the success is small, like getting a one-line value back from an API call.
*  Remove the burden about setup requirements as much as possible through sandbox accounts, pre-configured data that users can load, Postman workspaces, sample apps, or more.
*  Take a user from beginning to end through the tutorial, including registration, authorization, making a call with the API, inspecting the result, and more. As much as possible, the tutorial shouldn't just link out to longer docs but rather provide a compressed and condensed path with the product.
*  Make sure the tutorial actually works and provides the advertised result, with as high of a success rate as possible.
*  During the tutorial, take the opportunity to teach users about concepts, linking out to other parts of the docs. Include teaching moments and asides, assuming that the user is in a learning mode.
*  Include a troubleshooting section that covers common issues users might see (e.g., 403 authorization errors).

## <i class="fa fa-user-circle"></i> Activity with getting started tutorials

With the [open-source project you identified](docapis_find_open_source_project.html), identify the getting started tutorial. Then answer the following questions:

1. Does the API have a getting started tutorial?
2. Does the getting-started tutorial walk you through an end-to-end scenario?
3. Can you follow all the steps in the getting started tutorial successfully?
4. How long does the getting started tutorial take to complete?
5. In an attempt to simplify the instruction and keep it brief, does the documentation make assumptions about your technical level and familiarity with the domain?

{% include random_ad3.html %}

## Reasons why getting started tutorials fail or don't exist {#reasons_for_failure}

So far I've covered best practices for getting started tutorials. Now let's explore some reasons why getting started tutorials are often poor or non-existent. In other words, why do getting started tutorials fail? Why are they sometimes hard to follow?

### Cause 1: Getting started tutorials are seen as an optional extra, and few writers have time for optional work at release crunch times {#cause1}

One reason getting started tutorials are often absent is because they're seen as going the extra mile, delivering content that exceeds normal expectations. Given time constraints and bandwidth, creating a getting started tutorial might not make the cut against the pressure for more pressing documentation needs. For example, if you're still working on reference documentation for your API, that's probably more important than a getting started tutorial. If you haven't even explained what information gets returned in an API call, that is likely more important.

Without question, there's a hierarchy of needs with docs, and a getting started tutorial sits more towards the top (meaning, it isn't essential). If you're still working on the core docs, the getting started tutorial might not be achievable within the release timeframe.

{: .takeaway}
If writing a getting started tutorial isn't possible within the release timeframe, plan for it in the next iteration. You can usually continue improving and adding to docs after a release.

### Cause 2: The product setup might be too involved or impractical for a getting started tutorial {#cause2}

Your product might require more setup than is practical for a getting started tutorial. For example, the user might need to be officially authorized or credentialed, which might be possible only after signing a contract. Some requirements such as creating a database, setting up a server, or other configuring a service might be necessary before the user can call an API. And you might not have this infrastructure readily available for the user, especially not in a sandbox/temporary way.

One of the products I documented at Amazon was developer docs for Fire TV. Getting things setup for Alexa integration literally took 3-4 hours, with no simple shortcuts to speed things up. Developers had to set up AWS accounts, identity access management credentials, configure permissions for buckets, set up other services, add code in various files, and more. There really wasn't any quick shortcut even with a sample app (though the sample app made the tutorial possible in an afternoon rather than a week). In short, your product might not facilitate getting started in an easy way.

{: .takeaway}
If your product doesn't allow users to get started in an easy way, consider scaling back the result. Maybe the user can't call the API easily. Maybe all you can do is teach a user how to register for API keys, or show them how to issue a command in a terminal that brings up the help information. Either scale the expectations down a bit, or go the other route and lengthen the tutorial so that it actually does provide value but might require more time and effort to get through.

### Cause 3: There's no sample app to demonstrate how to call the API  {#cause3}

Another obstacle to getting started tutorials occurs with native APIs, such as Java APIs, that require users to have an app already set up. If you don't have a sample app for the user, it will likely be difficult to show how to make a call to the API. Most native API documentation involves various classes and other app configuration across various files. In short, you need the context of an app to run the code in the tutorial.

But getting engineers to make a [sample app](docapis_sample_apps.html) available is a tall order with many risks involved. Even though most QA teams have a simple sample app to facilitate testing, product teams don't usually like to give external developers these sample apps for fear that they'll use them for real scenarios. The sample apps are usually so primitive that they are in no way production scalable.

{: .takeaway}
In scenarios where you lack a sample app, you could still provide code snippets and instruct users to make the code configurations in their own apps. Assume that your target users will actually have apps and be familiar with the programming language; tell them to add a class and instantiate it with certain parameters in their app, etc. If you find that the instructions go beyond your audience's skill level, double down on those efforts to make a sample app available. (You can always add detailed notes to the sample app that state the app is not intended for production use and is a simplified form of an app to demonstrate API calls only.)

### Cause 4: The getting started tutorial omits details for the sake of brevity that might lead to confusion  {#cause4}

Another obstacle to creating the getting started tutorial is the basic task of writing this content, as it requires more writing skill. Ideally, the getting started tutorial condenses longer, more detailed information into a succinct one-page tutorial. Yet this tutorial is supposed to take a user through registration, setup, authorization, execution, viewing results, interpretation, and more. It's like being asked to create a poem out of a novel, with the requirement that the same general story gets told.

Being brief at the expense of creating a short tutorial might lead to a confusing user experience. Leaving out more specifics, notes, and other more explicit instructions for the sake of brevity goes against our tech-writing principles of clear, explicit documentation.

The ability to reduce and distill information down to short, crisp summaries for a getting started tutorial is a higher-level writing skill. It also requires more effort and subject mastery. For more information on distilling information, see [Principle 4: Reduce and distill vast information down to its essence](https://idratherbewriting.com/simplifying-complexity/reduction-layering-distillation.html).

{: .takeaway}
In places where you choose to be succinct and omit detail, link out to your regular docs for more information. In these cases, consider the approach to be a progressive information disclosure strategy. If a user needs more information, he or she can click the link and get it. But if not, the concise version suffices.

### Cause 5: The tech might be too complicated for tech writers to walk through themselves  {#cause5}

Another reason why getting started tutorials might be absent from docs is because the tech itself might be beyond the tech writer's reach. Suppose you have an advanced product that requires senior-engineering-level knowledge to use. In this scenario, the tech writer might mainly be acting as an editor, curator, and publisher &mdash; facilitating content mostly written by engineers. Since getting started tutorials are mostly hands-on, experience-driven deliverables, it might be too advanced for the tech writer. This is the nature of working in developer docs, especially without an engineering background. The tools are really designed for engineers who have a lot more training, experience, and knowledge in areas that we lack.

For example, suppose the integration assumes access to a vehicle's hardware abstraction layer, as well as knowledge about the way this layer connects to the vehicle's custom infotainment system in the head unit. In this case, the system environment might be too complex to wrangle into a simple getting started tutorial. It can be hard to walk through all of these same tasks in an end-to-end way.

Or putting it more optimistically, the tasks might be within the tech writers reach at *some* point, but not immediately. The tech writer might need more time to set up environments and walk through all of the tasks &mdash; time that's not available at present.

{: .takeaway}
Consider asking an engineer to write the getting started tutorial. If you can't follow it, this could form the basis of homework or other learning that you chip away at little by little in your path of continual learning.

### Cause 6: The content isn't tested against real users  {#cause6}

Another reason for poor getting started tutorials is that they are rarely tested against actual users. (This could explain why a lot of documentation is poor, not just getting started tutorials.) During one of my API workshops, I had participants go through this [5 minute Sendgrid tutorial](https://docs.sendgrid.com/for-developers/sending-email/api-getting-started). Out of about 20 workshop participants, only 1 managed to do the tutorial successfully. It seemed simple on the surface, but in practice, users got hung up many details. (Granted, this was a room full of tech writers, not engineers, but still.)

Testing docs against users isn't usually something tech writers do, though most admit it would be a good idea. User testing usually comes in the form of feedback to product teams, support cases, or through training sessions where users provide feedback in real-time.

{: .takeaway}
If you want to make getting started tutorials a better experience, ask a few engineers (preferably not on the product team) to spend an hour or so going through the getting started tutorial. Unlike other content in docs that might require more setup and context, the getting started tutorial is supposed to be self-contained, short, and accessible to a new user. It's the perfect type of documentation to test.
