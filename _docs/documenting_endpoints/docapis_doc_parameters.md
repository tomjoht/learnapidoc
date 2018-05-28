---
title: "Step 3: Parameters (API reference tutorial)"
permalink: /docapis_doc_parameters.html
course: "Documenting REST APIs"
weight: 3.3
sidebar: docapis
section: docendpoints
path1: /docendpoints.html
---

{% include workflow_map.html step="3" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="images/apiref4.png"/>
{% endif %}

> **{{site.data.apirefsections.parameters.term}}**: {{site.data.apirefsections.parameters.def}}

* TOC
{:toc}

## Example of parameters

The following screenshot shows a sample of parameters with the Box API:

<a class="noExtIcon" href="https://developer.box.com/reference#edit-a-collaboration"><img src="images/boxparameterexample.png" /></a>

In this example, the parameters are grouped by type: path parameters, query parameters, and body parameters. The endpoint also sets off the path parameter (`collab_id`) in an recognizable way.

## Listing parameters in a table

Many times parameters are listed in a simple table or definition list like this:

{% if site.format == "kindle" %}

Parameter
:  Required? yes
:  Data Type: string

{% else %}
<table>
   <colgroup>
      <col width="40%" />
      <col width="30%" />
      <col width="30%" />
   </colgroup>
   <thead>
      <tr>
         <th markdown="span">Parameter</th>
         <th markdown="span">Required/Optional</th>
         <th markdown="span">Data Type</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td markdown="span"><code>format</code></td>
         <td markdown="span">Optional</td>
         <td markdown="span">String</td>
      </tr>
   </tbody>
</table>

{% endif %}

Here's an example from Yelp's documentation:

<a class="noCrossRef" href="https://www.yelp.com/developers/documentation/v2/search_api" class="noExtIcon"><img src="images/yelp_3_17.png" alt="Yelp parameters" /></a>

You can format the values in a variety of ways (aside from a table). If you're using a definition list or other non-table format, be sure to develop styles that make the values easily readable.

## Four types of parameters

REST APIs have four types of parameters:

*  **[Header parameters](#header_parameters)**: Parameters that are included in the request header, usually related to authorization.
*  **[Path parameters](#path_parameters)**: Parameters that appear within the path of the endpoint, before the query string (`?`). These are usually set off within curly braces.
*  **[Query string parameters](#query_string_parameters)**: Parameters that appear in the query string of the endpoint, after the `?`.
*  **[Request body parameters](#request_body_parameters)**: Parameters that are included in the request body. Usually submitted as JSON.

{: .tip}
The terms for each of these parameter types comes from the [OpenAPI specification](pubapis_openapi_tutorial_overview.html), which defines a formal specification that includes descriptions of each parameter type (see the [Path object tutorial](pubapis_openapi_step4_paths_object.html)). Using industry standard terminology helps you develop a vocabulary to describe different elements of an API.

## What to note in parameter documentation

Regardless of the parameter type, consider noting the following:

* [Data types](#data_types_parameters)
* [Max and min values](#max_min_values)

### Data types for parameters {#data_types_parameters}

Because APIs may not process the parameter correctly if it's the wrong data type or wrong format, it's important to list the data type for each parameter. This is usually a good idea with all parameter types but is especially true for request body parameters, since these are usually formatted in JSON.

These data types are the most common with REST APIs:

* **string**: An alphanumeric sequence of letters and/or numbers
* **integer**: A whole number &mdash; can be positive or negative
* **boolean**: True or false value
* **object**: Key-value pairs in JSON format
* **array**: A list of values

{: .note}
There are more data types in programming, and if you have more specific data types that are important to note, be sure to document them. In Java, for example, it's important to note the data type allowed because Java allocates memory space based on the size of the data. As such, Java gets much more specific about the size of numbers. You have a byte, short, int, double, long, float, char, boolean, and so on. However, you usually don't have to specify this level of detail with a REST API. You can probably just write "number."

{% include random_ad.html %}

### Max and min values for parameters {#max_min_values}

In addition to specifying the data type, the parameters should indicate the maximum, minimum, and allowed values. For example, if the weather API allows only longitude and latitude coordinates of specific countries, these limits should be described in the parameters documentation.

Omitting information about max/min values or other unallowed values is a common pitfall in docs. Developers often don't realize all the "creative" ways users might use the APIs. The quality assurance team (QA) is probably your best resource for identifying the values that aren't allowed, because it's QA's job to try to break the API.

{: .tip}
When you test an API, try running a endpoint without the required parameters, or with the wrong parameters, or with values that exceed the max or min amounts. See what kind of error response comes back. Include that response in your [status and error codes section](docapis_doc_status_codes.html). I get deeper with the importance of testing in [Testing your docs](testingdocs.html).

## Header parameters {#header_parameters}

Header parameters are included in the request header. Usually, the header just includes authorization parameters that are common across all endpoints and thus is not documented with each endpoint. Instead, the authorization parameters are documented in the [authorization requirements section](docapis_more_about_authorization.html).

However, if your endpoint requires specific parameters to be passed in the header, you would document them in the parameters documentation here. (For more on request and response headers, see the [curl tutorial](docapis_understand_curl.html#requests-and-responses-include-headers-too) where we explored this with some examples.)

{% include random_ad2.html %}

## Path parameters {#path_parameters}

Path parameters are part of the endpoint itself, and are not optional. For example, `{user}` and `{bicycleId}` are the path parameters in the following endpoint:

```
/service/myresource/user/{user}/bicycles/{bicycleId}
```

Path parameters are usually set off with curly braces, but some API doc style's precede the value with a colon or use other syntax. When you document path parameters, indicate the default values, the allowed values, and other details.

### Color coding the path parameters

When you list the path parameters in your endpoint, it can help to color code the parameters to make them more easily identifiable. This makes it clear what's a path parameter and what's not. Through color you create an immediate connection between the endpoint and the parameter definitions.

For example, you could color code your parameters like this:

<pre>
/service/myresource/user/<span class="orange">{user}</span>/bicycles/<span class="orange">{bicycleId}</span>
</pre>

Optionally, you could also use the same color for the parameters in your documentation:

{% if site.format == "kindle" %}

<span class="orange"><code>user</code></span>
:  Here's my description of the user parameter.

<span class="orange"><code>bicycleId</code></span>
:  Here's my description of the bicycles parameter.

{% else %}

<table>
   <colgroup>
      <col width="30%" />
      <col width="70%" />
   </colgroup>
   <thead>
      <tr>
         <th>URL Parameter</th>
         <th>Description</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td><b><code><span class="orange">user</span></code></b></td>
         <td>Here's my description of the user parameter.</td>
      </tr>
      <tr>
         <td><b><code><span class="orange">bicycles</span></code></b></td>
         <td>Here's my description of the bicycles parameter.</td>
      </tr>
   </tbody>
</table>
{% endif %}

By color coding the parameters, it's easy to see the parameter in contrast with the other parts of the endpoint.

## Query string parameters {#query_string_parameters}

Query string parameters appear after a question mark (`?`) in the endpoint. The question mark followed by the parameters and their values is referred to as the "query string." In the query string,  each parameter is listed one right after the other with an ampersand (`&`) separating them. The order of the query string parameters does not matter.

For example:

<pre>
/surfreport/{beachId}?days=3<span class="orange">&</span>units=metric<span class="orange">&</span>time=1400
</pre>

and

<pre>
/surfreport/{beachId}?time=1400<span class="orange">&</span>units=metric<span class="orange">&</span>days=3
</pre>

would return the same result.

However, with path parameters, order *does* matter. If the parameter is part of the actual endpoint (not added after the query string), then you usually describe this value in the description of the endpoint itself.

## Request body parameters {#request_body_parameters}

Frequently with POST requests, where you're creating something, you submit a JSON object in the request body. This is known as a request body parameter, and the format is usually JSON. This JSON object may be a lengthy list of key value pairs with multiple levels of nesting.

For example, the endpoint may be something simple, such as `/surfreport/{beachId}`. But in the body of the request, you might include a JSON object with a number of key-value pairs, like this:

```json
{
"days": 2,
"units": "imperial",
"time": 1433524597
}
```

### Documenting complex request body parameters

Documenting JSON data (both in request body parameters and responses) is actually one of the trickier parts of API documentation. Documenting a JSON object is easy if the object is simple, with just a few key-value pairs at the same level. But if you have a JSON object with multiple objects inside objects, numerous levels of nesting, and lengthy conditional data, it can be tricky. And if the JSON object spans more than 100 lines, or 1,000, you'll need to carefully think about how you present the information.

Tables work all right for documenting JSON, but in a table, it can be hard to distinguish between top-level and sub-level items. The object that contains an object that also contains an object, and another object, etc., can be confusing to represent.

By all means, if the JSON object is relatively small, a table is probably your best option. But there are other approaches that designers have taken as well.

Take a look at eBay's [findItemsByProduct](http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html) resource. Here's the request body parameter (in this case, the format is XML):

<a class="noCrossRef" class="noExtIcon" href="http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html"><img src="images/ebaysample_3_17.png" alt="eBay parameters" /></a>

Below the request body parameter is a table that describes each parameter:

<a class="noCrossRef" class="noExtIcon" href="http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html"><img src="images/ebaytable_3_17.png" alt="eBay parameters" /></a>

But the sample request also contains links to each of the parameters. When you click a parameter value in the sample request, you go to a page that provides more details about that parameter value, such as the [ItemFilter](http://developer.ebay.com/DevZone/finding/CallRef/types/ItemFilter.html). This is likely because the parameter values are more complex and require more explanation.

The same parameter values might be used in other requests as well, so organization approach facilitates re-use. Even so, I dislike jumping around to other pages for the information I need.

### Swagger UI's approach for request body parameters

[Swagger UI](pubapis_swagger.html), which we explore later and also [demo](pubapis_swagger_demo.html), provides another approach for documenting the request body parameter. Swagger UI shows the request body parameters in the format that you see below. Swagger UI lets you toggle between an "Example Value" and a "Model" view for both responses and request body parameters.

<a class="noExtIcon" href="http://petstore.swagger.io/#/operations/pet/addPet"><img src="images/swaggeruiexamplemodel.png"/></a>

See the [Swagger Petstore](http://petstore.swagger.io/) to explore the demo here. The Example Value shows a sample of the syntax along with examples. When you click the Model link, you see a sample request body parameter and any descriptions of each element in the request body parameter.

The Model includes expand/collapse toggles with the values. (The [Petstore demo](http://petstore.swagger.io/) doesn't actually include many parameter descriptions in the Model, but if any descriptions that are included, they would appear here in the Model rather than the Example Value.)

{: .tip}
In a later section, I dive into Swagger. If you want to skip there now, go to [Introduction to Swagger](pubapis_swagger_intro.html).

You can see that there's a lot of variety in documenting JSON and XML in request body parameters. There's no right way to document the information. As always, choose the method that depicts your API's parameters in the clearest, easiest-to-read way.

If you have relatively simple parameters, your choice won't matter that much. But if you have complex, unwieldy parameters, you may have to resort to custom styling and templates to present them clearly. I explore this topic in more depth in the [Response example and schema section](docapis_doc_sample_responses_and_schema.html).

## Parameters for the surfreport endpoint

For our new surfreport resource, let's look through the parameters available and create a table describing the parameters. Here's what my parameter information looks like:

<div class="docSample">
{% include_relative surfreport_parameters.html %}
</div>

{: .tip}
Even if you use Markdown for docs, you might consider using HTML syntax with tables. You usually want the control over column widths to make some columns wider or narrower. Markdown doesn't allow that granular level of control. With HTML, you can use a `colgroup` property to specify the `col width` for each column.

## Next steps

Now that we've documented the parameters, it's time to show a [sample request](docapis_doc_sample_requests.html) for the resource.
