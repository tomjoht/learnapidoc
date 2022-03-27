---
title: "Overview of REST API specification formats"
permalink: pubapis_rest_specification_formats.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.1
section: restapispecifications
path1: restapispecifications.html
last-modified: 2020-04-03
---

When I [introduced REST APIs](docapis_what_is_a_rest_api.html), I mentioned that REST APIs follow an architectural style, not a specific standard. Several REST specifications were initially developed to provide standards in the way that REST APIs are described. The initial three specs were  [OpenAPI (formally called Swagger)](https://github.com/OAI/OpenAPI-Specification), [RAML](https://raml.org/), and [API Blueprint](https://apiblueprint.org/).

{% include ads.html %}

In the early years of specifications, there was healthy competition between the formats. But now the OpenAPI specification is the most popular, with the largest community, momentum, and tooling. Because of this, I spend the most time on OpenAPI in this course. In fact, this entire section focuses on the OpenAPI specification. (I moved [RAML](pubapis_raml.html) and [API Blueprint](pubapis_api_blueprint.html) into the Additional resources section at the end.)

{: .note}
"OpenAPI" refers to the specification, while "Swagger" refers to the API tooling that reads and displays the information in the specification. The OpenAPI specification is a vendor-neutral format led by a steering committee comprised of many companies. I'll dive into both OpenAPI and Swagger in much more depth in the pages to come.

{% include random_ad4.html %}

Overall, specifications for REST APIs lead to better reference documentation for your API. Keep in mind that these REST API specifications mostly describe the [*reference endpoints*](docendpoints.html) in an API. While the reference topics are important, you will likely have a lot more documentation to write. (This is why I created an entire section of [conceptual topics](docconceptual.html).)

{% include image_ad_right.html %}

Nevertheless, the reference documentation that the specification covers often constitutes the core value of your API, since it addresses the endpoints and what they return.

{% include random_ad2.html %}

Writing to a specification introduces a new dimension to documentation that makes API documentation substantially unique. By mastering the OpenAPI specification format, you can distinguish yourself in significant ways from other technical writers.

{% include random_ad3.html %}
