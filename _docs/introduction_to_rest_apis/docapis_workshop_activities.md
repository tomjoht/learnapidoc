---
title: Workshop activities
permalink: /docapis_workshop_activities.html
course: "Documenting REST APIs"
weight: 1.03
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
redirect_from:
 - /learnapidoc/workshop-activities.html
---

When I give API workshops, it helps to consolidate activities into a single page with brief instructions. The following are activities I use when teaching an API workshop. (The content for the activities is the same content that appears in other parts of the course &mdash; it's just pulled in here for convenience.)

## Part I: Intro to API documentation

{% include workshop_button.html title="Activity 1: Identify your goals" activity="identify_goals" button_type="default" %}

## Part II: Using an API like a developer

{% include workshop_button.html title="Activity 1: Explore OpenWeatherMap API" activity="explore_openweathermap_api" button_type="primary" %}

{% include workshop_button.html title="Activity 2: Get OpenWeatherMap authorization keys" activity="get_authorization_keys" button_type="primary" %}

{% include workshop_button.html title="Activity 3: Make requests with Postman" activity="postman_request" button_type="primary" %}

{% include workshop_button.html title="Activity 4: Make requests with curl" activity="make_curl_request" button_type="primary" %}

{% include workshop_button.html title="Activity 5: Make AJAX request and inspect payload" activity="ajax_api_request" button_type="primary" %}

## Part III: Documenting API endpoints

{% include workshop_button.html title="Activity 1: Evaluate API ref docs to identify core elements" activity="evaluate_elements_api_ref" button_type="success" %}

{% include workshop_button.html title="Activity 2: Find an open-source project" activity="find_open_source_project" button_type="success" %}

## Part V: OpenAPI and Swagger

{% include workshop_button.html title="Activity 1: Explore Swagger UI through the Petstore Demo" activity="explore_swagger_petstore" button_type="info" %}

{% include workshop_button.html title="Activity 2: Edit an existing OpenAPI specification document" activity="edit_openapi_spec_file" button_type="info" %}

{% include workshop_button.html title="Activity 3: Create a SwaggerUI display" activity="create_swaggerui_display" button_type="info" %}

{% include workshop_button.html title="Activity 4: Work with the OpenAPI in Stoplight" activity="work_with_stoplight" button_type="info" %}

## Part III: Non-reference content in API docs

###  Activity: GitHub workflow

This workflow is key for working with sample apps and code repositories.

1.  Create new repo and initialize with readme. Clone repo locally using `git clone`.
2.  Make update to readme file and push back into repo:

    ```
    git add .
    git commit -m "made update to readme"
    git pull
    git push
    ```

{% include random_ad.html %}

{% include random_ad2.html %}
