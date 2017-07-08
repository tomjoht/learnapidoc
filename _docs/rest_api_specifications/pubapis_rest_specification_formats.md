---
title: "Overview of REST API specification formats"
permalink: /pubapis_rest_specification_formats.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.0
section: restapispecifications 
path1: /restapispecifications.html
---

When I [introduced REST APIs](docapis_what-is-a-rest-api.html), I mentioned that REST APIs follow an architectural style, not a specific standard. However, there are several REST specifications that have been developed to try to provide some standards about how REST APIs are described. The three most popular REST API specifications are as follows: [Swagger (formally called Open API)](pubapis_swagger_intro.html), [RAML](pubapis_raml.html), and [API Blueprint](pubapis_api_blueprint.html).

By far, the Swagger / Open API specification is the most popular, with the largest community, momentum, and history. Because of this, I spend the most time on Swagger here. Overall, these specifications for REST APIs lead to better documentation, tooling, and structure with REST APIs.

{% if site.target == "web" %}
* TOC
{:toc}
{% endif %}

## Should you use one of these specifications?

In a [survey on API documentation](survey_automating_api_docs.html), I asked people if they were automating their REST API documentation through one of these standards. About 30% of the people said yes.

In my opinion, these specifications should certainly be used, as they not only lead to predictable, industry-consistent experiences for users of your APIs, they also force you to standardize on API terminology and give users a way to learn by doing as they try out the endpoints with real parameters and data.

Most of all, the specifications give you a kind of template to fill out with your API. This template makes it clear what information you need, how you organize and structure the information, and other details. This kind of template, standardized and highly valued within the API community, won't pit you against your engineers as you make decisions about the terms to use and what users really need.

{% include random_ad.html %}

{: .tip}
For an excellent overview and comparison of these three REST specification formats, see [Top Specification Formats for REST APIs](http://nordicapis.com/top-specification-formats-for-rest-apis/) by Kristopher Sandoval on the Nordic APIs blog.

Keep in mind that these REST API specifications mostly describe the *reference endpoints* in an API. While the reference topics are important, you will likely have a lot more documentation to write in addition to the reference endpoints.

The bulk of documentation often explains how to use the endpoints together to achieve specific goals, how to configure the services that use the endpoints, how to deploy the services, what the various resources and rules are, how to get an API key, throttling limits, and so forth. It's hard to include all of this information into the specification alone.

## Separate outputs from other docs

If you choose to automate your documentation using one of these specifications, it likely will be a separate site that showcases your endpoints and provides API interactivity. You'll still need to write many more pages of documentation about how to actually use your API.

Having multiple documentation outputs (rather than one seamless whole) presents a challenge when creating and publishing API documentation. I explore this challenge in more depth in [Combining Swagger's reference output with user guide docs](pubapis_combine_swagger_and_guide.html).
