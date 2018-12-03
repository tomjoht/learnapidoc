---
title: "Overview of REST API specification formats"
permalink: /pubapis_rest_specification_formats.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.01
section: restapispecifications
path1: /restapispecifications.html
---

When I [introduced REST APIs](docapis_what_is_a_rest_api.html), I mentioned that REST APIs follow an architectural style, not a specific standard. However, there are several REST specifications that have been developed to try to provide some standards about how REST APIs are described. The three most popular REST API specifications are as follows: [OpenAPI (formally called Swagger)](https://github.com/OAI/OpenAPI-Specification), [RAML](https://raml.org/), and [API Blueprint](https://apiblueprint.org/).

In the early years of specifications, there was healthy competition between the formats. But now, without a doubt the OpenAPI specification is the most popular, with the largest community, momentum, and tooling. Because of this, I spend the most time on OpenAPI. In fact, this entire section focuses on the OpenAPI specification. (I moved the [RAML](https://idratherbewriting.com/learnapidoc/pubapis_raml.html) and [API Blueprint](https://idratherbewriting.com/learnapidoc/pubapis_api_blueprint.html) pages into the Resources section at the end.)

{: .note}
"OpenAPI" refers to the specification, while "Swagger" refers to the API tooling that reads and displays the information in the specification. I'll dive into both OpenAPI and Swagger in much more depth in the pages to come.

Overall, specifications for REST APIs lead to better documentation, tooling, and structure with your API documentation.Keep in mind that these REST API specifications mostly describe the [*reference endpoints*](docendpoints.html) in an API. While the reference topics are important, you will likely have a lot more documentation to write. (This is why I created an entire section of [non-reference or user guide topics](docnonref.html).)

Nevertheless, the reference documentation the specification covers often constitutes the core value of your API, since it addresses the endpoints and what they return.

{% include random_ad2.html %}

Writing to a specification introduces a new dimension to documentation that makes API documentation substantially unique. By mastering the OpenAPI specification format, you can distinguish yourself in significant ways from other technical writers.

{% include random_ad.html %}
