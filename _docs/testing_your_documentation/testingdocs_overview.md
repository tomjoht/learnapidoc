---
title: "Overview to testing your docs"
course: "Documenting REST APIs"
permalink: /testingdocs_overview.html
weight: 4.0
sidebar: docapis
section: testingdocs
path1: /testingdocs.html
---

Walking through all the steps in documentation yourself is critical to producing good documentation. But the more complex setup you have, the more difficult it can be to test all of the steps. Still, if you want to move beyond merely editing and publishing engineer-written documentation, you’ll need to build sample apps or set up the systems necessary to test the API docs. These tests should mirror what actual users will do as closely as possible.

I believe so strongly in testing API doc content that I've created an entire section devoted to this topic. This section includes three topics:

* [Set up a test environment](testingdocs_test_environment.html)
* [Test all instructions yourself](testingdocs_test_your_instructions.html)
* [Test your assumptions](testingdocs_testing_assumptions.html)

Many times developers don't expect that a technical writer will be doing anything more than just transcribing and relaying the information given to them. With this mindset, a developer might not immediately think that you need or want a sample app to test out the calls or other code. You might need to ask them for it.

{% include random_ad.html %}

Most of the time, developers respect technical writers much more if the technical writers can test out the code themselves. Engineers also appreciate any feedback you may have as you run through the system. Technical writers, along with QA, are usually the first users of their code.

<figure><a href="https://flic.kr/p/6Grete" class="noExtIcon"><img src="images/testingeverything.jpg" alt="Testing everything" /></a><figcaption>Photo from Flickr (https://flic.kr/p/6Grete). City water testing laboratory, 1948. When I think about testing docs, I like to think of myself as a scientist in a laboratory, carefully setting up tests to measure reactions and outcomes.</figcaption></figure>

If a developer or QA person can't give you access to any such test server or sample code, be suspicious. How can a development and QA team create and test their code without a sample system where they expect it to be implemented? And if there's a sample system, why can't you also have access so you can write good documentation on how to use it?

Sometimes developers don't want to go through the effort of getting something working on your machine, so you may have to explain more about your purpose and goals in testing.
