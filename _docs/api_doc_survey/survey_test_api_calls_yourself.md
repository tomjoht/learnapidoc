---
title: Do you test out the API calls used in your doc yourself?
permalink: /survey_test_api_calls_yourself.html
course: "Documenting REST APIs"
weight: 12.5
sidebar: docapis
section: survey
path1: /survey.html
---

{: .survey}
[Survey question](survey_introduction.html): Do you test out the API calls used in your doc yourself or rely mostly on QA validation and trust that the code works?

From 43 responses, here are the results:

![testingapi](images/testingapi.png)

This question wasn't such a good one because it could be interpreted in different ways. Some people said that QA handles the validation, to which I say of course. If you work in a software shop that uses tech writers instead of QA to validate the code, then you're in trouble. I was mostly wondering if tech writers tested out -- in an informal, minimal way -- all the calls that are in the documentation.

It's also important to keep in mind the API one is testing. It's easier to test out calls in a REST API if all of the endpoints are straightforward and somewhat independent. It's more difficult to test out classes in a Java API if the classes have interdependencies and workflows.

Additionally, many times you can't test a class or endpoint well without having sufficient data to return the right information, so there can be a lot of setup and preparation involved (during a period when time is running short).

## Favorite responses

Here are a few of my favorite responses from this survey question:

> Yes, I always test API calls -- at least the basic, and sometimes with some combination of parameters. I publish with request and response examples. If we support JSON and XML I try to include examples of both. If there are any issues I report them and follow up, and the doc doesn't go out, if there's something significant, until it's fixed. So if the doc says it works, it works.

* * *

> Whenever possible I like to be able to run and test code and write examples for use in the documentation. However this is not always possible, in some roles there simply hasn't been time, in other roles developers or QA write longer examples and I try and work with those people.

* * *

> I try to test if I have time but sometimes my involvement is late and limited, and sometimes the API is too complicated to be able to quickly put together tests.

## Is the hallmark of good doc testing?

I think one of the hallmarks of a good technical writer is the ability to test the code. It's almost always a best practice to walk through all the tasks and scenarios yourself.

However, besides the difficulty of setting up the right data for the scenarios to work, you also have challenges in the basic permutations of the way various endpoints can be used together. When I worked at Badgeville, there was tremendous variety in the way you could use different endpoints. It wasn't possible to test all the different ways the API could be used. That's a challenge for API documentation overall. Sure you have some core tasks that you design the API to accommodate, but really users have a lot of different endpoints, parameters, and other options in the way they can use the API. This makes testing more difficult. You only test a fraction of the way the API can be used.
