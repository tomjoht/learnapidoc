---
title: Stoplight &mdash; visual modeling tools for creating your OpenAPI spec
permalink: pubapis_stoplight.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.9
section: restapispecifications
path1: /restapispecifications.html
---

Previously, I talked about [SwaggerHub](pubapis_swaggerhub_smartbear.html) as a tool to simplify your authoring and publication of the [OpenAPI specification](pubapis_openapi_tutorial_overview.html). Now let's explore another tool called [Stoplight.io](https://stoplight.io?utm_source=idratherbewriting).

Among other services, Stoplight provides visual modeling tools to create an OpenAPI document for your API &mdash; without requiring you to know the OpenAPI spec details or code the spec line by line. This API specification document can act as a single source of truth that empowers the whole API lifecycle, from UX prototyping to testing, development, documentation, sales, and more.

* TOC
{:toc}

<small>Note that Stoplight is one of the sponsors of my site.</small>

## Limits to line-by-line spec coding

Before jumping into details, let me provide some background about why I think Stoplight is an important tool, and why I've both listed it in this course and created an [activity for using it](pubapis_stoplight.html#workshop_activity). At the [2018 TC Camp conference](http://www.tccamp.org/) in Santa Clara, the camp organizers put on a full-day API workshop focused on OpenAPI and Swagger. I was excited to see this topic addressed in a workshop because I think coding the spec is both the most complicated and most important part of API documentation.

{% include random_ad2.html %}

I didn't attend the workshop myself, but I was chatting with a few who did. One attendee was a little frustrated that they spent *so much time in [YAML](pubapis_yaml.html)* working on different parts of the OpenAPI spec definition. He said they actually spent most of the day in YAML, and it was kind of frustrating/tedious/boring. For this participant, this isn't what he imagined when he signed up to learn how to create interactive API docs.

In the instructor's defense, I told my friend that describing an API using the OpenAPI spec *does* pretty much involve living in YAML all day, and it *is* tedious, highly prone to error, and technical. One of my favorite API bloggers, API evangelist Kin Lane, explains that "hand crafting even the base API definition for any API is time consuming." It is an activity "that swells quickly to being hours when you consider the finish work that's required" ([Automated Mapping Of The API Universe...](http://apievangelist.com/2016/02/05/automated-mapping-of-the-api-universe-with-charles-proxy-dropbox-openapi-spec-and-some-custom-apis/)).

Lane says he was exploring ways to automate the API definition using different tools such as Charles Proxy. During this time, he started exploring [Stoplight.io](http://stoplight.io/), a platform for modeling APIs and more, and he became engrossed in the workflow and design tools. He says,

> I stayed up way too late playing with some of the new features in Stoplight.io. If you aren't familiar with what the Stoplight team has been cooking up&mdash;they have been hard at work crafting a pretty slick set of API modeling tools. I feel the platform provides me with a new way to look at the API life cycle&mdash;a perspective that spans multiple dimensions, including design, definition, virtualization, documentation, testing, discovery, orchestration, and client. … I am curious to see what API designers, and architects do with Stoplight&mdash;I feel like it has the potential to shift the landscape pretty significantly, something I haven't seen any API service provider do in a while. ([Automagically Defining Your API Infrastructure As You Work Using Stoplight.io](https://apievangelist.com/2016/02/16/automagically-defining-your-api-infrastructure-as-you-work-using-stoplightio))

I, too, started playing around with Stoplight. I was curious to see whether the visual modeling tools for describing an API could take the tedium out of working in YAML on a line-by-line level with the spec. While using Stoplight to create an OpenAPI description for a recent web API at my work, and I found Stoplight to be really useful. It made it much easier to create the OpenAPI specification document.

Stoplight's visual modeling tools eliminate the need to be familiar with the format of the specification. You don't have to know the data type for each property, whether the property needs to be indented or defined directly and so forth. That level of complexity has been abstracted away in a GUI for designing your API.

{% include course_image.html url="https://next.stoplight.io/" size="large" border="true" filename="stoplightappinterface" ext_print="png" ext_web="png" alt="Stoplight app interface" caption="Stoplight provides visual modeling tools to describe your API. The screenshot above shows the UI for documenting parameters. Stoplight's UI produces a valid OpenAPI specification document, which is then used to drive other API services and activities on their site." %}

As part of the visual modeling tools, Stoplight's interface for describing JSON schemas (used in request bodies or responses) is especially welcome. Details about how to document JSON schemas aren't fully described in the OpenAPI spec, so they can be particularly tricky. What's especially neat about Stoplight is that you can simply paste in a chunk of JSON and it will automatically describe the JSON in the right syntax for you. You do this using the **Generate from JSON** button, as I've demonstrated in this short video:

<figure><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/0IOWY0Hj3Xc?ecver=2" width="640" height="360" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>Describing the JSON format in the responses can be especially tricky. Stoplight's visual modeling tools are especially helpful here, since they allow you to automatically create the correct JSON schema definition from a block of JSON that you paste in.</figcaption></figure>

Additionally, you can toggle between the visual tools and the specification code easily. If you want to work in the code, your updates will update the content in the UI as well. The two sync perfectly when you make updates in either mode. Here's a short video I made showing this:

<figure>
<div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/vqDJBa-haYs" width="640" height="360" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>When you switch to the code view, the editor automatically goes to the part of the spec you were creating in the visual editor and highlights it. When you switch back, the visual UI updates with any changes you made in the code. Switching between modes is seamless and easy.</figcaption></figure>

## Not just simpler tools, but a design-first philosophy

After playing around with Stoplight, I had the opportunity to chat with [Marc Macleod](https://www.linkedin.com/in/marcmacleod/), founder of Stoplight, about how Stoplight differs from [SwaggerHub](pubapis_swaggerhub_smartbear.html) and [Readme](pubapis_docs_as_code_tool_options.html#readmeio). Marc said when the spec was first introduced, he saw value in having a standard specification for APIs, but at the time, all the tooling required users to write the specification line by line. This hand coding was error prone, slow, and tedious.

Marc and his team designed Stoplight with visual modeling tools that don't require teams to know the details of the OpenAPI spec. This simplification of tooling opens up the spec's development to a wider number of team players &mdash; to product managers, developers, UX designers, technical writers, and more. The barrier to entry in the design and prototyping of the API grows beyond the scope of just engineers.

Building the specification document is probably the most important activity in API development, because once you have this API description, you have a **single source of truth**. This single source of truth can then inform and empower a variety of other roles: developers, testers, user experience designers, technical writers, sales, and more. Marc's core philosophy is that the OpenAPI specification document is central to API development. After you have this specification document, you can build tools around it to empower these other teams. For example, after you have the specification document:  

*   UX designers can prototype the API using a mock server to let users execute requests and see sample responses &mdash; before developers even write one line of code.
*   Developers can write code by following a specific contract, like a construction team following a blueprint. All the decisions and questions have been put into the specification document to make it actionable.
*   QA can automate unit testing from the API description to speed up endpoint testing across a variety of parameters and scenarios.
*   Technical writers can add descriptions and other examples to the specification description, and then generate interactive documentation without worrying about developing their own templates, styles, or other formatting and organization.

If the OpenAPI specification really powers all of these other activities, doesn't it make sense to build your platform around the specification? And from a larger view, to build your business around the specification? That's what Stoplight is doing. It's what makes them fundamentally different from other API platforms. I think it's what Kin Lane meant when he said Stoplight provides "new way to look at the API life cycle &mdash; a perspective that spans multiple dimensions, including design, definition, virtualization, documentation, testing, discovery, orchestration, and client."

## Not a post-design artifact to generate documentation

The OpenAPI specification isn't just an artifact that describes what the developers already coded. Nor is it just a way to create interactive docs featuring a built-in API explorer, or even to make your API machine readable for larger systems to consume. The OpenAPI specification is a way to *design and model* your API. Given this purpose, the tools for designing and modeling your API need to be more flexible, easier to manipulate and leverage by designers and product managers.

Consider this analogy. When I write blog posts, I often write in an editor like Google Docs or Bear or Ulysses or even Word, because these tools make it easy to express myself. I can edit and move content around, or insert notes and half-formed thoughts. Only after I've finished the content do I move it into Markdown or HTML and then populate the structured YAML in my post's frontmatter. It's the same with the API specification. When you're designing and modeling your API, you don't want to be worrying about whether your YAML syntax is valid or be constantly consulting the reference documentation to remember what properties are required or not at each level of the specification.

If we're ever going to embrace modeling and designing APIs in a collaborative way, we can't do it using a YAML editor writing in the spec's rigid syntax. If we don't have tools to design and model collaboratively, the spec gets designed and developed elsewhere (such as in the pages of Confluence, or in a Word document on a product manager's computer). The specification document becomes an afterthought to design, something that a techie (such as a developer or technical writer) comes along later to create *post-development*.

This has, unfortunately, been the approach in 100% of the APIs I've worked on &mdash; I create the spec *after* the API has already been designed and coded. The spec becomes just a way to generate reference documentation for the existing API, rather than as a single source of truth that empowers the whole API lifecycle from beginning to end. Invariably, as soon as user testing begins, the project team discovers shortcomings in the API's design they don't have time to fix.

This practice of putting the spec last (rather than first) in the API's development limits the scope of what the OpenAPI specification can do. Lane explains:

> Many developers still see OpenAPI (fka Swagger) about generating API documentation, not as the central contract that is used across every stop along the API life cycle. Most do not understand that you can mock instead of deploying, and even provide mock data, errors, and other scenarios, allowing you to prototype applications on top of API designs. ([Code Generation Of OpenAPI (fka Swagger) Still The Prevailing Approach](http://apievangelist.com/2018/02/14/code-generating-openapi-still-prevailing-approach))

To counter poor practices with *spec-last* development, Lane says more and more platforms are pushing code development further down in the API lifecycle. In other words, design and testing are done first, code development done later.

As I was explaining the idea of spec-first development to our product manager and other leaders, they suddenly became very intrigued. I explained that we can use the OpenAPI specification to do prototype design and UX testing of the API before we even think about development.

The product managers found this idea compelling no doubt because some previous attempts at creating an API weren't so successful. In fact, we were discussing plans for an API to replace the previous API that never caught on because the intended developer audience found it too clunky, cumbersome, and off-target with the information they needed. It was a failed API.

The light bulb was going off in these product managers' heads. They started to recognize a way to avoid a similar failure scenario. By pushing code development later on in the API lifecycle, we could avoid scenarios where we lose months of work due to unforeseen requirements or other poor planning. Through the API definition, we could build a nearly functional prototype of the API before code development, including mock servers to simulate actual responses that users could evaluate and provide feedback about.

In this design-first model, technical writers can also insert themselves early in on the API design process, providing input about the shape and model of the API at a time when their input might actually get traction. Once the API gets coded by developers, it's extremely hard to change even something as simple as the casing of a parameter name, much less the parameter itself.

## Documentation hosting features on Stoplight

In addition to putting the OpenAPI specification at the center of the API lifecycle process, Stoplight has some other features of particular interest to technical writers. Stoplight offers a hosted docs solution, where you can integrate your non-reference content (the tutorials, guides, and other how-to's) together with the reference API docs. Here's an example hosted doc site on Stoplight for a product called [Shopgate](https://developer.shopgate.com/docs/).

<figure><a class="noCrossRef" href="https://developer.shopgate.com/docs/"><img alt="Shopgate docs" src="images/shopgate.png" class="noExtIcon"/></a><figcaption>You can integrate your reference and non-reference documentation in Stoplight's hosted doc solution. Integrating these two content types has been a longtime challenge for tech writers in the API doc space.</figcaption></figure>

Stoplight also allows you to create variables to use in *both* your specification and your how-to docs. Stoplight plans to take re-use one step further by allowing re-use of your [spec's component definitions](pubapis_openapi_step5_components_object.html) in your [non-reference documentation](docnonref.html) as well. (But this feature is still forthcoming.)

{% include random_ad.html %}

Although I generally like working directly in the code, I've found that Stoplight lets me focus more on the content and less on the details of the spec's format. Ideally, you can probably get developers and other project team members to populate reference content in Stoplight themselves, since this is an activity that needs to happen much earlier in the API design process anyway.

If you're documenting an API, [Stoplight](https://stoplight.io) (and their [hosted doc solution](https://stoplight.io/platform/docs/)) are definitely worth checking out. But don't think of Stoplight as just a documentation platform or an easy way to generate the OpenAPI description. Consider Stoplight a way to design the single source of truth that will empower all other teams in a more efficient toward a successful API.

See the next section for a hands-on activity using Stoplight.

## Activity: Use Stoplight to edit your OpenAPI spec {#workshop_activity}

In previous activities, you created your own [OpenAPI specification document](pubapis_openapi_activity.html) and also created a [Swagger UI display](pubapis_swagger.html#create_swaggerui) with that specification document. In this example, you'll make some modifications to your specification document using [Stoplight](pubapis_stoplight.html), a visual editor.

### Download and populate Stoplight with an OpenAPI specification

In this activity, you'll download and explore Stoplight. To speed things up, you'll start with an OpenAPI definition that you paste into the Stoplight editor, and then you'll make some modifications to it using Stoplight's visual modeling tools.

{% include random_ad2.html %}

You can use Stoplight in the browser or as a web app. For simplicity, we'll use the browser version. For the OpenAPI spec that you paste in, use the custom specification you created in an [earlier activity with the spec](pubapis_openapi_activity.html). However, because Stoplight supports only the 2.0 version of the spec (as do most tools currently), you'll need to convert your 3.0 version to 2.0 using the [API Transformer](https://apimatic.io/transformer) (a nifty converter tool from APIMATIC). Alternatively, you can use the [2.0 version of the Sunrise and Sunset OpenAPI spec](https://idratherbewriting.com/learnapidoc/assets/files/swagger/openapi_sunrise_sunset_20.json) that I've already converted, or the [2.0 version of the OpenWeather Map API](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openweathermap_swagger20.json) that I've already converted.

{% include random_ad.html %}

To download and populate Stoplight with an existing OpenAPI spec:

1.  Go to [next.stoplight.io/](https://next.stoplight.io/).
2.  Click **Login** in the upper-right corner and log in through your GitHub account.
3.  Click **New Project**.
4.  Type a **Project name** (e.g., Sunrise and Sunset API), a **Project path** (e.g., the default path), and a **Summary** (e.g., "Documentation for Sunrise and Sunset API"). Leave the visibility as **Public** and click **Create Project**.
4.  In the left pane, click the **Files** icon to expand the left pane, and then click under Modeling, click **main.oas2**.
5.  At the top of the screen, click **</> Code** to switch into the code view.
6.  In the main content area, delete any existing code shown, and then paste in a 2.0 version of your Swagger spec. (See the introductory text above for a sample spec to use.)
7.  Click **Save** and then **Confirm**.
8.  Click the **Design** button at the top to switch back to the visual view.

### Explore Stoplight and make some edits

Now that you have some data populated in Stoplight, let's explore Stoplight a bit more by expanding various sections and making some modifications.

1.  In the side pane, expand **PATHS** and then expand your endpoint. It should look something like this:

    <img class="large" src="images/stoplight-editor-view-openweathermap.png"/>

2.  In the main content area, the API content is grouped in several sections: Basics, Request, and Responses. Explore each of these sections by expanding them and viewing the content.
3.  Expand the **Requests** section, then expand **[#] Query Parameters**. Make an edit to one of your query parameter descriptions by clicking the <img style="display:inline" src="images/stoplighteditbutton.png"/> button.
4.  Expand the **Responses** section, and for the **200** response, select the **Raw Schema** tab and delete the existing content. It will leave `{}` there, which is good.
5.  Switch to the **Editor** tab, click **Generate from JSON** and paste in the following JSON response from the OpenWeatherMap weather endpoint.

    ```json
    {
      "coord": {
        "lon": -121.96,
        "lat": 37.35
      },
      "weather": [
        {
          "id": 721,
          "main": "Haze",
          "description": "haze",
          "icon": "50n"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 67.42,
        "pressure": 1012,
        "humidity": 40,
        "temp_min": 55.4,
        "temp_max": 77
      },
      "visibility": 16093,
      "wind": {
        "speed": 12.75,
        "deg": 300,
        "gust": 8.7
      },
      "clouds": {
        "all": 75
      },
      "dt": 1524448800,
      "sys": {
        "type": 1,
        "id": 479,
        "message": 0.0043,
        "country": "US",
        "sunrise": 1524489736,
        "sunset": 1524538230
      },
      "id": 420006397,
      "name": "Santa Clara",
      "cod": 200
    }
    ```

6.  Then click **Generate!**.

    This video shows the process of auto-generating JSON. (Instead of starting with the above sample JSON, the video makes request in Postman and then copies the response from there &mdash; but the idea should be clear.)

    <figure><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/0IOWY0Hj3Xc?ecver=2" width="560" height="340" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>Stoplight's visual modeling tools let you automatically create the correct JSON schema definition from a block of JSON that you paste in.</figcaption></figure>

7.  Switch between the **Code** and **Design** views by clicking the corresponding buttons at the top. Make some edits in the code and then switch to the Design view to see the edits reflected. The following video shows this process:

    <figure><div style="position:relative;height:0;padding-bottom:56.25%"><iframe src="https://www.youtube.com/embed/vqDJBa-haYs" width="560" height="340" frameborder="0" allow="autoplay; encrypted-media" style="position:absolute;width:100%;height:100%;left:0" allowfullscreen></iframe></div><figcaption>When you switch to the code view, the editor automatically goes to the part of the spec you were creating in the visual editor and highlights it. When you switch back, the visual UI updates with any changes you made in the code. Switching between modes is seamless and easy.</figcaption></figure>
