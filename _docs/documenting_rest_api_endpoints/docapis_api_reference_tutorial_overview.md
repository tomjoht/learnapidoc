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

## Six common sections in REST API docs

Almost all API reference topics include these 6 sections:

[1. Resource description](docapis_resource_descriptions.html)
:  {{site.data.apirefsections.resource_description.def}}

[2. Resource URLs and methods](docapis_doc_resource_urls_and_methods.html)
: {{site.data.apirefsections.resource_urls.def}}

[3. Parameters](docapis_doc_parameters.html)
: {{site.data.apirefsections.parameters.def}}

[4. Request example](docapis_doc_sample_requests.html)
: {{site.data.apirefsections.request_example.def}}

[5. Response example](docapis_doc_sample_responses_and_schema.html)
: {{site.data.apirefsections.resource_description.def}}

[6. Status and error codes](docapis_doc_status_codes.html)
: {{site.data.apirefsections.status_error_codes.def}}

The topics include a workflow map to help guide and orient you each step of the way.

<div style="margin-top:15px; margin-bottom: 15px;">
{% include workflow_map.html step="99" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<a class="noExtIcon" href="docapis_resource_descriptions.html"><img src="images/openapistep1.png"/></a>
{% endif %}
</div>

Each of your endpoints should include these same sections, in the same order and styling for predictability.

{: .tip}
A common template in your documentation helps increase consistency and familiarity with how users consume the information.

When you're finished, the end result will look [like this](docapis_finished_doc_result.html).

{: .note}
Although there are automated ways to publish API docs, we're focusing on content rather than tools in this section. For the sake of simplicity, try just using a text editor (such as [Sublime Text](https://www.sublimetext.com/)) and [Markdown syntax](https://help.github.com/articles/github-flavored-markdown). In the [Publishing your API documentation section](publishingapis.html), we'll jump into publishing tools and methods.

{% include random_ad.html %}

## Running example of API reference documentation

In this API reference tutorial, I conclude each tutorial step with an example of how to provide the documentation for our [fictitious surfreport endpoint with the Mashape API](docapis_new_endpoint_to_doc.html). I do this to provide a more real, step-by-step walk-through for writing documentation. After you complete the tutorial, there's an activity to [critique or create your own API reference topic](docapis_api_reference_activity.html).

## Next steps

You now have an idea of the tutorial, let's get going with the first section: [Resource description](docapis_resource_descriptions.html).
