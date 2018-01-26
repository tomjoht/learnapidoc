---
title: 'Overview for publishing API docs'
permalink: /pubapis_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.0
section: publishingapis
path1: /publishingapis.html
---

In earlier parts of this course, I used a simple [Weather API from Mashape](https://market.mashape.com/fyhao/weather-13) to demonstrate how to use a REST API. Now I'll explore various tools to publish API documentation, also using this same Mashape Weather API as an example.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Video about publishing tools for API docs

If you'd like to view a presentation I gave to the [Write the Docs South Bay chapter](https://www.meetup.com/Write-the-Docs-SF/events/246427319/) on this topic, you can view it here:

<iframe width="640" height="360" src="https://www.youtube.com/embed/__vSXJn-JQo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

(For more details about this post, see my [writeup here](http://idratherbewriting.com/2018/01/19/wtd-south-bay-publish-api-documentation-presentation/).)

## Why focus on publishing API docs?

The first question about a focus on publishing API documentation might be, *why?* What makes publishing API documentation so different from publishing other kinds of documentation such that it would merit its own section? How and why does the approach with publishing API docs need to differ from the approach for publishing regular documentation?

{% include random_ad.html %}

This is a valid question that I want to answer by telling a story. When I first transitioned to API documentation, I had my mind set on using DITA, and I converted a large portion of my content over to it.

However, as I started looking more at API documentation sites, primarily [those listed on Programmableweb.com](http://www.programmableweb.com/apis/directory), which maintains the largest directory of web APIs, I didn't find many DITA-based API doc sites. In fact, it turns out that almost none of the API doc sites listed on Programmable Web even use tech comm authoring tools.

Despite many advances with single sourcing, content re-use, conditional filtering, and other features in help authoring tools and content management systems, almost no API documentation sites on Programmableweb.com use them. Why is that? Why has the development community implicitly rejected tech comm tools and their many years of evolution?

Granted, there is the occasional HAT, as with [Photobucket's API](http://bit.ly/photobucketlongurl), but they're rare. And it's even more rare to find an API doc site that structures the content in DITA (so far, [CouchDB](http://docs.couchdb.org/en/2.1.0/) is the only one I've come across).

I asked a recruiter (who specializes in API documentation jobs in the Bay area) whether it was more advantageous to become adept with DITA or to learn a tool such as a static site generator, which is more common in the API space.

My recruiter friend knows the market &mdash; especially the Silicon Valley market &mdash; extremely well. Without hesitation, he urged me to pursue the static site generator route. He said many small companies, especially startups, are looking for writers who can publish documentation that looks beautiful, like the many modern web outputs on Programmableweb.

His response, and my subsequent emphasis on static site generators, led me to understand why traditional help authoring tools aren't used often in the API doc space. Here are 5 reasons:

### 1. The HAT tooling doesn't match developer workflows and environments

If devs are going to contribute to docs (or write docs entirely themselves), the tools need to fit their own processes and workflows. Their tooling is to treat [doc as code](pubapis_docs_as_code.html), committing it to [version control](pubapis_version_control.html), building outputs from the server, etc. They want to package the documentation in with their other code, checking it into their repos, and automating it as part of their build process.

Why are engineers writing documentation in the first place, you might ask? Well, sometimes you really need engineers to contribute because the content is so technical, it's beyond the domain of non-specialists. If you want engineers to get involved, especially to write, you need to use developer tooling.

### 2. HATs won't generate docs from source

Ideally, engineers want to add annotations in their code and then generate the doc from those annotations. They've been doing this with Java and C++ code through Javadoc and Doxygen for the past 20 years (for a comprehensive list of these tools, see [Comparison of document generators in Wikipedia](https://en.wikipedia.org/wiki/Comparison_of_documentation_generators)).

Even for REST APIs, there are tools/libraries that will auto-generate documentation from source code annotations (such as from Java to a OpenAPI spec through [Codegen](https://swagger.io/swagger-codegen/)), but it's not something that HATs can do.

### 3. API doc follows a specific structure and pattern not modeled in any HAT

Engineers often want to push the reference documentation for APIs into well-defined templates that accommodate sections such as endpoint parameters, sample requests, sample responses, and so forth. (I discuss these reference sections in [Documenting endpoints](docendpoints.html).)

If you have a lot of endpoints, you need a system for pushing the content into standard templates. Ideally, you should separate out the various sections (description, parameters, responses, etc.) and then compile the information through your template when you build your site. Or you can use a specification such as [OpenAPI](pubapis_swagger_intro.html) to populate the information into a template. You can also incorporate custom scripts. However, you don't often have these options in HATs, since you're mostly limited to what workflows and templates are supported out of the box.

### 4. Many APIs have interactive API consoles, allowing you to try out the calls

You won't find an [interactive API console](pubapis_design_patterns.html#interactive_api_explorers) in a HAT. By interactive API console, I mean you enter your own API key and values, and then run the call directly from the web pages in the documentation. ([Flickr's API explorer](https://www.flickr.com/services/api/explore/?method=flickr.photos.search) provides one such example of this interactivity, as does [Swagger UI](pubapis_swagger.html).) The response you see from this explorers is from your own data in the API.

### 5. With APIs, the doc *is* the product's interface, so it has to be attractive enough to sell the product.

Most output from HATs look dated and old. They look like a relic of the pre-2000 Internet era. (See [Tripane help and PDF files: past their prime?](http://www.robertdesprez.com/2013/01/18/tripane-help-and-pdfs-time-to-move-on/) from Robert Desprez.)

With API documentation, often times the documentation *is* the product's interface &mdash; there isn't a separate product GUI (graphical user interface) that clients interact with. Because the product's GUI is the documentation, it has to be sexy and awesome.

Most tripane help doesn't make that cut. If the help looks old and frame-based, it doesn't instill much confidence toward the developers using it.

## A new direction: Static site generators

Based on all of these factors, I decided to put DITA authoring on pause and try a new tool with my documentation: [Jekyll](pubapis_jekyll.html). I've come to love using Jekyll, which allows you to work primarily in Markdown, leverage Liquid for conditional logic, and initiate builds directly from a repository.

I realize that not everyone has the luxury of switching authoring tools, but when I made the switch, my company was a startup, and we had only 3 authors and a minimal amount of legacy content. I wasn't burdened by a ton of legacy content or heavy processes, so I could innovate.

Jekyll is just one documentation publishing option in the API doc space. I enjoy working with it's [code-based approach](pubapis_docs_as_code.html), but there are [many different options and routes](pubapis_apilist.html) to explore.

Now that I've hopefully established that traditional HATs aren't the go-to tools with API docs, let's explore various ways to publish API documentation. Most of these routes will take you away from traditional tech comm tools more toward more developer-centric tools.
