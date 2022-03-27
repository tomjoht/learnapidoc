---
title: "Step 3: Parameters (API reference tutorial)"
permalink: docapis_doc_parameters.html
course: "Documenting REST APIs"
weight: 3.4
sidebar: docapis
section: docendpoints
path1: docendpoints.html
last-modified: 2020-06-27
---

{% include workflow_map.html step="3" map="content/reference_doc_map.html"  %}
{% if site.format == "pdf" or site.format == "kindle" %}
<img src="{{site.media}}/apiref4.png"/>
{% endif %}

{{site.data.glossary.parameters.def}}

* TOC
{:toc}

## Examples of parameters

The following screenshot shows a sample parameters section with the Box API:

<figure><a target="_blank" class="noExtIcon" href="https://developer.box.com/reference/put-comments-id/#request"><img class="docimage border" src="{{site.media}}/boxparameterexamplev2.png" alt="Sample parameters from Box API" /></a><figcaption>Sample parameters from Box API</figcaption></figure>

In this example, the parameters are grouped by type: path parameters, query parameters, and body parameters. The endpoint also sets off the path parameter (`comment_id`) in a recognizable way in the endpoint definition.

Many times parameters are simply listed in a table or definition list like this:

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

<a class="noCrossRef" href="https://www.yelp.com/developers/documentation/v2/search_api" class="noExtIcon"><img src="{{site.media}}/yelp_3_17.png" alt="Yelp parameters" /></a>

You can format the values in a variety of ways (aside from a table). If you're using a definition list or other non-table format, be sure to develop styles that make the values easily readable.

{% include image_ad_right.html %}

## Several types of parameters

REST APIs have several types of parameters:

*  **[Header parameters](#header_parameters)**: Parameters included in the request header, usually related to authorization.
*  **[Path parameters](#path_parameters)**: Parameters within the path of the endpoint, before the query string (`?`). These are usually set off within curly braces.
*  **[Query string parameters](#query_string_parameters)**: Parameters in the query string of the endpoint, after the `?`.

Another property closely related to parameters, and which used to be [referred to as a parameter in OpenAPI v2.0](https://swagger.io/docs/specification/2-0/describing-request-body/), is the request body, or [`requestBody`](https://swagger.io/docs/specification/describing-request-body/) in OpenAPI code form. The request body is usually only used with CREATE or PUT methods and often includes a JSON object included in the body of the request. More details are provided in [Request bodies](#request_bodies).

{: .tip}
The terms for each of these parameter types comes from the [OpenAPI specification](pubapis_openapi_tutorial_overview.html), which defines a formal specification that includes descriptions of each parameter type (see the [Path object tutorial](pubapis_openapi_step4_paths_object.html)). Using industry standard terminology helps you develop a vocabulary to describe different elements of an API.

## What to note in parameter documentation

{% include random_ad4.html %}

Regardless of the parameter type, define the following with each parameter:

* [Data type](#data_types_parameters)
* [Max and min value](#max_min_values)

### Data types for parameters {#data_types_parameters}

APIs may not process the parameter correctly if it's the wrong data type or wrong format. Listing the data type is usually a good idea with all parameter types but is especially true for request bodies, since these are typically formatted in JSON.

These data types are the most common with REST APIs:

* **string**: An alphanumeric sequence of letters and/or numbers
* **integer**: A whole number &mdash; can be positive or negative
* **boolean**: True or false value
* **object**: Key-value pairs in JSON format
* **array**: A list of values

{: .note}
There are more data types in programming, and if you have more specific data types that are important to note, be sure to document them. In Java, for example, it's important to note the data type allowed because Java allocates memory space based on the size of the data. As such, Java gets much more specific about the size of the numbers. You have a byte, short, int, double, long, float, char, boolean, and so on. However, you usually don't have to specify this level of detail with a REST API.

{% include ads.html %}

### Max and min values for parameters {#max_min_values}

In addition to specifying the data type, the parameters should indicate the maximum, minimum, and allowed values if appropriate. For example, if the weather API allows only longitude and latitude coordinates of specific countries, these limits should be described in the parameters documentation. Omitting information about max/min values or other prohibited values (when applicable) is a common pitfall in docs.

Not every parameter needs max and min values, however. Note these exceptions:

* **Booleans**: With Booleans, the only options are true or false, so there's no need for max/min values.
* **Strings that use enums**: If a string restricts possible values to enums (an enumerated list), the max/min values wouldn't be appropriate. For example, a geo-related enum might allow only these values: north, south, east, west. There is no max/min value in this case.

In general, as you document parameters, if the parameters allow more freeform values (outside of Booleans and enums), consider ways that developers might break the API. For example, if the API provides an ID field, try entering an ID that is 300 characters long. If you can submit a file attachment, try submitting an 80 MB file.

Your developer audience needs to know the limits applicable to fields. Many times your product team might not even know what limitations exist. (Your QA team should know, though, since it's their job to try to push the system to its limits and break it.)

{: .tip}
When you test an API, try running an endpoint without the required parameters, or with the wrong parameters, or with values that exceed the max or min amounts. See what kind of error response comes back. Include that response in your [status and error codes section](docapis_doc_status_codes.html). I talk more about the importance of testing in [Testing your docs](testingdocs.html).

## Header parameters {#header_parameters}

Header parameters are included in the request header. Usually, the header just includes authorization parameters that are common across all endpoints; as a result, the header parameters aren't usually documented with each endpoint. Instead, the authorization details in header parameters are documented in the [authorization requirements section](docapis_more_about_authorization.html).

However, if your endpoint requires unique parameters to be passed in the header, you would document them in the parameters documentation within each endpoint.

{% include random_ad2.html %}

## Path parameters {#path_parameters}

Path parameters are part of the endpoint itself and are not optional. For example, in the following endpoint, `{user}` and `{bicycleId}` are required path parameters:

<pre>
/service/myresource/user/<span class="orange">{user}</span>/bicycles/<span class="orange">{bicycleId}</span>
</pre>

Path parameters are usually set off with curly braces, but some API doc styles precede the value with a colon or use a different syntax. When you document path parameters, indicate the default values, the allowed values, and other details.

### Color coding the path parameters

When you list the path parameters in your endpoint, it can help to color code the parameters to make them more easily identifiable. Color coding the parameters makes it clear what's a path parameter and what's not. Through color, you create an immediate connection between the endpoint and the parameter definitions.

For example, you could color code your parameters like this:

<pre>
/service/myresource/user/<span class="orange">{user}</span>/bicycles/<span class="orange">{bicycleId}</span>
</pre>

You could then use the same color for these parameters in later descriptions:

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
         <td><b><code><span class="orange">bicycleId</span></code></b></td>
         <td>Here's my description of the bicycles parameter.</td>
      </tr>
   </tbody>
</table>
{% endif %}

By color coding the parameters, it's easy to see the parameter being defined and how it relates to the endpoint definition.

{% include random_ad3.html %}

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

However, with path parameters, the order *does* matter. If the parameter is part of the actual endpoint (not added after the query string), you usually describe this value in the description of the endpoint itself.

## Request bodies {#request_bodies}

Frequently, with POST requests (where you're creating something), you submit a JSON object in the request body. This is known as a request body, and the format is usually JSON. This JSON object may be a lengthy list of key-value pairs with multiple levels of nesting.

For example, the endpoint may be something simple, such as `/surfreport/{beachId}`. But in the body of the request, you might include a JSON object with many key-value pairs, like this:

```json
{
"days": 2,
"units": "imperial",
"time": 1433524597
}
```

In OpenAPI v2.0, request bodies were classified as a type of parameter, but in v3.0, they are not considered a parameter but rather a path property. Given that the request body functions like a parameter, I've decided to leave them classified as a parameter for now. However, note that in the OpenAPI spec, request bodies are technically not a parameter.

### Documenting complex request bodies

Documenting JSON data (both in request bodies and responses) is one of the trickier parts of API documentation. Documenting a JSON object is easy if the object is simple, with just a few key-value pairs at the same level. But if you have a JSON object with multiple objects inside objects, numerous levels of nesting, and lengthy conditional data, it can be tricky. And if the JSON object spans more than 100 lines, or 1,000, you'll need to think carefully about how you present the information.

Tables work all right for documenting JSON, but in a table, it can be hard to distinguish between top-level and sub-level items. The object that contains an object that also contains an object, and another object, etc., can be confusing to represent.

By all means, if the JSON object is relatively small, a table is probably your best option. But there are other approaches that designers have taken as well.

Take a look at eBay's [findItemsByProduct](http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html) resource. Here's the request body (in this case, the format is XML):

<a class="noCrossRef" class="noExtIcon" href="http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html"><img src="{{site.media}}/ebaysample_3_17.png" alt="eBay parameters" /></a>

Below the request body is a table that describes each parameter:

<a class="noCrossRef" class="noExtIcon" href="http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html"><img src="{{site.media}}/ebaytable_3_17.png" alt="eBay parameters" /></a>

But the sample request also contains links to each of the parameters. When you click a parameter value in the sample request, you go to a page that provides more details about that parameter value, such as the [`ItemFilter`](http://developer.ebay.com/DevZone/finding/CallRef/types/ItemFilter.html). The separate page with more detail is likely because the parameter values are more complex and require detailed explanation.

The same parameter values might be used in other requests as well, so eBay's approach likely facilitates re-use. Even so, I dislike jumping around to other pages for the information I need.

### Swagger UI's approach to request bodies

[Swagger UI](pubapis_swagger.html), which we explore later and also [demo](pubapis_swagger_demo.html), provides another approach to documenting the request bodies. Swagger UI shows the request bodies in the format that you see below. Swagger UI lets you toggle between an "Example Value" and a "Model" view for both responses and request bodies.

<a class="noExtIcon" href="http://petstore.swagger.io/#/operations/pet/addPet"><img src="{{site.media}}/swaggeruiexamplemodel.png"/></a>

See the [Swagger Petstore](http://petstore.swagger.io/) to explore the demo here. The Example Value shows a sample of the syntax along with examples. When you click the **Model** link, you see a sample request body and any descriptions of each element.

The Model includes expand/collapse toggles with the values. (The [Petstore demo](http://petstore.swagger.io/) doesn't include many parameter descriptions in the Model, but if you include descriptions, they would appear here in the Model rather than in the Example Value.)

{: .tip}
We'll get into Swagger in much more detail in [Introduction to the OpenAPI specification](pubapis_openapi_intro.html). For now, focus on these core elements of API reference documentation. You will see these same sections appear in the OpenAPI specification.

You can see that there's a lot of variety in documenting JSON and XML in request bodies. There's no right way to document the information. As always, choose the method that depicts your API's parameters in the clearest, easiest-to-read way.

If you have relatively simple parameters, your choice won't matter that much. But if you have complex, unwieldy parameters, you may have to resort to custom styling and templates to present them more clearly. I explore this topic in more depth in the [Response example and schema section](docapis_doc_sample_responses_and_schema.html).

## Parameters for the surfreport endpoint

For our new surfreport resource, let's look through the parameters available and create a table describing the parameters. Here's what my parameter information looks like:

<div class="docSample">
{% include_relative surfreport_parameters.html %}
</div>

{: .tip}
Even if you use Markdown for docs, you might consider using HTML syntax with tables. You usually want the control over column widths to make some columns wider or narrower. Markdown doesn't allow that granular level of control. With HTML, you can use a `colgroup` property to specify the `col width` for each column.

## Next steps

Now that we've documented the parameters, it's time to show a [sample request](docapis_doc_sample_requests.html) for the resource.
