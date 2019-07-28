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

Software code, often written in Java, C++, or any other language, is challenging to document in part because technical writers often aren't already fluent in the programming language. But even for writers or developers who are fluent in the language, code is hard to document. There isn't a step-by-step process to follow. Code is often arranged in non-linear order, so you can't simply proceed line-by-line through it.

There's also the question of how much to document, what to cover, and where to include the documentation. Overall, best practices for documenting code are somewhat fuzzy and undefined, which makes documenting code one of the most challenging and difficult tasks technical writers face.

{: note}
In a previous topic, [Code tutorials](docapis_codesamples_bestpractices.html), I briefly touched on the need to document code. But given the importance of this topic, I've expanded this section in more depth with its own dedicated topics here.

* TOC
{:toc}

## Starting with a recent experience documenting code

I always like to start abstract topics by grounding them an actual experience. A recent project I worked on involved creating video skills for Fire TV apps &mdash; developing the backend logic to make your streaming media apps voice interactive, so users could say "Play *Interstellar*," (or some other movie) and it would play.

When users say these Alexa commands, Alexa interprets them and packages up the info into a structured JSON request that it sends a partner's Lambda code. Lambda, an AWS service, provides serverless computing. Partners are supposed to listen for the incoming requests and then develop their own code to respond appropriately to the requests, presumably retrieving the media identifier for *Instellar* and sending this media identifier to their Fire TV app to play.

The implementation involves coding a Lambda function. To help developers, engineers provided a sample Lambda function (in Node JS), but without explanation. As I was working on the documentation, I felt a need to explain the logic of the code.

The Lambda code was only about 450 lines long, and not really complicated. But I wasn't that familiar with Lambda or Node JS, so I learned enough about both to get a sense of what was going on in each line. First, I explained the conditions that triggered the Lambda code to be invoked in the first place. Then I presented the Lambda code in its entirety so the user would have context. Then I split the code into four discrete logical sections. Below the full code sample, I presented each section (labeling them as Section 1 Explanation, Section 2 Explanation, etc.) until I proceeded through the whole code sample.

This approach wasn't particularly great, but I didn't have a better method. I wanted room to elaborate in detail about each of these sections rather than just making brief inline comments. You can see the documentation here: [Step 3: Understand the Alexa Directives and Lambda Responses (Multimodal Devices)](https://developer.amazon.com/docs/video-skills-multimodal-devices/understand-directives-and-responses.html). No doubt this documentation will soon change, so I'm hesitant to provide any more detail beyond the approach I described.

## Challenges with Code Documentation

Overall, I found the entire experience of documenting code challenging. There's no clear approach or pattern to follow when documenting code. Here are a few reasons why I found this documentation tough to write:

### Code doesn't follow a step-by-step paradigm

The code itself is non-linear. What appears at the top (e.g., variables) might not be implemented until functions at the bottom. Functions defined at the bottom might be run inside other code blocks in the middle, and so on.

The central paradigm most technical writers follow is a task-based model where you begin with step 1, 2, 3, and so on until you reach the end of the task. This isn't the case with code documentation. Code is non-linear by nature. You can't simply start from the top and proceed to the bottom. Although I attempted a somewhat section by section explanation in my code explanation, I found that I had to skip over some lines or simply mentioned that they were part of logic explained in later sections.

Overall, this non-linearity is very different from the procedural approach usually followed in tech docs.

### Audience has a high variance in technical levels

Another challenge I faced was deciding what to explain and what to skip over. Would developers already be versed in Lambda and Node JS? Or would this be new to them, as it was to me?

In documenting code, you have to write to your audience's awareness and knowledge needs, even when their technical levels vary dramatically. We usually either overwrite for the advanced developers by explaining the obvious, or we alienate less experienced developers by assuming too much.

Implementing progressive information disclosure models (where you reveal a little bit and then let them expand for more details) can be tricky. Even if audiences are technical, there's no guarantee that they have expertise in the particular technology you're documenting. As a result of all this haziness, we often end up imagining ourselves as the audience.

### Code requires an understanding of a specific programming language

Related to the above point is the fact that we technical writers often lack the familiarity with the programming language to begin with. Or if we do have some familiarity with programming, it's not always the right language for the project. So right away we're at a disadvantage and have to ramp on tutorials just to understand the basics of what's going on in the code.

Additionally, we're not documenting basics &mdash; we're documenting how to implement code in a particular context, often at an advanced level. Knowledge about how the code works is simply assumed. We pretty much have to walk into an Advanced Calculus course and explain Legrange Multipliers without having taken anything more than beginning Algebra.

### Making sure code samples work from release to release requires a lot of maintenance

Another challenge is making sure the code samples work from release to release. I pasted in the full Lambda code to provide context, but within a couple of weeks, I tweaked the code sample a bit. I then had to update the Lambda code as well as the section-by-section explanations. If you have dozens of code samples spread throughout your docs, maintaining this code from release to release will be arduous. How do you ensure it works? Do you separate the code from narrative context so that it can be more regularly tested? That sounds like a good idea, but as soon as you separate code from the conceptual explanation, you risk the possibility that someone will update the code in such a way that it no longer matches the explanation.

### Engineers have a much more trained eye for good versus bad code

Finally, I should note that when I document code, I feel a bit like an outsider writing about a culture or country that I don't belong to. Technical writers are often outsiders to engineering domains. Not being a developer, I might not even realize that the code is bad. Engineers live and breathe code, and many feel that *code is poetry*.

An efficient technique in code (e.g., recursive loops that expand resources as needed) can be beautiful, evoking an aesthetic in the engineer's mind. In my perspective as a technical writer, it's unlikely that I'll approach code with the same reverence and awe. My more mundane approach to code might make it difficult to resonate with developer users.

{% include random_ad.html %}

## Importance of code documentation

Despite the difficulties of documenting code, this area of documentation shouldn't be overlooked. Ask developers what the most important element of API docs is, and the answer you're bound to hear time and again is code samples. Include working code samples that developers can easily copy and paste into their documentation. Code samples that demonstrate how to incorporate abstracts into an actual implementation. Code samples, sample apps &mdash; whatever the form, just give us more code, code, code.

Check out the following video clip from engineer Ruthie Ben Dor during a Write the Docs conference. Responding to the question, "What are the three most important elements of producing API documentation?" Ruth says:

<iframe width="560" height="315" src="https://www.youtube.com/embed/oItYMZHJv3g?start=252" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Around the 4:15 mark, Ruthie says,

> I think that if you're going to produce API documentation, there are 3 things that should either be included in it or that you should do in the course of making it. The most important thing, I think, if you just want people to just start using it is code examples. There are many API documentation generators that will generate code samples for you. Sometimes they're not great, so having someone actually go through and vet those code samples to make sure that they actually work correctly -- that's huge. It's one thing to be given a method and how it's called, but for the developer to have to take that and figure out how to make working code, hitting that endpoint, it's just a little bit more of a barrier. As opposed to if they can just copy and paste in their browser console to prove that it works to themselves, that's a really nice way to lower the barrier to entry. Code samples are huge, and code samples in a variety of languages that people are likely to use with your API. ([Ruthie Ben Dor: API documentation and developer portals 2/3 - YouTube](https://www.youtube.com/watch?v=oItYMZHJv3g))

Why do engineers so frequently say they want code? Code examples show how to implement the abstract, narrative explanation in an actual way. In that sense, code is an extremely powerful tool to help users understand the right actions to take.

Despite the importance of code samples, they're not easy to implement. For this reason, they're often neglected or missing from API docs. In fact, code samples might be the most difficult part of documentation that technical writers have to document. In this section of my API course, I'll provide concrete strategies for successfully incorporating code samples in your documentation.

{% include random_ad2.html %}

{: .note}
July 27, 2019. I'm currently expanding out the topics in this section. Stay tuned for more to come in this section.
