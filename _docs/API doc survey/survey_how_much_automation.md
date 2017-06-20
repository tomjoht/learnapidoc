---
title: Are API docs auto-rendered through build process?
permalink: /survey_how_much_automation.html
categories:
- api-doc
course: "Documenting REST APIs"
weight: 12.91
sidebar: docapis
section: survey
---

{: .survey}
[Survey question](survey_introduction): Do you generate Javadoc or Doxygen files manually, or are they auto-rendered as part of the build process?

*(This question in my API doc survey was so poorly worded that the answers are mostly confusing.)*

REST API documentation is notably different from platform-specific API documentation. With platform-specific API documentation, such as for Java, C++, and .NET, document generators are commonly used. Usually you use Javadoc for Java, Doxygen for C++, VSDocman or Sandcastle with .NET, and so on.

At my work, Javadoc and Doxygen are actually integrated into the software build process. Meaning, when engineers push a release into a general availability status on Bamboo, a build process on the Bamboo server initiates a script that builds a Javadoc or Doxygen file from the source code. I don't have to manually build the Javadoc or Doxygen files. (With one exception -- the .NET file wasn't properly integrated into the build process, so I manually built it using the Doxygen document generator.)

I was curious to know how common it is for the build process to automatically take care of generating the Javadoc or Doxygen. In part I was curious because a few months ago I attended an API workshop where a couple of hours were dedicated to setting up your computer to generate Javadoc properly.

However, here's the confusing part. Most technical writers in the survey are documenting REST APIs, and some of them have automated processes for the documentation. For example, some have custom tooling, Python scripts, Swagger, or are using other document generators like JSDoc. These tools perform some kind of automation in the way they build the API documentation output, but the tools aren't necessarily integrated into the engineering build process for the source files.

A much better question in my survey was the question that asked whether any part of the REST API documentation was auto-generated.

At any rate, I tried to tally up the responses for this question and came up with the following. From the 43 responses, 58% are producing the API documentation manually, and 44% are using some kind of automation, whether it's using a document generator or some generation included in the build process. However, this question was so poor that the responses aren't worth analyzing in greater depth.
