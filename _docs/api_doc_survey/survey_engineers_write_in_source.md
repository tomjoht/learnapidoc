---
title: Do engineers write API doc in the source code?
permalink: /survey_engineers_write_in_source.html
course: "Documenting REST APIs"
weight: 12.9
sidebar: docapis
section: survey
path1: /survey.html
---

{: .survey}
[Survey question](survey_introduction): Do engineers write the initial API documentation in the source code (e.g., Javadoc syntax)?

42 people responded. The results are as follows:

![commentsincode2](/images/commentsincode2.png)

This question was a little problematic. Because a lot of tech writers are working on REST APIs, a lot of developers don't write reference documentation in the code (unless they're creating the Swagger files). However, they might put the reference documentation on an internal wiki in some other place, such as a readme.txt file. At any rate, I think the "No" is artificially inflated here by the many writers working on REST APIs instead of platform APIs. However, the responses are still useful.

## Highlighted comments

Here are a few comments that I thought were particularly telling:

> Yes, engineers write the in-code comments that are used in the generated reference docs. Technical writers assist junior engineers, and review all engineers' work. Technical writers write the overviews and tutorials.

* * *

> Usually, if systems like doxygen or javadoc are used, the engineers will write the comments initially, then there is a debate about how edits are done by the TW if need be. I always try to get that level of basic info done by the devs even if they don't use such generation systems.

* * *

> Yes, its often incomplete, or inadequate, and I'm trying to insert myself into the process.

* * *

> yes. The engineers entered their comments within the code and the documentation was generated with the build.

* * *

> in theory… often it's inaccurate or out of date or vague, so I end up writing

* * *

> No. Some have draft material in Confluences, Apiary, or ReadTheDocs, but that's inconsistent and unpredictable.

I was trying to find out how common it is for developers to write the initial API documentation in the source code. My experience aligns with the comments here. For the Java, C++, and .NET APIs, developers draft the reference doc, but it is incomplete, vague, or otherwise incomplete in places. The tech writer's main task is the non-reference documentation. However, this is not the case for REST APIs, since we aren't using any automated doc solutions for REST. But even with REST APIs, developers draft information about the endpoints and parameters in Confluence.

Compare responses to this question with another survey question: Do you write API documentation by looking at the source code? With the latter question, 60% of people said that they do write API doc by looking at the source (or at least they sometimes consult the source). Here 36% said that developers write the initial API doc, and 31% said engineers _sometimes_ write the initial doc in the source. So the responses somewhat align. Overall, the API reference documentation is mostly written as a joint effort between both engineers and technical writers.

## Thoughts

It is fairly common for engineers to note somewhere, whether in source-code comments or other places, details about the endpoints, parameters, and other information about the API they're building. However, an engineer's attempt at documentation is usually poor for the following reasons:

*   [The curse of knowledge](http://idratherbewriting.com/2007/01/24/the-curse-of-knowledge-the-more-you-know-the-worse-communicator-you-become/): An engineer's expertise (background, experiences, assumptions, etc.) can hamper his or her ability to communicate information in a simple, easy-to-understand way.
*   Lack of interest: Engineers usually don't care about writing clear doc. The doc is a pain in the neck for them to write, so they do a quick, skimpy job at it, almost like firing off a quick email and moving on to something else.
*   Lack of responsibility: Engineers are only responsible for the code they're writing. If another engineer created a class or endpoint, it's usually that engineer's job to provide doc for it. Engineers aren't usually responsible for the documentation, so they care less about it overall.
*   Lack of the big picture: Engineers usually work on a small slice of the solution and don't see the larger picture of how it all fits together and how users will actually leverage the classes or endpoints for a specific business case.

I've written about pros and cons of developers writing reference documentation previously. See the [presentation I gave to the San Francisco STC chapter](http://idratherbewriting.com/2014/10/16/api-doc-presentation-slides-and-recording/). One of the main drawbacks of having engineers write the reference documentation is that it gives the illusion of having real documentation. To say to a customer, "Here's the Javadoc," gives one the sense of having documentation when what is actually needed are tutorials and non-reference documentation that explains how to use the API. In contrast to impression of the reference doc, many of the endpoints are not standalone, discrete calls made independently of each other but are rather used in particular sequences or tasks.

For example, at my work a project manager (who is not a developer) was recently looking at a Doxygen file for C++ documentation. He wanted to know which classes were the important ones from the list of classes in Doxygen. There's no way to know this by simply looking at the Doxygen file. Many classes are helper classes or are classes that provide small utilities for various processes. You only realize what the important classes are by looking at the non-reference implementation guide.

## Assessing what engineers have written

One of the difficulties of having engineers write the initial doc is assessing whether the information is good or not. If an engineer describes what a certain Java class does, you have to understand enough about Java to evaluate the description. A few key points to ask about any class in Java are the following:

*   What does the class do?
*   What constructors does the class use?
*   What fields does the class have?
*   What arguments does the constructor take?
*   What exceptions does the class throw?
*   What methods does the class have?
*   What arguments (and data types) does the method accept?
*   Does the method return anything?
*   Does the class inherit from another class?

Each programming language will have a similar set of questions.

For a REST API endpoint, you might ask the following:

*   What does the endpoint do?
*   What the syntax of the endpoint?
*   Does the endpoint accept any parameters?
*   What are the data types of the parameters?
*   What does the endpoint return?
*   What type of method is the HTTP request? (GET, POST, DELETE, PUT)
*   What errors does the endpoint possibly return?
*   What is included in the endpoint's response?

This is the kind of information that engineers should supply for any class or endpoint they create. Because the information is highly structured, meaning the same information needs to be documented about each of the classes or endpoints, engineers can simply fill in the blanks for each of the questions.

If this information is missing, you may be able to find it out by looking at the source code. But most likely the technical writer will need to ask the engineer for some of these details.

## Great excerpt from Oracle's Javadocs tool

Oracle has some excellent information on API documentation. I ran across this excerpt from [How to Write Doc Comments for the Javadoc Tool](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#principles) a while ago and think it fits nicely into this discussion about whether engineers or technical writers create the reference documentation.

> ### Who Owns and Edits the Doc Comments
>
> The doc comments for the Java platform API specification is owned programmers. However, they are edited by both programmers and writers. It is a basic premise that writers and programmers honor each other's capabilities and both contribute to the best doc comments possible. Often it is a matter of negotiation to determine who writes which parts of the documentation, based on knowledge, time, resources, interest, API complexity, and on the state of the implementation itself. But the final comments must be approved by the responsible engineer.
>
> Ideally, the person designing the API would write the API specification in skeleton source files, with only declarations and doc comments, filling in the implementation only to satisfy the written API contract. The purpose of an API writer is to relieve the designer from some of this work. In this case, the API designer would write the initial doc comments using sparse language, and then the writer would review the comments, refine the content, and add tags.
>
> If the doc comments are an API specification for re-implementors, and not simply a guide for developers, they should be written either by the programmer who designed and implemented the API, or by a API writer who is or has become a subject matter expert. If the implementation is written to spec but the doc comments are unfinished, a writer can complete the doc comments by inspecting the source code or writing programs that test the API. A writer might inspect or test for exceptions thrown, parameter boundary conditions, and for acceptance of null arguments. However, a much more difficult situation arises if the implementation is not written to spec. Then a writer can proceed to write an API specification only if they either know the intent of the designer (either through design meetings or through a separately-written design specification) or have ready access to the designer with their questions. Thus, it may be more difficult for a writer to write the documentation for interfaces and abstract classes that have no implementors.
>
> With that in mind, these guidelines are intended to describe the finished documentation comments. They are intended as suggestions rather than requirements to be slavishly followed if they seem overly burdensome, or if creative alternatives can be found. When a complex system such as Java (which contains about 60 packages) is being developed, often a group of engineers contributing to a particular set of packages, such as javax.swing may develop guidelines that are different from other groups. This may be due to the differing requirements of those packages, or because of resource constraints.
