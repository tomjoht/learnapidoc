---
title: "Integrating Swagger UI with the rest of your docs"
permalink: /pubapis_combine_swagger_and_guide.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.9
section: restapispecifications
path1: /restapispecifications.html
---

Whenever discussions about Swagger and other REST API specifications take place, technical writers invariably ask if they can include the Swagger output with the rest of their documentation. This question dominates tech writer discussions perhaps more than any others when it comes to Swagger.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Single source of truth

When you start pushing your documentation into another source file &mdash; in this case, a YAML or JSON file that's included in a Swagger UI file set, you end up splitting your single source of truth into multiple sources. You might have defined your endpoints and parameters in your regular documentation, and now the OpenAPI spec asks you to provide the same endpoints and descriptions in the spec. Do you copy and paste the same parameters and other information across both sites? Do you somehow generate the descriptions from the same source?

This conundrum is usually crystal clear to technical writers while remaining hard for engineers or other non-writers to grasp. API doc consists of more than reference material about the APIs. You've got all kinds of other information about getting API keys, setup and configuration of services, or other details that don't fit into the spec. I covered much of this in [Documenting non-reference sections](docapis_create_user_guide.html) part of the guide. You have sections such as the following:

* getting started
* Hello World tutorial
* demos
* authentication and authorization
* response and error codes
* code samples and tutorials
* quick reference guide
* troubleshooting
* glossary

Other times, you just have more detail that you need to communicate to the user that won't fit easily into the spec. For example, in the `weather` endpoint in the [sample OpenWeatherMap API](pubapis_swagger.html) that we've been using in this course, there's some detail about city IDs that needs some explanation.

```json
...
},
"id": 420006397,
 "name": "Santa Clara",
 "cod": 200
}
```

What does the code `420006397` mean? If you go to the [City ID section in the docs](http://openweathermap.org/current#cityid), you'll see a link to download a list of file city codes.

If you have a lot of extra information and notes like this in your reference docs, it can be difficult to fit them into the parameter descriptions allotted in the OpenAPI spec. Unfortunately, there's not an easy solution for creating a single source of truth. Here are some options.

## Option 1: Embed Swagger UI in your docs

One solution is to embed Swagger UI in your docs. You can see an example of this here: [Swagger UI Demo 2 (embedded)](pubapis_swagger_demo.html). It's pretty easy to embed Swagger into an HTMl page. The latest version of Swagger has a more responsive, liquid design. It almost looks *designed* to be embedded into another site.

The only problem with the embedding approach is that some of the Models aren't constrained within their container, so they just expand beyond their limits. Try expanding the Models section, particularly the weatherdata response, in the demo and you'll see what I'm talking about.

I'm not sure if some ninja styling prowess could simply overcome this uncontained behavior. Probably, but I'm not a CSS ninja and I haven't fiddled around with this enough to say that it can actually be done. I did end up adding some custom styles to make some adjustments to Swagger UI in various places. If you view the source of [this page](pubapis_swagger_demo.html) and check out the second `<style>` block, you can see the styles I haphazardly added.

I like the embedded option, because it means you can still use the official Swagger UI tooling to read the spec, and you can include it in your main documentation. Swagger UI reads the latest version of the [OpenAPI specification](pubapis_openapi_tutorial_overview.html), which is something many tools don't yet support. Additionally, Swagger UI has the familiar interface that API developers are probably already familiar with.

## Option 2: Put all info into your spec through expand/collapse sections

You can try to put all information into your spec. You may be surprised about how much information you can actually include in the spec. Any `description` element (not just the `description` property in the `info` object) allows you to use Markdown and HTML. For example, here's the `info` object in the OpenAPI spec where a description appears. (If desired, you can type a pipe `|` to break the content onto the next line, and then indent two spaces. You can add a lot of content here.)

```yaml
info:
  title: OpenWeatherMap API
  description: 'Get current weather, daily forecast for 16 days, and 3-hourly forecast 5 days for your city. Helpful stats, graphics, and this day in history charts are available for your reference. Interactive maps show precipitation, clouds, pressure, wind around your location. tations. Data is available in JSON, XML, or HTML format. **Note**: This sample Swagger file covers the `weather` endpoint only from the OpenWeatherMap API. <br/><br/> **Tip**: We recommend that you call the API by city ID (using the `id` parameter) to get unambiguous results for your city.'
  version: '2.5'
```

With one Swagger API project I worked on, I referenced Bootstrap CSS and JS in the header of the index.html of the Swagger UI project, and then incorporated Bootstrap alerts and expand/collapse buttons in this `description` element. Here's an example:

```yaml
info:
  description: >
    ACME offers a lot of configuration options...
    <div class="alert alert-success" role="alert"><i class="fa fa-info-circle"></i> <b>Tip: </b>See the resources available in the portal for more detail.</div>
    <div class="alert alert-warning" role="alert"><i class="fa fa-info-circle"></i> <b>Note: </b>The  network includes a firewall that protects your access to the resources...</div>

    <div class="container">
    <div class="apiConfigDetails">
    <button type="button" class="btn btn-warning" data-toggle="collapse" data-target="#demo">
    <span class="glyphicon glyphicon-collapse-down"></span> See API Configuration Details
    </button>
    <div id="demo" class="collapse">

    <h2>Identifiers Allowed</h2>

    <p>Based on this configuration, ACME will accept any of the following identifiers in requests.</p>

    <table class="table">
    <thead>
    <tr>
    <th>Request Codes</th>
    <th>Data Type</th>
    <th>Comparison Method</th>
    </tr>
    </thead>
    <tbody>
    <tr>
    ...
```

The result was to compress much of the information into a single button that, which clicked, expanded with more details. By incorporating expand/collapse sections from Bootstrap, you can add a ton of information in this description section. (Reference the needed JavaScript in the header or footer of the same index.html file where you referenced your Swagger.yaml file.)

Additionally, you can include modals that appear when clicked. Modals are dialog windows that dim the background outside the dialog window. Again, you can include all the JavaScript you want in the index.html file of the Swagger UI project.

{:. tip}
If you incorporate Bootstrap, you will likely need to restrict the namespace so that it doesn't affect other elements in the Swagger UI display. See [How to Isolate Bootstrap CSS to Avoid Conflicts](https://formden.com/blog/isolate-bootstrap) for details on how to do this.

Overall, I recommend trying to put all your information in the spec first. If you have a complex API or just an API that has a lot of extra information not relevant to the spec, then you can look for alternative approaches. But try to fit it into the spec first. This keeps your information close to the source.

There are just too many benefits to using a spec that you will miss out on if you choose another approach. When you store your information in a spec, many other tools can parse the spec and output the display.

For example, [Spectacle](https://github.com/sourcey/spectacle) is a project that builds an output from a Swagger file with zero coding or other technical expertise. More and more tools are coming out that allow you to import your OpenAPI spec. For example, see [Lucybot](http://lucybot.com/), [Restlet Studio](https://studio.restlet.com), the [Swagger UI responsive theme](https://github.com/jensoleg/swagger-ui), [Material Swagger UI](https://github.com/legendecas/material-swagger-ui), [DynamicAPIs](https://www.dynamicapis.com), [Run in Postman](https://www.getpostman.com/docs/postman_for_publishers/run_button/creating_run_button), [SwaggerHub](pubapis_swaggerhub_smartbear.html), and more. They all read the OpenAPI spec.

In fact, importing or reading a OpenAPI specification document is almost becoming a standard among API doc tools. Putting your content in the OpenAPI spec format allows you to separate your content from the presentation layer, instantly taking advantage of any new API tooling or platform that can parse the spec.

## Option 3: Parse the OpenAPI specification document

If you're using a tool such as Jekyll, which incorporates a scripting language called Liquid, you can read the OpenAPI specification document. It is, after all, just YAML syntax. For example, you could use a `for` loop to iterate through the OpenAPI spec values. Here's a code sample. In this example, the Swagger.yml file is stored inside Jekyll's \_data directory.

```html
{% raw %}<table>
    <thead>
    <tr><th>Name</th><th>Type</th><th>Description</th><th>Required?</th></tr>
    </thead>
    {% for parameter in site.data.swagger.paths.get.parameters %}
        {% if parameter.in == "query" %}
        <tr>
            <td><code>{{ parameter.name }}</code></td>
            <td><code>{{ parameter.type }}</code></td>
            <td>
            {% assign found = false %}
            {% for param in site.data.swagger.paths.get.parameters %}
                {% if parameter.name == param.name %}
                    {{ param.description }}
                    {% assign found = true %}
                {% endif %}
            {% endfor %}
            {% if found == false %}
                ** New parameter **
            {% endif %}
            </td>
            <td><code>{{ parameter.required }}</code></td>
        </tr>
        {% endif %}
    {% endfor %}
</table>{% endraw %}
```

Special thanks to Peter Henderson for sharing this technique and the code. With this approach, you may have to figure out the right Liquid syntax to iterate through your OpenAPI spec, and it may take a while. But this is probably the best way to single source the content.

## Option 4: Store content in YAML files that's sourced to both outputs

Another approach for integrating Swagger's output with your other docs might be to store your descriptions and other info in data yaml files in your project, and then include the data references in your specification document. I'm most familiar with Jekyll, so I'll describe the process using Jekyll (but similar techniques exist for other static site generators).

In Jekyll, you can store content in YAML files in your \_data folder. For example, suppose you have a file called parameters.yml inside \_data with the following content:

```yaml
acme_parameter: >
  This is a description of my parameter...
```

You can then include that reference using tags like this:

```liquid
{% raw %}{{site.data.parameters.acme_parameter}}{% endraw %}
```

In your Jekyll project, you would include this reference your spec like this:

```yaml
info:
  description: >
    {% raw %}{{site.data.parameters.acme_parameter}}{% endraw %}
```

You would then take the output from Jekyll that contains the content pushed into each spec property. In this model, you're generating the OpenAPI spec from your Jekyll project.

I've tried this approach. It's not a bad way to go, but it's hard to ensure that your OpenAPI spec remains valid as you write content. When you have references like this in your spec content (`{% raw %}{{site.data.parameters.acme_parameter}}{% endraw %}`), you can't benefit from the real-time spec validation that you get when using the [Swagger Editor](http://swagger.io/swagger-editor/).

Most likely you'd need to include the entire Swagger UI project in your Jekyll site. At the top of your Swagger.yml file, add frontmatter dashes with `layout: null` to ensure Jekyll processes the file:

```
---
layout: null
---
```

In your `jekyll serve` command, configure the `destination` to build your output into an htdocs folder where you have [XAMPP server](https://www.apachefriends.org/index.html) running. With each build, check the display to see whether it's valid or not.

{% include random_ad.html %}

By storing the values in data files, you can then include them elsewhere in your doc as well. For example, you might have a parameters section in your doc where you would also include the `{% raw %}{{site.data.parameters.acme_parameter}}{% endraw %}` description.

Again, although I've tried this approach, I grew frustrated at not being able to immediately validate my spec. It was more challenging to track down the exact culprits behind my validation errors, and I eventually gave up. But it's a technique that could work.

## Option 5: Use a tool that imports Swagger and allows additional docs

Another approach is to use a tool like [Readme.io](http://readme.io/) that allows you to both import your OpenAPI spec and also add your own separate documentation pages. Readme provides one of the most attractive outputs and is fully inclusive of almost every documentation feature you could want or need. I explore Readme with more depth in the [MTool opions for developer docs](pubapis_docs_as_code_tool_options.html#readmeio). Readme.io requires third-party hosting, but there are some other doc tools that allow you to incorporate Swagger as well.

Sites like [Apiary](https://apiary.io/) and [Mulesoft](https://www.mulesoft.com/) let you import your OpenAPI spec while also add your own custom doc pages. These sites offer full-service management for APIs, so if your engineers are already using one of these platforms, it could make sense to store your docs there too.

Cherryleaf has an interesting post called [Example of API documentation portal using MadCap Flare](https://www.cherryleaf.com/blog/2017/06/example-api-documentation-portal-using-madcap-flare/). In the post, Ellis Pratt shows a proof of concept with a Flare project that reads a OpenAPI spec and generates content from it. Although Ellis is still working on this approach, if he's successful it could be a huge win at integrating tech comm tools with API specification formats.

## Option 6: Change perspectives -- Having two sites isn't so bad

Finally, ask yourself, what's so bad about having two different sites? One site for your reference information, and another for your tutorials and other information that aren't part of the reference. Programmers might find the reference information convenient in the way it distills and simplifies the body of information. Rather than having a massive site to navigate, the Swagger output provides the core reference information they need. When they want non-reference information, they can consult the accompanying guide.

The truth is that programmers have been operating this way for years with [Javadocs](nativelibraryapis_create_javadoc.html), [Doxygen](nativelibraryapis_doxygen.html), and other document-generator tools that generate documentation from Java, C++, or C# files. Auto-generating the reference information from source code is extremely common and wouldn't be viewed as a fragmented information experience by programmers.

So in the end, instead of feeling that having two outputs is fragmented or disjointed, reframe your perspective. Your Swagger output provides a clear go-to source for reference information about the endpoints, parameters, requests, and responses. The rest of your docs provide tutorials and other non-reference information. Your two outputs just became an organizational strategy for your docs.
