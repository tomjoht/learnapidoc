---
title: "Overview to testing your docs"
course: "Documenting REST APIs"
permalink: /testingdocs_overview.html
weight: 5.01
sidebar: docapis
section: testingdocs
path1: /testingdocs.html
---

Walking through all the steps in documentation yourself is critical to producing high-quality, accurate instructions. But the more complex setup you have, the more difficult it can be to test all of the steps. Still, if you want to move beyond merely editing and publishing engineer-written documentation, you’ll need to build sample apps or set up the systems necessary to test the API docs. These tests should mirror what actual users will do as closely as possible.

* TOC
{:toc}

## Leveraging test cases from QA

When you start setting up tests for your documentation, you typically interact with the quality assurance (QA) team. Developers might be helpful too, but the quality assurance team already has, presumably, a test system in place, usually a test server and "test cases." Test cases are the various scenarios that they're testing.

You'll want to make friends with the quality assurance team and find out best practices for testing scenarios relevant to your documentation. They can usually help you get started in an efficient way, and they'll be excited to have more eyes on the system. If you find bugs, you can either forward them to QA or log them yourself.

If you can hook into a set of test cases QA teams use to run tests, you can often get a jump start on the tasks you're documenting. Good test cases usually list the steps required to produce a result, and the scripts can inform the documentation you write.

{% include random_ad2.html %}

## Ways to test content

Testing your API doc content is so critical, I've created an entire section devoted to this topic. This section includes three topics:

* [Set up a test environment](testingdocs_test_environment.html)
* [Test all instructions yourself](testingdocs_test_your_instructions.html)
* [Test your assumptions](testingdocs_testing_assumptions.html)

<figure><a href="https://flic.kr/p/6Grete" class="noExtIcon"><img src="images/testingeverything.jpg" alt="Testing everything" /></a><figcaption>Photo from <a href='https://flic.kr/p/6Grete'>Flickr</a> &mdash; City water testing laboratory, 1948. When I think about testing docs, I like to think of myself as a scientist in a laboratory, carefully setting up tests to measure reactions and outcomes.</figcaption></figure>

{% include random_ad.html %}
