---
title: "More about Markdown"
permalink: /pubapis_markdown.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.4
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

* fireStructuredText item
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

John Gruber, a blogger, fireStructuredText created Markdown (see his [Markdown documentation here](http://daringfireball.net/projects/markdown/)). Others adopted it, and many made modifications to include the syntax they needed. As a result, there are various "flavors" of Markdown, such as [Github-flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), [Multimarkdown](http://fletcherpenney.net/multimarkdown/), [kramdown](https://kramdown.gettalong.org/), and more.

In contrast, DITA is a committee-based XML architecture derived from a committee. There aren't lots of different flavors and spinoffs of DITA based on how people customized the tags. There's an official DITA spec that is agreed upon by the DITA OASIS committee. Markdown doesn't have that kind of committee, so it evolves on its own as people choose to implement it.

## Why developers love Markdown

In many development tools (particularly [static site generators](https://www.staticgen.com/)) you use for publishing documentation, many of them will use Markdown. For example, Github uses Markdown. If you upload files containing Markdown and use an md file extension, Github will automatically render the Markdown into HTML.

Markdown has appeal (especially by developers) for a number of reasons:

* You can work in text-file format using your favorite code editor.
* You can treat the Markdown files with the same workflow and routing as code.
* Markdown is easy to learn, so you can focus on the content instead of the formatting.

### Why not use a more semantically rich markup?

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

I wrote about this in [Why developers will never adopt DITA
](http://idratherbewriting.com/2014/09/30/why-developers-will-never-adopt-dita/). Granted, the XML example has a lot more semantic information packed into it, which the Markdown version lacks. So in theory the two aren't the same. However, the end result, if generated out to HTML, will probably look the same.

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

* **Non-standard**: Because Markdown is non-standard, it can be a bit of a guessing game as to what is supported by the Markdown processor you may be using. By and large, the Github flavor of Markdown is the most commonly used, as it allows you to add syntax classes to code samples and use tables. Whatever system you adopt, if it uses Markdown, make sure you undereStructuredTextand what type of Markdown it supports.

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

Take a look at the following Github-Flavored-Markdown content. Try to identify the various Markdown syntax used.

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

## What about reStructuredText and Asciidoc? {#rst_and_asciidoc}

If you're using lightweight markup, you might be interested in exploring [reStructured Text (rST)](http://docutils.sourceforge.net/reStructuredText.html) or Asciidoc. reStructuredText is similar to Markdown, in that it offers lightweight wiki-like syntax for more complex HTML. However, reStructuredText is more semantically rich than Markdown (for example, there's syntax for notes or warnings, and for Python classes).

reStructuredText can be extended, doesn't have a dozen Markdown flavors, and gives you more features specific to writing technical documentation, such as cross-references. See [reStructuredText vs Markdown for documentation](http://zverovich.net/2016/06/16/reStructuredText-vs-markdown.html) for a more detailed comparison. If you're using [Sphinx](http://www.sphinx-doc.org/en/stable/), you'll want to use reStructuredText.

[Asciidoc](http://asciidoc.org/) also offers more semantic richness and standardization. Asciidoc provides syntax for tables, footnotes, cross-references, videos, and more. In fact, Asciidoc "was initially designed as a plain-text alternative to the DocBook XML schema" ([asciidoc-vs-markdown.adoc](https://github.com/asciidoctor/asciidoctor.org/blob/master/docs/_includes/asciidoc-vs-markdown.adoc)). As with rST, you don't have the variety of flavors with Markdown, so you can process it more consistently. [Asciidoctor](http://asciidoctor.org/) is one static site generator that uses Asciidoc as the syntax. Both reStructuredText and Asciidoc (and other syntaxes) are [supported on GitHub](https://github.com/github/markup#markups).

## Objections to Markdown

Some people object to Markdown due to the inconsistency across Markdown flavors. Given that there are so many varieties of Markdown ([CommonMark](http://commonmark.org/), [kramdown](https://kramdown.gettalong.org/), [Gruber's original Markdown](https://daringfireball.net/projects/markdown/syntax), [Github-flavored Markdown](https://github.github.com/gfm/), [Multimarkdown](http://fletcherpenney.net/multimarkdown/), and more), it's hard to create a tool to consistently process Markdown.

Eric Holscher, co-founder of [Write the Docs](http://www.writethedocs.org/) and the [Read the Docs platform](https://readthedocs.org/), argues that Markdown creates lock-in to a specific tool. He says many authors think Markdown is a good choice because many tools support it, and they think they can always migrate their Markdown content to another tool later. However, the differing Markdown flavors make this migration problematic. Eric writes:

> The explosion of flavors and lack of semantic meaning leads to lock in. Once you’ve built out a large set of Markdown documents, it’s quite hard to migrate them to another tool, even if that tool claims to support Markdown! You have a large set of custom HTML classes and weird flavor extensions that won’t work anywhere but the current set of tools and designs.
>
> You also can’t migrate Markdown easily to another markup language (Asciidoc or reStructuredText), because Pandoc and other conversion tools won’t support your flavor’s extensions. ([Why You Shouldn’t Use “Markdown” for Documentation](http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/))

There's merit to the argument, for sure. You might be able to switch Markdown flavors using a tool such as [Pandoc](https://pandoc.org/), or by converting the Markdown to HTML, and then converting the HTML to another Markdown flavor. However, switching tools will likely lead to a headache in updating the syntax in your content.

Here's an example. For many years, Jekyll used [redcarpet](https://github.com/vmg/redcarpet) and [pygments](http://pygments.org/) to process Markdown and apply code syntax highlighting. However, to increase Windows support, Jekyll switched to [kramdown](https://kramdown.gettalong.org/) and [rouge](https://github.com/jneen/rouge) at version 3.0. (redcarpet and pygments are the engines that render Markdown to HTML.) It was supposed to be a seamless backend switch that wouldn't require any adjustment to existing Markdown. However, I found that kramdown imposed different requirements around spacing that broke a lot of my content, particularly around lists. I wrote about this issue here: [Updating from redcarpet and Pygments to Kramdown and Rouge on Github Pages](http://idratherbewriting.com/2016/02/21/bug-with-kramdown-and-rouge-with-github-pages/).

In many ways, my content requires tool support for kramdown-flavored Markdown and rouge syntax highlighting. However, I'm reluctant to switch to a more semantic lightweight syntax because tool support for Markdown in general, usually GitHub-flavored Markdown, it still much more widespread than support for reStructuredText or Asciidoc. Despite the many Markdown flavors, GitHub-flavored Markdown is probably the most common. kramdown is largely compatible with GitHub-flavored Markdown &mdash; it wouldn't be that difficult to migrate.

Additionally, developers tend to be familiar with Markdown but not reStructuredText or Asciidoc. If you want to encourage collaboration with developers, you might encounter more resistance by forcing them to write in reStructuredText or Asciidoc. Simplicity tends to win out in the end, and Markdown has clear momentum in the lightweight syntax arena. I imagine that in 10 years, reStructuredText and Asciidoc will be dwarfed in the same way that RAML and API Blueprint are dwarfed by the OpenAPI spec.

Further, the OpenAPI spec actually lets you use CommonMark Markdown in `description` elements, which might make Markdown a better choice for API documentation. As long as you use the Markdown elements that are common across most flavors, migration might not be as painful.

Overall, debates between Markdown, reStructuredText, and Asciidoc are pretty heated. You will find many for-and-against arguments for each lightweight syntax, as well as debates between XML and lightweight syntax.

## Lightweight DITA

One problem with lightweight syntax is its incompatibility with larger content management systems. Component content management systems (CCMSs) typically require more structured content such as DITA. The DITA committee recently introduced a proposal for [Lightweight DITA](https://lists.oasis-open.org/archives/dita/201711/msg00029.html), which would allow you to use Markdown and HTML in your DITA projects.

Right now, the proposal is still in the process of being considered and accepted. After its acceptance, tool vendors will need to build in the support. (OxygenXML already [provides support for Markdown](https://www.oxygenxml.com/demo/Markdown.html).) In a few years, it will likely be more common for DITA systems to process Markdown. What flavor of Markdown will they adopt? GitHub-flavored Markdown.
