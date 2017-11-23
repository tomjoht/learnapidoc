---
title: "API reference tutorial overview"
permalink: /docapis_api_reference_tutorial_overview.html
course: "Documenting REST APIs"
weight: 3.01
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

In the [new endpoint to document](docapis_new_endpoint_to_doc.html), you saw information about a new endpoint to document for our weather API. In this API reference tutorial tutorial, you'll work on creating eight common sections in REST API reference documentation.

* TOC
{:toc}

## Eight common sections in REST API docs

Almost all API reference topics include these 8 sections:

[1. Resource description](docapis_resource_descriptions.html)
:  {{site.data.apirefsections.resource_description.def}}

[2. Resource URLs and methods](docapis_doc_resource_urls_and_methods.html)
: {{site.data.apirefsections.resource_urls.def}}

[3. Parameters](docapis_doc_parameters.html)
: {{site.data.apirefsections.parameters.def}}

[4. Request example](docapis_doc_sample_requests.html)
: {{site.data.apirefsections.request_example.def}}

[5. Response example](docapis_doc_sample_responses.html)
: {{site.data.apirefsections.resource_description.def}}

[6. Status and error codes](docapis_doc_status_codes.html)
: {{site.data.apirefsections.status_error_codes.def}}

[7. Code samples](docapis_doc_code_samples.html)
: {{site.data.apirefsections.code_samples.def}}

The topics include a workflow map to help guide and orient you each step of the way.

<div style="margin-top:15px; margin-bottom: 15px;">
{% include workflow_map.html step="99" map="content/openapi_tutorial_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<a class="noExtIcon" href="docapis_resource_descriptions.html"><img src="images/openapistep1.png"/></a>
{% endif %}
</div>

When you're finished, the end result will look [like this](docapis_finished_doc_result.html).

{% include random_ad.html %}

## Create the basic structure for the endpoint documentation

{% include activity.html %}

Open up a new text file and create sections for each of these elements.

Each of your endpoints should include these same sections, in the same order and styling for predictability.

{: .tip}
A common template in your documentation helps increase consistency and familiarity with how users consume the information.

Here's a sample:

```markdown
## Resource description

## Resource URLs and methods

## Parameters

## Request example

## Response example

## Status and error codes

## Code samples
```

{: .note}
Although there are automated ways to publish API docs, we're focusing on content rather than tools in this section. For the sake of simplicity, try just using a text editor (such as [Sublime Text](https://www.sublimetext.com/)) and [Markdown syntax](https://help.github.com/articles/github-flavored-markdown). In the [Publishing your API documentation section](publishingapis.html), we'll jump into publishing tools and methods.

You now have a list of sections to complete, so let's get going with the first section: [Resource description](docapis_resource_descriptions.html).
