---
title: "Tool decisions: Who will write?"
permalink: /pubapis_tooldecisions.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.3
section: publishingapis
path1: /publishingapis.html
---

One of the first considerations to make when you think about API doc tooling is who will be doing the writing. If developers will be writing and contributing to the docs, you should integrate the writing tools and process into their toolchain and workflow.

One the other hand, if technical writers will create all the documentation, using the same tools and processes as developers use for code may not be as important.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Integrating into engineering tools and workflows

Riona Macnamara, a technical writer at Google, says that several years ago, internal documentation at Google was scattered across wikis, Google Sites, Google Docs, and other places. In surveys at Google about the workplace, many employees said the inability to find accurate, up-to-date documentation was one of the biggest pain points. Despite Google's excellence in organizing the world's information, organizing it internally proved to be difficult.

Riona says they helped solve the problem by integrating documentation into the engineer's workflow. Rather than trying to force-fit writer tools onto engineers, they fit the documentation into developer tools.

{% include random_ad.html %}

Developers now write documentation in Markdown files in the same repository as their code. Some other engineers wrote a script to display these Markdown files in a browser directly from the code repository.

The method quickly gained traction, with hundreds of developer projects adopting the new method. Now instead of authoring documentation in a separate system (using writers' tools), developers simply add the doc in the same repository as the code. This ensures that anyone who is using the code can also find the documentation. Engineers can either read the documentation directly in the Markdown source, or they can read it displayed in a browser.

If you plan to have developers write, definitely check out Riona Macnamara's Write the Docs 2015 presentation: [Documentation, Disrupted: How two technical writers changed Google engineering culture](https://www.youtube.com/embed/EnB8GtPuauw).

## Pros and cons of having developers write

Having developers write or contribute to documentation should inform your tool choice with API documentation. If you plan to involve developers in writing and editing, you'll naturally choose more of a [docs-as-code tools](pubapis_docs_as_code.html) approach, whereas if only tech writers will edit, you can lean more toward traditional [help authoring tools](pubapis_hats.html).

Overall, I'm much in favor of the [docs-as-code tools](pubapis_docs_as_code.html), which aligns with developer environments. Many times developer documentation is so complex, only developers can really write it. Unless you have a background in engineering, understanding all the details in programming, server configuration, or other technical platforms may be beyond the technical writers' ability to document (without a lot of research, interviewing, and careful note taking).

Additionally, some developers prefer to just write the doc themselves, communicating from one developer to another. If a developer is the audience, and another developer is the writer, chances are they can cut through some of the guesswork about assumptions, prerequisite knowledge, and accuracy. It's also more efficient than trying to transmit the information to a technical writer.

On the other hand, a developer who creates the API may assume too much of the audiences' technical ability. As a result, the documentation may not be helpful. Steven Pinker explains that the [curse of knowledge](http://idratherbewriting.com/2007/01/24/the-curse-of-knowledge-the-more-you-know-the-worse-communicator-you-become/) is one reason why writing is often poor and confusing. The more you know about a topic, the more assumptions and background information you have automatically firing away in your brain. You become blind to all of these assumptions, terms, and other details that new learners struggle with. You're so familiar with a topic that you can't see it as a new learner would. You don't know the questions to ask, the things that don't make sense.

## Collaborative effort

In most cases, API documentation is a collaborative effort between developers and technical writers. Developers tend to focus more on writing the [reference documentation](docendpoints.html), while technical writers focus more on the [non-reference documentation](docnonref.html).

Developers who are heavily involved in writing documentation might want to store the documentation in the same repository as their code. In fact, if they can auto-generate the documentation from comments in the code, that's usually their preference. This approach reduces documentation drift, meaning it helps keep the code in sync with the documentation.

Either way, both technical writers and developers will often work with each other in a close way.
