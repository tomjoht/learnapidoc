---
title: "Activity: Critique or create an API reference topic"
permalink: /docapis_api_reference_activity.html
weight: 3.71
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

After completing the [API reference tutorial](docapis_api_reference_tutorial_overview.html), you're ready to start an activity that gives you more experience in creating and editing API reference documentation. In this activity, you'll either critique or create your own API reference topic for the open-source API project you [identified earlier](docapis_find_open_source_project.html).

* TOC
{:toc}

## Critique the API reference documentation

If you've found an open source project, great. If you don't have a project but you still want to do the activity, select one of the API from the [list of 100 API doc sites here](pubapis_apilist.html).

{% include random_ad2.html %}

To critique an API reference topic:

1.  Locate one of the reference topics for a resource in the API.
2.  Identify each of the sections in the existing documentation:

    *  Resource description
    *  Endpoints
    *  Parameters
    *  Request example
    *  Response example and schema

    The section names may differ, but they usually are easily recognizable.

3.  Evaluate each of these sections and assess whether the documentation is complete. Are there areas for improvement? Critique one or more of the API reference topics.

    Here are some questions to look at:

    **Resource description:** Is the description action-oriented? Is it a brief 1-3 sentence summary? Is it clear? Does it link to more information somewhere else?

    **Endpoints and methods:** Does the endpoint list the methods available? Are any path parameters in the endpoint easy to identify? If there are multiple endpoints, are they logically grouped?

    **Parameters:** Is each parameter described? Are the parameters separated out into different sections by parameter type? If it's a request body parameter, are the data types indicated? Are max and min values identified? Any unsupported values noted?

    **Request example:** Does the sample request work (with the right authorization)? Does it include a representative number of parameters? Is it formatted correctly in curl? Are any other languages shown with the sample request? Is the code syntax highlighted?

    **Response example:** Does the sample response match the sample request? Is it formatted and highlighted correctly? Is each element in the response described, along with the data type? Does the response documentation separate the example from the description, or combine the two? How are nested objects portrayed? Are any status and error codes listed?

{% include random_ad.html %}

## Create or fix an API reference documentation topic

This part of the activity might be more difficult to do, but here is where you'll start building some examples for your portfolio.

1.  Identify one of the API reference topics that needs help. (If the API has a new reference endpoint to document, focus on this endpoint.)
2.  Edit the topic to improve it. (If it's a new endpoint, write the documentation for it.)
6.  Create a [pull request](pubapis_github_pull_requests.html) and contribute your edits to the project.

## Next steps

Now that you've had your head buried in API reference documentation, it's time to dive into testing a bit more. As you work with API endpoints and other code, you'll need to test these endpoints yourself, both to gather and verify the information in your documentation. Testing isn't always straightforward, so I devote an entire section to this topic. Continue to [Overview to testing your docs](testingdocs_overview.html).
