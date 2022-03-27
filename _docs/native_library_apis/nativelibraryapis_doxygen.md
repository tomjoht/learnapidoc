---
title: Doxygen, a document generator mainly for C++
permalink: nativelibraryapis_doxygen.html
course: "Documenting REST APIs"
weight: 11.7
sidebar: docapis
section: nativelibraryapis
path1: nativelibraryapis.html
last-modified: 2018-12-26
---

An alternative to Javadoc is Doxygen. Doxygen works highly similarly to Javadoc, except that it can process more languages (Java, C++, C#, and more). Doxygen is most commonly used with C++. Additionally, there's a GUI tool called Doxywizard that makes it easy to generate the file.

* TOC
{:toc}

## Download Doxywizard

The Doxygen download also includes Doxywizard. See the [Doxygen](http://www.doxygen.nl/download.html) Downloads page for more download links.

Here's the Doxywizard front-end GUI generator:

<figure><img class="docimage large" src="{{site.media}}/doxygenfrontendgui.png" alt="Doxygen front-end GUI generator" /><figcaption>Doxygen front-end GUI generator</figcaption></figure>

Here's the Doxygen output:

<figure><img class="docimage large" src="{{site.media}}/doxygensample.png" alt="Doxygen Sample" /><figcaption>Doxygen Sample</figcaption></figure>

You don't need to use the wizard. You can also generate Doxygen through a configuration file, which is typically how developers run Doxygen builds from a server.

In contrast to Javadoc, Doxygen also allows you to incorporate external files written in Markdown. And Doxygen provides a search feature. These are two features that Javadoc lacks.

{% include image_ad_right.html %}

Doxygen is maintained by a single developer and, like Javadoc, hasn't changed much over the years. In my opinion, the interface is highly dated and somewhat confusing. But C++ developers will be accustomed to it.

{% include random_ad2.html %}

## Integrating builds automatically

In a lot of developer shops, document generators are integrated into the software build process automatically. Doxygen allows you to create a configuration file that can be run from the command line (rather than using the frontend GUI). This means when developers build the software, the reference documentation is automatically built and included in the output.

{% include random_ad4.html %}

## Other document generators

You don't need to limit yourself to either Javadoc or Doxygen. There are dozens of different document generators for a variety of languages. Just search for "document generator + {programming language}" and you'll find plenty. However, don't get very excited about this genre of tools. Document generators are somewhat old, produce static front-ends that look dated, are often written by engineers for other engineers, and not very flexible.

{% include ads.html %}

Perhaps the biggest frustration of document generators is that you can't integrate the rest of your documentation with them. You're mostly stuck with the reference doc output. You'll also need to generate your how-to guides and other tutorials, and then link to the reference doc output. As such, you won't end up with a single integrated experience of documentation. Additionally, it will be hard to create links inline within topics between the two outputs. Fragmentation of outputs is a topic I explore with more detail in [Integrating Swagger UI with the rest of your docs](pubapis_combine_swagger_and_guide.html).

{% include random_ad3.html %}
