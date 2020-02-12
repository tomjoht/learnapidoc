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
