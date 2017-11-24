---
title: "Step 3: Parameters (API reference tutorial)"
permalink: /docapis_doc_parameters.html
categories:
- api-doc
keywords:
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

In this example, the parameters are grouped by type: path parameters, query parameters, and body parameters. The resource URL sets off the path parameter (`collab_id`) in an recognizable way.

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
         <th markdown="span">Required?</th>
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

You can format the values in a variety of ways (aside from a table). If you're using a definition list or other non-table format, you should develop styles that make the values easily readable.

## Four types of parameters

REST APIs have four types of parameters:

*  **Path parameters**: Parameters that appear within the path of the endpoint, before the query string (`?`)
*  **Query string parameters**: Parameters that appear in the query string of the endpoint, after the `?`.
*  **Request body parameters**: Parameters that are included in the request body. Usually submitted as JSON.
*  **Header parameters**: Parameters that are included in the request header. Usually header parameters relate to authorization.

{: .tip}
The terms for each of these parameter types comes from the [OpenAPI specification](pubapis_openapi_tutorial_overview), which defines a formal specification that includes descriptions of each parameter type (see the [Path object tutorial](pubapis_openapi_step4_paths_object)). Using industry standard terminology helps you develop a vocabulary to describe different elements of an API.

## Data types indicate the format for the values

It's important to list the data type for each parameter &mdash; APIs may not process the parameter correctly if it's the wrong data type or wrong format. These data types are the most common with REST APIs:

* **string**: An alphanumeric sequence of letters and/or numbers
* **integer**: A whole number &mdash; can be positive or negative
* **boolean**: true or false
* **object**: Key-value pairs in JSON format
* **array**: A list of values

{: .note}
There are more data types in programming, and if you have more specific data types, be sure to note them. In Java, for example, it's important to note the data type allowed because Java allocates memory space based on the size of the data. As such, Java gets much more specific about the size of numbers. You have a byte, short, int, double, long, float, char, boolean, and so on. However, you usually don't have to specify this level of detail with a REST API. You can probably just write "number."

{% include random_ad.html %}

## Indicate max and min values

In addition to specifying the data type, the parameters should indicate the maximum, minimum, and allowed values. For example, if the weather API only allows longitude and latitude coordinates of specific countries, these limits should be described in the parameters documentation.

## Order of query string parameter doesn't matter

Query string parameters appear after a question mark (`?`) in the resource URL. The question mark followed by the parameters and their values is referred to as the query string. In the query string,  each parameter is listed one right after the other with an ampersand (`&`) separating them. The order of the query string parameters does not matter.

For example:

```html
/surfreport/{beachId}?days=3&amp;units=metric&amp;time=1400
```

and

```html
/surfreport/{beachId}?time=1400&amp;units=metric&amp;days=3
```

would return the same result.

However, with path parameters, order does matter. If the parameter is part of the actual endpoint path (not added in the query string), such as with `{beachId}` in our [sample scenario](docapis_new_endpoint_to_doc.html), then you usually describe this value in the description of the endpoint itself.



{: .tip}
When you test an API, try running an endpoint without the required parameters, or with the wrong parameters. See what kind of error response comes back. Include that response in your response codes section. I get deeper with the importance of testing in [Testing your docs](testingdocs.html).

## Color coding parameter values

When you list the parameters in your endpoint, it can help to color code the parameters both in the table and in the endpoint definition. This makes it clear what's a parameter and what's not. Through color you create an immediate connection between the endpoint and the parameter definitions.

For example, suppose your endpoint definition is as follows:

<div class="docSample">
<p style="font-family: courier"><b>/service/myendpoint/user/<span class="red">{user}</span>/bicycles/<span class="red">{bicycles}</span></b></p>
</div>

Follow through with this same color in your table describing the parameters:

{% if site.format == "kindle" %}

<span class="red"><code>user</code></span>
:  Here's my description of the user parameter.

<span class="red"><code>bicycles</code></span>
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
         <td><span class="red"><code>user</code></span></td>
         <td>Here's my description of the user parameter.</td>
      </tr>
      <tr>
         <td><span class="red"><code>bicycles</code></span></td>
         <td>Here's my description of the bicycles parameter.</td>
      </tr>
   </tbody>
</table>
{% endif %}

By color coding the parameters, it's easy to see the parameter in contrast with the other parts of the URL.

## Request body parameters

Frequently with POST requests, where you're creating something, you submit a JSON object in the request body. This is known as a request body parameter, and you format is usually JSON. This JSON object may be a lengthy list of key value pairs with multiple levels of nesting.

For example, the endpoint URL may be something simple, such as `/surfreport/{beachId}`. But in the body of the request, you might include a JSON object, like this:

```json
{
"days": 2,
"units": "imperial",
"time": 1433524597
}
```

## Documenting complex request body parameters

Documenting JSON data (both in request body parameters and responses) is actually one of the trickier parts of API documentation. Documenting a JSON object is easy if the object is simple, with just a few key-value pairs at the same level. But if you have a JSON object with multiple objects inside objects, numerous levels of nesting, and lengthy conditional data, it can be trickier. And if the JSON object spans more than 100 lines, or 1,000, you'll need to carefully think about how you present the information.

Tables work all right for documenting JSON, but in a table, it can be hard to distinguish between top-level and sub-level items. The object that contains an object that also contains an object, and another object, etc., can be confusing to represent.

By all means, if the JSON object is relatively small, a table is probably your best option. But there are other approaches that designers have taken as well.

Take a look at eBay's [findItemsByProduct](http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html) resource. Here's the request body parameter (in this case, the format is XML).

<a class="noCrossRef" class="noExtIcon" href="http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html"><img src="images/ebaysample_3_17.png" alt="eBay parameters" /></a>

Below the request body parameter is a table that describes each parameter:

<a class="noCrossRef" class="noExtIcon" href="http://developer.ebay.com/DevZone/finding/CallRef/findItemsByProduct.html"><img src="images/ebaytable_3_17.png" alt="eBay parameters" /></a>

But the sample request also contains links to each of the parameters. When you click a parameter value in the sample request, you go to a page that provides more details about that parameter value, such as the [ItemFilter](http://developer.ebay.com/DevZone/finding/CallRef/types/ItemFilter.html). This is likely because the parameter values are more complex and require more explanation.

The same parameter values might be used in other requests as well, so organization approach facilitates re-use. Even so, I dislike jumping around to other pages for the information I need.

## Swagger UI's approach

Is the display from the [Swagger UI](pubapis_swagger_demo.html) any better? The [Swagger UI](https://github.com/swagger-api/swagger-ui) framework reads the OpenAPI specification document and displays it in the visual format that you see with examples such as the [Swagger Petstore](http://petstore.swagger.io/).

The Swagger UI lets you toggle between an "Example Value" and a "Model" view for both responses and request body parameters.

<a class="noExtIcon" href="http://petstore.swagger.io/#/operations/pet/addPet"><img src="images/swaggeruiexamplemodel.png"/></a>

The Example Value shows a sample of the syntax along with examples. When you click the Model link, you see a sample request body parameter and any descriptions of each element in the request body parameter.

The model includes expand/collapse toggles with the values. (The Petstore spec doesn't actually include many parameter descriptions in the Model, but if any descriptions that are included, they would appear here in the Model rather than the Example Value.)

{: .tip}
In a later section, I dive into Swagger. If you want to skip there now, go to [Introduction to Swagger](pubapis_swagger_intro.html).

## Conclusion

You can see that there's a lot of variety in documenting JSON and XML responses. There's no right way to document the parameters. As always, choose the method that depicts your API's parameters in the clearest, easiest to read way.

If you have relatively simple parameters, your choice won't matter that much. But if you have complex, unwieldy parameters, you may have to resort to custom styling and templates to present them clearly.

## Construct a table to list the surfreport parameters

{% include activity.html %}

For our new surfreport endpoint, look through the parameters available and create a table describing the parameters.

Here's what my table or definition list looks like:

{% if site.format == "kindle" %}

{: .note}
Tables don't display well on Kindle devices, so I've converted them into definition lists in this course for Kindle outputs. However, here I've also included an image of the table. Tables are more common and easier, but definition lists work better on mobile and tablet devices.

Table:

<img src="images/kindle-parameters-table-demo.png"/>

Definition list:

`days`
:  The number of days to include in the response. Default is 3.
:  Required: Optional
:  Data type: integer

`units`
:  Options are either <code>imperial</code> or <code>metric</code>. Whether to return the values in imperial or metric measurements. Imperial will use feet, knots, and fahrenheit. Metric will use centimeters, kilometers per hour, and celsius. <code>metric</code> is the default.
:  Required: Optional
:  Data type: string

`time`
:  If you include the time, then only the current hour will be returned in the response.
:  Required: Optional
:  Data type: integer. Unix format (ms since 1970) in UTC.

{% else %}

<div class="docSample">
<table>
<colgroup>
   <col width="20%" />
   <col width="20%" />
   <col width="40%" />
   <col width="20%" />
</colgroup>
<thead>
<tr>
<th>Parameter</th>
<th>Required</th>
<th>Description</th>
<th>Type</th>
</tr>
</thead><tbody>
<tr>
<td>days</td>
<td>Optional</td>
<td>The number of days to include in the response. Default is 3.</td>
<td>Integer</td>
</tr>
<tr>
<td>units</td>
<td>Optional</td>
<td>Options are either <code>imperial</code> or <code>metric</code>. Whether to return the values in imperial or metric measurements. Imperial will use feet, knots, and fahrenheit. Metric will use centimeters, kilometers per hour, and celsius. <code>metric</code> is the default.</td>
<td>string</td>
</tr>
<tr>
<td>time</td>
<td>Optional</td>
<td>If you include the time, then only the current hour will be returned in the response.</td>
<td>integer. Unix format (ms since 1970) in UTC.</td>
</tr>
</tbody></table>
</div>

{% endif %}

{: .tip}
Even if you use Markdown for docs, you might consider using HTML syntax with tables. You usually want the control over column widths to make some columns wider or narrower. Markdown doesn't allow that granular level of control. With HTML, you can use a `colgroup` property to specify the `col width` for each column.

<div class="progress">
  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50"
  aria-valuemin="0" aria-valuemax="100" style="width:50%">
    50% Complete (info)
  </div>
</div>
