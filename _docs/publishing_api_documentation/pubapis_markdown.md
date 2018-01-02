---
title: "More about Markdown"
permalink: /pubapis_markdown.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.6
section: publishingapis
path1: /publishingapis.html
---

Markdown is a shorthand syntax for HTML. Instead of using `ul` and `li` tags, for example, you just use asterisks (`*`). Instead of using `h2` tags, you use hashes (`##`). There's a Markdown tag for most of the common HTML elements.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample syntax

Here's a sample to get a sense of the syntax:

```
## Heading 2

This is a bulleted list:

* first item
* second item
* third item

This is a numbered list:

1. Click this **button**.
2. Go to [this site](http://www.example.com).
3. See this image:

![My alt tag](myimagefile.png)
```

Markdown is meant to be kept simple, so there isn't a comprehensive Markdown tag for each HTML tag. For example, if you need `figure` elements and `figcaption` elements, you'll need to use HTML. What's nice about Markdown is that if the Markdown syntax doesn't provide the tag you need, you can just use HTML.

{% include random_ad.html %}

If a system accepts Markdown, it converts the Markdown into HTML so the browser can read it.

## Development by popular demand versus by committee

John Gruber, a blogger, first created Markdown (see his [Markdown documentation here](http://daringfireball.net/projects/markdown/)). Others adopted it, and many made modifications to include the syntax they needed. As a result, there are various "flavors" of Markdown, such as [Github-flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), [Multimarkdown](http://fletcherpenney.net/multimarkdown/), [kramdown](https://kramdown.gettalong.org/), and more.

In contrast, DITA is a committee-based XML architecture derived from a committee. There aren't lots of different flavors and spinoffs of DITA based on how people customized the tags. There's an official DITA spec that is agreed upon by the DITA OASIS committee. Markdown doesn't have that kind of committee, so it evolves on its own as people choose to implement it.

## Why developers love Markdown

In many development tools (particularly [static site generators](https://www.staticgen.com/)) you use for publishing documentation, many of them will use Markdown. For example, Github uses Markdown. If you upload files containing Markdown and use an md file extension, Github will render the Markdown into HTML.

Markdown has appeal (especially by developers) for a number of reasons:

* You can work in text-file format using your favorite code editor.
* You can treat the Markdown files with the same workflow and routing as code.
* Markdown is easy to learn, so you can focus on the content instead of the formatting.

### You can work in text-file formats using your favorite code editor

Although you can also work with DITA in a text editor, it's a lot harder to read the code with all the XML tag syntax. For example, look at the tags required by DITA for a simple instruction about printing a page:

```xml
<task id="task_mhs_zjk_pp">
    <title>Printing a page</title>
    <taskbody>
<steps>
        <stepsection>To print a page:</stepsection>
    <step>
        <cmd>Go to <menucascade>
            <uicontrol>File</uicontrol><uicontrol>Print</uicontrol>
        </menucascade></cmd>
    </step>
    <step>
        <cmd>Click the <uicontrol>Print</uicontrol> button.</cmd>
    </step>
</steps>
    </taskbody>
</task>
```

Now compare the same syntax with Markdown:


```markdown
## Print a page

1. Go to **File > Print**.
2. Click the **Print** button.
```

Granted, the XML example has a lot more semantic information packed into it, which the Markdown version lacks. So in theory the two aren't the same. However, the end result may probably look the same.

Although you can read the XML and get used to it, most people who write in XML use specialized XML editors (like OxygenXML) that make the raw text more readable. Simply by working in XML all day, you get used to working with all the tags.

But if you send a developer an XML file, they probably won't be familiar with all the tags, nor the nesting schema of the tags. Developers tend to be allergic to XML for at least these reasons:

* Most developers usually don't want to expend energy learning an XML documentation format.
* Most developers don't want to spend a lot of time in documentation, so when they do review content, the simpler the format, the better.

In contrast, Markdown allows you to easily read it and work with it in a text editor.

{: .tip}
Most text editors (for example, Sublime Text or Webstorm or Atom) have Markdown plugins/extensions that will create syntax highlighting based on Markdown tags.

Another great thing about Markdown is that you can package up the Markdown files and run them through the same workflow as code. You can run diffs to see what changed, you can insert comments, and exert the same control as you do with regular code files. Working with Markdown files comes naturally to developers.

## Drawbacks of Markdown

Markdown has a few drawbacks:

* **Limited to HTML tags**: You're pretty much limited to HTML tags. For the times when Markdown doesn't offer shortcut for the HTML, you juse use HTML directly. XML advocates like to emphasize how XML offers semantic tagging (and avoids the div soup that HTML can become). However, HTML5 offers many semantic tags (such as `section`, `header`, `footer`, etc), and even for those times in which there aren't any unique HTML elements, all XML structures that transform into HTML become bound by the limits of HTML anyway.

* **Non-standard**: Because Markdown is non-standard, it can be a bit of a guessing game as to what is supported by the Markdown processor you may be using. By and large, the Github flavor of Markdown is the most commonly used, as it allows you to add syntax classes to code samples and use tables. Whatever system you adopt, if it uses Markdown, make sure you understand what type of Markdown it supports.

* **White space sensitivity**: Markdown is white-space sensitive, which can be frustrating at times. If you have spaces where there shouldn't be, the extra spaces can cause formatting issues. For example, if you don't indent blank spaces in a list, it will restart the list. As a result, with Markdown formatting, it's easy to make errors. Documents still render as valid even if the Markdown conversion to HTML is problematic. It can be difficult to catch all the errors.

## Markdown and complexity

If you need more complexity than Markdown offers, a lot of tools will leverage other templating languages, such as [Liquid](https://docs.shopify.com/themes/liquid-documentation/basics) or [Coffeescript](http://coffeescript.org/). Many times these other processing languages will fill in the gaps for Markdown and provide you with the ability to create includes, conditional attributes, conditional text, and more.

For example, if you're using Jekyll, you have access to a lot of advanced scripting functionality. You can use variables, for loops, sorting, and a host of other functionality. For a detailed comparison of how to achieve the same DITA functionality within Jekyll, see my series [Jekyll versus DITA](http://idratherbewriting.com/2015/03/23/new-series-jekyll-versus-dita/). In this series, I cover the following:

* [Variables and conditional processing](http://idratherbewriting.com/2015/03/26/variables-and-conditional-processing-jekyll-versus-dita/)
* [Creating re-usable chunks (conref)](http://idratherbewriting.com/2015/04/01/creating-re-usable-chunks-conref-in-jekyll-versus-dita/)
* [Building a table of contents](http://idratherbewriting.com/2015/04/02/building-a-table-of-contents-with-dita-versus-jekyll/)
* [Reviewing content](http://idratherbewriting.com/2015/04/13/reviewing-markdown-content/)
* [Producing PDFs](http://idratherbewriting.com/2015/04/14/producing-pdfs-in-dita-versus-jekyll/)
* [Creating links](http://idratherbewriting.com/2015/04/06/creating-links-in-dita-versus-jekyll/)

## Analyzing a Markdown sample

Take a look at the following Markdown content. Try to identify the various Markdown syntax used.

<pre>
# surfreport/{beachId}

Returns information about surfing conditions at a specific beach ID, including the surf height, water temperature, wind, and tide. Also provides an overall recommendation about whether to go surfing.

`{beachId}` refers to the ID for the beach you want to look up. All Beach ID codes are available from our site.

## Endpoint definition

`surfreport/{beachId}`

## HTTP method

&lt;span class="label label-primary"&gt;GET&lt;/span&gt;

## Parameters

| Parameter | Description | Data Type |
|-----------|------|-----|-----------|
| days | *Optional*. The number of days to include in the response. Default is 3. | integer |
| units | *Optional*. Whether to return the values in imperial or metric measurements. Imperial will use feet, knots, and fahrenheit. Metric will use centimeters, kilometers per hour, and celsius. | string |
| time | *Optional*. If you include the time, then only the current hour will be returned in the response.| integer. Unix format (ms since 1970) in UTC. |

## Sample request

```
curl --get --include 'https://simple-weather.p.mashape.com/surfreport/123?units=imperial&days=1&time=1433772000'
  -H 'X-Mashape-Key: WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET'
  -H 'Accept: application/json'
```

## Sample response

```json
{
    "surfreport": [
        {
            "beach": "Santa Cruz",
            "monday": {
                "1pm": {
                    "tide": 5,
                    "wind": 15,
                    "watertemp": 80,
                    "surfheight": 5,
                    "recommendation": "Go surfing!"
                },
                "2pm": {
                    "tide": -1,
                    "wind": 1,
                    "watertemp": 50,
                    "surfheight": 3,
                    "recommendation": "Surfing conditions are okay, not great."
                },
                "3pm": {
                    "tide": -1,
                    "wind": 10,
                    "watertemp": 65,
                    "surfheight": 1,
                    "recommendation": "Not a good day for surfing."
                }
            }
        }
    ]
}
```

The following table describes each item in the response.

|Response item | Description |
|----------|------------|
| **beach** | The beach you selected based on the beach ID in the request. The beach name is the official name as described in the National Park Service Geodatabase. |
| **{day}** | The day of the week selected. A maximum of 3 days get returned in the response. |
| **{time}** | The time for the conditions. This item is only included if you include a time parameter in the request. |
| **{day}/{time}/tide** | The level of tide at the beach for a specific day and time. Tide is the distance inland that the water rises to, and can be a positive or negative number. When the tide is out, the number is negative. When the tide is in, the number is positive. The 0 point reflects the line when the tide is neither going in nor out but is in transition between the two states. |
| **{day}/{time}/wind** | The wind speed at the beach, measured in knots per hour or kilometers per hour depending on the units you specify. Wind affects the surf height and general wave conditions. Wind speeds of more than 15 knots per hour make surf conditions undesirable, since the wind creates white caps and choppy waters. |
| **{day}/{time}/watertemp** | The temperature of the water, returned in Farenheit or Celsius depending upon the units you specify. Water temperatures below 70 F usually require you to wear a wetsuit. With temperatures below 60, you will need at least a 3mm wetsuit and preferably booties to stay warm.|
| **{day}/{time}/surfheight** | The height of the waves, returned in either feet or centimeters depending on the units you specify. A surf height of 3 feet is the minimum size needed for surfing. If the surf height exceeds 10 feet, it is not safe to surf. |
| **{day}/{time}/recommendation** | An overall recommendation based on a combination of the various factors (wind, watertemp, surfheight). Three responses are possible: (1) "Go surfing!", (2) "Surfing conditions are okay, not great", and (3) "Not a good day for surfing." Each of the three factors is scored with a maximum of 33.33 points, depending on the ideal for each element. The three elements are combined to form a percentage. 0% to 59% yields response 3, 60% - 80% and below yields response 2, and 81% to 100% yields response 3. |

## Error and status codes

The following table lists the status and error codes related to this request.

| Status code | Meaning |
|--------|----------|
| 200 | Successful response |
| 400 | Bad request -- one or more of the parameters was rejected. |
| 4112 | The beach ID was not found in the lookup. |

## Code example

The following code samples shows how to use the surfreport endpoint to get the surf conditions for a specific beach. In this case, the code is just showing the overall recommendation about whether to go surfing.

```html
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;script src=&quot;http://code.jquery.com/jquery-2.1.1.min.js&quot;&gt;&lt;/script&gt;
  &lt;meta charset=&quot;utf-8&quot;&gt;
  &lt;title&gt;API Weather Query&lt;/title&gt;
  &lt;script&gt;

  function getSurfReport() {

// use AJAX to avoid CORS restrictions in API calls.
 var output = $.ajax({
    url: 'https://simple-weather.p.mashape.com/surfreport/123?units=imperial&amp;days=1&amp;time=1433772000',
    type: 'GET',
    data: {},
    dataType: 'json',
    success: function(data) {
        //Here we pull out the recommendation from the JSON object.
        //To see the whole object, you can output it to your browser console using console.log(data);
        document.getElementById(&quot;output&quot;).innerHTML = data.surfreport[0].monday.2pm.recommendation;
        },
    error: function(err) { alert(err); },
    beforeSend: function(xhr) {
    xhr.setRequestHeader(&quot;X-Mashape-Authorization&quot;, &quot;WOyzMuE8c9mshcofZaBke3kw7lMtp1HjVGAjsndqIPbU9n2eET&quot;); // Enter here your Mashape key
    }
});

}

&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;

  &lt;button onclick=&quot;getSurfReport()&quot;&gt;See the surfing recommendation&lt;/button&gt;
  &lt;div id=&quot;output&quot;&gt;&lt;/div&gt;

&lt;/body&gt;
&lt;/html&gt;
```

In this example, the `ajax` method from jQuery is used because it allows cross-origin resource sharing (CORS) for the weather resources. In the request, you submit the authorization through the header rather than directly in the endpoint path. The endpoint limits the days returned to 1 in order to increase the download speed.

For simple demo purposes, the response is assigned to the `data` argument of the success method, and then written out to the `output` tag on the page. We're just getting the surfing recommendation, but there's a lot of other data you could choose to display.
</pre>

Look at about 5 different APIs (choose any of those listed on the page). Look for one thing that the APIs have in common.

{% include activity.html %}

On your Github wiki page, edit the page and create the following:

* a numbered list
* a bulleted list
* a bold word
* a code sample with html highlighting
*  a level 2 heading

## Limitations in Markdown

Markdown handles most of the syntax I normally use, but for tables, I recommend simply using HTML syntax. HTML syntax gives you more control over column widths, which can be important when customizing tables, especially if the tables have code tags.

If you're using a static site generator, see the markdown processor used to convert the Markdown into HTML. With Jekyll, the default Markdown processor is [kramdown](https://kramdown.gettalong.org/). kramdown gives you more capabilities than the basic Markdown. For example, in kramdown, you can add a class to any element like this:

```liquid
{: .note}
This is a note.
```

The HTML will be rendered like this:

```html
<p class="note">This is a note.</p>
```

Kramdown also lets you use Markdown inside of HTML elements (which is usually not allowed). If you add `markdown="span" or markdown="block"` attribute to an element, the content will be processed as either an inline span or a block div element. See [Syntax](https://kramdown.gettalong.org/syntax.html) in the kramdown documentation for more details.
