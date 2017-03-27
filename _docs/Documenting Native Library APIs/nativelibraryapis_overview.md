---
title: "Overview to native library APIs"
permalink: /nativelibraryapis_overview.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.0
section: nativelibraryapis
---

In previous parts of the course, we focused exclusively on REST APIs. Native library APIs (also called class-based APIs or just APIs) are notably different in the following ways:

* **Installed locally**. Native library APIs are installed locally, compiled into the programmer's code as an additional library. The programmer can then use the classes, methods, or other functions available in the library. (The API part refers to the *public* classes the users use to access the functions in the library. There are probably lots of helper and utility classes in the Java library that aren't public. The *public* functions that the developer audience uses form the API, since this is how people make use of the library.)
* **No requests and responses**. The classes in the native library API don't use HTTP protocol, nor are there request and responses sent across the web. The native library API is simply a collection of functions that enhance the existing code with more capabilities. It's entirely on-premises.
* **Language specific**. Native library APIs are language specific. There are as many different types of APIs as there are programming languages, more or less. You can have a Java API, C++ API, C# or .NET API, JavaScript API, and so on.
* **Requires some programming knowledge to document**. To understand how the API works, you need to have a general understanding of the programming language the API is written for. You don't need to be a programmer, but you should be familiar with the nuts and bolts of the programming language, the correct terms, how the different parts fit together, and how developers will use the API.

We will focus this section on Java APIs, since they're probably one of the most common. However, many of the concepts and code conventions mentioned here will apply to the other languages, with minor differences.

<img src="images/eclipseframe.png" alt="Eclipse" />

## Do you have to be a programmer to document native library APIs?

Because native library APIs are so dependent on a specific programming language, the documentation is usually written or driven by engineers rather than generalist technical writers. This is one area where it helps to be a former software engineer when doing documentation.

Even so, you don't need to be a programmer. You just need a minimal understanding of the language. Technical writers can contribute a lot here in terms of style, consistency, clarity, tagging, and overall professionalism.

You know what happens when engineers write &mdash; the content is cryptic and often incomplete. Usually the developer assumes everyone is as knowledgeable as he or she is, and any kind of extra explanatory detail, examples, cross-references, glossaries, or other helpful information is omitted.

## My approach to teaching native library API doc

There are many books and online resources you can consult to learn a specific programming language. This section of the course will not try to teach you Java. However, to understand a bit about Java API documentation (which uses a document generator called Javadoc), you will need some understanding of Java.

To keep the focus on API documentation, we'll take a documentation-centric approach to understanding Java. You'll learn the various parts of Java by looking at a specific Javadoc file and sorting through the main components.

## What you need to install
For this part of the course, you need to install the following:

* **Java Development Kit (JDK)**. You can [download the JDK here](http://www.oracle.com/technetwork/java/javase/downloads/index.html). Click the Java button on the left (not Netbeans) and then select the appropriate download for your machine.
* **Eclipse IDE for Java Developers**. Use the [Eclipse Installer to download Eclipse](https://eclipse.org/downloads/).

To make sure you have Java installed, you can do the following:

* On Mac: Open Terminal and type `java -version`.
* On Windows: Open a Command Prompt and type `where java`.

Also, start Eclipse and make sure it doesn't complain that you don't have the JDK.

(Since we'll just be using Java within the context of Eclipse, Windows users don't need to add Java to their class path. But if you want to be able to compile Java from the command line, you can do this.)
