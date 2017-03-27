---
title: Doxygen, another document generator
permalink: /nativelibraryapis_doxygen.html
course: "Documenting REST APIs"
weight: 7.7
sidebar: docapis
section: nativelibraryapis
---

An alternative to Javadoc is Doxygen. Doxygen works highly similarly to Javadoc, except that you can process more languages (Java, C++, C#, and more) with it. Doxygen is most commonly used with C++. Additionally, there's a GUI tool (called Doxywizard) that makes it really easy to generate the file.

You can download the Doxywizard tool when you install Doxygen. See the [Doxygen](http://www.stack.nl/~dimitri/doxygen/download.html) download page for more information.

Here's Doxygen's front-end GUI generator (Doxywizard):

<img src="images/doxygenfrontendgui.png" alt="Doxygen front-end GUI generator" />

Here's the Doxygen output:

<img src="images/doxygensample.png" alt="Doxygen Sample" />

By the way, you don't need to use the wizard. You can also just generate Doxygen through a configuration file. This is how developers typically run Doxygen builds from a server.

In contrast to Javadoc, Doxygen also allows you to incorporate external files written in Markdown. And Doxygen provides a search feature. These are two features that Javadoc lacks.

Doxygen is maintained by a single developer and, like Javadoc, hasn't changed much over the years. In my opinion, the interface is highly dated and kind of confusing.

## Integrating builds automatically

In a lot of developer shops, document generators are integrated into the software build process automatically. Doxygen allows you to create a configuration file that can be run from the command line (rather than using the frontend GUI). This means when developers build the software, the reference documentation is automatically built and included in the output.

## Other document generators

You don't need to limit yourself to either Javadoc or Doxygen. There are dozens of different document generators for a variety of languages. Just search for "document generator + {programming language}" and you'll find plenty. However, don't get very excited about this genre of tools. Document generators are somewhat old, produce static front-ends that look dated, are often written by engineers for other engineers, and not very flexible.

Perhaps the biggest frustration of document generators is that you can't really integrate the rest of your documentation with them. You're mostly stuck with the reference doc output. You'll need to also generate your how-to guides and other tutorials, and then link to the reference doc output. As such, you won't end up with a single integrated experience of documentation. Additionally, it will be hard to create links between the two outputs.
