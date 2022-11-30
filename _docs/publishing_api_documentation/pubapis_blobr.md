---
title: "Blobr: An API portal that arranges your API's use cases as individual products"
permalink: pubapis_blobr.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.95
section: publishingapis
path1: publishingapis.html
last-modified: 2022-06-01
---

With [Blobr](https://www.blobr.io/){: rel="nofollow"}, you can create an API store to launch and grow an API business with different monetization models. In the same Blobr portal, you can also include documentation that describes the precise workflow for each use case, helping API consumers easily onboard with your API. You can also customize your portal's name, logo, colors, domain name, add support chat integration, and more.

*Note: Blobr is one of the sponsors of my site.*

* TOC
{:toc}

## Blobr example {#blobr_example}

Let's walk through a Blobr example. Here's a product catalog for a [Petstore API on Blobr](https://y18r6fxgtelv8ls5.developer.blobr.app/){: rel="nofollow"}:

<figure><a href="https://y18r6fxgtelv8ls5.developer.blobr.app/" rel="nofollow" class="noCrossRef"><img src="{{site.media}}/product_catalog_blobr.png" alt="Product catalog overview on the Blobr API portal" /></a><figcaption><b>Figure 1.</b> <i>Product catalog overview on the Blobr API portal</i>. Developers can browse the various ways the API can be used ("products") and then preview or purchase the product they want.</figcaption></figure>

In this example, the use cases for the Petstore API have been packaged into seven different "products":

* Get info from a user
* Buy a pet in a store
* Buy a pet online
* A recent pet buy changes his/her mind
* Attach a picture to a pet
* Retrieve user email information
* Update user personal details

This is what's ingenious about Blobr &mdash; it allows you to take each use case for your API and package it as an individual product, which can then be monetized or made available for free. Each product usually involves using several different API endpoints in a specific workflow.

{% include random_ad4.html %}

API consumers (developers or other integrators) choose the products they want to consume, and then they become authorized to use the workflow's endpoints. For example, a typical authorization might allow developers to make a certain number of calls per month.

Blobr's new approach to organizing, presenting, and monetizing APIs not only simplifies API consumption for developers, it helps API providers better communicate to consumers how to use the API.

## Product and workflow in detail {#product_workflow}

Let's look at a product and its workflow in more detail. Suppose you want to implement the use case "Buy a Pet in a Store." You would click this product to see details on the implementation. The product landing page shows an overview of the product, the cost, and the workflow.

<figure><a href="https://y18r6fxgtelv8ls5.developer.blobr.app/catalog/prd_7osv1snb1ehsu91m" rel="nofollow" class="noCrossRef"><img src="{{site.media}}/product_description_blobr.png" alt="Blobr product detail page" /></a><figcaption><b>Figure 2.</b> <i>Product detail page.</i>This view describes the product and the workflow to implement it. The details also lists the endpoints used for the product.</figcaption></figure>

In this example, the product description is brief, but a more detailed product could include screenshots and other formatting (see an [example](https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/product_description_alt_blobr.png)).

{% include random_ad3.html %}

In addition to a product overview page, documentation appears as workflow steps. The first step in this workflow is to "Retrieve all the pets with the status ‘available'." Clicking this workflow step reveals more detail, as shown below:

<figure><a href="https://y18r6fxgtelv8ls5.developer.blobr.app/catalog/prd_7osv1snb1ehsu91m/workflow/v37tKPbAXi6FnHrQInyMO" rel="nofollow" class="noCrossRef"><img src="{{site.media}}/workflow_step_blobr.png" alt="Blobr workflow step detail page" class="noCrossRef" /></a><figcaption><b>Figure 3.</b> <i>Workflow step detail page in Blobr.</i> This view describes a workflow step, including the endpoint used, its parameters, and example response.</figcaption></figure>

The workflow steps usually reference an API endpoint. How do you get your API reference details in there? Although you can enter your API details manually, a more common approach is to upload an [OpenAPI document](pubapis_openapi_intro.html). After uploading your OpenAPI document, you can select the endpoints that apply to the workflow step. (The same endpoint might apply across multiple products in an API, and this approach allows you to single-source your reference documentation.)

For each workflow step, Blobr also includes a "Try it out" explorer so that developers can execute the endpoint directly on the page and see the result.

{% include random_ad2.html %}

## API tracking and monitoring {#api_tracking_monitoring}

With Blobr, endpoint usage is tracked in a granular way. API providers can price each product as desired, such as 1,000 calls for $5. As calls get made to the endpoint, a counter shows how many calls remain in the purchased plan.

This granular call tracking allows API providers and consumers to measure API usage. Further, if the workflow involves calling multiple endpoints, you can see how far along the users get in the workflow funnel. In this example, users will most likely make a lot of calls to see the available pets in the petstore and fewer calls to actually buy the pets.

Blobr also allows you to monitor API activity through API logs. Monitoring helps both API providers and consumers to debug, access, and filter call errors, as well as troubleshoot issues in real time. API consumers can also replay their calls directly from the portal.

{% include ads.html %}

## Monetization models {#monetization_models}

With Blobr, you can choose from different monetization models: subscription based, tiered, or metered models. For each model, the monetization is either based on the number of API calls made or, with custom units, defined by the API provider. The custom units can include the number of users, the amount of data processed, or other options. Flexibility with custom units provides a way to bring the price and value to the user closer together.

{% include random_ad1.html %}

If your API isn't monetized at all, you can use Blobr for free with all the features needed to replace your documentation solution or create your own store.

## API changelogs and personalized release notes {#changelogs_and_release_notes}

When there are changes to the API, rather than broadcasting all changes to a general release notes page, the changelogs are delivered on a product-by-product basis so that changes only go to the relevant consumers who have purchased those products. The following screens demonstrate how Blobr shows changes to users:

<figure><img src="{{site.media}}/blobr-product-update-differences.png" alt="Product update showing differences" style="border: 1px solid #dedede"/><figcaption><b>Figure 4.</b> Product update &mdash; differences. This screen shows the differences to API providers when changing the version of an API in a product. Note the tags that read "New," "Modified," and "Deleted." API providers can review everything that has changed from version to version.</figcaption></figure>

The following screenshot shows the changelog that API consumers see.

<figure><img src="{{site.media}}/blobr-product-changelog.png" alt="Product changelog" style="border: 1px solid #dedede" /><figcaption><b>Figure 5.</b> Product changelog. Those who consuming the product (and who will be impacted by the API changes) can see what's new, modified, or deleted through these changelogs.</figcaption></figure>

If desired, Blobr can automatically send personalized changelogs to API consumers. These personalized changelogs avoid broader communications in which only a small subset of information is actually relevant to the API consumer.

## Reasons for Blobr's unique approach to API portals {#unique_aproach}

What's the story behind Blobr's unique approach to API portals? Alexander Airvault, co-founder and CEO of Blobr, said that previously, when he worked with API customers, they often struggled to understand how to implement the APIs. The APIs were usually more technical than the customers could follow.

Compounding the difficulty, the traditional model of API portals mostly provides a long list of endpoints for the user to figure out on their own. To reduce some of the complexity, Alexandre started creating "subscriptions" to different parts of the API for customers. That's how he got the idea of Blobr.

{% include image_ad_right.html %} Blobr's approach _productizes_ the use cases of your API, making it clear how to use your API to achieve various goals. There's no ambiguity about what you can do with the API or which endpoints you need to accomplish each goal. This granularity also allows API consumers to focus only on the use cases of the API they actually need.

Dividing the API into distinctly packaged products not only eliminates complexity but avoids information overload for API consumers. The consumers see only the endpoints and workflows related to their product use cases.

## One platform that brings it all together {#one_platform_with_everything}

Although we've talked about various pieces of the Blobr API portal, let's step back and consider the platform as a whole. Blobr provides multiple elements that are critical to distribute and monetize APIs. For example, Blobr combines building blocks that include API authentication, limits, monitoring, documentation, monetization, and analytics _all in the same platform_. Blobr gives you workflow API documentation and testing, API monetization linked to real-time usage and authentication, personalized changelogs with each API update, API logs and error replay, and more.

The combination of all of these necessary elements, working together on the same platform, provides a seamless experience for both API providers and consumers through the whole API lifecycle &mdash; from pre-sales to implementation, post-sales, and beyond. It's a case where the overall platform is more valuable than the sum of each of the parts.

## The story behind Blobr {#blobr_story}

Blobr is named after [the blob](https://en.wikipedia.org/wiki/Physarum_polycephalum) &mdash; a unicellular organism best described as slime mold. Neither plant, animal, or fungus, the blob has some unique properties. If you cut a blob in half, each part continues to grow as a discrete organism. Conversely, if you push two blobs together, they merge into a single blob. The blob's division or unification provides a living example of how APIs can be chunked into separate products, or how the same API endpoint can be merged into multiple products. (Blob's have other unique properties that also make them an appealing metaphor.)

Blobr is in the startup phase. Based in France, Blobr received VC funding and began commercializing operations in January of 2022. As of May 2022, the company already has more than 100 paying customers. To learn more about Blobr, see [https://www.blobr.io/](https://www.blobr.io/){: rel="nofollow"}.

{% include ads.html %}
