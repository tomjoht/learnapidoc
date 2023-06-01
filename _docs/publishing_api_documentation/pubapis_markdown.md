---
title: "More about Markdown"
permalink: pubapis_markdown.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 9.4
section: publishingapis
path1: publishingapis.html
last-modified: 2018-12-25
---

Most of the docs-as-code solutions use lightweight markup syntax, often Markdown. So let's learn a bit more about Markdown. Markdown is a shorthand syntax for HTML. Instead of using `ul` and `li` tags, for example, you use asterisks (`*`). Instead of using `h2` tags, you use hashes (`##`). There's a Markdown tag for most of the commonly used HTML elements, but not all of them.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample Markdown syntax

To get a sense of the Markdown syntax, look at this sample:

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

{% include ads.html %}

## Development by popular demand versus by committee

John Gruber, a blogger, created Markdown as a way to simplify HTML (see his [Markdown documentation here](http://daringfireball.net/projects/markdown/)). Others adopted it, and many made modifications to include the syntax they needed. As a result, there are various "flavors" of Markdown, such as [Github-flavored Markdown](https://help.github.com/articles/github-flavored-markdown/), [Multimarkdown](http://fletcherpenney.net/multimarkdown/), [kramdown](https://kramdown.gettalong.org/), [CommonMark](https://commonmark.org/), and more.

{% include image_ad_right.html %}

In contrast, DITA is a committee-based XML architecture derived from a committee. There aren't lots of different flavors and spinoffs of DITA based on how people customized the tags. There's an official DITA spec that is agreed upon by the DITA OASIS committee. Markdown doesn't have that kind of committee, so it evolves on its own as people choose to implement it.

{% include random_ad4.html %}

## Why developers love Markdown

In many development tools (particularly [static site generators](https://www.staticgen.com/)) that you use for publishing documentation, many of them will use Markdown. For example, Github uses Markdown. If you upload files containing Markdown and use an md file extension, Github will automatically render the Markdown into HTML.

Markdown has appeal (especially with developers) for various reasons:

* You can work in text-file formats using your favorite code editor.
* You can treat the Markdown files with the same workflow and routing as code.
* Markdown is easy to learn, so you can focus on the content instead of the formatting.

## Why not use a more semantically rich markup?

Why not use a more semantically rich markup language like DITA? Although you can also work with DITA in a text editor, it's a lot harder to read the code with all the XML tag syntax. For example, look at the tags required by DITA for a simple instruction about printing a page:

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

I wrote about this difference in [Why developers will never adopt DITA](https://idratherbewriting.com/2014/09/30/why-developers-will-never-adopt-dita/). Granted, the XML example has a lot more semantic information packed into it, which the Markdown version lacks. So, in theory, the two don't have the same content, even though the output is the same. However, unless you're taking advantage of the additional semantic information DITA includes, the result is the same.

Although you can read the XML and get used to it, most people who write in XML use specialized XML editors (like OxygenXML) that make the raw text more readable. Simply by working in XML all day, you get used to working with all the tags.

{% include random_ad3.html %}

But if you send a developer an XML file, they probably won't be familiar with all the tags, nor the nesting schema of the tags. Developers tend to be allergic to XML for at least these reasons:

* Most developers usually don't want to expend energy learning an XML documentation format. Their brains already hurt from all the programming they have to figure out, so with docs, they don't want to add to this technical burden.
* Most developers don't want to spend a lot of time in documentation in the first place, so when they do review content, the simpler the format, the better.

In contrast, Markdown allows you to easily read it and work with it in a text editor.

{: .tip}
Most text editors (for example, Sublime Text or Webstorm or Atom) have Markdown plugins/extensions that will create syntax highlighting based on Markdown tags.

Another benefit to Markdown (as opposed to binary tools like Word or Framemaker) is that you can package up the Markdown files and run them through the same workflow as code. You can run diffs to see what changed, insert comments, and exert the same control as you do with regular code files. Working with Markdown files comes naturally to developers. (Granted, you can also work with DITA in plain text files and manage the content in Git repositories.)

## Drawbacks of Markdown

Markdown does have a few drawbacks:

* **Limited to HTML tags**: You're pretty much limited to HTML tags. For the times when Markdown doesn't offer a shortcut for the HTML, you just use HTML directly. XML advocates like to emphasize how XML offers semantic tagging (and avoids the div soup that HTML can become). However, HTML5 offers many semantic tags (such as `section`, `header`, `footer`, etc.), and even for those times in which there aren't any unique HTML elements, all XML structures that transform into HTML become bound by the limits of HTML anyway.

* **Non-standard**: Because Markdown is non-standard, it can be a bit of a guessing game as to what is supported by the Markdown processor you may be using. By and large, the Github flavor of Markdown is the most common dialect used, as it allows you to add syntax classes to code samples and use tables. Whatever system you adopt, if it uses Markdown, make sure you understand what type of Markdown it supports.

* **White space sensitivity**: Markdown is white-space sensitive, which can be frustrating at times. If you have spaces where there shouldn't be, the extra spaces can cause formatting issues. For example, if you don't indent blank spaces in a list, it will restart the list. As a result, with Markdown formatting, it's easy to make errors. Documents usually still render broken Markdown as valid when they convert it to HTML, making it hard to catch formatting errors.

## Markdown and complexity

If you need more complexity than what Markdown or HTML offers, a lot of tools will leverage other templating languages, such as [Liquid](https://docs.shopify.com/themes/liquid-documentation/basics) or [CoffeeScript](http://coffeescript.org/). Many times these other processing languages (often like a lightweight JavaScript) will fill in the gaps for Markdown and provide you with the ability to create includes, conditional attributes, conditional text, and more.

{% include random_ad2.html %}

For example, if you're using Jekyll, you have access to a lot of advanced scripting functionality. You can use variables, for loops, sorting, and a host of other functionality. For a detailed comparison of how to achieve the same DITA functionality within Jekyll, see my series [Jekyll versus DITA](https://idratherbewriting.com/2015/03/23/new-series-jekyll-versus-dita/). In this series, I cover the following:

* [Variables and conditional processing](https://idratherbewriting.com/2015/03/26/variables-and-conditional-processing-jekyll-versus-dita/)
* [Creating re-usable chunks (conref)](https://idratherbewriting.com/2015/04/01/creating-re-usable-chunks-conref-in-jekyll-versus-dita/)
* [Building a table of contents](https://idratherbewriting.com/2015/04/02/building-a-table-of-contents-with-dita-versus-jekyll/)
* [Reviewing content](https://idratherbewriting.com/2015/04/13/reviewing-markdown-content/)
* [Producing PDFs](https://idratherbewriting.com/2015/04/14/producing-pdfs-in-dita-versus-jekyll/)
* [Creating links](https://idratherbewriting.com/2015/04/06/creating-links-in-dita-versus-jekyll/)


## <i class="fa fa-user-circle"></i> Activity: Get practice with Markdown


To get a sense of how Markdown works, let's practice a bit with Markdown.

1.  Go to an online Markdown editor (such as [Dillinger.io](https://dillinger.io/)).
2.  Create the following:

    * Numbered list
    * Bulleted list
    * Word with bold formatting
    * Code sample
    * Level 2 heading
    * code formatted text

3.  If desired, copy over the Markdown content from this [surfreportendpoint.md file](https://idratherbewriting.com/learnapidoc/assets/files/surfreportendpointdoc.md) and look at the various Markdown tags.

Markdown handles most of the syntax I normally use, but for tables, I recommend simply using HTML syntax. HTML syntax gives you more control over column widths, which can be important when customizing tables, especially if the tables have code tags.

## Markdown and static site generators

If you're using a static site generator, see the specific Markdown syntax used. With Jekyll, the default Markdown is [kramdown](https://kramdown.gettalong.org/).

kramdown gives you more capabilities than the basic Markdown. For example, in kramdown, you can add a class to an element like this:

```liquid
{: .note}
This is a note.
```

The HTML will be rendered like this:

```html
<p class="note">This is a note.</p>
```

kramdown also lets you use Markdown inside of HTML elements (which is usually not allowed). If you add `markdown="span"` or `markdown="block"` attribute to an HTML element, the Markdown content will be processed as either an inline `span` or a block `div` element. For example:

```html
<p markdown="span">This is a **bold** tag</p>.
```

Normally, the Markdown tags `**` wouldn't be processed because they appear inside of HTML tags. But through the `markdown="span"` attribute, kramdown will process the Markdown. The content is processed as a `span`, which means no line breaks will appear. If you want to process the content as a `div`, you could also do that. For example:

```html
<ul markdown="span">
first section

second section
</ul>
```
The content will be processed as two paragraphs rather than one line. See [Syntax](https://kramdown.gettalong.org/syntax.html) in the kramdown documentation for more details.

## What about reStructuredText and Asciidoc? {#rst_and_asciidoc}

If you're using lightweight markup, you might also be interested in exploring [reStructured Text (rST)](http://docutils.sourceforge.net/reStructuredText.html) or [Asciidoc](http://asciidoc.org/). reStructuredText is similar to Markdown, in that it offers lightweight wiki-like syntax for more complex HTML. However, reStructuredText is more semantically rich than Markdown (for example, there's a syntax for notes or warnings, and Python classes).

reStructuredText can be extended, follows a standard (rather than having many variants), and gives you more features specific to writing technical documentation, such as cross-references. See [reStructuredText vs Markdown for documentation](http://zverovich.net/2016/06/16/reStructuredText-vs-markdown.html) for a more detailed comparison. If you're using [Sphinx](http://www.sphinx-doc.org/en/stable/), you'll want to use reStructuredText.

[Asciidoc](http://asciidoc.org/) also offers more semantic richness and standardization. Asciidoc provides syntax for tables, footnotes, cross-references, videos, and more. In fact, Asciidoc "was initially designed as a plain-text alternative to the DocBook XML schema" ([asciidoc-vs-markdown.adoc](https://github.com/asciidoctor/asciidoctor.org/blob/master/docs/_includes/asciidoc-vs-markdown.adoc)). As with reStructuredText, you don't have the variety of flavors with Markdown, so you can process it more consistently. [Asciidoctor](http://asciidoctor.org/) is one static site generator that uses Asciidoc as the syntax. Both reStructuredText and Asciidoc (and other syntaxes) are [supported on GitHub](https://github.com/github/markup#markups).

## Objections to Markdown

Some people object to Markdown due to the inconsistency across Markdown flavors. Given that there are so many varieties of Markdown ([CommonMark](http://commonmark.org/), [kramdown](https://kramdown.gettalong.org/), [Gruber's original Markdown](https://daringfireball.net/projects/markdown/syntax), [Github-flavored Markdown](https://github.github.com/gfm/), [Multimarkdown](http://fletcherpenney.net/multimarkdown/), and more), it's hard to create a tool to process Markdown consistently.

Eric Holscher, co-founder of [Write the Docs](http://www.writethedocs.org/) and the [Read the Docs platform](https://readthedocs.org/), argues that Markdown creates lock-in to a specific tool. He says many authors think Markdown is a good choice because many tools support it, and they think they can always migrate their Markdown content to another tool later. However, the differing Markdown flavors make this migration problematic. Eric writes:

> The explosion of flavors and lack of semantic meaning leads to lock in. Once you’ve built out a large set of Markdown documents, it’s quite hard to migrate them to another tool, even if that tool claims to support Markdown! You have a large set of custom HTML classes and weird flavor extensions that won’t work anywhere but the current set of tools and designs.
>
> You also can’t migrate Markdown easily to another markup language (Asciidoc or reStructuredText), because Pandoc and other conversion tools won’t support your flavor’s extensions. ([Why You Shouldn’t Use “Markdown” for Documentation](http://ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/))

There's merit to the argument, for sure. You might be able to switch Markdown flavors using a tool such as [Pandoc](https://pandoc.org/), or by converting the Markdown to HTML, and then converting the HTML to another Markdown flavor. However, switching tools will likely lead to a headache in updating the syntax in your content.

Here's an example. For many years, Jekyll used [redcarpet](https://github.com/vmg/redcarpet) and [pygments](http://pygments.org/) to process Markdown and apply code syntax highlighting. However, to increase Windows support, Jekyll switched to [kramdown](https://kramdown.gettalong.org/) and [rouge](https://github.com/jneen/rouge) at version 3.0. It was supposed to be a seamless backend switch that wouldn't require any adjustment to your existing Markdown. However, I found that kramdown imposed different requirements around spacing that broke a lot of my content, particularly with lists. I wrote about this issue here: [Updating from redcarpet and Pygments to Kramdown and Rouge on Github Pages](https://idratherbewriting.com/2016/02/21/bug-with-kramdown-and-rouge-with-github-pages/).

Despite the variations within Markdown, I'm reluctant to switch to a more semantic lightweight syntax because tool support for Markdown in general, following GitHub-flavored Markdown, is still much more widespread than support for reStructuredText or Asciidoc. kramdown is largely compatible with GitHub-flavored Markdown &mdash; it wouldn't be that difficult to migrate.

Additionally, developers tend to be familiar with Markdown but not reStructuredText or Asciidoc. If you want to encourage collaboration with developers, you might encounter more resistance by forcing them to write in reStructuredText or Asciidoc. Simplicity tends to win out in the end, and Markdown has clear momentum in the lightweight syntax arena. I imagine that in 10 years, reStructuredText and Asciidoc will be dwarfed in the same way that [RAML](pubapis_raml.html) and [API Blueprint](pubapis_api_blueprint.html) were dwarfed by the [OpenAPI spec](pubapis_openapi_intro.html).

Further, the OpenAPI spec lets you use [CommonMark Markdown](https://commonmark.org/) in `description` elements, which might make Markdown a better choice for API documentation. As long as you use the Markdown elements that are common across most flavors, migration (should it be required at some point) might not be as painful.

Overall, debates between Markdown, reStructuredText, and Asciidoc are pretty heated. You will find many for-and-against arguments for each lightweight syntax, as well as debates between XML and lightweight syntax.

One problem with lightweight syntax is its incompatibility with larger content management systems. Component content management systems (CCMSs) typically require more structured content such as DITA. The DITA committee recently approved [Lightweight DITA](http://docs.oasis-open.org/dita/LwDITA/v1.0/cnprd01/LwDITA-v1.0-cnprd01.html), which will allow you to use GitHub-flavored Markdown and HTML in your DITA projects (assuming tool vendors support it). So we may see more convergence of XML tools and Markdown in the years to come. For more details about Lightweight DITA (LwDITA), see the [interview with Carlos Evia](https://idratherbewriting.com/2018/07/23/adventures-of-techie-academic-conversation-with-carlos-evia/) on my blog. Carlos is co-chair of the OASIS committee for LwDITA.
