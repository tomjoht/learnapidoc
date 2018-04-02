---
title: Putting it all together
permalink: /docapis_finished_doc_result.html
weight: 3.7
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

{% include activity.html %}

Let's pull together the various parts we've worked on and bring them together to showcase the full example.

<div class="docSample">
{% include_relative surfreport_resource_description.html %}
{% include_relative surfreport_endpoint.html %}
{% include_relative surfreport_parameters.html %}
{% include_relative surfreport_request.html %}
{% include_relative surfreport_response.html %}
</div>

## Some notes on templates and tools

With the sample documentation here, I'm using Jekyll. Each of these sections is stored as a relative include that I've singled sourced to both this page and the previous pages. This ensures I'm not copying and pasting the same content in multiple areas of the site.

{: .tip}
If you have a lot of endpoints to document, you'll probably want to create templates that follow a common structure. Additionally, if you want to add a lot of styling to each of the elements, you may want to push each of these elements into your template by way of a script. I'll talk more about publishing in the upcoming sections, [Publishing API Documentation](publishingapis.html).

## Next steps

Now that you've completed the [API reference tutorial](docapis_api_reference_tutorial_overview.html), you're ready to either critique or create your own API reference topic. See the next topic, [Activity: Critique or create an API reference topic](docapis_api_reference_activity.html).

{% include random_ad.html %}
