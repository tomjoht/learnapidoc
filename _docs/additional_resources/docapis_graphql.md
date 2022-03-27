---
title: 'Documenting GraphQL APIs'
permalink: docapis_graphql_apis.html
course: "Documenting REST APIs"
weight: 14.02
sidebar: docapis
section: resources
path1: resources.html
last-modified: 2019-07-01
---

{: .note}
This article was written by Casey Armstrong on July 1, 2019, and originally titled "If I am learning to write developer documentation, should GraphQL be on my radar?" Casey Armstrong graduated from the Masters and Technical Professional Writing program at Portland State University and now works at a VR company on the East coast. You can follow Casey Armstrong's blog on Medium at [https://medium.com/@CrowdsourcingKC](https://medium.com/@CrowdsourcingKC) and on Twitter [@CrowdsourcingKC](https://twitter.com/CrowdsourcingKC).

*Summary: GraphQL, a query language developed by Facebook, is an alternative to REST that is rising in popularity. Exactly how does GraphQL differ from REST, and what documentation strategies and conventions should you follow when documenting a GraphQL project? This article explores the GraphQL query language, its use cases, its tools, what developers need from its docs, and whether GraphQL is worth learning. Overall, learning GraphQL is a great way to specialize and stand out as a technical writer, but the technology is not as prevalent as other types of APIs.*

* TOC
{:toc}

## Introduction

<figure><a class="noCrossRef" href="https://unsplash.com/photos/69BTCuFDuDA"><img alt="Photo by Marat Gilyadzinov on Unsplash" src="{{site.media}}/graphqlradar.jpeg" alt="Should GraphQL be on your radar?" /></a><figcaption>Should GraphQL be on your radar?</figcaption></figure>

If you are like me, a budding technical writer, and you are just getting started with writing developer documentation, then you might already feel like you have a full plate in terms of learning new technologies. Alas, the evolving world of developer tools and API related technology has shown that it has absolutely no intention of slowing down for us!

{% include random_ad4.html %}

However, we need not fear this evolution, because behind every new popular technology, there is a crowd-of-enthusiasts behind it. Furthermore, with that crowd-of-enthusiasts comes a large pile of information, a pile that we, as technical writers, can pick-through, distill, and use to orient ourselves.

This post aims to guide you through the pile I found for GraphQL, turn it into an introduction to the topic, and answer the question, "As an API writer, should this be on my radar?"

## History

GraphQL was released to the public in 2015 as an open-source project by Facebook (after it had been used internally for several years as a custom solution for working with the company’s large datasets). Fast-forward to today, and GraphQL is hosted by the Linux Foundation at [GraphQL.org](https://graphql.org/).

Note: The Open API specification is also [hosted by the Linux Foundation](https://www.openapis.org/about).

{% include ads.html %}

## Growth

GraphQL has a growing user-base, and it powers "hundreds of billions of API calls a day." It is used by organizations as prominent as The New York Times, PayPal, Walmart, Pinterest, and Airbnb.

Here are some indicators of growth I found:

*   In the past 3 years, Programmable Web added [at least 46 GraphQL API](https://www.programmableweb.com/search/graphql) listings and over 100 articles mentioning the technology; some of them from large companies like Yelp, GitHub, and some from open-source products like [Rocketchat](https://rocket.chat/).
*   Across the US, there are almost 70 groups on Meetup.com that have "GraphQL" in their title.
*   Drupal has been collecting [GraphQL usage statistics](https://www.drupal.org/project/usage/graphql) for Drupal-powered sites showing an upward trend.

And, take a look at Google Trends:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/docapis_graphql.html] to view the content.*
{% endif %}

{% if site.format == "web" %}
<script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/1845_RC02/embed_loader.js"></script> <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", {"comparisonItem":[{"keyword":"graphql","geo":"US","time":"today 5-y"}],"category":0,"property":""}, {"exploreQuery":"date=today%205-y&geo=US&q=graphql","guestPath":"https://trends.google.com:443/trends/embed/"}); </script>

{% endif %}

{% include random_ad2.html %}

## What is GraphQL?

The first thing to note is that GraphQL is a set of API technologies that take a different approach than REST, SOAP, or other [software architectural styles](https://www.tutorialspoint.com/webservices/web_services_architecture.htm).

As far as definitions go, according to the [GraphQL Foundation](https://graphql.org/),

> GraphQL is a query language for APIs and a runtime for fulfilling those queries with your existing data. GraphQL provides a complete and understandable description of the data in your API, gives clients the power to ask for exactly what they need and nothing more, makes it easier to evolve APIs over time, and enables powerful developer tools.

That is a mouthful, so for a good explanation of what this means at the technical level, check out the article "[GraphQL as your Service Layer](https://medium.com/@emasuriano/graphql-as-your-service-layer-62ecf95ac74a)" which breaks this definition down step-by-step.

Otherwise, let’s take a look at the basics with a sample query and what comes back with a (pretend) voice assistant API with Siri as the star:

1. Query the object "assistant" and return their name.

   <img src="{{site.media}}/graphqlkcimage3.jpeg" />

2. You would get back the name "Siri" as a string.

   <img src="{{site.media}}/graphqlkcimage2.jpeg" />

3. Next, looking at a request for related objects, we can request info about Siri’s colleagues:

   <img src="{{site.media}}/graphqlkcimage1.jpeg" />

4. We get back an array of Siri’s colleagues.

   <img src="{{site.media}}/graphqlkcimage4.jpeg" />

(Note: I modeled this after James Scott’s example in this great talk, [Is GraphQL Really "Self-documenting"?](https://www.youtube.com/watch?v=rKzHc1hozB8&feature=youtu.be&t=579).)

Two other topics that play a role in defining GraphQL are mutations and graph theory:

* **Mutations:** Mutations create, update, and delete data stored in the backend. (Note: They follow the same syntax as queries.)

* **Thinking in Graphs/Graph-Theory:** [According to Facebook](https://code.fb.com/core-data/graphql-a-data-query-language/), GraphQL is "hierarchical in nature," and it works well with "graph structured data stores." Furthermore, it is all about the relationships between objects, which is the focus of [graph theory](https://en.wikipedia.org/wiki/Graph_theory).

## GraphQL’s advantage over REST

Apparently, developers like GraphQL for a reason. Let’s take a closer look...

The GraphQL foundation claims that their unique approach allows developers to deliver appropriate data to apps faster (on slow connections) and in some ways makes life easier for developers by requiring fewer requests for data and by delivering more predictable and stable results to those requests.

Furthermore, [Howtographql.com](https://www.howtographql.com/basics/1-graphql-is-the-better-rest/) claims that "REST APIs have shown to be too inflexible to keep up with the rapidly changing requirements of the clients that access them (and ...) GraphQL (…) solves many of the shortcomings and inefficiencies that developers experience when interacting with REST APIs." That same tutorial site features a video showing examples of these points:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/docapis_graphql.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/T571423fC68" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{% endif %}

Here’s a description:

*   **Overfetching:** REST API’s sometimes force you to download more data than needed, whereas GraphQL can return only what is needed.
*   **Underfetching:** REST API endpoints sometimes don’t offer enough information, forcing the developer to make several more requests.
*   **Rapid Product Iterations:** REST APIs often have to restructure endpoints according to new client needs. GraphQL is more flexible in this regard.
*   **More analytical insight available:** With GraphQL queries, the API developer can get a better look at what data users are directly requesting. Knowing this can help in the API’s evolution and has implications for overall performance.

Some GraphQL enthusiasts have also claimed that GraphQL APIs require less or no documentation, but [this is a continuing debate](https://www.youtube.com/watch?v=rKzHc1hozB8) which we will look at later in this article.

## Tools

Closely associated with GraphQL are the editors and the extensions and packages used in IDE editors (e.g., [VS code](https://marketplace.visualstudio.com/items?itemName=Prisma.vscode-graphql), [atom](https://atom.io/packages/search?utf8=%E2%9C%93&q=keyword:graphql), [GraphiQL](https://www.gatsbyjs.org/docs/introducing-graphiql/)) for structuring GraphQL queries.

For a good article on one of these tools, check out "[GraphiQL: GraphQL’s Killer App](https://medium.com/the-graphqlhub/graphiql-graphql-s-killer-app-9896242b2125)."

## API examples

It’s not enough to read about GraphQL; it is also worth looking at popular projects, examples, and stories of who is using it and what it can do:

*   [Yelp API docs](https://www.yelp.com/developers/graphql/guides/intro)
*   [Paypal: "GraphQL: A success story for PayPal Checkout"](https://medium.com/paypal-engineering/graphql-a-success-story-for-paypal-checkout-3482f724fb53)
*   [Shopify example](https://help.shopify.com/en/api/getting-started/shopify-and-graphql)
*   [Pokemon (Demonstration Only)](https://github.com/lucasbento/graphql-pokemon)
*   [Dungeons and Dragons Example (Video/Talk)](https://www.youtube.com/watch?v=lyJebJuG_sk)
*   [A List of Public GraphQL APIs](https://github.com/APIs-guru/graphql-apis)

## Wait, this still needs documentation, right?

While GraphQL is a topic that is shrouded behind a wall of developers, a few career technical writers have also taken a closer look at it. By far, the clearest explanation I could find comes from Chris Ward.

On the Codeship blog, [Chris writes](https://blog.codeship.com/documenting-graphql/):

> As a technical writer, I was intrigued by the claim that GraphQL reduces the time you need to spend on documenting an API and reduces the amount of documentation your application needs." He goes on to explain, "The role of documentation with a REST API is to explain the individual endpoints, what function they perform, and the parameters a developer can pass to them. With a GraphQL API, you describe the data types, fields, and the interaction points between them, and a developer can assemble an appropriate query to get the information they need. With both technologies, you document components but from different perspectives.

So, we see that this is an interesting point. The different perspectives he is talking about is looking at the endpoints with REST vs looking at the data itself with GraphQL (i.e., exactly what is requested).

{% include random_ad3.html %}

Chris then explains what documentation is needed for GraphQL and why it’s needed:

> Documenting API endpoints explains how individual tools work, explaining how to use those tools together is a whole other area of documentation effort. This means there is still need for documentation efforts in on-boarding, getting started guides, tutorials, and conceptual documentation. An application or tool is typically far more than just an API. (...) From a documentation perspective, GraphQL is in essence, an API spec, much like other API specs like Swagger or API Blueprint. Granted, it’s much more tightly coupled to code than these specs, but this (directly) benefits developers more than writers or readers.

That technical writing is about much more than covering reference information is a good point. There will always be new users, new developers, users who don’t know what they want, and people who need to read the docs that are not developers.

This leads to Chris’s conclusion that tech writers are still needed here if only to continue to "bug (developers) about explaining (their) code."

James Scott, another technical writer, also sees a role for technical writers in the world of GraphQL. You can see his concise and very helpful talk here:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/docapis_graphql.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/rKzHc1hozB8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{% endif %}

Nevertheless, It might still be a good idea for technical writers to worry at least a little bit about GraphQL because several devs are predicting that it will [become more popular than REST in the future](https://dev.to/martijnwalraven/why-i-believe-graphql-will-come-to-replace-rest), and, if these predictions become true, any kind of change like that won’t come without some adjustments to workflows, roles, and how writers are viewed by the software development teams they work with, etc.

## Are GraphQL documentation skills currently in demand?

I don’t have all of the information, but from what I’ve heard and seen so far, apparently not.

First, I asked one recruiter who focuses on API writers and programming writers, and they had not encountered any requests for the skillset.

Second, I made the rounds with job search websites, only finding a small number of technical writing jobs that specifically referenced GraphQL.

{% include image_ad_right.html %}

My guess is that maybe the movement is [driven by developers who decide to use it](https://medium.freecodecamp.org/so-whats-this-graphql-thing-i-keep-hearing-about-baf4d36c20cf), and they don’t think to get a tech writer involved? Or, GraphQL APIs are not being implemented enough to be spotted in job ads or by recruiters?

However, tech writers that work with it do exist! Here, for example, is a technical writer, Andrew Johnston, at Shopify talking about their process of documenting a GraphQL API at Shopify:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/docapis_graphql.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/uuzsEfLaGnU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{% endif %}

So, maybe the best way to think about it as a tech writer is that learning GraphQL is a way specialize and stand out, but you might be safe only knowing the basics, for now.

## Learning resources

While there are a lot of tutorials, blog-posts, and videos out there for GraphQL, I found these three to be the most helpful for someone new to the concepts involved:

1. This a fun, well-made, interactive course with videos, exercises, quizzes from a GraphQL community of experts: [https://www.howtographql.com/](https://www.howtographql.com/)
2. You can also learn from Lynda.com, "[GraphQL Essential Training](https://www.lynda.com/GraphQL-tutorials/GraphQL-Essential-Training/614315-2.html)." This course, however, does requires some technical knowledge up-front. (Note: [Lynda.com is often free with a library card](https://www.lynda.com/press/pressrelease?id=4063&fbclid=IwAR3wk8unKpqvOA3rapAFQdKCpVmY-RJBcFXboWOxWVagflECeV_RsZPgq1w), if you can find an access point through your library’s website. Here is an example of this from the [Carson City Library](https://www.carsoncitylibrary.org/research/lynda-com?A=SearchResult&SearchID=9365794&ObjectID=11972268&ObjectType=35) in Nevada.)
3. [GraphQL’s own documentation](https://graphql.org/learn/) is well put together.

## Bonus resources

*   Learn to Use [GraphQL with Postman](https://www.codetraveler.io/2019/01/12/how-to-use-postman-with-a-graphql-api/).
*   Techbeacon put together a [list of articles and resources worth exploring](https://techbeacon.com/app-dev-testing/practical-guide-graphql-future-apis).

## Getting social

*   The GraphQL foundation website has a list of different ways to connect with others interested in the technology as a [comprehensive list on their site](https://graphql.org/community/).
*   Be sure to check [Meetup.com](https://www.meetup.com/) for a GraphQL meetup near you. (I went to one few weeks ago; it was great!)
*   Follow [Graph QL on Twitter](https://twitter.com/GraphQL).
*   Talk about it [on Discord](https://discordapp.com/invite/0ZcbPKXt5bZiQhB5).
