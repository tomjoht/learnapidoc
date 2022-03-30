---
title: "API reference tutorial overview"
permalink: docapis_api_reference_tutorial_overview.html
course: "Documenting REST APIs"
weight: 3.1
sidebar: docapis
section: docendpoints
path1: docendpoints.html
last-modified: 2020-06-27
---

In this API reference tutorial, we'll work on creating five common sections in REST API reference documentation: resource description, endpoints and methods, parameters, request example, and response example and schema. To provide some context (and to continue with our sample documentation scenario), we'll structure the information from the [new endpoint to document](docapis_new_endpoint_to_doc.html#surf_report_api) into these five sections.

* TOC
{:toc}

{% include image_ad_right.html %}

## Five common sections in REST API docs

Almost all API reference topics include these five sections:

[1. Resource description](docapis_resource_descriptions.html)
:  {{site.data.glossary.resource_description.def | split: "." | first | append: "." }}

[2. Endpoints and methods](docapis_resource_endpoints.html)
: {{site.data.glossary.endpoints_and_methods.def | split: "." | first | append: "." }}

[3. Parameters](docapis_doc_parameters.html)
: {{site.data.glossary.parameters.def | split: "." | first | append: "." }}

[4. Request example](docapis_doc_sample_requests.html)
: {{site.data.glossary.request_example.def | split: "." | first | append: "." }}

[5. Response example and schema](docapis_doc_sample_responses_and_schema.html)
: {{site.data.glossary.response_example_and_schema.def | split: "." | first | append: "." }}

{% include random_ad3.html %}

## Tutorial workflow map

The tutorial here includes a workflow map to help guide and orient you each step of the way.

<div style="margin-top:15px; margin-bottom: 15px;">
{% include workflow_map.html step="99" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<a class="noExtIcon" href="docapis_resource_descriptions.html"><img src="{{site.media}}/openapistep1.png"/></a>
{% endif %}
</div>

{% include random_ad4.html %}

## After the tutorial

{% include random_ad2.html %}

When we're finished, the end result will look like a real API help topic (see the finished result in [Putting it all together](docapis_finished_doc_result.html)). In the associated activities, you'll have an opportunity to [edit or create an API reference topic](docapis_api_reference_activity.html) with your own [open-source API project](docapis_find_open_source_project.html).

{: .note}
Although there are automated ways to publish API docs, we're focusing on content rather than tools in this section. In the next section, [OpenAPI spec and generated reference docs](restapispecifications.html), we'll look at how to describe these same reference components using the OpenAPI specification. In the [Publishing your API documentation section](publishingapis.html), we'll look at ways to publish the information.

{% include ads.html %}

## Next steps

Now that you have an idea of the tutorial, let's get started with the first section: [Step 1: Resource description](docapis_resource_descriptions.html).
