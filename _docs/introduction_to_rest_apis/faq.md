---
title: FAQ
permalink: /docapis_faq.html
course: "Documenting REST APIs"
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
weight: 1.99
---


Q:  Is it possible to author API documentation using DITA/XML or an XML editor (like Oxygen)? I saw your recommended list of tools in the [Publishing API docs](publishingapis.html) section, but it would be great if we could leverage existing tools.

:  Sure, you can use OxygenXML or similar tools and write your dev docs in DITA. However, for the reference content, if you're working with REST APIs, I recommend documenting the endpoints using the [OpenAPI spec](pubapis_swagger_intro.html). If documenting [class-based libraries](nativelibraryapis.html), then use [in-code annotations](nativelibraryapis_javadoc_tags.html) for that language. In the [current survey I'm running](https://www.questionpro.com/t/PGhS9ZgCFE) about dev doc trends, about 10% of people writing docs for devs use XML-based solutions, so you wouldn't totally be alone. However, if you're intending to solicit contributions from engineers, and you have a lively and engaged developer community who will actually be contributing to docs, then I do not recommend any XML solutions. Use [Markdown](pubapis_markdown.html) instead.

Q:  We use [Madcap Flare](https://www.madcapsoftware.com/products/flare/) but document our APIs in Swagger. We're considering dropping Flare and using [Readme.com](https://readme.com/) instead, which can import Swagger, but should we be looking at other tools? We also don't document just APIs, but have protocols we document outside of the APIs too.

: Flare is a much more robust tool for handling documentation than Readme.com. For example, last time I checked, Readme.com didn't even let you store content for re-use. There was a recent discussion in the #documenting-apis channel in [WTD Slack](https://www.writethedocs.org/slack/). More people seem to be abandoning Readme.com to pursue a more flexible platform. I asked for more details. One person said, "Outages, organizing content. I didn't use it much myself. ... After your reference specs and examples are in readme.io, you're limited in what you can get out. If nothing else, that's a mark against them." In short, sure Readme.com can import and display reference API content well (if you like the design), but if you're stuck using a simple editor for everything else and can't leverage more powerful tools for other doc management, life might get more challenging. That said, I'd recommend going with a [static site generator](https://www.staticgen.com/) for dev docs instead. It's the trend for a reason &mdash; way more fun, flexible, and engineering-oriented. Or look at some alternatives in this same hosted doc category -- [Developerhub.io](https://developerhub.io/), [Readthedocs.com](https://readthedocs.com/). If you're doing heavy localization and generating lots of PDF, prob. stick with your existing tool. Generate out your reference using Redoc, Swagger, or other specialized generators. 
