---
title: "Swaggerhub tutorial"
permalink: /pubapis_swaggerhub_smartbear.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.27
section: restapispecifications
---

Earlier I explored using [Swagger UI](https://github.com/swagger-api/swagger-ui) and wrote a [brief tutorial](pubapis_swagger.html) on how to download this display framework from GitHub, customize the index.html file from the dist folder to reference your own Swagger spec file, and then deploy it on a web server.

While that approach works, you'll run into several problems:

*  How do you collaborate with engineers on the content?
*  How do you gather feedback from reviewers about specific parts of the spec?
*  How do you provide the API in the myriad code frameworks your users might want it in?

When you're working on REST API documentation, you need tools that are specifically designed for REST APIs &mdash; tools that allow you to create, share, collaborate, version, test, and publish the documentation.

There's a point at which experimenting with the free Swagger UI tooling hits a wall and you'll need to take your toolkit to the next level. This is where [SwaggerHub](swaggerhub.com) from [Smartbear](https://smartbear.com/) comes in. SwaggerHub is used by more than 15,000 software teams across the globe.

Smartbear &mdash; the same company that maintains and develops tooling to support the Swagger or OpenAPI specification &mdash; developed SwaggerHub as a way to help teams collaborate around the Swagger spec. Many of the client and server SDKs are available from SwaggerHub, and there are a host of additional features you can leverage as you design, test, and publish your API.

## The SwaggerHub Dashboard

To get started with SwaggerHub, go to [swaggerhub.com](https://swaggerhub.com/) and create an account or sign in with your GitHub credentials. After signing in, you see the SwaggerHub dashboard.

<a href="https://app.swaggerhub.com/home"><img src="images/swaggerhubhomepage.png" /></a>

The dashboard shows a list of the APIs you've created. In this example, you see the Weather API that I've been using throughout this course.

## SwaggerHub Editor

SwaggerHub contains the same [Swagger UI Editor](https://swagger.io/swagger-editor/) that you can access online. This provides you with real-time validation as you work on your API spec.

However, unlike the Swagger Editor version, you can toggle between 3 modes:

* **Editor**: Shows the spec in full screen
* **Split**: Shows the spec on the left, the UI display on the right
* **UI**: Shows the UI in full screen (and is fully interactive, just as it will be when published)

<img src="images/swaggerhub_ui_toggle.png"/>

More importantly, SwaggerHub allows you to *save your work*. (With the free Swagger Editor, your content is just kept in the browser cache, with no ability to save it. When you clear your cache, your content is gone. As a result, when I use the Swagger Editor, I have to regularly copy the content from the Swagger Editor into a file on my own computer each time I finish.)

You can save your content directly in SwaggerHub, or you can save it in an external source such as GitHub. This might be useful if all your other docs are in GitHub and you want to keep your Swagger spec grouped with these other docs.

## Versions

Not only does SwaggerHub allow you to save your Swagger spec, you can save different versions of your spec. This means you can experiment with new content by simply adding a new version. You can return to any version you want, and you can also publish/unpublish any version.

When you publish a version, the published version becomes Read Only. But you can unpublish the version and make edits on that version (if you don't want to bump to a new version).

You can link to specific versions of your documentation, or you can use a more general link path that will automatically forward to the latest version. Here's a link to the Weather API: [https://app.swaggerhub.com/apis/IdRatherBeWriting/MashapeWeatherAPI/](https://app.swaggerhub.com/apis/IdRatherBeWriting/MashapeWeatherAPI/). When you go to this URL, it forwards to something like MashapeWeatherAPI/2.2.

The base URLs remain as a subdirectory on swaggerhub.com. You can't rewrite the domain to your company's domain &mdash; at least not yet. You can, however, add your own company logo and visual branding.

Versioning is helpful when you're collaborating on the spec with other team members. Suppose you see the original version drafted by the engineer that you want to edit. Rather than directly overwriting the content (or making a backup copy of an offline file), you can create a new version and then take more ownership to overhaul that version with your own wordsmithing, without fear that the engineer will react negatively about overwritten/lost content.

## Inline commenting/review

Key to the review process is the ability for team members to comment on the spec inline, similar to Google Docs and its margin annotations. When you're working in SwaggerHub's editor, a small plus sign <img src="images/swaggerhub_plus.png" class="inline"/> appears to the left of every line. Click it to add a comment inline at that point.

<img src="images/swaggerhub_comment_feature.png"/>

A comment pane appears on the right where you can elaborate on comments, and where others can reply. Users can edit, delete, or resolve the comments. This commenting feature helps facilitate the review process in a seamless way with your content.

Few tech comm tools support annotations like this, and it wouldn't be possible without a database to store the comments, along with profiles associated with the reviewers. This feature alone would be onerous to implement on your own, as it would require both a database and an authentication mechanism.

You can collapse or show the comments pane as desired.

## Auto-Generate Client SDKs

Another benefit to SwaggerHub is the ability to auto-generate the needed client code from your specification. (This is one of the reasons for writing the spec in the first place.)

In the upper-right corner, click the down-arrow and select **Client** or **Server**. Users have access to generate client SDKs in more than 30 formats.

<img src="images/swaggerhub_download.png" />

For example, suppose a user is implementing your REST API in a Java application. The user can choose to download the Java client SDK and will see code showing a Java implementation of your API. Other options include Ruby, Android, Go, CSharp, JavaScript, Python, Scala, PHP, Swift, and many more.

Some API documentation sites look impressive for showing implementations in various programming languages. SwaggerHub takes those programming languages and multiplies them tenfold to provide every possible output a user could want.

The output includes more than a simple code sample showing how to call a REST endpoint in that language. The output includes a whole SDK that includes the various nuts and bolts of an implementation in that language.

Providing this code not only speeds implementation for developers, it also helps you scale your language agnostic API to a greater variety of users.

## Export to HTML

In the options for auto-generating code samples is an HTML option. You can export your Swagger spec as an HTML file. You have two HTML export options: HTML or HTML2. (You can see a demo export of the Weather API here: <a href="http://idratherassets/restapicourse/swaggerhub_htmloutput">HTML</a> or <a href="http://idratherassets/restapicourse/swaggerhub_htmloutput/swaggerhub_html2output">HTML2</a>. Both exports generate all the content into an index.html file.)

The HTML export is the more basic output. You could potentially import the HTML output into your other documentation. You might have to strip away some of the code and provide styles for the various documentation elements (and there wouldn't be any interactivity for users to try it out), but it could be done. (In another part of the course I expand on ways to [combine Swagger's doc output with your other docs](pubapis_combine_swagger_and_guide.html).)

The HTML2 export is more intended to stand on its own, as it has a fixed left sidebar to navigate the endpoints and navtabs showing 6 different code samples:

<img src="images/swaggerhub_html2output.png"/>

## Mocking Servers

Another cool feature of SwaggerHub is the ability to [create mock API servers](https://app.swaggerhub.com/help/integrations/api-auto-mocking). Suppose you have an API where you don't want users to generate real requests. (Maybe it's an ordering system where users might be ordering products through the API, or you simply don't have test accounts/systems). At the same time, you want to simulate real API responses to give users a sense of how your API works.

Assuming you have example responses in your API spec, you can set your API to auto-mock. When a user tries out a request, SwaggerHub will return the example response. The response won't contain the custom parameters the user entered, but will instead return the example responses coded into your spec.

Providing an auto-mock for your API solves the problem of potentially complicating user data by having users interact with their real API keys and data. In many cases, you don't want users junking up their data with tests and other experiments, but you also want to simulate the API.

Simulating the API can be especially useful for testing your API with beta users. One reason many people code their API with the spec before touching code (a "spec-first philosophy") is to avoid coding an API with endpoints and responses that users don't actually want. With this approach, SwaggerHub can act not only as a documentation solution, but as a beta-testing tool to provide different endpoints and responses for your API to get the design right before sinking thousands of hours of time into actual coding.

You can enable auto-mocking for different versions of your API, creating variants and testing each of the variants.

To set up a mocking server in SwaggerHub, click <img class="inline" src="images/swaggerhub_integration_button.png"/> button and select to add a new integration. Select the **API Auto Mocking** service and complete the configuration details.

## Content Re-use (Domains)

Another feature exclusively available in SwaggerHub is the concept of domains. Domains are basically re-useable code snippets. When you create definitions for your requests and responses, you may find yourself re-using the same code over and over. Rather than duplicating this code, you can save it as a domain. Then when you want to re-use the code, you select this domain. Using the domain minimizes duplicate content and enables you to be more consistent and efficient.

## The Role Tech Writers Can Play

Tech writers are positioned to be power players in the spec-first philosophy with Swagger design. By becoming adept at coding the Swagger spec and familiar with robust collaborative tools like SwaggerHub, you can lead engineering teams not only through the creation and refinement of your API documentation, you can also facilitate beta testing, provide feedback inline about each element of the API, and enable the client SDK generation for users.

Designing a fully-featured, highly functioning Swagger spec is at the heart of this endeavor. Few engineers are familiar with creating these specs, and technical writers who are adept at both the spec and associating Swagger tooling can be power players in the API doc space.

Great tools aren't free. SwaggerHub does [cost money](https://swaggerhub.com/pricing/), but this is a good thing. Free tools are frequently abandoned, poorly maintained, and lack documentation and support. by using a paid tool from a robust API company (indeed, the very same company that sponsors and maintains the Swagger/OpenAPI specification), you can plug into comfortable tooling that helps you scale your API efforts.

Note that SwaggerHub is one of the sponsors of this site.

{% include random_ad.html %}









the story -- challenges that you run into when creating a swagger spec


- where do you work on the spec? need a central location to enable collaboration. not like a wiki or something. content needs to be validated. collaborate with sme's
- tech writers can play guiding role with the spec. allow engineers to author content while you let them know about spec best practices. this is currently a huge sweet spot for tech comm right now.
- your efforts can magnify b/c now that you have a swagger spec, you enable lots of things. testing, generate out the needed frameworks for different platforms. you put yourself in the center of things.
- you can generate out your content in lots of formats. html format, for example.
- you enable users to download your API in all of these different formats.
- see lots of examples of how it's done
- used by 15,000+ teams
- versioning for your API
- the concept of domains. enables re-use
- this is the tooling you need for APIs.
- swagger editor
- run by same company that acts as stewards of the swagger API
- mocking server
- allow comments inline
- html2swagger
