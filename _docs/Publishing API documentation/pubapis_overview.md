---
title: 'Publishing API docs'
permalink: /pubapis_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.5
section: publishingapis
---

In earlier parts of this workshop, we used a simple [Weather API from Mashape](https://www.mashape.com/fyhao/weather-13) to demonstrate how to use a REST API. Now we'll explore various tools to publish information from the same Mashape Weather API.

## Why focus on publishing API docs?
The first question about a focus on publishing API documentation might be, *why?* What makes publishing API documentation so different from other kinds of documentation that it merits its own section? How and why does the approach here need to differ from the approach for publishing regular documentation?

This is a valid question that I want to answer by telling a story.

## My story: Turning from DITA to Jekyll

When I first transitioned into developer and API documentation, I had my mind set on using DITA, and I converted a large portion of my content over to it.

However, as I started looking more at API documentation sites, primarily [those listed on Programmableweb.com](http://www.programmableweb.com/apis/directory), which maintains the largest directory of web APIs, I didn't find many DITA-based API doc sites. In fact, it turns out that almost none of the API doc sites listed on ProgrammableWeb even use tech comm authoring tools.

Despite many advances with single sourcing, content re-use, conditional filtering, and other features in help authoring tools and content management systems, almost no API documentation sites on Programmableweb.com use them. Why is that? Why has the development community outright rejected tech comm tools (and their 50 years of evolution)?

Granted, there is the occasional HAT, as with [Photobucket's API](https://pic.photobucket.com/dev_help/WebHelpPublic/Content/PB%20API%20Introduction.htm), but they're rare. And I've not yet found an API doc site that structures all content in DITA.

I asked a recruiter (who specializes in API documentation jobs) whether it was more advantageous to become adept with DITA or to learn a tool such as a static site generator, which is more common in this space.

My recruiter friend knows the market &mdash; especially the Silicon Valley market &mdash; extremely well. He urged me to look at the static site generator route. He said that many small companies, especially startups, are looking for writers who can publish documentation that looks beautiful, like the many modern web outputs on Programmableweb.

## Five reasons why developer doc doesn't use HATs

I think there are at least five reasons why developers reject tech comm authoring tools:

### 1. The HAT tooling doesn't match developer workflows and environments

If devs are going to contribute or write docs, the tools need to fit their own development tools and workflows. Their tooling is to treat doc as code, committing it to source control, building outputs from the server, etc. They want to package the doc in with their other code, check it into their repos, and include it in the builds.

Why are engineers writing in the first place, you might ask? Well, sometimes you really need engineers to contribute because the content is so technical, it's beyond the domain of non-specialists. If you want engineers to get involved, you need to use developer tooling.

### 2. HATs won't generate docs from source

Ideally, engineers want to add annotations in their code and then simply generate the doc from those annotations. They've been doing that with Java and C++ doc for the past 20 years. There are quite a few tools in the developer doc space that will auto-generate documentation from source code annotations, but it's not something that HATs or GUI doc tools do.

### 3. API doc follows a specific structure and pattern not modeled in any HAT

The reference documentation is pushed into well-defined templates, which list sections such as endpoint parameters, sample requests, sample responses, and so forth. Sometimes this template can be driven from the source code itself.

If you have a lot of endpoints, you need a system for pushing the content into these templates. There are many templating frameworks that handle these scenarios nicely. Other times you need custom scripts. Either way, not many HATs handle this kind of template-driven publishing scenario.

### 4. Many APIs have interactive API consoles, allowing you to try out the calls.

You won't find an interactive API console in a HAT. By interactive API console, I mean you enter your own API key and values, and then run the call directly in the documentation. The response you see is from your own data in the API.

### 5. With APIs, the doc *is* the interface, so it has to be sexy enough to sell the product.

Most output from HATs look dated and old. They look like a relic of the pre-2000 Internet era.

With API documentation, often times the documentation *is* the product &mdash; there isn't a separate GUI that clients interact with. That GUI is the documentation, so it has to be sexy and awesome.

Most tripane help doesn't make that cut. If the help looks old and frame-based, it doesn't instill much confidence in the developers using it.

## A new direction

Based on all of these factors, I decided to put DITA authoring on pause and try a new tool with my documentation: Jekyll. I've come to really love using Jekyll, working primarily in Markdown, leveraging Liquid for conditional logic, and committing updates to a repository. I realize that not everyone has the luxury of switching authoring tools, but since my company is somewhat small, and I'm one of three writers, I wasn't burned by a ton of legacy content or heavy processes, so I could innovate.

Jekyll is just one documentation publishing option in this space. I personally enjoy working with a more code-based approach, but there are many different options and routes to explore.

Now let's explore various ways to publish API documentation. Most of these routes will take you away from traditional tech comm tools and publishing strategies.
