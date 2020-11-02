---
title: Activities PDF
permalink: /activities_pdf.html
type: pdf
layout: printpdf
last-modified: 2020-11-02
---

The workshop agenda, slides, and activities correspond to full-day API workshop. The slide groups mirror the same sections in the course.


{% if site.format == "web" %}

* TOC
{:toc}
{::options toc_levels="2" /}

## 8:00am - 9:00am: Registration + breakfast

Doors open at 8:00am. Check your name off at the registration table and get a name tag. Light breakfast (coffee and pastries) will be available. Find a table and get situated and acquainted with others. If you didn't finish all the pre-workshop tasks as described in [What You'll Need](index.html#what-youll-need), do that now.

## 9:00am - 10:30am: Parts I and II (Intro + Using an API like a Developer)

**Part I: Introduction to API Documentation**

<a href="/learnapidoc/slides/intro_api_documentation.html" class="noCrossRef slideThumb"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/introapidoctitleslide.png" style="width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 1a: Identify your goals" activity="identify_goals" button_type="info" %}

**Part II: Using an API like a developer**

<a href="/learnapidoc/slides/using_api_like_developer.html" class="noCrossRef slideThumb"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/using-api-developer-titleslide.png" style="width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 2a: Explore OpenWeatherMap API" activity="explore_openweathermap_api" button_type="primary" %}

{% include workshop_button.html title="Activity 2b: Get OpenWeatherMap authorization keys" activity="get_authorization_keys" button_type="primary" %}

{% include workshop_button.html title="Activity 2c: Make requests with Postman" activity="postman_request" button_type="primary" %}

{% include workshop_button.html title="Activity 2d: Make requests with curl" activity="make_curl_request" button_type="primary" %}

{% include workshop_button.html title="Activity 2e: Make an API request on a web page" activity="ajax_api_request" button_type="primary" %}

## 10:30am - 10:45am: Break

Break time

## 10:45am - 12:00pm: Part III + IV (API endpoints and OpenAPI/Swagger )

**Part III: Documenting API endpoints**

<a href="/learnapidoc/slides/documenting_api_endpoints.html" class="noCrossRef slideThumb"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/documenting-endpoints-titleslide.png" style="width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 3a: What's wrong with this API reference topic" activity="whats_wrong_with_surfreport" button_type="success" %}

{% include workshop_button.html title="Activity 3b: Evaluate API ref docs to identify core elements" activity="evaluate_elements_api_ref" button_type="success" %}

## 12:00pm - 1:00pm: Lunch

Lunch. Provided in room.  

## 1:00pm - 2:00pm: Part IV continued (OpenAPI and Swagger)

**Part IV: OpenAPI and Swagger**

<a href="/learnapidoc/slides/openapi_and_swagger.html" class="noCrossRef slideThumb"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/openapiswaggertitleslide.png" style="width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 4a: Explore Swagger UI through the Petstore Demo" activity="explore_swagger_petstore" button_type="info" %}

{% include workshop_button.html title="Activity 4b: Edit an existing OpenAPI specification document" activity="edit_openapi_spec_file" button_type="info" %}

{% include workshop_button.html title="Activity 4c: Create a SwaggerUI display" activity="create_swaggerui_display" button_type="info" %}

{% comment %}
{% include workshop_button.html title="Activity 4d: Explore Stoplight" activity="work_with_stoplight" button_type="info" %}
{% endcomment %}

## 2:00 - 2:15: Break

Break. Snacks and coffee provided.

## 2:15pm - 3:30pm: Parts VI and VII (Conceptual topics + Doc'ing code)

<a href="/learnapidoc/slides/conceptual_content_api_docs.html" class="noCrossRef slideThumb"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/conceptualcontenttitleslide.png" style="width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 6a: Judge conceptual content and decide which is best" activity="conceptual_comparisons" button_type="warning" %}

## 3:30pm - 3:45pm

Break

## 3:45 - 4:30pm: Part VIII and IX (Publishing API docs + Native library APIs)

**Part VII: Publishing API Documentation**

<a href="/learnapidoc/slides/publishing_api_docs.html" class="noCrossRef slideThumb"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/publishingapidoctitleslide.png" style="width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 7a: Set up a GitHub wiki" activity="create_github_wiki" button_type="warning" %}

{% include workshop_button.html title="Activity 7b: Clone your GitHub repo locally" activity="clone_repo_locally" button_type="warning" %}

{% include workshop_button.html title="Activity 7c: Push local changes to the remote" activity="push_local_to_remote" button_type="warning" %}

**Native Library APIs**

## 4:30pm - 5:15pm: Individual consulting

The general workshop ends and we transition into any individual consulting as desired. If you have specific questions not addressed during the workshop, let's chat specifically about them. For all those interested, I'll write everyone's name on a board and then just meet with you individually for about 5 minutes each until everyone's questions are answered.

## Optional section

Optional section if time permits.

**Part X: Getting an API documentation job and thriving**

<a href="/learnapidoc/slides/getting_job_api_docs.html" class="noCrossRef slideThumb"><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/gettingajobdsdoctitleslide.png" style="width: 300px; border: 1px solid #dedede;"></a>

{% include workshop_button.html title="Activity 10a: Look at API documentation jobs and requirements" activity="look_for_apidoc_jobs" button_type="info" %}

{% include workshop_button.html title="Activity 10b: Find an open-source project" activity="find_open_source_project" button_type="success" %}


{% include random_ad.html %}

{% include random_ad2.html %}

{% endif %}

<style>
ul#markdown-toc::before  {
  font-size:18px;
  padding-top:30px;
  margin: 20px 0px 20px -30px;
  content: "Workshop Agenda";
}

@media print {
  header, footer, #sidebar, ul#markdown-toc, header.dpHeader a, header.dpHeader .dphTopBar .dphLeft, .dpFooter .dpfNav .dpfnCol .dpfnGroup, hr, .userMap, .githubButton, .amazonBook, p.surveyBanner {
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
  .main img.slideThumb {
    width: 300px;
  }

  .main img.large {
    width: 700px
  }

  .main img.medium {
    width: 600px
  }

  .main img.small_medium {
    width: 450px;
  }

  .main img.small {
    width: 300px;
  }

  .main img.tiny {
    width: 200px;
  }
}
</style>
