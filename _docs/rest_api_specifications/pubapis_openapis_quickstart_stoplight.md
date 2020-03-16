---
title: Create an OpenAPI Specification through Stoplight Studio
permalink: pubapis_openapis_quickstart_stoplight.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.3
section: restapispecifications
path1: /restapispecifications.html
---

You can create an OpenAPI specification document in several ways: (a) auto-generating it from annotations in your source code, (b) coding it by hand in an editor such as the Swagger Editor, and (c) using a GUI editor such as Stoplight Studio. In this tutorial, I'll walk through the third approach: using Stoplight Studio, a GUI editor for modeling your API, to quickly create your specification document.

{: .note}
Why use a GUI editor instead of coding everything by hand? All approaches have their merits. If you don't work with the OpenAPI specification enough to remember all the fields and syntax for each property, or if you're learning it for the first time, trying to get the syntax valid can be a real bear. Coding it by hand leads to many errors and forces you to spend a lot of time troubleshooting why the syntax is invalid. Using an editor helps you avoid these errors and focus instead on the content. For more, read this energetic post by Phil Sturgeon, who says Stoplight Studio is "an absolute game changer for API Design, and something I've been waiting for since I found out about it somewhere in 2018" &mdash; [Reinventing API Design with Stoplight Studio](https://phil.tech/2019/08/22/reinventing-api-design-stoplight-studio/).

* TOC
{:toc}

## Before we begin

Before we begin the tutorial, note the following:

* Stoplight Studio isn't the only GUI editor for creating OpenAPI specifications. You can also use [OpenAPI-GUI](https://mermade.github.io/openapi-gui/), [Apibldr](https://apibldr.com/), [SwaggerHub's visual editor](https://app.swaggerhub.com/help/ui/visual-editor), and others.
* Although Stoplight has a commercial offering, their editor is free. In general, you can use the editor to create a valid specification and then choose the tool you want to use to render it (e.g., Stoplight, Redoc, Spectacle, Swagger UI, or some other display framework). Once you have a valid OpenAPI specification, the spec is tool agnostic and can be rendered by many different frameworks.
* Stoplight's platform gives you a nice path toward more comprehensive documentation, including not only API reference but also [conceptual documentation](docconceptual.html) and [tutorial content](docapiscode.html). This lets you create a more seamless documentation experience for your readers.
* Stoplight is one of the sponsors of my site. I would still recommend this approach regardless of any site sponsorship. It makes sense to use an editor when your content must conform to a highly technical syntax.
* In this tutorial, we'll use sample information from the [OpenWeatherMap API](https://openweathermap.org/api) (more specifically, the [Current weather data endpoint](https://openweathermap.org/current)), which is the same API we've been using in this course uses in other areas, such as the [OpenAPI tutorial](pubapis_openapi_tutorial_overview.html).
* For full documentation, see the [Stoplight Studio documentation](https://stoplight.io/p/docs/gh/stoplightio/studio).

## Which version of Stoplight Studio?

Stoplight offers both a [web app](https://stoplight.io/p/studio) and a [desktop app](https://stoplight.io/studio) (Mac, Windows, or Linux). In this tutorial, you will use the web app version of Stoplight Studio because only the web app gives you the ability to publish your content online and try out requests (see [Studio Desktop vs. Studio Web](https://stoplight.io/p/docs/gh/stoplightio/studio/docs/Basics/web-vs-desktop-app.md)). However, you could also use the desktop app if desired (such as for scenarios where you're working with private, unreleased data).

{% include content/activities/stoplight_studio_tutorial.md %}
