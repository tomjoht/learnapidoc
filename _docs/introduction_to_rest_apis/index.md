---
title: "Documenting APIs: A guide for technical writers"
permalink: /index.html
sidebar: docapis
type: homepage
path: Introduction to REST APIs
section: introtoapis
path1: /docapis_introtoapis.html
weight: 1.0
class: first
redirect_from:
- /restapicourse2-0/
---

In this course on writing documentation for REST APIs, instead of just talking about abstract concepts, I contextualize REST APIs with a direct, hands-on approach.

You'll learn about API documentation in the context of using some simple weather APIs to put a weather forecast on your site.

As you use the API, you'll learn about endpoints, parameters, data types, authentication, curl, JSON, the command line, Chrome's Developer Console, JavaScript, and other details associated with REST APIs.

The idea is that rather than learning about these concepts independent of any context, you learn them by immersing yourself in a real scenario while using an API. This makes these tools and technologies more meaningful.

* TOC
{:toc}

## About REST APIs

In a nutshell, REST APIs (which are a type of web API) involve requests and responses, not too unlike visiting a web page. You make a request to a resource stored on a server, and the server responds with the requested information. The protocol used to transport the data is HTTP. "REST" stands for representational state transfer.

<figure>
{% if site.format == "pdf" or site.format == "kindle" %}<img src="images/restapi_apidoc.png" alt="Response and request model for REST APIs" />
{% elsif site.format == "web" %}<img class="medium" src="images/restapi_apidoc.svg" alt="Response and request model for REST APIs" />
{% endif %}
<figcaption>REST APIs involve requests and responses over HTTP protocol</figcaption></figure>

I dive more into the principles of REST in [What is a REST API?](docapis_what_is_a_rest_api.html) In your REST API documentation, you describe the various endpoints available, their methods, parameters, and other details, and you also document sample responses from the endpoints.

## From practice to documentation

In this course, after you practice using an API like a developer, you'll then shift perspectives and "become a technical writer" tasked with documenting a new endpoint that has been added to an API.

As a technical writer, you'll tackle each element of a reference topic in REST API documentation:

1. [Resource descriptions](docapis_resource_descriptions.html)
2. [Endpoints and methods](docapis_resource_endpoints.html)
3. [Parameters](docapis_doc_parameters.html)
4. [Request example](docapis_doc_sample_requests.html)
5. [Response example](docapis_doc_sample_responses_and_schema.html)

Diving into these sections will give you a solid understanding of how to document REST APIs. You'll also learn how to document the [non-reference sections for an API](docnonref.html), such as the [getting started](docapis_doc_getting_started_section.html), [status and error codes](docapis_doc_status_codes.html), and request [authorization](docapis_more_about_authorization.html) sections.

{% include random_ad.html %}

Finally, you'll dive into different ways to [publish REST API documentation](publishingapis.html), exploring tools and specifications such as [GitHub](pubapis_github_wikis.html), [Jekyll](pubapis_jekyll.html), and other [Docs-as-code approaches](pubapis_docs_as_code.html). You'll learn how to leverage templates, build interactive API consoles so users can try out requests and see responses, and learn how to manage your content through [version control](pubapis_version_control.html).

I also dive into specifications such as the [OpenAPI specification](pubapis_openapi_tutorial_overview.html) and [Swagger](pubapis_swagger_intro.html), which provides tooling for the OpenAPI specification. Additionally, I included a section on [documenting native library APIs](nativelibraryapis.html) and generating [Javadoc](nativelibraryapis_create_javadoc.html). Throughout it all, I put these tools in a real, applicable context with examples and demos.

## Course organization

This course is organized into the following sections:

*  [Introduction to REST APIs](docapis_introtoapis.html)
*  [Using a REST API like a developer](likeadeveloper.html)
*  [Documenting endpoints](docendpoints.html)
*  [Testing your API documentation](testingdocs.html)
*  [Documenting non-reference sections](docnonref.html)
*  [Publishing your API documentation](publishingapis.html)
*  [OpenAPI specification and Swagger](restapispecifications.html)
*  [Documenting native library APIs](nativelibraryapis.html)
*  [Getting a job in API documentation](jobapis.html)
*  [Resources and glossary](resources.html)

You don't have to read the sections in order &mdash; feel free to skip around as you prefer. But some of the earlier sections (such as the section on [Using a REST API like a developer](likeadeveloper.html), and the section on [documenting endpoints](docendpoints.html)) follow a somewhat sequential order with the same weather API scenario.

Because the purpose of the course is to help you learn, there are many activities that require hands-on coding and other exercises. Along with the learning activities, there are also conceptual deep dives, but the focus is always on *learning by doing*. Where there are hands-on activities, I include an activity graphic like this:

{% include activity.html %}

{: .note}
I refer to the content here as a "course" instead of a book or a website, primarily because I include a lot of exercises throughout in each section, and I find that people who want to learn API documentation prefer a more hands-on "course" experience. However, this content is just as much a book or website as it is a course.

{% include random_ad.html %}

## No programming skills required

As for the needed technical background for the course, you don't need any programming background or other prerequisites, but it will help to know some basic HTML, CSS, and JavaScript.

If you do have some familiarity with programming concepts, you might speed through some of the sections and jump ahead to the topics you want to learn more about. This course assumes you're a beginner, though.

Some of the code samples in this course use JavaScript. JavaScript may or may not be a language that you actually use when you document REST APIs, but most likely there will be some programming language or platform that becomes important to know.

JavaScript is one of the most useful and easy languages to become familiar with, so it works well in code samples for this introduction to REST API documentation. JavaScript allows you to test out code by merely opening it in your browser (rather than compiling it in an IDE). I have a [quick crash-course in JavaScript here](http://idratherbewriting.com/javascript/).

## What you'll need

Here are a few things you'll need to do the exercises in this course:

* **Text editor**. ([Atom editor](https://atom.io/) or [Sublime Text](http://www.sublimetext.com/) are good options, and they work on both Mac and Windows.
* **Chrome browser**. [Chrome](https://www.google.com/chrome/browser/desktop/index.html) provides a Javascript Console that works well for inspecting JSON, so we'll be using this browser. [Firefox](https://www.mozilla.org/en-US/firefox/) works well too if you prefer that.
* **Postman**. [Postman](http://www.getpostman.com/) is an app that allows you to make requests and see responses through a GUI client.
* **curl**. [curl](http://curl.haxx.se/) is essential for making requests to endpoints from the command line. Mac computers already have curl installed. Windows users should follow the instructions for installing curl [here](http://www.confusedbycode.com/curl/#downloads).
* **Git**. [Git](https://git-scm.com/) is a version control tool developers often use to collaborate on code. See [Set Up Git](https://help.github.com/articles/set-up-git/) for more details.
* **GitHub account**. [GitHub](https://github.com) will be used for various activities and is commonly used as an authentication service for developer tools. If you don't already have a GitHub account, sign up for one.
* **Stoplight App**. [Stoplight](https://next.stoplight.io/) provides visual modeling tools for working with the OpenAPI specification. Create a Stoplight account and download the [Desktop app](https://github.com/stoplightio/desktop/releases/tag/v3.6.1) here.

## Will this course help you get a job in API documentation?

The most common reason people take this course is to transition to an API documentation. This course will help you make that transition, but you can't just passively read through the content. You've got to do all the activities outlined in each section. These activities are key to building experience and credibility with a portfolio. These in-depth activities are identified with the word "Activity" in the topic title. There is usually one main activity for each section:

* [Activity: Find an Open Source Project](docapis_find_open_source_project.html)
* [Activity: Critique or create an API reference topic](docapis_api_reference_activity.html)
* [Activity: Test the docs in your Open Source project](testingdocs_activity.html)
* [Activity: Manage content in a GitHub wiki](pubapis_github_wikis.html)
* [Activity: Create an OpenAPI specification document](pubapis_openapi_activity.html)
* [Activity: Create your own Swagger UI display](pubapis_swagger_ui_activity.html)
* [Activity: Generate a Javadoc from a sample project](nativelibraryapis_create_javadoc.html)

{% include random_ad2.html %}

## Video recordings

For video recordings of this course, see the [Recorded Video Presentations](docapis_course_videos.html).

## Slides

I have various slides that cover different sections of this course. See the following:

* [Intro to API documentation](http://idratherbewriting.com/intro-to-api-documentation/index.html)
* [Non-reference content in API docs](http://idratherbewriting.com/nonref-content-api-docs/#/)
* [OpenAPI and Swagger](http://idratherbewriting.com/openapi-and-swagger/#/)
* [Publishing API documentation](http://idratherbewriting.com/publishing-api-docs/#/)

(By the way, these slides are all hosted on GitHub at https://github.com/tomjoht/. I use [RevealJS](https://github.com/hakimel/reveal.js/) for slides, which lets me create the slide content in HTML.)

## Stay updated

If you're following this course, you most likely want to learn more about APIs. I publish regular articles that talk about APIs and strategies for documenting them. You can stay updated about these posts by subscribing to my free newsletter at [https://tinyletter.com/tomjoht](https://tinyletter.com/tomjoht).
