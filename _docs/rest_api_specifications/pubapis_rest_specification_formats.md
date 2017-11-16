---
title: "Overview of REST API specification formats"
permalink: /pubapis_rest_specification_formats.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.0
section: restapispecifications
path1: /restapispecifications.html
---

When I [introduced REST APIs](docapis_what_is_a_rest_api.html), I mentioned that REST APIs follow an architectural style, not a specific standard. However, there are several REST specifications that have been developed to try to provide some standards about how REST APIs are described. The three most popular REST API specifications are as follows: [OpenAPI (formally called Swagger)](https://github.com/OAI/OpenAPI-Specification), [RAML](https://raml.org/), and [API Blueprint](https://apiblueprint.org/).

By far, the OpenAPI specification is the most popular, with the largest community, momentum, and history. Because of this, I spend the most time on OpenAPI here. Overall, these specifications for REST APIs lead to better documentation, tooling, and structure with your API documentation.

{: .note}
"OpenAPI" refers to the specification, while "Swagger" refers to the API tooling that reads and displays the information in the specification.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Should you use one of these specifications?

In a [survey on API documentation](docapis_apidoc_survey.html), I asked people if they were automating their REST API documentation through one of these standards. About 30% of the people said yes.

In my opinion, these specifications should certainly be used, as they not only lead to predictable, industry-consistent experiences for users of your APIs, they also force you to standardize on API terminology and give users a way to learn by doing as they try out the endpoints with real parameters and data.

Most of all, the specifications give you a template to fill out with your API. This template makes it clear what information you need, how you organize and structure the information, and other details. This kind of template, standardized and highly valued within the API community, won't pit you against your engineers as you negotiate which terms to use and what users really need.

{% include random_ad.html %}

{: .tip}
For an excellent overview and comparison of these three REST specification formats, see [Top Specification Formats for REST APIs](http://nordicapis.com/top-specification-formats-for-rest-apis/) by Kristopher Sandoval on the Nordic APIs blog.

Keep in mind that these REST API specifications mostly describe the *reference endpoints* in an API. While the reference topics are important, you will likely have [a lot more documentation to write](docnonref.html) in addition to the reference endpoints.

The bulk of documentation often explains how to use the endpoints together to achieve specific goals, how to configure the services that use the endpoints, how to deploy the services, what the various resources and rules are, how to get an API key, throttling limits, and so forth. It's hard to include all of this information into the specification alone. Nevertheless, the documentation the specification provides often constitutes the core value of your API, since it addresses the endpoints and what they return.

## Separate outputs from other docs

If you choose to automate your documentation using one of these specifications, it likely will be a separate site that showcases your endpoints and provides API interactivity. You'll still need to write many more pages of documentation about how to actually use your API.

Having multiple documentation outputs (rather than one seamless whole) presents a challenge when creating and publishing API documentation. I explore this challenge in more depth in [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).
