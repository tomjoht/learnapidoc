---
title: "Documenting APIs: A guide for technical writers and engineers"
permalink: /index.html
sidebar: docapis
type: homepage
path: Introduction to REST APIs
section: introtoapis
path1: /docapis_introtoapis.html
weight: 1.0
redirect_from:
- /restapicourse2-0/
- /learnapidoc/introtoapis.html
---

In this course on writing documentation for REST APIs, instead of just talking about abstract concepts, I contextualize REST APIs with a direct, hands-on approach. You'll first learn about API documentation by using a simple weather API to put a weather forecast on your site.

As you use the API, you'll learn about endpoints, parameters, data types, authentication, curl, JSON, the command line, Chrome's Developer Console, JavaScript, and more. The idea is that rather than learning about these concepts independent of any context, you learn them by immersing yourself in a real scenario while using an API. Immersion in real scenarios makes these tools and technologies more meaningful.

We'll then transition into standards, tools, and specifications for REST APIs. You'll learn about the required sections in API documentation, analyze examples of REST API documentation from various companies, learn how to join an open-source project to get experience, and more.

* TOC
{:toc}

## About REST APIs

In a nutshell, REST APIs (which are a type of web API) involve requests and responses, not too unlike visiting a web page. You make a request to a resource stored on a server, and the server responds with the requested information. The protocol used to transport the data is HTTP. "REST" stands for Representational State Transfer.

<figure>
{% if site.format == "pdf" or site.format == "kindle" %}<img src="https://idratherbewritingmedia.com/images/api/restapi_apidoc.png" alt="Response and request model for REST APIs" />
{% elsif site.format == "web" %}<img class="medium" src="https://idratherbewritingmedia.com/images/api/restapi_apidoc.svg" alt="Response and request model for REST APIs" />
{% endif %}
<figcaption>REST APIs involve requests and responses over HTTP protocol</figcaption></figure>

I dive more into the principles of REST in [What is a REST API?](docapis_what_is_a_rest_api.html) In your REST API documentation, you describe the various endpoints available, their methods, parameters, and other details, and you also document sample responses from the endpoints.

## From practice to documentation

In this course, after you practice using an API like a developer, you'll then shift perspectives and "become a technical writer" tasked with documenting a new endpoint that engineers added to an API. As a technical writer, you'll tackle each element of a reference topic in REST API documentation:

1. [Resource descriptions](docapis_resource_descriptions.html)
2. [Endpoints and methods](docapis_resource_endpoints.html)
3. [Parameters](docapis_doc_parameters.html)
4. [Request example](docapis_doc_sample_requests.html)
5. [Response example](docapis_doc_sample_responses_and_schema.html)

Exploring each of these sections will give you a solid understanding of how to document REST APIs. You'll also learn how to document the [conceptual sections for an API](docconceptual.html), such as the [getting started tutorial](docapis_doc_getting_started_section.html), [status and error codes](docapis_doc_status_codes.html), [request authorization](docapis_more_about_authorization.html), and more.

{% include random_ad2.html %}

Finally, you'll dive into different ways to [publish REST API documentation](publishingapis.html), exploring tools and specifications such as [GitHub](pubapis_github_wikis.html), [Jekyll](pubapis_jekyll.html), and other [docs-as-code approaches](pubapis_docs_as_code.html). You'll learn how to leverage templates, build interactive API consoles so users can try out requests and see responses, and learn how to manage your content through [version control](pubapis_version_control.html).

We'll also dive into specifications such as the [OpenAPI specification](pubapis_openapi_tutorial_overview.html) and [Swagger UI](pubapis_swagger_intro.html) (which provides tooling for the OpenAPI specification). Additionally, you'll learn how to [document native library APIs](nativelibraryapis.html) and generate [Javadoc](nativelibraryapis_create_javadoc.html). Throughout this course, I put these concepts in real, applicable contexts with hands-on activities and demos.

## Who the course is for

The course primarily serves the following audiences:

* Professional technical writers looking to transition from GUI documentation into more API-focused documentation for developers.
* Students learning how to prepare themselves technically to succeed in the tech comm field, which is becoming more focused on developer documentation.
* Developers who are documenting their own APIs and want to know best practices for structure, terminology, and style with tech docs.

## Course organization

Descriptions of each section in this course are provided below:

{% assign sidebar = site.data.docapis %}
{% for folder in sidebar.folders %}
* **[{{folder.title}}]({{folder.jurl | remove_first: "/" }})**: {{folder.description}}
{% endfor %}

## Sequence and activities

You don't have to read the sections in order &mdash; feel free to skip around as you prefer. But some of the earlier sections (such as the section on [Using a REST API like a developer](likeadeveloper.html) and [Documenting endpoints](docendpoints.html)) follow a somewhat sequential order with the same weather API scenario.

Because the purpose of the course is to help you learn, there are many activities that require hands-on coding and other exercises. Along with the learning activities, there are also conceptual deep dives, but the focus is always on *learning by doing*. {% if site.format == "web" %}Where there are hands-on activities, I typically include this icon in the section title: <i class="fa fa-user-circle"></i>.{% endif %}

Other topics have the word "Activity" in the title. The activities are integrated into various sections, but you can also see a consolidated subset of activities in the [Workshop Activities](docapis_workshop_activities.html). These are the activities we do during live workshops.

I refer to the content here as a "course" instead of a book or a website, primarily because I include a lot of exercises throughout in each section, and I find that people who want to learn API documentation prefer a more hands-on "course" experience.

## Will this course help you get a job in API documentation?

The most common reason people take this course is to transition into API documentation. This course will help you make that transition, but you can't just passively read through the content. You need to do the activities outlined in each section, especially those topics that involve working with content from an [open-source project](docapis_find_open_source_project.html). These activities are crucial to building experience and credibility with a portfolio. I provide more details in [Getting an API documenation job and thriving](jobapis.html).

## No programming skills required

As for the needed technical background for the course, you don't need any programming background or other prerequisites, but it will help to know some basic HTML, CSS, and JavaScript.

If you do have some familiarity with programming concepts, you might speed through some of the sections and jump ahead to the topics you want to learn more about. This course assumes you're a beginner, though.

Some of the code samples in this course use JavaScript. JavaScript may or may not be a language that you actually use when you document REST APIs, but most likely there will be some programming language or platform that becomes important to know.

JavaScript is one of the most useful and easy languages to become familiar with, so it works well in code samples for this introduction to REST API documentation. JavaScript allows you to test code by merely opening it in your browser (rather than compiling it in an IDE). (I have a [quick crash-course in JavaScript here](https://idratherbewriting.com/javascript/) if you need it.)

{% include random_ad.html %}

## What you'll need

Here are a few tools you'll need to do the activities in this course:

* **Text editor**. [Atom editor](https://atom.io/) or [Sublime Text](http://www.sublimetext.com/) are good options, and they work on both Mac and Windows.
* **Chrome browser**. [Chrome](https://www.google.com/chrome/browser/desktop/index.html) provides a Javascript Console that works well for inspecting JSON, so we'll be using Chrome. [Firefox](https://www.mozilla.org/en-US/firefox/) works well too if you prefer that.
* **Postman**. [Postman](http://www.getpostman.com/) is an app that allows you to make requests and see responses through a GUI client.
* **curl**. [curl](http://curl.haxx.se/) is essential for making requests to endpoints from the command line. Mac computers already have curl installed. Windows users should follow the instructions for installing curl [here](http://www.confusedbycode.com/curl/). (Note: Choose one of the "free" versions to install curl.)
* **Git**. [Git](https://git-scm.com/) is a version control tool developers often use to collaborate on code. For Windows, see [https://gitforwindows.org/](https://gitforwindows.org/) to set up Git and the Git BASH terminal emulator. For Mac, see [Downloading Git](https://git-scm.com/download/mac) and also consider installing [iTerm2](https://iterm2.com/).
* **GitHub account**. [GitHub](https://github.com) will be used for various activities, sometimes to demonstrate the Git workflow and other times as an authentication service for developer tools. If you don't already have a GitHub account, sign up for one.
* **Stoplight account**. [Stoplight](https://next.stoplight.io/) provides visual modeling tools for working with the OpenAPI specification. Create a Stoplight account using your GitHub credentials. (You don't need the app.)
* **OpenWeatherMap API key**. We'll be using the [OpenWeatherMap API](https://openweathermap.org/) for some exercises. It takes a couple of hours for the OpenWeatherMap API key to become active, so it's best if you get the API key ahead of time &mdash; then when you get to the OpenWeatherMap API activities, you'll be all set. To get your (free) OpenWeatherMap API key, go to [https://openweathermap.org/](https://openweathermap.org/). Click **Sign Up** in the top nav bar and create an account. After you sign up, sign in and find your default API key from the developer dashboard. It’s under the API Keys tab. Copy the key into a place you can easily find it.

## Video recordings

For video recordings of this course, see the [Video recordings of API doc workshops](docapis_course_videos.html). The most recent full-length video of the entire course is a full-day API workshop I gave in Raleigh, North Carolina, in April 2019. The video doesn't go into the same level of detail as the written material, but it would be a good start.

See my [Upcoming Presentations](https://idratherbewriting.com/presentations/) on my blog for details about future workshops and presentations.

## Course slides

For the live workshops, I have various slides that cover different sections of this course. If you're a teacher adapting this material for a course on API documentation in a tech comm program, you can clone and modify the slides. See [Course Slides](docapis_course_slides.html) for the links. Basically, you would clone this GitHub repo and copy over the content from the `slides` directory.

The slides use [RevealJS](https://github.com/hakimel/reveal.js/), which is an HTML/CSS/JS framework for slides. The images are single-sourced between the site and the slides, so they'll more likely stay in sync. You can adapt the slides as needed for your lessons.

## Let me know if any content is out of date

One of the challenges in any technical course is ensuring the content stays up to date. Technology changes rapidly, and given the many hands-on activities in the course, it's easy for some steps to become out of date as time passes. I've tried to maintain a healthy balance between general and specific details in the content here. If you find something is out of date, either add a comment on that page or [let me know](https://idratherbewriting.com/learnapidoc/contact.html).

## Stay updated

If you're following this course, you most likely want to learn more about APIs. I publish regular articles that talk about APIs and strategies for documenting them. You can stay updated about these posts by [subscribing to my free newsletter](https://tinyletter.com/tomjoht).
