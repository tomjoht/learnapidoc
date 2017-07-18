---
title: "Manage Swagger Projects with SwaggerHub"
permalink: /pubapis_swaggerhub_smartbear.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.27
section: restapispecifications
path1: /restapispecifications.html
---

Previously in this course, I explored using [Swagger UI](https://github.com/swagger-api/swagger-ui) as a way to publish your Swagger documentation, and I wrote a [brief tutorial](pubapis_swagger.html) on how to download Swagger UI from GitHub, customize the index.html file from the distribution folder to reference your own Swagger spec file, and then deploy it on a web server.

While the free Swagger UI approach works, you'll run into several problems:

*  It's challenging to collaborate with other project members on the spec
*  It's difficult to gather feedback from reviewers about specific parts of the spec
*  You can't automatically provide the API in the myriad code frameworks your users might want it in

When you're working on REST API documentation, you need tools that are specifically designed for REST APIs &mdash; tools that allow you to create, share, collaborate, version, test, and publish the documentation in ways that don't require extensive customization or time.

There's a point at which experimenting with the free Swagger UI tooling hits a wall and you'll need to find another way to take your toolkit to the next level. This is where [SwaggerHub](swaggerhub.com) from [Smartbear](https://smartbear.com/) comes in. SwaggerHub provides a complete solution for designing, managing, and publishing documentation for your API in ways that will simplify your life as an API technical writer. SwaggerHub is used by more than 15,000 software teams across the globe. As the Swagger spec becomes more of an industry standard for API documentation, SwaggerHub's swagger-specific tooling becomes more and more relevant.

{% if site.target == "web" %}
* TOC
{:toc}
{% endif %}

## The SwaggerHub Dashboard

Smartbear &mdash; the same company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codgen, and others), and that formed the OpenAPI Initiative which leads the evolution of the Swagger (OpenAPI) specification &mdash; developed SwaggerHub as a way to help teams collaborate around the Swagger spec.

Many of the client and server SDKs can be auto-generated from SwaggerHub, and there are a host of additional features you can leverage as you design, test, and publish your API.

To get started with SwaggerHub, go to [swaggerhub.com](https://swaggerhub.com/) and create an account or sign in with your GitHub credentials. After signing in, you see the SwaggerHub dashboard.

<a href="https://app.swaggerhub.com/home"><img src="images/swaggerhubhomepage.png" /></a>

The dashboard shows a list of the APIs you've created. In this example, you see the [Weather API](docapis_scenario_for_using_weather_api.html) that I've been using throughout this course.

## SwaggerHub Editor

SwaggerHub contains the same [Swagger Editor](https://swagger.io/swagger-editor/) that you can access online. This provides you with real-time validation as you work on your API spec.

However, unlike the standalone Swagger Editor, with SwaggerHub's Swagger Editor, you can toggle between 3 modes:

* **Editor**: Shows the spec in full screen
* **Split**: Shows the spec on the left, the UI display on the right
* **UI**: Shows the UI in full screen (and is fully interactive, just as it will be when published)

<img src="images/swaggerhub_ui_toggle.png"/>

Most importantly, as you're working in the Editor, SwaggerHub allows you to *save your work*. (With the free Swagger Editor, your content is just kept in the browser cache, with no ability to save it. When you clear your cache, your content is gone. As a result, if you use the standalone Swagger Editor, you have to regularly copy the content from the Swagger Editor into a file on your own computer each time you finish.)

You can save your spec file directly in SwaggerHub, or you can reference it in an external source such as GitHub.

## Versions

Not only does SwaggerHub allow you to save your Swagger spec, you can save different versions of your spec. This means you can experiment with new content by simply adding a new version. You can return to any version you want, and you can also publish or unpublish any version.

<img src="images/swaggerhub_versioning.png" />

When you publish a version, the published version becomes Read Only. If you want to make changes to a published version (rather than creating a new version), you can unpublish the version and make edits on it.

You can link to specific versions of your documentation, or you can use a more general link path that will automatically forward to the latest version. Here's a link to the Weather API published on SwaggerHub: [https://app.swaggerhub.com/apis/IdRatherBeWriting/MashapeWeatherAPI/](https://app.swaggerhub.com/apis/IdRatherBeWriting/MashapeWeatherAPI/). When you go to this URL, the browser forwards to the latest published version of the spec automatically.

Versioning is helpful when you're collaborating on the spec with other team members. For example, suppose you see the original version drafted by an engineer, and you want to make major edits. Rather than directly overwriting the content (or making a backup copy of an offline file), you can create a new version and then take more ownership to overhaul that version with your own wordsmithing, without fear that the engineer will react negatively about overwritten/lost content.

When you publish your Swagger documentation on SwaggerHub, the base URL remain as a subdirectory on app.swaggerhub.com. You can add your own company logo and visual branding as desired.

## Inline commenting/review

Key to the review process is the ability for team members to comment on the spec inline, similar to Google Docs and its margin annotations. When you're working in SwaggerHub's editor, a small plus sign <img src="images/swaggerhub_plus.png" class="inline"/> appears to the left of every line. Click the plus button to add a comment inline at that point.

<img src="images/swaggerhub_comment_feature.png"/>

When you click the plus sign, a comment pane appears on the right where you can elaborate on comments, and where others can reply. Users can edit, delete, or resolve the comments. This commenting feature helps facilitate the review process in a way that tightly integrates with your content. You can also collapse or show the comments pane as desired.

Few tech comm tools support inline annotations like this, and it wouldn't be possible without a database to store the comments, along with profiles associated with the reviewers. This feature alone would be onerous to implement on your own, as it would require both a database and an authentication mechanism. This is all included in SwaggerHub.

## Auto-Generate Client SDKs

Another benefit to SwaggerHub is the ability to auto-generate the needed client or server code from your specification. In the upper-right corner, click the down-arrow and select **Client** or **Server**. Users have access to generate client and server SDKs in more than 30 formats.

<img src="images/swaggerhub_download.png" />

For example, suppose a user is implementing your REST API in a Java application. The user can choose to download the Java client SDK and will see code showing a Java implementation of your API. Other options include Ruby, Android, Go, CSharp, JavaScript, Python, Scala, PHP, Swift, and many more.

Some API documentation sites look impressive for showing implementations in various programming languages. SwaggerHub takes those programming languages and multiplies them tenfold to provide every possible output a user could want.

The output includes more than a simple code sample showing how to call a REST endpoint in that language. The output includes a whole SDK that includes the various nuts and bolts of an implementation in that language.

Providing this code not only speeds implementation for developers, it also helps you scale your language agnostic REST API to a greater variety of platforms and users, reducing the friction in adoption.

## Export to HTML

One of the options for export is an HTML option. You can export your Swagger spec as a static HTML file in one of two styles: HTML or HTML2.

You can see a demo export of the Weather API here: <a href="http://idratherassets/restapicourse/swaggerhub_htmloutput">HTML</a> or <a href="http://idratherassets/restapicourse/swaggerhub_htmloutput/swaggerhub_html2output">HTML2</a>. Both exports generate all the content into an index.html file.

The HTML export is a more basic output than HTML2. You could potentially incorporate the HTML output into your other documentation. (You might have to strip away some of the code and provide styles for the various documentation elements, and there wouldn't be any interactivity for users to try it out, but it could be done.) In another part of the course I expand on ways to [combine Swagger's doc output with your other docs](pubapis_combine_swagger_and_guide.html).

The HTML2 export is more intended to stand on its own, as it has a fixed left sidebar to navigate the endpoints and navtabs showing 6 different code samples:

<img src="images/swaggerhub_html2output.png"/>

## Mocking Servers

Another cool feature of SwaggerHub is the ability to [create mock API servers](https://app.swaggerhub.com/help/integrations/api-auto-mocking). Suppose you have an API where you don't want users to generate real requests. (Maybe it's an ordering system where users might be ordering products through the API, or you simply don't have test accounts/systems). At the same time, you probably want to simulate real API responses to give users a sense of how your API works.

Assuming you have example responses in your API spec, you can set your API to auto-mock. When a user tries out a request, SwaggerHub will return the example response from your spec. The response won't contain the custom parameters the user entered in the UI but will instead return the example responses coded into your spec as if returned from a server.

Providing an auto-mock for your API solves the problem of potentially complicating user data by having users interact with their real API keys and data. In many cases, you don't want users junking up their data with tests and other experiments. At the same time, you also want to simulate the API response.

Simulating the API can be especially useful for testing your API with beta users. One reason many people code their API with the spec before writing any lines of code (following a "spec-first philosophy") is to avoid coding an API with endpoints and responses that users don't actually want. Using the mock server approach, SwaggerHub can act not only as a documentation solution but also as a beta-testing tool to get the design of your API right before sinking thousands of hours of time into actual coding. You can enable auto-mocking for different versions of your API, creating variants and testing each of the variants.

To set up a mocking server in SwaggerHub, click <img class="inline" src="images/swaggerhub_integration_button.png"/> and select to add a new integration. Select the **API Auto Mocking** service and complete the configuration details. Make sure you have `examples` for each of the endpoint responses in your spec.

## Content Re-use (Domains)

Another feature exclusively available in SwaggerHub is the concept of domains. Domains are basically re-useable code snippets that you can leverage to avoid duplication in your spec.

When you create definitions for your requests and responses, you may find yourself re-using the same code over and over. Rather than duplicating this code, you can save it as a domain. When you want to re-use the code, you select this domain.

Using the domain minimizes duplicate content and enables you to be more consistent and efficient. You can read more about domains [here](https://app.swaggerhub.com/help/domains/about-domains).

## Conclusion &mdash; expanding the tech writer's role with APIs

Tech writers are positioned to be power players in the spec-first philosophy with Swagger design. By becoming adept at coding the Swagger spec and familiar with robust collaborative tools like SwaggerHub, tech writers can lead engineering teams not only through the creation and refinement of the API documentation but also pave the way for beta testing, review, and client/server SDK generation.

Designing a fully-featured, highly functioning Swagger spec is at the heart of this endeavor. Few engineers are familiar with creating these specs, and technical writers who are skilled at both the spec and associating Swagger tooling can fill critical roles on API teams.

Great tools aren’t free. SwaggerHub does [cost money](https://swaggerhub.com/pricing/), but this is a good thing, since free tools are frequently abandoned, poorly maintained, and lack documentation and support. By using a paid tool from a robust API company (the very company that maintains the Swagger tools, and sponsors the Swagger (OpenAPI) specification), you can plug into the tools you need to scale your API documentation efforts.

*Note that SwaggerHub is one of the sponsors of this site.*

{% include random_ad.html %}
