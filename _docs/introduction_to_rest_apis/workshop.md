---
title: Workshop -- agenda, slides, activities
permalink: /workshop.html
course: "Documenting REST APIs"
weight: 1.3
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
redirect_from:
- /learnapidoc/docapis_course_slides.html
last-modified: 2020-03-23
---

The workshop agenda, slides, and activities correspond to full-day API workshop. The slides and activities mirror similar sections in the course.

Note that for API workshops, it helps to consolidate activities into a single page with brief instructions. The content for the activities below is the same content that appears in other parts of the course &mdash; it's just pulled in here (single-sourced) for convenience. Workshops require a healthy amount of hands-on activities to be engaging. If you have feedback about how to improve the activities, or places where you keep getting stuck, [let me know](https://idratherbewriting.com/learnapidoc/contact.html).

{% include random_ad4.html %}

Not all activities in this course are consolidated here, since participants can only do so much during a workshop. The following activities are those I've selected for workshops.

* TOC
{:toc}
{::options toc_levels="2" /}

{% comment %}
{: .tip}
You can print the activity content as a [PDF here](https://s3.us-west-1.wasabisys.com/idbwmedia.com/print/api_workshop_activities.pdf). This might make it easier to follow along on your laptop during the workshop.
{% endcomment %}

## 8:00 - 9:00am: Registration + breakfast

Doors open at 8:00am. Check your name off at the registration table and get a name tag. Light breakfast (coffee and pastries) will be available. Find a table and get situated and acquainted with others. If you didn't finish all the pre-workshop tasks as described in [What You'll Need](index.html#what-youll-need), do that now.

## 9:00 - 9:30am: Intro to API documentation

[Section: Introduction to API documentation](docapis_introtoapis.html)

<a href="/learnapidoc/slides/intro_api_documentation.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/introapidoctitleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 1a: Identify your goals" activity="identify_goals" button_type="info" %}

## 9:30 - 10:15am: Using an API like a Developer

[Section: Using an API like a developer](likeadeveloper.html)

<a href="/learnapidoc/slides/using_api_like_developer.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/using-api-developer-titleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 2a: Explore OpenWeatherMap API" activity="explore_openweathermap_api" button_type="primary" %}

{% include workshop_button.html title="Activity 2b: Get OpenWeatherMap authorization keys" activity="get_authorization_keys" button_type="primary" %}

{% include workshop_button.html title="Activity 2c: Make requests with Postman" activity="postman_request" button_type="primary" %}

{% include workshop_button.html title="Activity 2d: Make requests with curl" activity="make_curl_request" button_type="primary" %}

{% include workshop_button.html title="Activity 2e: Make an API request on a web page" activity="ajax_api_request" button_type="primary" %}

## 10:15 - 10:30am: Break

Break time

## 10:30 - 11:30pm: API endpoints

[Section: Documenting API endpoints](docendpoints.html)

<a href="/learnapidoc/slides/documenting_api_endpoints.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documenting-endpoints-titleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 3a: What's wrong with this API reference topic" activity="whats_wrong_with_surfreport" button_type="success" %}

{% include workshop_button.html title="Activity 3b: Evaluate API ref docs to identify core elements" activity="evaluate_elements_api_ref" button_type="success" %}

## 11:30 - 12:30: OpenAPI and Swagger

[Section: OpenAPI and Swagger](restapispecifications.html)

<a href="/learnapidoc/slides/openapi_and_swagger.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/openapiswaggertitleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 4a: Explore Swagger UI through the Petstore Demo" activity="explore_swagger_petstore" button_type="info" %}


<button class="btn btn-info" type="button" data-toggle="collapse" data-target="#stoplight_tutorial" aria-expanded="false" aria-controls="collapseExample">
Activity 4b: Create an OpenAPI specification using Stoplight Studio
</button>
<div class="collapse" id="stoplight_tutorial">
<div class="card card-body" markdown="block">
For this this activity, see this topic: [Create an OpenAPI specification document using Stoplight Studio's visual editor](pubapis_openapis_quickstart_stoplight.html). Due to the length fo the topic, I haven't embedded it here.
</div>
</div>


## 12:30 - 1:30pm: Lunch

Lunch provided through catering.

## 1:30 - 2:00pm: OpenAPI and Swagger (continued)

{% include workshop_button.html title="Activity 4c: Create a Redoc display" activity="create_redoc_display" button_type="info" %}

{% include workshop_button.html title="Activity 4d: Create a SwaggerUI display" activity="create_swaggerui_display" button_type="info" %}

## 2:00 - 2:30pm: Conceptual topics

[Section: Conceptual topics](docconceptual.html)

<a href="/learnapidoc/slides/conceptual_content_api_docs.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/conceptualcontenttitleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 6a: Complete the SendGrid Getting Started tutorial in 5 min" activity="getting_started_tutorial" button_type="warning" %}

{% include workshop_button.html title="Activity 6b: Judge conceptual content and decide which is best" activity="conceptual_comparisons" button_type="warning" %}

## 2:30 - 2:45pm: Break

Break. Snacks provided.

## 2:45 - 3:30pm: Code tutorials

[Section: Code tutorials](docapiscode.html)

<a href="/learnapidoc/slides/code_tutorials.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/codetutorialsthumb.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 7a: Analyze code tutorials" activity="code_tutorial_analysis" button_type="primary" %}

## 3:30 - 4:15pm: Publishing API docs

[Section: Publishing API Documentation](publishingapis.html)

<a href="/learnapidoc/slides/publishing_api_docs.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/publishingapidoctitleslide.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 8a: Set up a GitHub wiki" activity="create_github_wiki" button_type="warning" %}

{% include workshop_button.html title="Activity 8b: Clone your GitHub repo locally" activity="clone_repo_locally" button_type="warning" %}

{% include workshop_button.html title="Activity 8c: Push local changes to the remote" activity="push_local_to_remote" button_type="warning" %}

{% include random_ad3.html %}

## 4:00 - 4:30: Participant's challenges surfaced and discussed

During this time, I'd like to have participants surface specific challenges that they are facing and address them as a whole.

## 4:30 - 5:00pm: Thriving in the API doc space

[Section: Thriving in the API doc space](jobapis.html)

<a href="/learnapidoc/slides/thriving_in_api_docs.html" class="noCrossRef"><img class="slideThumb" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/thrivinginapidocsthumb.png" style="max-width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Jeopardy: Test your knowledge" activity="jeopardy_questions" button_type="info" %}

{% include random_ad1.html %}


## 5:00 - 5:30pm: Individual consulting

The general workshop ends and we transition into any individual consulting as desired. If you have specific questions not addressed during the workshop, let's chat specifically about them. For all those interested, I'll write your name on then board and then just meet with you individually for about 5 minutes each until everyone's questions are answered.

{% include image_ad_left.html %}

## Post-workshop review

At the close of the workshop, please take this [review survey](https://www.questionpro.com/t/AOaGwZgMcu). Thanks.

{% include random_ad2.html %}


<style>
ul#markdown-toc::before  {
  font-size:18px;
  padding-top:30px;
  margin: 20px 0px 20px -30px;
  content: "Workshop Agenda";
}

@media print {
  header, footer, #sidebar, ul#markdown-toc, header.dpHeader a, header.dpHeader .dphTopBar .dphLeft, .dpFooter .dpfNav .dpfnCol .dpfnGroup, hr, .userMap, .githubButton, .amazonBook, p.surveyBanner, .singlePostComics, .footerTop, .donateButton, .nextButton, .previousButton, .progress, #progressBar, #yourProgress, .progress + p, .subfoldersTitle, .folderTitle, ol.breadcrumb {
  	display: none !important;
  }

  div.main {
    margin-left: 20px;
    padding: 10px
  }
  h1, h2, h3 {
      padding-top, margin-top:20px;
      margin-bottom, padding-bottom: 10px;
  }
  img.slideThumb {
    width: 200px;
  }
}
</style>
