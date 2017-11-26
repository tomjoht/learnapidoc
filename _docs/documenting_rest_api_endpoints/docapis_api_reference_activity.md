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

Assuming you've found an open-source API doc project, it's time to start the activity.

1.  Locate one of the reference topics for a resource in the API.
2.  Identify each of the sections in the existing documentation:

    *  Resource description
    *  Resource URL and method
    *  Parameters
    *  Request example
    *  Response example and schema
    *  Status and error codes

3.  Evaluate each of these sections and assess whether the documentation is complete. Are there areas for improvement? Critique one or more of the API reference topics.

    Here are some areas to look at:

    **Resource description:** Is it action-oriented? A brief 1-3 sentence summary? Clear?

    **Resource URL and method:** Does it include the method? Are any path parameters easy to identify? If there are multiple URLs, are they logically grouped?

    **Parameters:** Is each parameter described? If it's a request body parameter, are the data types indicated? Are max and min values identified? Any unsupported values noted?

    **Request example:** Does the sample request work (with the right authorization)? Does it include a representative number of parameters? Is it formatted correctly in curl?

    **Response example:** Does the sample response match the sample request? Is it formatted and highlighted correctly? Is each element in the response described, along with the data type?

    **Status and error codes:** Does the API provide status and error codes that are unique? Are they documented?

4.  Focus on one of the API reference topics that needs help, and edit the topic to improve it.
5.  If the API has a new reference endpoint to document, create the documentation for it.
6.  Create a [pull request](pubapis_github_pull_requests.html) and contribute it to the project.
