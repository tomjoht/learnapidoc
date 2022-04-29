---
title: "Stoplight: visual modeling tools for creating your OpenAPI spec"
permalink: pubapis_stoplight.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.3
section: restapispecifications
path1: restapispecifications.html
last-modified: 2020-06-27
---

Before jumping into the [tutorial for creating an OpenAPI spec using Stoplight](pubapis_openapis_quickstart_stoplight.html), let me introduce Stoplight a bit more conceptually. As a GUI editor for creating an OpenAPI, Stoplight Studio simplifies the authoring of a highly technical syntax that is often challenging to make valid.

{% include random_ad4.html %}

Among other services, Stoplight provides visual modeling tools to create an OpenAPI document for your API &mdash; without requiring you to know the OpenAPI spec details or code the spec line by line. This API specification document can act as a single source of truth that empowers the whole API lifecycle, from UX prototyping to testing, development, documentation, sales, and more.

* TOC
{:toc}

*Note that Stoplight is one of the sponsors of my site.*

## Limits to line-by-line spec coding

Before jumping into details, let me provide some background about why I think Stoplight is a valuable tool, and why I've both listed it in this course and created an [activity for using Stoplight](pubapis_openapis_quickstart_stoplight.html). At the [2018 TC Camp conference](http://www.tccamp.org/) in Santa Clara, the camp organizers put on a full-day API workshop focused on OpenAPI and Swagger. I was excited to see this topic addressed in a workshop because I think coding the spec is both the most complicated and most important part of API documentation.

{% include random_ad2.html %}

I didn't attend the workshop myself, but I was chatting with a few who did. One attendee was a little frustrated that they spent *so much time in [YAML](pubapis_yaml.html)* working on different parts of the [OpenAPI spec definition](pubapis_openapi_tutorial_overview.html). He said they spent most of the day in YAML, and it was frustrating, tedious, and boring. For this participant, this isn't what he imagined when he signed up to learn how to create interactive API docs.

In the instructor's defense, I told my friend that describing an API using the OpenAPI spec *does* pretty much involve living in YAML all day, and it *is* tedious, highly prone to error, and technical. One of my favorite API bloggers, API evangelist Kin Lane, explains that "hand crafting even the base API definition for any API is time-consuming." It is an activity "that swells quickly to being hours when you consider the finish work that's required" ([Automated Mapping Of The API Universe ...](http://apievangelist.com/2016/02/05/automated-mapping-of-the-api-universe-with-charles-proxy-dropbox-openapi-spec-and-some-custom-apis/)).

Lane says he was exploring ways to automate the API definition using different tools such as Charles Proxy. During this time, he started exploring [Stoplight.io](http://stoplight.io/), a platform for modeling APIs and more, and he became engrossed in the workflow and design tools. He says,

> I stayed up way too late playing with some of the new features in Stoplight.io. If you aren't familiar with what the Stoplight team has been cooking up &mdash; they have been hard at work crafting a pretty slick set of API modeling tools. I feel the platform provides me with a new way to look at the API life cycle &mdash; a perspective that spans multiple dimensions, including design, definition, virtualization, documentation, testing, discovery, orchestration, and client. … I am curious to see what API designers and architects do with Stoplight &mdash; I feel like it has the potential to shift the landscape pretty significantly, something I haven't seen any API service provider do in a while. ([Automagically Defining Your API Infrastructure As You Work Using Stoplight.io](https://apievangelist.com/2016/02/16/automagically-defining-your-api-infrastructure-as-you-work-using-stoplightio))

I also started playing around with Stoplight. I was curious to see whether the visual modeling tools for describing an API could take the tedium out of working in YAML on a line-by-line level with the spec. While using Stoplight to create an OpenAPI description for a recent web API at my work, I found Stoplight to be useful. It made it much easier to create the OpenAPI specification document.

Stoplight's visual modeling tools eliminate the need to be familiar with the format of the OpenAPI specification. You don't have to know the data type for each property, whether the property needs to be nested or defined directly and so forth. That level of complexity has been abstracted away in a GUI for designing your API.

<figure><a target="_blank" class="noExtIcon" href="https://stoplight.io/studio/"><img class="docimage large border" src="{{site.media}}/stoplight_parameter_info2.png" alt="Stoplight app interface" /></a><figcaption>Stoplight provides visual modeling tools to describe your API. The screenshot above shows the UI for documenting parameters. Stoplight's UI produces a valid OpenAPI specification document, which is then used to drive other API services and activities on their site.</figcaption></figure>

As part of the visual modeling tools, Stoplight's interface for describing JSON schemas (used in request bodies or responses) is especially welcome. Details about how to document JSON schemas aren't fully described in the OpenAPI spec, so they can be particularly tricky. What's especially neat about Stoplight is that you can paste in a chunk of JSON and it will automatically describe the JSON in the right syntax for you. You do this using the **Generate from JSON** button. For more details, see this section in the Stoplight getting started tutorial: [Step 5: Enter the responses and response schema information](pubapis_openapis_quickstart_stoplight.html#responses). Here's a short video clip showing this auto-generation:

{% if site.format == "kindle" or site.format == "pdf" %}

{: .note}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/pubapis_stoplight.html] to view the content.*
{% elsif site.format == "web" %}

<p><figure><iframe width="640" height="385" src="https://www.youtube.com/embed/0d-iO9WW1l4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><figcaption>Describing the JSON format in the responses can be especially tricky. Stoplight's visual modeling tools are especially helpful here because they allow you to automatically create the correct JSON schema definition from a block of JSON that you paste into the editor.</figcaption></figure></p>
{% endif %}

Additionally, you can toggle between the visual tools (the Form view) and the specification code (the Code view) easily. If you want to work in the code, your changes will update the content in the UI as well. The two sync perfectly when you make updates in either mode. Here's a short video I made showing this bidirectional synchronization:

{% if site.format == "kindle" or site.format == "pdf" %}

{: .note}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/pubapis_stoplight.html] to view the content.*
{% elsif site.format == "web" %}

<p><figure><iframe width="640" height="385" src="https://www.youtube.com/embed/ngTq3aGZFVA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><figcaption>When you switch to the code view, the editor automatically goes to the part of the spec you were creating in the visual editor and highlights it. When you switch back, the visual UI updates with any changes you made in the code. Switching between modes is seamless and easy.</figcaption></figure></p>
{% endif %}

## Not just simpler tools, but a design-first philosophy

After playing around with Stoplight, I had the opportunity to chat with [Marc Macleod](https://www.linkedin.com/in/marcmacleod/), founder of Stoplight, about how Stoplight differs from [SwaggerHub](pubapis_swaggerhub_smartbear.html) and [Readme](pubapis_hybrid_systems.html#readmeio). Marc said when the spec was first introduced, he saw value in having a standard specification for APIs, but at the time, all the tooling required users to write the specification line by line. This hand coding was error-prone, slow, and tedious.

Marc and his team designed Stoplight with visual modeling tools that don't require teams to know the details of the OpenAPI spec. This simplification of tooling opens up the spec's development to a broader number of team players &mdash; to product managers, developers, UX designers, technical writers, and more. The barrier to entry in the design and prototyping of the API grows beyond the scope of just engineers.

Building the specification document is probably the most important activity in API development because once you have this API description, you have a **single source of truth**. This single source of truth can then inform and empower a variety of other roles: developers, testers, user experience designers, technical writers, sales, and more. Marc's core philosophy is that the OpenAPI specification document is central to API development. After you have this specification document, you can build tools around it to empower these other teams. For example:

*   UX designers can prototype the API using a mock server to let users execute requests and see sample responses &mdash; before developers even write one line of code.
*   Developers can write code by following a specific contract, like a construction team following a blueprint. All the decisions and questions have been put into the specification document to make it actionable.
*   QA can automate unit testing from the API description to speed up endpoint testing across a variety of parameters and scenarios.
*   Technical writers can add descriptions and other examples to the specification description, and then generate interactive documentation without worrying about developing templates, styles, or other formatting and organization.

{% include image_ad_right.html %}

If the OpenAPI specification really powers all of these other activities, doesn't it make sense to build your platform around the specification? And from a larger view, to build your business around the specification? That's what Stoplight is doing. It's what makes them fundamentally different from other API platforms. I think it's what Kin Lane meant when he said Stoplight provides "new way to look at the API life cycle &mdash; a perspective that spans multiple dimensions, including design, definition, virtualization, documentation, testing, discovery, orchestration, and client." From a technical writer's perspective, this puts documentation as the center of API development activities.

## Not a post-design artifact to generate documentation

The OpenAPI specification isn't just an artifact that describes what the developers already coded. Nor is it just a way to create interactive docs featuring a built-in API explorer, or even to make your API machine readable for other systems to consume. The OpenAPI specification is a way to *design and model* your API. Given this purpose, the tools for designing and modeling your API need to be more flexible, easier to manipulate, and accessible to designers and product managers.

Consider this analogy. When I write blog posts, I often write in an editor like Google Docs or Bear or Ulysses or even Word, because these tools make it easy to express myself. I can edit and move content around, or insert notes and half-formed thoughts. Only after I've finished the content do I move it into Markdown or HTML and then populate the structured YAML in my post's frontmatter. It's the same with the API specification. When you're designing and modeling your API, you don't want to be worrying about whether your YAML syntax is valid or be constantly consulting the reference documentation to remember what properties are required at each level of the specification.

If we're ever going to embrace modeling and designing APIs in a collaborative way, we can't do it using a YAML editor writing in the spec's rigid syntax. If we don't have tools to design and model collaboratively, the spec gets designed and developed elsewhere (such as in the pages of Confluence or a Word document on a product manager's computer). The specification document becomes an afterthought to design, something that a techie (such as a developer or technical writer) comes along later to create *post-development*.

Spec-last development has, unfortunately, been the approach in most of the APIs I've worked on &mdash; I create the spec *after* the API has already been designed and coded. The spec becomes just a way to generate reference documentation for the existing API, rather than as a single source of truth that empowers the whole API lifecycle from beginning to end. Invariably, as soon as user testing begins, the project team discovers shortcomings in the API's design they don't have time to fix.

This practice of putting the spec last (rather than first) in the API's development limits the scope of what the OpenAPI specification can do. Lane explains:

> Many developers still see OpenAPI (fka Swagger) about generating API documentation, not as the central contract that is used across every stop along the API life cycle. Most do not understand that you can mock instead of deploying, and even provide mock data, errors, and other scenarios, allowing you to prototype applications on top of API designs. ([Code Generation Of OpenAPI (fka Swagger) Still The Prevailing Approach](http://apievangelist.com/2018/02/14/code-generating-openapi-still-prevailing-approach))

To counter poor practices with *spec-last* development, Lane says more and more platforms are pushing code development further down in the API lifecycle. In other words, design and testing are done first, code development is done later.

In a design-first model, technical writers can also insert themselves early in on the API design process, providing input about the shape and model of the API at a time when their input might get traction. Once the API gets coded by developers, it's hard enough to change a parameter name, much less the parameter itself.

{% include random_ad3.html %}

## Documentation hosting features on Stoplight

In addition to putting the OpenAPI specification at the center of the API lifecycle process, Stoplight has some other features of particular interest to technical writers. Stoplight offers a hosted docs solution, where you can integrate your conceptual content (the tutorials, guides, and other how-to's) with the reference API docs. Here's a sample page from Stoplight for a product called [Shopgate](https://developer.shopgate.com/).

Note that you can integrate your [reference documentation](docendpoints.html) and [conceptual documentation](docconceptual.html) in Stoplight's hosted doc solution. Integrating these two content types has been a longtime challenge for tech writers in the API doc space. (For more on integration challenges with API documentation, see [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).)

{% include ads.html %}

Although I generally like working directly in the code, I've found that Stoplight lets me focus more on the content and less on the details of the spec's format. Ideally, you can probably get developers and other project team members to populate reference content in Stoplight themselves since this is an activity that needs to happen much earlier in the API design process anyway.

If you're documenting an API, [Stoplight](https://stoplight.io) and their [hosted doc solution](https://stoplight.io/documentation/) are worth checking out. But don't think of Stoplight as just a documentation platform or an easy way to generate the OpenAPI description. Consider Stoplight a way to design the single source of truth that will empower all other teams in a more efficient toward a successful API.

## Stoplight demos {#stoplight_demos}

Here's a short demo of how Stoplight renders the OpenAPIWeatherMap OpenAPI specification. This Stoplight output uses the same API explored earlier in this course. Here's what the weather endpoint looks like in Stoplight:

<a class="noCrossRef" href="https://idratherbewriting.stoplight.io/docs/openweathermap3/reference/openweathermap.v1.yaml/paths/~1weather/get"><img src="{{site.media}}/stoplight_tutorial_end_goal.png" alt="Final output from Stoplight tutorial" /></a>

Here are a few noteworthy callouts about the output:

* The conceptual information can live seamlessly alongside the reference content. You don't have a fragmented output with your documentation.
* The Try It Out pane is visually prominent and easy for users to access. This helps encourage more of exploratory, hands-on learning with your API. It is simple to work and try out a call.
* In the Responses section, the Schema and Example are placed on separate tabs that make it easy to toggle between. The schema presents the content in expand/collapse sections, allowing you to visually consume the whole structure at a glance.
* The output feels clean, with ample breathing space and an easy-to-read design. The UI isn't cluttered or busy. There's a good visual hierarchy with the design elements, encouraging focus in the middle pane where the main content lives.

This sample API doesn't include many endpoints, so it might be more instructive to see some other samples of Stoplight listed on their [Case Studies page](https://stoplight.io/case-studies/). For direct links to the documentation mentioned in case studies, explore the following:

* [Zoom API docs](https://marketplace.zoom.us/docs/api-reference/zoom-api)
* [Nutanix API docs](https://www.nutanix.dev/api-reference/)
* [MediaMath API docs](https://apidocs.mediamath.com/)
* [AppointmentPlus API docs](https://appointmentplus.api-docs.io/v1/overview)
* [BigCommerce API docs](https://developer.bigcommerce.com/api-docs)
* [Namely API docs](https://developers.namely.com/1.0/getting-started/introduction)

You can learn more about hosting your documentation with Stoplight here: [Create Hosted API Documentation Online With Our API Docs Generator Tool](https://stoplight.io/documentation/).

## Stoplight tutorial

For an in-depth tutorial for using Stoplight to create an OpenAPI specification, including sample content and values, see [Getting started tutorial: Using Stoplight Studio to create an OpenAPI specification document](pubapis_openapis_quickstart_stoplight.html).
