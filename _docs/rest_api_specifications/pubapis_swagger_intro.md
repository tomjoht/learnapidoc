---
title: Introduction to the OpenAPI specification and Swagger
permalink: /pubapis_swagger_intro.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 4.1
sidebar: docapis
section: restapispecifications
path1: /restapispecifications.html
redirect_from:
- /pubapis_swagger_intro/
---

[OpenAPI](https://www.openapis.org/) is a specification for describing REST APIs. You can think of the OpenAPI specification like the specification for DITA. With DITA, there are specific XML elements used to define help components, and a required order and hierarchy to those elements. Different tools can read DITA and build out a documentation website from the information.

With OpenAPI, instead of XML, you have set of JSON objects, with a specific schema that defines their naming, order, and contents. This JSON file (often expressed in YAML instead of JSON) describes each part of your API. By describing your API in a standard format, publishing tools can programmatically parse the information about your API and display each component in a stylized, interactive display.

{: .tip}
If you want to jump straight into a step-by-step tutorial for creating the OpenAPI specification document, see the [OpenAPI tutorial overview](pubapis_openapi_tutorial_overview.html).

* TOC
{:toc}

## Glancing at the OpenAPI specification

To get a better sense of the OpenAPI specification, let's take a quick glance at some specification excerpts. We'll dive deeper into each element in an upcoming tutorial.

The official description of the OpenAPI specification is available in a [Github repository here](https://github.com/OAI/OpenAPI-Specification). Some of the OpenAPI elements are `paths`, `parameters`, `responses`, and `security`. Each of these elements is a JSON object that holds a number of properties and arrays.

In the OpenAPI specification, your endpoints are `paths`. If you had an endpoint called "pets", your OpenAPI specification for this endpoint might look as follows:

```yaml
paths:
  /pets:
    get:
      summary: List all pets
      operationId: listPets
      tags:
        - pets
      parameters:
        - name: limit
          in: query
          description: How many items to return at one time (max 100)
          required: false
          schema:
            type: integer
            format: int32
      responses:
        '200':
          description: An paged array of pets
          headers:
            x-next:
              description: A link to the next page of responses
              schema:
                type: string
          content:
            application/json:    
              schema:
                $ref: "#/components/schemas/Pets"
        default:
          description: unexpected error
          content:
            application/json:
              schema:
                $ref: "#/components/schemas/Error"
```

This [YAML code](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/petstore.yaml)  comes from the [Swagger Petstore demo](http://petstore.swagger.io/).

Here's what these objects mean:

*  `/pets` is the endpoint path.
*  `get` is the HTTP method.
*  `parameters` lists the parameters for the endpoint.
*  `responses` lists the response from the request.
*  `200` is the HTTP status code.
*  `$ref` is actually a reference to another part of your implementation where the response is defined (in `components`). OpenAPI has a lot of `$ref` references like this to keep your code clean and to facilitate re-use.

{: .tip}
It can take quite a while to figure out the OpenAPI specification. Give yourself a couple of weeks and a lot of example specification documents to look at, especially in the context of the actual API you're documenting. Remember that the OpenAPI specification is general enough to describe nearly every REST API, so some parts may be more applicable than others.

## Validating the specification

When you're coding your OpenAPI specification document, instead of working in a text editor, you can write your code in the [Swagger Editor](http://editor.swagger.io/). The Swagger Editor dynamically validates your content to determine whether the specification document you're creating is valid.

{% include course_image.html url="http://editor.swagger.io/" size="large" filename="swagger_editor_pic" ext_print="png" ext_web="png" alt="The Swagger Editor validates your specification content dynamically and shows you the display on the right" caption="The Swagger Editor validates your specification content dynamically and shows you the display on the right" %}

While you're coding in the Swagger Editor, if you make an error, you can quickly fix it before continuing, rather than waiting until a later time to run a build and sort out errors.

For your specification document's format, you have the choice of working in either JSON or YAML. The previous code sample is in [YAML](http://yaml.org/). YAML refers to "YAML Ain't Markup Language," meaning YAML doesn't have any markup tags (`< >`), as would be common with other markup languages such as XML.

YAML depends on spacing and colons to establish the object syntax. This makes the code more human-readable, but it's also sometimes trickier to get the spacing right.

## Auto-generating the OpenAPI file from code annotations

Instead of coding the OpenAPI specification document by hand, you can also auto-generate it from annotations in your programming code. This developer-centric approach may make sense if you have a large number of APIs or if it's not practical for technical writers to create this documentation.

Swagger offers a variety of libraries that you can add to your programming code to generate the specification document. These Swagger libraries then parse the annotations that developers add and generate the OpenAPI specification document. These libraries are considered part of the [Swagger Codegen](https://swagger.io/swagger-codegen/) project. The annotation methods vary based on the programming language. For example, here's a [tutorial on annotating code with Swagger for Scalatra](http://www.infoq.com/articles/swagger-scalatra). For more information on Codegen, see [Comparison of Automatic API Code Generation Tools For Swagger](https://apievangelist.com/2015/06/06/comparison-of-automatic-api-code-generation-tools-for-swagger/) by API Evangelist. For additional tools and libraries, see [Swagger services and tools](http://swagger.io/open-source-integrations/) and [Open Source Integrations](https://swagger.io/open-source-integrations/).

Although this approach "automates" the spec's generation, someone still has to know exactly what annotations to add and how to add them (the process isn't too unlike Javadoc's comments and annotations). Then someone has to write content for each of the annotation's values (describing the endpoint, the parameters, and so on).

In short, this process isn't without effort &mdash; the automated part is having the Codegen libraries generate the model definitions and the valid specification document that conforms the OpenAPI schema. Still, many developers get excited about this approach because it offers a way to generate documentation from code annotations, which is what developers have been doing for years with other programming languages such as Java (using [Javadoc](http://www.oracle.com/technetwork/articles/java/index-137868.html)) or C++ (using [Doxygen](http://www.stack.nl/~dimitri/doxygen/)). They usually feel that generating documentation from the code results in less documentation drift. Docs are likely to remain up to date if the doc is tightly coupled with the code.

If you go this route, make sure you get access to the source code to make edits to the annotations. Otherwise, your developers will be writing your docs (which can be good but often leads to poor results).

## Another approach: spec-first development

Although you can generate your specification document from code annotations, many say that auto-generation is *not* the best approach. In [Undisturbed REST: A Guide to Designing the Perfect API](https://www.mulesoft.com/lp/ebook/api/restbook), [Michael Stowe](https://twitter.com/mikegstowe) recommends that teams implement the specification by hand and then treat the specification document as a contract that developers use when doing the actual coding. This approach is often referred to as "spec-first development."

{% include course_image.html url="https://www.amazon.com/gp/product/B0125TOLNU?keywords=undisturbed%20rest%20michael%20stowe&qid=1444665700" size="large" filename="spec_driven_development" ext_print="jpg" ext_web="jpg" alt="Spec-first development" caption="Spec-first development is a philosophy about how to develop APIs in a more efficient way. If you follow a spec-first philosophy, you write the spec first and use it as a contract that developers code to." %}

In other words, developers consult the specification document to see what the parameter names should be called, what the responses should be, and so on. After this "contract" or "blueprint" has been established, Stowe says you can then put the annotations in your code (if you want) to generate the specification document in a more automated way. But don't code without first having a spec.

Too often, development teams quickly jump to coding the API endpoints, parameters, and responses without doing much user testing or research into whether the API aligns with what users want. Since versioning APIs is extremely difficult (you have to support each new version going forward with full backwards compatibility to previous versions), you want to avoid the "fail fast" approach that is so commonly celebrated with agile. There's nothing worse than releasing a new version of your API that invalidates endpoints or parameters used in previous releases. Constant versioning in APIs can become a documentation nightmare.

In my conversations with [Smartbear](https://smartbear.com/), the company that makes [SwaggerHub](pubapis_swaggerhub_smartbear.html) (a collaborative platform for teams to work on Swagger API specifications), they say it's now more common for teams to manually write the spec rather than embed source annotations in programming code to auto-generate the spec. The spec-first approach helps distribute the documentation work to more team members than engineers. Defining the spec before coding also helps teams produce better APIs.

Even before the API has been coded, your spec can generate a [mock response](pubapis_swaggerhub_smartbear.html#mocking_servers) by adding response definitions in your spec. The mock server generates a response that looks like it's coming from a real server, but it's really just a pre-defined response in your code and appears to be dynamic to the user.

## The tech writer's role with the spec

In most of my projects, developers haven't been that familiar with Swagger or OpenAPI, so I usually create the OpenAPI specification document by hand. Additionally, I often don't have access to the programming source code, and our developers speak English as a second or third language only. They aren't eager to be in the documentation business.

You will most likely find that engineers in your company aren't familiar with Swagger or OpenAPI but are interested in using it as an approach to API documentation (the schema-based approach fits the engineering mindset). As such, you'll probably need to take the lead to guide engineers in the needed information, approach, and other details that align with best practices toward creating the spec.

In this regard, tech writers have a key role to play in collaborating with the API team in producing the spec. If you're following a spec-first development philosophy, this leading role can help you shape the API before it gets coded and locked down. This means you might be able to actually influence the names of the endpoints, the consistency and patterns, simplicity, and other factors that go into the design of an API (which tech writers are usually absent from).

## Rendering Your OpenAPI specification with Swagger UI

After you have a valid OpenAPI specification document that describes your API, you can then feed this specification to different tools to parse it and generate the interactive documentation similar to the [Petstore demo](http://petstore.swagger.io/).

Probably the most common tool used to parse the OpenAPI specification is [Swagger UI](https://github.com/swagger-api/swagger-ui). (Remember, "Swagger" refers to API tooling, whereas "OpenAPI" refers to the vendor-neutral, tool agnostic specification.) After you download Swagger UI, it's pretty easy to configure it with your own specification file. I provide a [Swagger UI tutorial](pubapis_swagger.html) in an upcoming section.

The Swagger UI code generates a display that looks like this:

{% include course_image.html url="http://petstore.swagger.io/" size="large" border="" filename="swagger_petstore_pic" ext_print="png" ext_web="png" alt="" caption="The Swagger Petstore demo shows how Swagger UI renders the OpenAPI spec" %}

You can also check out the [sample Swagger UI integration with a simple weather API](https://idratherbewriting.com/learnapidoc/assets/files/swagger/) used as a course example.

Some designers criticize Swagger UI's expandable/collapsible output as being dated. At the same time, developers find the one-page model attractive and like the ability to zoom out or in for details. By consolidating all endpoints on the same page in one view, users can take in the whole API at a glance. This display gives users a glimpse of the whole, which helps reduce complexity and enables them to get started. In many ways, the Swagger UI display is a [quick-reference guide](docapis_doc_quick_reference.html) for your API.

{% include content/activities/explore_swagger_petstore.md %}

## Other tools for reading OpenAPI spec

There are other tools besides Swagger UI that can parse your OpenAPI specification document. Some of these tools include [Restlet Studio](https://restlet.com/products/restlet-studio/), [Apiary](https://apiary.io/), [Apigee](http://apigee.com/about/), [Lucybot](https://lucybot.com/), [Gelato](https://gelato.io/), [Readme.io](http://readme.io/), [swagger2postman](https://github.com/josephpconley/swagger2postman), [swagger-ui responsive theme](https://github.com/jensoleg/swagger-ui), [Postman Run Buttons](https://www.getpostman.com/docs/run_button) and more.

Some web designers have created integrations of OpenAPI with static site generators such as Jekyll (see [Carte](https://github.com/Wiredcraft/carte) and [Readme](https://readme.io)). You can also embed Swagger UI into web pages as well. More tools roll out regularly for parsing and displaying content from a OpenAPI specification document.

In fact, once you have a valid OpenAPI specification, using a tool called [API Transformer](https://apitransformer.com), you can even transform it into other API specification formats, such as [RAML](http://raml.org/) or [API Blueprint](https://apiblueprint.org/). This allows you to expand your tool horizons even wider.

## Customizing Swagger UI

You might be concerned that Swagger UI outputs look similar. With my OpenAPI projects, I usually customize the Swagger UI's colors a bit, add a custom logo and a few other custom styles. With one project, I spliced in a reference to Bootstrap so that I could have pop-up modals where users could generate their authorization codes. You can even add collapse and expand features in the `description` element to provide more information to users.

Beyond these simple modifications, however, it takes a bit of web-developer prowess to significantly alter the Swagger UI display. It's possible, but you need web development skills.

## Downsides to OpenAPI and Swagger UI

Despite Swagger's interactive power to appeal to the "let me try" desires of users, there are some downsides to Swagger and OpenAPI:

*   **Documentation for reference information only**: First, the OpenAPI specification and Swagger UI's output cover only [reference documentation](docendpoints.html). OpenAPI provides the basics about each endpoint, including a description, the parameters, a sample request, and a response. It doesn't provide space for a [getting started tutorial](docapis_doc_getting_started_section.html), information about how to get [API keys](docapis_more_about_authorization.html), how to run a [sample app](docapis_sdks_and_sample_apps.html), information about [rate limits](docapis_rate_limiting_and_thresholds.html), or the hundred other details that go into a [user guide for developers](docnonref.html). So even though you have this cool, interactive tool for users to explore and learn about your API, you still have to provide a user guide. As an analogy, delivering a [Javadoc](nativelibraryapis_create_javadoc.html) or [Doxygen](nativelibraryapis_doxygen.html) output for a library-based API won't teach users how to actually use your API. You still have to describe scenarios for using a class or method, explain how to set your code up, what to do with the response, how to troubleshoot problems, and so on. In short, you still have to write actual help guides and tutorials.

*   **Redundancy/duplication of information**: With OpenAPI in the mix, you potentially have *two places* where you're describing your endpoints and parameters (both the Swagger UI reference output and your user guide), and you have to either keep the two in sync, embed one in the other, or otherwise link between the two. I explore integration strategies in [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).

*   **Complexity of API workflows**: The complexity of your API can also create a limitation with Swagger. [Peter Gruenbaum](https://www.udemy.com/user/petergruenbaum/), who has published several tutorials on writing API documentation on Udemy, says that automated tools such as Swagger work best when the APIs are simple. When you have endpoints that have complex interdependencies and require special setup workflows or other unintuitive treatment, the straightforward nature of Swagger's Try-it-out interface may likely leave users scratching their heads. For example, if you must first configure an API service before an endpoint returns anything, and then use one endpoint to get a certain object that you pass into the parameters of another endpoint, and so on, the Try-it-out features in the Swagger UI output won't make a lot of sense to users without a detailed tutorial to follow.

*   **Executing requests against real data**: Some users may not realize that clicking "Try it out" makes actual calls against their own accounts based on the API keys they're using. Mixing an invitation to use an exploratory sandbox like Swagger with real data can create some headaches later on when users ask how they can remove all of the test data, or why their actual data is now messed up. For these scenarios, it's best to set up a sandbox or test account for users. But this is easier said than done. You might find that your company doesn't provide a sandbox for testing out the API. All API calls execute against real data.

*   **CORS restrictions**: You might run up against CORS (Cross-Origin Resource Sharing) restrictions in executing API calls. Not all APIs will accept requests executed from a web page. If the calls aren't executing, open the JavaScript Console and check whether CORS is blocking the request. If so, you'll need to ask developers to make adjustments to accommodate requests initiated from JavaScript on web pages. See [CORS Support](https://github.com/swagger-api/swagger-ui#cors-support) for more details.

*   **Extensive request body parameters problematic**: Finally, I found that endpoints with lengthy request body parameters tend to be problematic. One API I had to document included requests with request body parameters that were *hundreds of lines long* (the request body was used to configure an API server). With this sort of request body parameter, Swagger UI's display fell short of being usable. The team reverted to much more primitive approaches (such as tables and Excel spreadsheets) for listing all of the parameters and their descriptions.

## Some consolations

Despite the shortcomings of OpenAPI, I still highly recommend it for describing your API. OpenAPI is quickly becoming a way for more and more tools (from [Postman Run buttons](docapis_doc_getting_started_section.html#runinpostmanbutton) to nearly every API platform) to easily ingest the information about your API and make it discoverable and interactive with robust, instructive tooling. Through your OpenAPI specification, you can port your API onto many platforms and systems as well as automatically set up unit testing and prototyping.

Swagger UI definitely provides a nice visual shape for an API. You can easily see all the endpoints and their parameters (like a [quick-reference guide](docapis_doc_quick_reference.html)). Based on this framework, you can help users grasp the basics of your API.

Additionally, I found that learning the OpenAPI specification and describing my API with these objects and properties helped inform my own API vocabulary. For example, I realized that there were [four main types of parameters](docapis_doc_parameters.html): "path" parameters, "header" parameters, "query" parameters, and "request body" parameters. I learned that parameter data types with REST were a "Boolean", "number", "integer", or "string." I learned that [responses](docapis_doc_sample_responses_and_schema.html) provided "objects" containing "strings" or "arrays."

In short, implementing the specification gave me an education about API terminology, which in turn helped me describe the various components of my API in credible ways.

OpenAPI may not be the right approach for every API, but if your API has fairly simple parameters, without many interdependencies between endpoints, and if it's practical to explore the API without making the user's data problematic, OpenAPI and Swagger UI can be a powerful complement to your documentation. You can give users the ability to try out requests and responses for themselves.

With this interactive element, your documentation becomes more than just information. Through OpenAPI and Swagger UI, you create a space for users to both read your documentation and experiment with your API at the same time. That combination tends to provide a powerful learning experience for users.

## Resources and further reading

See the following resources for more information on OpenAPI and Swagger:

* [API Transformer ](https://apitransformer.com)
* [APIMATIC](http://www.apimatic.io)
* [Carte](https://github.com/Wiredcraft/carte)
* [Swagger editor](http://editor.swagger.io)
* [Swagger Hub](https://swaggerhub.com)
* [Swagger Petstore demo](http://petstore.swagger.io)
* [Swagger Tools](http://swagger.io/tools)
* [Swagger UI tutorial](pubapis_swagger.html)
* [OpenAPI specification tutorial](pubapis_openapi_tutorial_overview.html)
* [Swagger/OpenAPI specification](https://github.com/OAI/OpenAPISpecification)
* [Swagger2postman](https://github.com/josephpconley/swagger2postman)
* [Swagger-ui Responsive theme](https://github.com/jensoleg/swagger-ui)
* [Swagger-ui](https://github.com/swagger-api/swagger-ui)
* [Undisturbed REST: A Guide to Designing the Perfect API](http://www.mulesoft.com/lp/ebook/api/restbook), by Michael Stowe

{: .tip }
To see a presentation that covers the same concepts in this article, see [https://goo.gl/n4Hvtq](https://goo.gl/n4Hvtq).
