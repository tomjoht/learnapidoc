---
title: "What about traditional help authoring tools (HATs)?"
permalink: /pubapis_hats.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.92
section: publishingapis
path1: /publishingapis.html
---

In contrast to [docs-as-code tools](pubapis_docs_as_code.html), help authoring tools (HATs) refer to the common toolset often used by technical writers. Common HATs include MadCap Flare, Adobe Robohelp, Author-it, and more. You can use these tools to create API documentation. There are pros and cons with HATs.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Example

Here's a sample help output from Flare for the Photobucket API:

<a href="http://bit.ly/photobucketlongurl" class="noExtIcon"><img src="images/hatphotobucket.png" alt="Publishing API docs" /></a>

## Pros of using a help authoring tool

Some advantages of using a HAT include the following:

### + Comfortable authoring environment for writers

If writers are going to be creating and publishing the documentation, using a tool technical writers are familiar with is a good idea.

### + Handles the toughest tech comm scenarios.

When you have to deal with versioning, translation, content re-use, conditional filtering, authoring workflows, and PDF output, you're going to struggle to make this work with the other tools mentioned in this course.

### + Integrates reference information with guides and tutorials.

You won't have a division between an output that is generated from a reference doc generator (such as Swagger) and user guide material. It can be one seamless whole.

### + HATs reinforce the fact that API doc is more than endpoints

HATs reinforce the fact that good API documentation is more than just a set of endpoints and parameters. Good API documentation includes guides and tutorial topics as well. Developers rarely write that kind of information, yet it's just as important as the reference documentation. HATs lend themselves more to these guide and tutorial topics.

{% include random_ad.html %}

## Cons of using a help authoring tool

Some disadvantages of using a HAT include the following:

### - Most HATs don't run on Macs

Almost no HAT runs on a Mac. But many developers and designers prefer Macs because they have a much better development platform (the command line is much friendlier and functional, for example). To make a cURL call, you just open Terminal and paste in the call. With a Windows machine, installing cURL and libcurl is much more onerous and harder to use.

If most developers use Macs but you use a PC (to accommodate your HAT), you may struggle to install developer tools or to follow internal tutorials to get set up and test out content.

### - Dated UI won't help sell the product

The output from a help authoring tool usually looks dated. The problem with the dated tripane look and feel is that API documentation *is* the interface that users navigate. There isn't a separate GUI interface that the help complements. The help is front and center as the information product that users get.

If you want to promote the idea that your API is modern and awesome, you want a website that looks modern and awesome as well. In fact, you might have a UX developer create the website itself. If you lead with an outdated tripane site that loads frames, developers may not be as excited to use your API.

In Flare's latest release, you can customize the display in pretty significant ways, so maybe it will help end the dated tripane output look and feel.

### - Doesn't integrate with other site components

Many of the API doc sites are single-website experiences. The API docs are usually part of the main website, not a link that opens in its own window and frame, separate from the other content.

 If you can output a format that another site can consume, great. But if you split and divide the user into separate sites, you're following a less common pattern with API doc sites.

### - Removes authoring capability from developers

 If you're hoping for developers to contribute to the documentation, it's going to be hard to get buy-in if you're using a HAT. HATs are tools for writers, not developers. (Then again, if you don't expect developers to contribute, then this becomes a moot point.)

## Dealing with more challenging factors

A lot of the solutions we've looked at tend to break down when you start applying more difficult requirements in your tech comm scenario. You may have to resort to more traditional tech comm tooling if you have to deal with some of the following challenges:

* Translation
* Content re-use
* Versioning
* Authentication
* PDF

You can often find ways to handle these challenges with non-traditional tools, but it's not going to be a push-button experience. It will require a higher degree of technical skill and coding.

At one company where I used Jekyll, we had requirements around both PDF output and versioning. We singled sourced the content into about 8 different outputs (for different product lines and programming languages). It was double that number if you included PDF output for the same content.

Jekyll provides a templating language called Liquid that allows you to do conditional filtering, content re-use, variables, and more, so you can fill these more robust requirements. I used this advanced logic to single source the output without duplicating the content.

To handle PDF, I integrated a tool called [Prince](http://www.princexml.com/), which converts a list of HTML pages into a PDF document, complete with running headers and footers, page numbering, and other print styling. Other writers might use [Pandoc](https://pandoc.org/) to fill simpler PDF requirements.

To handle authentication, we uploaded the HTML output into a Salesforce site.com space and used Salesforce as the authentication layer. The custom uploading was my least favorite part of the solution, but a more integrated authentication solution (potentially using [One Login](https://www.onelogin.com/) or a custom authentication solution) would have required more engineering resources.

My point is that you can handle these more challenging factors with non-traditional tools, but it requires more expertise.
