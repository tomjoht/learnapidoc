---
title: Workshop activities
permalink: /docapis_workshop_activities.html
workshop_activities: true
course: "Documenting REST APIs"
weight: 1.03
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
redirect_from:
 - /learnapidoc/workshop-activities.html
---

{% comment %}
Thanks for taking the workshop. Please take this short, anonymous survey at [https://www.questionpro.com/t/AOaGwZeCnr](https://www.questionpro.com/t/AOaGwZeCnr) so that I can gather your feedback.
{% endcomment %}

For API workshops, it helps to consolidate activities into a single page with brief instructions. The content for the activities below is the same content that appears in other parts of the course &mdash; it's just pulled in here (single-sourced) for convenience. Workshops require a healthy amount of hands-on activities to be engaging. If you have feedback about how to improve the activities, or places where you keep getting stuck, [let me know](https://idratherbewriting.com/learnapidoc/contact.html).

Note that not all activities in this course are consolidated here, since participants can only do so much during a workshop. The following activities are those I've selected for workshops.

{% if site.format == "kindle" or site.format == "pdf" %}

{: .note}
The content here merely contains the same exercises that appear embedded in other places throughout the site. I just consolidate them here for convenience when teaching workshops. See [https://idratherbewriting.com/learnapidoc/docapis_workshop_activities.html](https://idratherbewriting.com/learnapidoc/docapis_workshop_activities.html) to view the consolidated activities.
{% endif %}

{% if site.format == "web" %}

## Part I: Intro to API documentation

{% include workshop_button.html title="Activity 1a: Identify your goals" activity="identify_goals" button_type="info" %}

## Part II: Using an API like a developer

{% include workshop_button.html title="Activity 2a: Explore OpenWeatherMap API" activity="explore_openweathermap_api" button_type="primary" %}

{% include workshop_button.html title="Activity 2b: Get OpenWeatherMap authorization keys" activity="get_authorization_keys" button_type="primary" %}

{% include workshop_button.html title="Activity 2c: Make requests with Postman" activity="postman_request" button_type="primary" %}

{% include workshop_button.html title="Activity 2d: Make requests with curl" activity="make_curl_request" button_type="primary" %}

{% include workshop_button.html title="Activity 2e: Make AJAX request and inspect payload" activity="ajax_api_request" button_type="primary" %}

## Part III: Documenting API endpoints



{% include workshop_button.html title="Activity 3a: What's wrong with this API reference topic" activity="whats_wrong_with_surfreport" button_type="success" %}

{% include workshop_button.html title="Activity 3b: Find an open-source project" activity="find_open_source_project" button_type="success" %}

{% include workshop_button.html title="Activity 3c: Evaluate API ref docs to identify core elements" activity="evaluate_elements_api_ref" button_type="success" %}

## Part IV: OpenAPI and Swagger

{% include workshop_button.html title="Activity 4a: Explore Swagger UI through the Petstore Demo" activity="explore_swagger_petstore" button_type="info" %}

{% include workshop_button.html title="Activity 4b: Edit an existing OpenAPI specification document" activity="edit_openapi_spec_file" button_type="info" %}

{% include workshop_button.html title="Activity 4c: Create a SwaggerUI display" activity="create_swaggerui_display" button_type="info" %}

{% include workshop_button.html title="Activity 4d: Work with the OpenAPI in Stoplight" activity="work_with_stoplight" button_type="info" %}

## Part VI: Conceptual content in API docs

In this section, we follow an inductive approach where you look at the three examples of each conceptual topic and decide which approach is best.

{% include workshop_button.html title="Activity 6a: Comparing conceptual content" activity="conceptual_comparisons" button_type="warning" %}

## Part VII: Publishing API documentation

{% include workshop_button.html title="Activity 7a: Look for common patterns in API doc sites" activity="api_doc_patterns" button_type="warning" %}

{% include workshop_button.html title="Activity 7b: Get practice with Markdown" activity="markdown_practice" button_type="warning" %}

{% include workshop_button.html title="Activity 7c: Set up a GitHub wiki" activity="create_github_wiki" button_type="warning" %}

{% include workshop_button.html title="Activity 7d: Clone your GitHub repo locally" activity="clone_repo_locally" button_type="warning" %}

{% include workshop_button.html title="Activity 7e: Push local changes to the remote" activity="push_local_to_remote" button_type="warning" %}

## VIII: Getting a job in API documentation

{% include workshop_button.html title="Activity 8a: Look at API documentation jobs and requirements" activity="look_for_apidoc_jobs" button_type="info" %}

## Conclusion {#conclusion}

{% include workshop_button.html title="API Jeopardy: Test your knowledge" activity="jeopardy_questions" button_type="primary" %}


{% comment %}
## Survey

Please take this survey to provide feedback about the workshop: [https://www.questionpro.com/t/AOaGwZdHog](https://www.questionpro.com/t/AOaGwZdHog).
 {% endcomment %}

{% include random_ad.html %}

{% include random_ad2.html %}

{% endif %}
