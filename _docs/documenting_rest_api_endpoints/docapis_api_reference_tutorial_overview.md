---
title: "API reference tutorial overview"
permalink: /docapis_api_reference_tutorial_overview.html
course: "Documenting REST APIs"
weight: 3.01
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

In this API reference tutorial tutorial, we'll work on creating five common sections in REST API reference documentation: resource description, resource URLs and methods, parameters, request example, and response example.

For context, we'll structure the information from the [sample new endpoint to document](docapis_new_endpoint_to_doc.html) into these five sections.

* TOC
{:toc}

## Five common sections in REST API docs

Almost all API reference topics include these five sections:

[1. Resource description](docapis_resource_descriptions.html)
:  {{site.data.apirefsections.resource_description.def}}

[2. Resource URLs and methods](docapis_doc_resource_urls_and_methods.html)
: {{site.data.apirefsections.resource_urls.def}}

[3. Parameters](docapis_doc_parameters.html)
: {{site.data.apirefsections.parameters.def}}

[4. Request example](docapis_doc_sample_requests.html)
: {{site.data.apirefsections.request_example.def}}

[5. Response example and schema](docapis_doc_sample_responses_and_schema.html)
: {{site.data.apirefsections.response_example_and_schema.def}}

## Tutorial workflow map

The topics include a workflow map to help guide and orient you each step of the way.

<div style="margin-top:15px; margin-bottom: 15px;">
{% include workflow_map.html step="99" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<a class="noExtIcon" href="docapis_resource_descriptions.html"><img src="images/openapistep1.png"/></a>
{% endif %}
</div>

## After the tutorial

When we're finished, the end result will look [like this](docapis_finished_doc_result.html). You'll then have an opportunity to [create an API reference topic](docapis_api_reference_activity.html) with your own [open-source API project](docapis_find_open_source_project.html).

{: .note}
Although there are automated ways to publish API docs, we're focusing on content rather than tools in this section. In the [Publishing your API documentation section](publishingapis.html), we'll jump into publishing tools and methods.

{% include random_ad.html %}

## Next steps

You now have an idea of the tutorial, let's get going with the first section: [Resource description](docapis_resource_descriptions.html).
