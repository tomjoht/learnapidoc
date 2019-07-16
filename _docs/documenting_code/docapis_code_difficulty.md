---
title: Why documenting code is so difficult
permalink: /docapis_code_difficulty.html
keywords:
course: "Documenting REST APIs"
weight: 7.1
sidebar: docapis
section: docapiscode
path1: /doccode.html
---

Ask developers what the most important element of API docs is, and the answer you're bound to hear time and again is code samples. Include working code samples that developers can easily copy and paste into their documentation. Code samples that demonstrate how to incorporate abstracts into an actual implementation. Code samples, sample apps -- whatever. Just more code, code, code.

Check out the following video clip from engineer Ruthie Ben Dor during a Write the Docs conference. Responding to the question, "What are the three most important elements of producing API documentation?" Ruth says:

<iframe width="560" height="315" src="https://www.youtube.com/embed/oItYMZHJv3g?start=252" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Around the 4:15 mark, Ruthie says,

> I think that if you're going to produce API documentation, there are 3 things that should either be included in it or that you should do in the course of making it. The most important thing, I think, if you just want people to just start using it is code examples. There are many API documentation generators that will generate code samples for you. Sometimes they're not great, so having someone actually go through and vet those code samples to make sure that they actually work correctly -- that's huge. It's one thing to be given a method and how it's called, but for the developer to have to take that and figure out how to make working code, hitting that endpoint, it's just a little bit more of a barrier. As opposed to if they can just copy and paste in their browser console to prove that it works to themselves, that's a really nice way to lower the barrier to entry. Code samples are huge, and code samples in a variety of languages that people are likely to use with your API. ([Ruthie Ben Dor: API documentation and developer portals 2/3 - YouTube](https://www.youtube.com/watch?v=oItYMZHJv3g))

Why do engineers so frequently say they want code? Code examples show how to implement the abstract, narrative explanation in an actual way. In that sense, they are extremely powerful tools to help users understand the right actions to take.

Despite the importance of code samples, they're not easy to implement. For this reason, they're often neglected or missing from API docs. In fact, code samples might be the most difficult part of documentation that technical writers have to document. In this section, I'll explain why documenting code can be challenging, and then in various additional topics I'll provide concrete strategies for successfully incorporating code samples in your documentation.

{% include random_ad2.html %}

## Challenges in documenting code

Why is code so difficult to document? There are several reasons:

* **Code requires an understanding of a specific programming language**. Technical writers often lack the familiarity with the programming language, or if technical writers do have some familiarity with programming, it's not always the right language for the project. So right away you're at a disadvantage and have to ramp on tutorials just to understand the basics of what's going on in the code. But you're not documenting basics &mdash; you're documenting how to implement code in a particular context, often at an advanced level. Knowledge about how the code works is simply assumed. You basically have to walk into an Advanced Calculus course and explain Legrange Multipliers without having taken anything more than beginning Algebra.

* **Code doesn't follow a step-by-step paradigm**. The central paradigm most technical writers follow is a task-based model where you begin with step 1, 2, 3, and so on until you reach the end of the task. This isn't the case with code documentation. Code is non-linear by nature, so you can't simply start from the top and proceed to the bottom. There might be best practices, optional techniques, lists of parameters, conceptual explanations mixed with other details, and more. My strategy for documenting code is to present a full code example followed by sections that explain different aspects of the code. This is very different from the procedural approach usually followed in tech docs.

* **Understanding code requires you to identify your audience's technical level**. You have to write to your audience's awareness and knowledge needs, even when their technical levels vary dramatically. You usually either overwrite for the advanced developers by explaining the obvious, or you alienate less experienced developers by assuming too much. Implementing progressive information disclosure models can be tricky. Even if audiences are technical, there's no guarantee that they have expertise in the particular technology you're documenting. As a result of all this haziness, we as technical writers often end up imagining ourselves as the audience.

* **Formatting the code properly, and referring to various lines, is also a challenge.** You want to apply code syntax highlighting based on the code language but also good code formatting for that language that follows standard conventions in that language. If you have 50-100 lines of code, referring to different aspects of the code is also challenging &mdash; you could conceivably refer to line numbers, if your samples have them, but that approach also has its problems. Do you wrap code or let the user scroll horizontally? How much do you pepper code with inline comments, writing for that opportunistic, experiential programmer rather than the systematic programmer who starts from page one?

* **Making sure code samples work from release to release can require a lot of QA and maintenance**. If you have code samples peppered throughout your docs, rather than pulled from a central repo, it can be challenging to even identify all the code you have to test and maintain. Do you test it with each release? How testable will the code be? Some code might just run easily enough, but other code might require you to build sample apps or install different technical frameworks for it to even work. And you might have to add contextual code so that the code can actually work, maybe even creating sample data or other information so that the right values can be returned.

* **Engineers have a much more trained eye for good versus bad code**. You might not even realize that your code is bad. Remember that engineers live and breathe code, and many feel that *code is poetry*. An efficient technique in code (e.g., recursive loops that expand resources as needed) can be beautiful, evoking an aesthetic in the engineer's mind. In your perspective as a technical writer, it's unlikely that you'll approach code with the same reverence and awe. Your more mundane approach to code might make it difficult to capture the same attitude and perspective that your users have towards the subject.

These are some of the challenges around documenting code. In the topics in this section, I'll dive into each of these challenges and more in much greater detail. Although this topic might seem intimidating, if code samples are the most important element of good API docs, we have to dive deep here.

{: .note}
June 11, 2019. I'm currently expanding out the topics in this section. Stay tuned for more to come in this section.

{% include random_ad.html %}
