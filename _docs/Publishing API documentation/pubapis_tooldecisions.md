---
title: Tool decisions
permalink: /pubapis_tooldecisions.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.8
section: publishingapis
---

One of the first considerations to make when you think about API doc tooling is who will be doing the writing. If developers will be writing and contributing to the docs, you should integrate the writing tools and process into their toolchain and workflow.

One the other hand, if technical writers will create all the documentation, generating doc content from the source code may only prove to be a complicated hassle with little benefit.

## Integrating into engineering tools and workflows

Riona Macnamara is a technical writer at Google. Riona says that several years ago, internal documentation at Google was scattered across wikis, Google Sites, Google Docs, and other places.

In surveys at Google about the workplace, many employees said the inability to find accurate, up-to-date documentation was one of the biggest pain points.

Despite Google's excellence in organizing the world's information, organizing it internally proved to be difficult.

Riona says they helped solve the problem by integrating documentation into the engineer's workflow. Rather than trying to force-fit writer tools onto engineers, they fit the documentation into developer tools.

Developers now write documentation in Markdown files in the same repository as their code. Some other engineers wrote a script to display these Markdown files in a browser directly from the code repository.

The method quickly gained traction, with hundreds of developer projects adopting the new method. Now instead of authoring documentation in a separate system (using writers' tools), developers simply add the doc in the same repository as the code. This ensures that anyone who is using the code can also find the documentation.

Engineers can either read the documentation directly in the Markdown source, or they can read it displayed in a browser.

If you plan to have developers write, definitely check out Riona Macnamara's Write the Docs 2015 presentation: [Documentation, Disrupted: How two technical writers changed Google engineering culture](https://www.youtube.com/embed/EnB8GtPuauw).

## Pros of having developers write

Having developers write or contribute to documentation provides several advantages.

### Avoids documentation drift

By keeping documentation tightly coupled with code, you can avoid documentation drift. The idea is that documentation that exists separate from the documentation has a tendency to get out of sync with the actual code. As developers add new parameters, functions, and other details, the technical writers may not be aware of all these details. But many in-source document generators will actually drive the output directly from the parameters and classes in the code.

<a href="http://en.wikipedia.org/wiki/Continental_drift
"><img src="images/continentaldrift.png" alt="Continental drift" /></a>

### Allows the person who creates the code (and so best understands it) to also document it

Let's face it -- sometimes developer documentation is so complex, only developers can really write it. Unless you have a background in engineering, understanding all the details in programming, server configuration, or other technical platforms may be beyond the technical writers' ability to document without a lot of research, interviewing, and careful note taking.

Sometimes developers prefer to just write the doc themselves, communicating from one developer to another. If a developer is the audience, and another developer is the writer, chances are they can cut through some of the guesswork about assumptions, prerequisite knowledge, and accuracy.

## Cons of having developers write

Here are a few cons in having developers write documentation.

### Problem 1: The curse of knowledge
A developer who creates the API may assume too much of the audiences' technical ability. As a result, the descriptions may not be helpful. Steven Pinker explains that the [curse of knowledge](http://idratherbewriting.com/2007/01/24/the-curse-of-knowledge-the-more-you-know-the-worse-communicator-you-become/) is one reason why writing is often bad.

<a href="http://online.wsj.com/articles/the-cause-of-bad-writing-1411660188
"><img src="images/pinkersourcebadwriting.png" alt="Steven Pinker on the source of bad writing" /></a>

The more you know about a topic, the more assumptions and background information you have automatically firing away in your brain. You become blind to all of these assumptions, terms, and other details that new learners struggle with. You're so familiar with a topic that you can't see it as a new learner would. You don't know the questions to ask, the things that don't make sense.

### Problem 2: Not task-focused

Documentation generated from source files is feature-based. It's the equivalent of writing documentation tab by tab in a GUI interface. In contrast, task-based doc includes multiple calls and workflows in support of goals. Task-based documentation might make use of several different objects and methods across the reference doc.

If developers write the documentation in the source, most likely the result will be somewhat useless feature-based documentation. Here's a text one of my colleagues, a project manager, sent me about the challenges he's facing with documentation:

<img src="images/briantext.png" alt="Text about dependencies and workflows" />

Capturing and describing the interdependencies, goals, workflows, and other tasks that cut across endpoints and setups is more of a task suited to a technical writer, not a developer who is simply defining a parameter in the source file of a class he or she created.

### Problem 3: Output doesn't integrate with user guide doc

Documentation generated from the source doesn't integrate directly into a website except as a link from your other web pages. Like a HAT-produced webhelp file, the auto-doc is its own little website. Here's an example from Netty's documentation that shows how the auto-generated doc is separate from the rest of the site.

<img src="images/nointegration.png" alt="No integration" />

Having separate outputs creates a somewhat fragmented or disjointed documentation experience. Branding the outputs to create one seamlessly branded site may require a lot of cobbling together and overwriting of stylesheets.

### Problem 4: Gives illusion of having complete doc

Finally, when documentation is generated from the source, written by developers, it can given the illusion of documentation. This is something [Jacob Kaplan Moss](http://jacobian.org/writing/what-to-write/) writes about. He says,

>… auto-generated documentation is worse than useless: it lets maintainers fool themselves into thinking they have documentation, thus putting off actually writing good reference by hand. If you don't have documentation just admit to it. Maybe a volunteer will offer to write some! But don't lie and give me that auto-documentation crap”.

Auto-generated just means the documentation is generated from code annotations in the source files. If you have an output like this, it may give the idea that you've got all the documentation you need. In reality, the reference documentation is just one part of API documentation. The user guides and tutorials -- elements that can't be auto-generated -- are just as important as the reference documentation.
