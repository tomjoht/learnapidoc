---
title: "Challenging factors"
permalink: /pubapis_challenging_factors.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.9
section: designpatterns
---

A lot of the solutions we've looked at tend to break down when you start applying more difficult requirements in your tech comm scenario. If you have to deal with some of these challenges, you may have to resort to more traditional tech comm tooling.

* Translation
* Content re-use
* Versioning
* Authentication
* PDF

You can handle all of this through a custom platform such as Jekyll, but it's not going to be a push-button experience. It will require a higher degree of technical skill and maneuvering.

With my Jekyll doc theme, I'm single sourcing one of my projects into about 9 different outputs (for different product lines and programming languages). Jekyll provides a templating language called Liquid that allows you to do conditional filtering, content re-use, variables, and more.

To handle PDF, I'm using a tool called Prince that converts a list of HTML pages into a PDF document, complete with running headers and footers, page numbering, and other print styling.

To handle authentication, I upload the content into a Salesforce site.com and use Salesforce as the authentication layer. It's my least favorite part of the solution, but a more integrated authentication will probably involve some engineering resources to help out.
