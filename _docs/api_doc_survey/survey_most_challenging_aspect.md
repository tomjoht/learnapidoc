---
title: What aspect of API doc do you find most challenging
permalink: /survey_most_challenging_aspect.html
course: "Documenting REST APIs"
weight: 12.9
sidebar: docapis
section: survey
path1: /survey.html
---

{: .survey}
[Survey question](survey_introduction.html): What aspect of API doc do you find most challenging (e.g., understanding code)?

This turned out to be a great question. Because the responses were open-ended, I didn't force respondents to select from a pre-existing list. Instead, they could write whatever they wanted. I grouped the answers into 5 main categories.

From the 42 responses (many of which touch upon several challenges, not just one), here are the results:

<figure>![The most difficult part of writing API documentation](images/difficultpart_api_doc-550x380.png)

<figcaption>The most difficult part of writing API documentation</figcaption>

</figure>

Other challenges that had just 1 or 2 responses included the following:

*   lack of tools
*   error handling
*   creating a doc structure
*   writing the doc details
*   maintenance

The following sections expand on each of these categories with more detail.

## Understand the code

The "Understand code" category included comments such as understanding code, platforms, technologies, code samples, getting the developer right terms, testing the code, and so on. This category by far dominated the responses, making it the most difficult aspect of API documentation.

I thought one person's response was particularly insightful:

> working on so many products and projects at once, so while our devs are probably focused on only one topic our writers are scattered, unable to get a deep understanding of anything (tho we're more likely than many devs to have some clarity on other parts of the big picture)

I'm not sure developers would entirely agree with this. Many developers work across a wide swath of technologies, plugins, languages, platforms, servers, and more. There is often a lot of backend code that technical writers aren't required to document (because it's not user-facing).

At the same time, technical writers are at a disadvantage to mastering code because we're simply not working in it all day. I've spent countless hours studying Java, but I can go weeks without seeing any Java code as I work on different projects (some requiring other languages, some not requiring just minimal code), and so on. I found it a lot easier working at Badgeville when I could live in JavaScript only instead of trying to navigate between Java, C++, .NET, JavaScript, Tomcat, REST, and other technologies (not to mention DITA, OxygenXML, CSS, XML, and other publishing needs).

How do you learn code well enough to overcome this challenge, when you're only interacting with it intermittently and superficially (and near release time, instead of during months of development)?

I don't have a good answer to this question. You can take many tutorials online to learn code, but most of them won't help you bridge the gap between beginner and advanced levels.

## Get info from engineers

The "Get info from engineers" category included comments such as getting engineers to write comments, make reviews, provide information, communicate changes, provide buy-in, help with checking in code, or provide access to the code or simply themselves.

One person's response was particularly interesting:

> Convincing developers to let me see the API before they go ahead and implement it.

Usually before a user interface gets implemented, it is first mocked up by a designer, vetted through numerous reviewers and possibly tested with a high fidelity prototype by users. In contrast, engineers seem to be more isolated and independent when they create the structure for the API. Of course, there are API design usability guidelines, but most technical writers are probably far too down the line to participate or even see this design before it's all implemented, coded, frozen, and half-tested.

As a result, technical writers are called in at the fourth quarter and asked to quickly come up to speed on the logic, parameters, and workflow of all the endpoints that were no doubt discussed, drafted, and architected months ago.

Additionally, developers are often quiet people who are deep in concentration, immersed in complicated code problems, and usually without much patience for newbies or people who aren't already familiar with a particular programming language. If you aren't already familiar with the concepts and principles of a programming language, the developer's explanation may not really be helpful at all because you don't have the background. Developers often assume their audience consists of people competent in that language, and so they tend to assume a lot of knowledge about the skills and abilities users will have.

## Create non-ref docs

The "Create non-reference docs" included comments such as providing the big picture, explaining concepts, going beyond simple calls and reference material, explaining workflows, introductory material, how the various endpoints work together, and so on. One person summed up this challenge particularly well in saying:

> Understanding and representing how developers will interact and use the API. It's easy to have -- what I call -- “Resource Documentation," that is auto-generated docs that reference all components of the API, but creating tutorials about how a developer can knit those code pieces together to build what they need is challenging.

The non-reference documentation is probably the most challenging aspect of documentation. The reference documentation includes a list of endpoints or classes, their parameters, responses, and other details. The reference doc is often sketchily documented by engineers already. What's challenging, though, is understanding how all the endpoints or classes are supposed to work with each other, how users can leverage the API to get real business tasks done. These programmer guides (or non-reference doc) might include an introduction, tutorial, task-based procedures, and more. They may be peppered with code samples that the technical writer has to introduce and explain. More than any other deliverable, this programmer guide deliverable falls under the technical writer's domain.

## Understand the audience

The "Understand the audience" category includes comments such as understanding developer needs and business cases, getting feedback, targeting both expert and novice audiences, understanding development patterns that programmers follow, and so on.

To give a clearer idea of the challenge, here's what one respondent wrote:

> Understanding the business cases, and business rules so I can give actually helpful advice and context to integrators

And another wrote:

> Understanding the patterns that developers will use to program against the API, knowing enough about the programmer (user) needs.

Like any other technical writing scenario, understanding your audience is key to providing information that is useful to that audience. However, understanding your developer audience can be particularly challenging. How much knowledge do you assume the developer will have? For example, do you assume the developer will know how to make a REST call using Java syntax? Will he or she know how to iterate through a JSON response and display a specific field on a web page?

Some API doc sites, like Twilio, provide sample code in a variety of languages, while other APIs assume that developers will know how to make the calls in their own language.

<figure>[![Does your audience need all of these samples?](images/proglangsamples-550x326.png)](http://www.twilio.com/docs/api/rest/conference)

<figcaption>Does your audience need all of these samples?</figcaption>

</figure>

With REST APIs, the number of potential languages developers may be using varies much more than with platform-specific APIs. With platform-specific APIs, you can bet that users who are using a Java API are going to know Java, and those using a C++ API will know C++. But with REST, they could be using JavaScript, PHP, Python, Java, C++, C#, Ruby, or other languages.

I've often heard developers assume that our target audience is moderately proficient in a language, e.g JavaScript, and that any mid-level JavaScript developer would know how to integrate a certain call and display the response. However, what they fail to realize is that developers often paddle down different programming rivers. A Java developer may be suddenly integrating some elements of a UI using JavaScript, or someone proficient in PHP may be a novice in the language he or she needs to code in for a particular scenario (e.g., Java).

The end takeaway is that gauging the level of knowledge your audience needs turns out to be a huge challenge. If you assume too much, you alienate the novice user. If you don't assume enough, you annoy the power user.

As with approaches used for GUI documentation, there are workarounds, such as adding more explanations in collapsible sections, or providing brief comments in code samples for power users followed by extensive explanations for novice users.

Regardless of the approach, you should almost never fall into explaining principles of programming instead of how your particular API works. If users need to ramp up on a certain language, they can do so on a lot better tutorial sites probably than your API doc.

## Identify dependencies

The "Identify dependencies" includes topics such as identifying inputs, dependencies, legal requirements, and more. The dependencies response might actually fit into the "Create non-reference docs" / bigger picture workflow response. For example, what dependencies are required before you can use an endpoint? Some endpoints require you to pass in an object from another other endpoint, or they may require you to have certain data in order to return a response, or they may have other prerequisites or large workflows and interdependencies.

For example, when I worked at Badgeville, we had a missions endpoint. To use it, you needed a user who had created behaviors, which were grouped into rewards, which were grouped into missions -- before you could construct a mission endpoint.

Further, there were dependencies about the changes you could make depending on the mission data in the endpoint. For example, if a user was already in a mission, you couldn't just remove the mission. Missions with data could not be deleted until you removed rewards from the mission, and so on. Making the dependencies and interdependencies between the endpoints explicit was challenging.

In short, with complex APIs, endpoints aren't necessarily standalone, discrete entities. You may need to create something first and put it in a certain state before you can call another endpoint with a meaningful response, etc.

## Conclusion

Overall, the question about challenges with API documentation provides a lot of interesting topics to analyze. Ramping up on code, interacting closely with engineers, grasping the big picture of how your API works, and understanding your audience are all key challenges that API documentation writers face.
