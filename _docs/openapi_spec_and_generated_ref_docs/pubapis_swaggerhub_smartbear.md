---
title: "SwaggerHub introduction and tutorial"
permalink: pubapis_swaggerhub_smartbear.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.6
section: restapispecifications
path1: restapispecifications.html
last-modified: 2020-03-30
---

Previously, I explored using the open-source [Swagger UI project](pubapis_swagger.html) as a way to render your [OpenAPI specification document](pubapis_openapi_tutorial_overview.html). The same company that offers the free, open-source version of Swagger Editor and Swagger UI (Smartbear) also offers a premium version with more robust features. This premium version of Swagger Editor is called [SwaggerHub](https://app.swaggerhub.com/). You can see a comparison of features between the open source and premium versions [here](https://swaggerhub.com/swagger-open-source-comparison/).

You can see a demo of the [sample OpenWeatherMap API on SwaggerHub here](https://app.swaggerhub.com/apis-docs/IdRatherBeWriting/open-weather_map_api/).

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

*Note that Smartbear is one of the sponsors of my site.*

## Advantages of SwaggerHub

While the open-source Swagger Editor coupled with Swagger UI works, you'll run into several problems:

*  It's challenging to collaborate with other project members on the spec.
*  It's difficult to gather feedback from reviewers about specific parts of the spec.
*  You can't automatically provide the API in the myriad code frameworks your users might want it in.

When you're working on REST API documentation, you need tools specifically designed for REST APIs &mdash; tools that allow you to create, share, collaborate, version, test, and publish the documentation in ways that don't require extensive customization or time.

There's a point at which experimenting with the free Swagger UI tooling hits a wall, and you'll need to find another way to move to the next level. This next level is where [SwaggerHub](https://swaggerhub.com) from [Smartbear](https://smartbear.com/) comes in. SwaggerHub provides a complete solution for designing, managing, and publishing documentation for your API in ways that will simplify your life as an API technical writer.

More than 15,000 software teams across the globe use SwaggerHub. As the OpenAPI spec becomes more of an industry standard for API documentation, SwaggerHub's swagger-specific tooling can be essential.

## SwaggerHub Intro and Dashboard

[Smartbear](https://smartbear.com/) is the company that maintains and develops the open source Swagger tooling ([Swagger Editor](https://swagger.io/swagger-editor/), [Swagger UI](https://swagger.io/swagger-ui/), [Swagger Codegen](https://swagger.io/swagger-codegen/), and others.) They also formed the [OpenAPI Initiative](https://www.openapis.org/), which leads the evolution of the [Swagger (OpenAPI) specification](https://github.com/OAI/OpenAPI-Specification/).

Smartbear developed SwaggerHub as a way to help teams collaborate around the OpenAPI spec. Many of the client and server SDKs can be auto-generated from SwaggerHub, and there are a host of additional features you can leverage as you design, test, and publish your API.

To get started with SwaggerHub, go to [swaggerhub.com](https://swaggerhub.com/) and create an account or sign in with your GitHub credentials. After signing in, you see the SwaggerHub dashboard.

<a href="https://app.swaggerhub.com/home" class="noExtIcon"><img src="{{site.media}}/swaggerhubhomepage.png" /></a>

The dashboard shows a list of the APIs you've created. In this example, you see the [OpenWeatherMap API](docapis_scenario_for_using_weather_api.html) that I've been using throughout this course.

## SwaggerHub Editor

SwaggerHub contains the same [Swagger Editor](https://swagger.io/swagger-editor/) that you can access online. This editor provides you with real-time validation as you work on your API spec. However, unlike the standalone Swagger Editor, with SwaggerHub's Swagger Editor, you can toggle between several modes:

* Hide Navigation
* Hide Editor and Navigation
* Hide UI Docs

<figure><img class="docimage large" src="{{site.media}}/swaggerhub_ui_toggle.png" alt="SwaggerHub's editor gives you more flexible viewing options" /><figcaption>SwaggerHub's editor gives you more flexible viewing options</figcaption></figure>

Most importantly, as you're working in the Editor, SwaggerHub allows you to *save your work*. With the free Swagger Editor, your content is kept in the browser cache, with no ability to save the file in the cloud. When you clear your cache, your content is gone. As a result, if you use the standalone Swagger Editor, you have to regularly copy the content from the Swagger Editor into a file on your own computer each time you finish.

With SwaggerHub, you can save your specification document directly on SwaggerHub's servers, or you can reference and store it in an external source such as GitHub.

## Versions

SwaggerHub not only allows you to save your OpenAPI spec but also save different versions of your spec. As a result, you can experiment with new content by adding a new version. You can return to any version you want, and you can also publish or unpublish any version.

<figure><img class="docimage large" src="{{site.media}}/swaggerhub_versioning.png" alt="Versioning options for your OpenAPI file" /><figcaption>Versioning options for your OpenAPI file</figcaption></figure>

When you publish a version, the published version becomes Read Only. If you want to make changes to a published version (rather than creating a new version), you can unpublish the version and make edits to it.

You can link to specific versions of your documentation, or you can use a more general link path that will automatically forward to the latest version. Here's a link to the OpenWeatherMap API published on SwaggerHub that uses version 2.5.1 of the documentation: [https://app.swaggerhub.com/apis/IdRatherBeWriting/open-weather_map_api/2.5.1/](https://app.swaggerhub.com/apis/IdRatherBeWriting/open-weather_map_api/2.5.1/). To link to a specific version, include the version number in the URL. In contrast, this more general link (which omits a version number) automatically forwards to the latest version (which is 2.5.2): [https://app.swaggerhub.com/apis/IdRatherBeWriting/open-weather_map_api/](https://app.swaggerhub.com/apis/IdRatherBeWriting/open-weather_map_api/).

Versioning is helpful when you're collaborating on the spec with other team members. For example, suppose the original version was drafted by an engineer, and you want to make major edits. Rather than directly overwriting the content (or making a backup copy of an offline file), you can create a new version and then take more ownership to overhaul that version with your own updates, without fear that the engineer will react negatively about overwritten/lost content.

When you publish your Swagger documentation on SwaggerHub, Swagger's base URL (`app.swaggerhub.com`) remains in the URL. Although this base URL isn't customizable, you can add your company logo and visual branding as desired.   

## Inline commenting/review

Key to the review process is the ability for team members to comment on the spec inline, similar to Google Docs and its margin annotations. When you're working in SwaggerHub's editor, a small plus sign {% if site.format == "web" %}<img src="{{site.media}}/swaggerhub_plus.png" class="inline"/>{% endif %} appears to the left of every line. Click the plus button to add a comment inline at that point.

<figure><img class="docimage large" src="{{site.media}}/swaggerhub_comment_feature.png" alt="Inline commenting and reply features on SwaggerHub" /><figcaption>Inline commenting and reply features on SwaggerHub</figcaption></figure>

When you click the plus sign, a comment pane appears on the right where you can elaborate on comments, and where others can reply. Users can edit, delete, or resolve the comments. This commenting feature helps facilitate the review process in a way that tightly integrates with your content. You can also collapse or show the comments pane as desired.

{% include image_ad_right.html %}

Few tech comm tools support inline annotations like this, and it wouldn't be possible without a database to store the comments, along with profiles associated with the reviewers. This feature would be tedious to implement on your own, as it would require both a database and an authentication mechanism. This is all included in SwaggerHub.

## Auto-Generate Client SDKs

Another benefit to SwaggerHub is the ability to auto-generate the needed client or server code from your specification. Client SDKs provide the tooling needed to make API requests in specific programming languages (like Java or Ruby).

In the upper-right corner, click the down-arrow and select **Client** or **Server**. Users have access to generate [client and server SDKs](docapis_sdks.html) in more than 30 formats.

<figure><img class="docimage large" src="{{site.media}}/swaggerhub_download.png" alt="Client and server SDK export capabilities" /><figcaption>Client and server SDK export capabilities</figcaption></figure>

For example, suppose a user is implementing your REST API in a Java application. The user can choose to download the Java client SDK for extensive code that shows a Java implementation of your API. Other options include Ruby, Android, Go, CSharp, JavaScript, Python, Scala, PHP, Swift, and many more.

Some API documentation sites look impressive for showing implementations in various programming languages. SwaggerHub takes those programming languages and multiplies them tenfold to provide every possible output a user could want.

The output includes more than a simple code sample showing how to call a REST endpoint in that language. The output includes a whole SDK that includes the various nuts and bolts of an implementation in that language. (For more information on SDKs, see [SDKs](docapis_sdks.html).)

Providing this code speeds implementation for developers and helps you scale your language-agnostic REST API to a greater variety of platforms and users, reducing the friction in adoption.

## Export to HTML

Among SwaggerHub's many options for generating client and SDK files is an HTML option. You can export your OpenAPI spec as a static HTML file in one of two styles: HTML or HTML2.

You can see a demo export of the OpenWeatherAPI API here: <a href="https://idratherbewriting.com/learnapidoc/assets/files/swaggerhub_htmloutput/index.html">HTML</a> or <a href="https://idratherbewriting.com/learnapidoc/assets/files/swaggerhub_html2output/index.html">HTML2</a>. Both exports generate all the content into an index.html file.

The HTML export is a more basic output than HTML2. You could potentially incorporate the HTML output into your other documentation, such as what [Cherryleaf did in importing Swagger into Flare](https://www.cherryleaf.com/blog/2017/07/example-project-api-documentation-portal-using-madcap-flare/). (You might have to strip away some of the code and provide styles for the various documentation elements, and there wouldn't be any interactivity for users to try it out, but it could be done.) In another part of the course, I expand on ways to [integrate Swagger UI's output with the rest of your docs](pubapis_combine_swagger_and_guide.html).

The HTML2 export is more intended to stand on its own, as it has a fixed left sidebar to navigate the endpoints and navtabs showing six different code samples:

<p>You can see a demo export of the OpenWeatherAPI API here: <a href="https://idratherbewriting.com/learnapidoc/assets/files/swaggerhub_htmloutput/index.html">HTML</a> or <a href="https://idratherbewriting.com/learnapidoc/assets/files/swaggerhub_html2output/index.html">HTML2</a>. Both exports generate all the content into an index.html file.</p>

Both outputs would need a healthy dose of custom styling to be usable.

## Mocking Servers {#mocking_servers}

Another cool feature of SwaggerHub is the ability to [create mock API servers](https://app.swaggerhub.com/help/integrations/api-auto-mocking). Suppose you have an API in which you don't want users to generate real requests. (Maybe it's an ordering system where users might be ordering products through the API, or you don't have test accounts/systems). Even so, you can still simulate responses that let users get a sense of how your API works.

{% include ads.html %}

Assuming you have example responses in your API spec, you can set your API to "auto-mock." When a user tries out a request, SwaggerHub will return the example response from your spec. The response won't contain the custom parameters the user entered in the UI but will instead return the example responses coded into your spec as if returned from a server.

Providing an auto-mock for your API solves the problem of potentially complicating user data by having users interact with their real API keys and data. In many cases, you don't want users junking up their data with tests and other experiments. At the same time, you also want to simulate the API response.

Simulating the API can be especially useful for testing your API with beta users. One reason many people code their API with the spec before writing any lines of code (following a [spec-first philosophy such as that described by Michael Stowe](pubapis_openapi_intro.html#specfirst)) is to avoid coding an API with endpoints and responses that users don't want.

Using the mock server approach, SwaggerHub not only provides documentation but also acts as a beta-testing tool to get the design of your API right before sinking thousands of hours of time into actual coding. You can enable auto-mocking for different versions of your API, creating variants and testing each of the variants.

{% include random_ad3.html %}

To set up a mocking server in SwaggerHub, click the plug icon {% if site.format == "web" %}<img class="inline" src="{{site.media}}/swaggerhub_integration_button.png" />{% endif %} and select to add a new integration. Select the **API Auto Mocking** service and complete the configuration details. Make sure you have `examples` for each of the endpoint responses in your spec. See [API Auto Mocking](https://app.swaggerhub.com/help/integrations/api-auto-mocking) for more details.

## Content Re-use (Domains)

Another feature exclusively available in SwaggerHub is the concept of domains. Domains are re-useable code snippets that you can leverage to avoid duplication in your spec.

When you create definitions for your requests and responses, you may find yourself re-using the same code over and over. Rather than duplicating this code, you can save it as a domain. When you want to re-use the code, you select this domain.

Using the domain minimizes duplicate content and enables you to be more consistent and efficient. You can read more in  [Domains](https://app.swaggerhub.com/help/domains/about-domains).

## Organizations and projects

The collaborative aspect of SwaggerHub is the most common reason people move from the open source tools to SwaggerHub. You might have a lot of different engineers working on a variety of APIs in SwaggerHub. To organize the work, you can group APIs into [organizations](https://app.swaggerhub.com/help/organizations/index), and then assign members to the appropriate organization. When that member logs in to SwaggerHub, he or she will see only the organizations to which he or she has access.

Additionally, within an organization, you can further group APIs into different projects. This way teams working in the same organization but on different projects can have visibility into other APIs.

<figure><img class="docimage large border" src="{{site.media}}/swaggerhub_organizations.png" alt="Organization of projects by team" /><figcaption>Organization of projects by team</figcaption></figure>

This aspect of organizations and projects may not seem essential if you have just one or two APIs, but consider how you'll scale and grow as you have dozens of APIs and multiple teams. In these more robust scenarios, the organization and project features become essential.

{% include random_ad4.html %}

## Expanding the tech writer's role with APIs

Tech writers are positioned to be power players in the spec-first philosophy with OpenAPI design. By becoming adept at coding the OpenAPI spec and familiar with robust collaborative tools like SwaggerHub, tech writers can lead engineering teams not only through the creation and refinement of the API documentation but also pave the way for beta testing, spec review, client/server SDK generation, and more.

Designing a fully-featured, highly functioning OpenAPI spec is at the heart of this endeavor. Few engineers are familiar with creating these specs, and technical writers who are skilled at both creating the spec and setting up Swagger tooling can fill critical roles on API teams.

{% include random_ad2.html %}

Great tools aren’t free. SwaggerHub does [cost money](https://swaggerhub.com/pricing/), but this is a good thing since free tools are frequently abandoned, poorly maintained, and lack documentation and support. By using a paid tool from a robust API company (the same company that maintains the Swagger tools and sponsors the OpenAPI specification), you can plug into the infrastructure you need to scale your API documentation efforts.

{: .tip}
To read more about SwaggerHub, check out my blog post [SwaggerHub: A collaborative platform for working on OpenAPI/Swagger specification files, and more](https://idratherbewriting.com/2017/10/05/swaggerhub-collaborative-platform-for-swagger-openapi-projects).

## Related resources

* [Getting Started With SwaggerHub](https://app.swaggerhub.com/help/tutorials/getting-started?_ga=2.107820612.739591889.1574123176-421060100.1574123176)
