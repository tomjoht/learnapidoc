---
title: Putting it all together
permalink: /docapis_finished_doc_result.html
weight: 3.7
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

{% include activity.html %}

Pull together the various parts you've worked on and bring them together to showcase the full example.

I chose to format mine in Markdown syntax in a text editor. Here's my example.

<div class="docSample">
{% include_relative surfreport_resource_description.html %}
{% include_relative surfreport_endpoint.html %}
{% include_relative surfreport_parameters.html %}
{% include_relative surfreport_request.html %}
{% include_relative surfreport_response.html %}
</div>

## Structure and templates

If you have a lot of endpoints to document, you'll probably want to create templates that follow a common structure. Additionally, if you want to add a lot of styling to each of the elements, you may want to push each of these elements into your template by way of a script. I'll talk more about publishing in the upcoming sections, [Publishing API Documentation](publishingapis.html).

{% include random_ad.html %}
