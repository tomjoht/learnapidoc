---
title: Research on documenting code
permalink: /docapiscode.html
keywords:
course: "Documenting REST APIs"
weight: 7
sidebar: docapis
section: docapiscode
path1: /doccode.html
published: false
---

---
title: "Research on code documentation -- when not to comment on code"
categories:
- academics-and-practitioners
- api-doc
keywords:
summary: "In this post, I summarize the findings of an extensive research project about how developers at Google find and use code documentation. The research found that for simple code, sometimes developers prefer to read the code directly. However, for more complex code, developers consult documentation, often by looking in the formal class declarations for information they need; other times they look at comments in the implementation code. Besides the location of docs, the researchers also identify what type of answers and guidance developers want in code documentation."
bitlink: http://bit.ly/whennottocommentcode
---

## Research on code documentation

For the next topic in my [Simplifying Complexity series](/simplifying-complexity), I plan to tackle the topic of documenting code. Programming code, such as Java, C++, or any other language, remains one of the most elusive and difficult topics to document. In part, this is because most technical writers aren't already fluent in the programming language. But even for writers or developers who are fluent in the language, code is hard to document. There isn't a step-by-step process to follow. Code is often arranged in non-linear order, so you can't simply proceed line-by-line through it. There's also the question of how much to document, what to cover, and where to include the documentation. Overall, best practices for documenting code are somewhat fuzzy and undefined.

In the next few weeks, I'll try to tackle this topic in a piece-by-piece fashion, eventually building up the material to form a longer essay. For now, I'll present and summarize some research that has been done on documenting code.

One of the most exciting articles I've found on the topic is "When Not to Comment: Questions and Tradeoffs with API Documentation for C++ Projects," by Andrew Head, Caitlin Sadowski, Emerson Murphy-Hill, and Andrea Knight. This article was published in the *2018 ACM/IEEE 40th International Conference on Software Engineering.* (To read the article, see this [ResearchGate link](https://www.researchgate.net/publication/325732077_When_not_to_comment_questions_and_tradeoffs_with_API_documentation_for_C_projects). I also found it online [here](https://people.eecs.berkeley.edu/~andrewhead/pdf/comment.pdf).)

This research combines efforts among academic researchers, engineers, usability specialists, and members from Google’s Engineering Productivity Research team. Given how important documentation is for understanding code, the researchers wanted to know the best location for documentation as well as what information engineers want in docs. Specifically, they focused on C++ APIs and asked whether engineers are more inclined to consult the header files (where classes are defined) or the implementation files (where classes are implemented) for the information they need. The following screenshot (from their article) describes the difference between header and implementation files:

<img src="https://idratherbewritingmedia.com/images/header_or_implementation_files.png" style="max-width: 500px" alt="Header files versus implementation files" />

Basically, in C++, the header files (`.h`) contain the classes and the main documentation. The implementation files (`.cc`) instantiate and implement the classes from the header. Implementation files have comments peppered in with the code, whereas header files have more formal documentation that follows specific annotation conventions.

The researchers used tracking tools to identify when developers would switch from one file to another, and they also interviewed the developers as a follow-up. Google has about a billion lines of code stored in a central code repository that can be used across the company, so thousands of developers might find and discover code to use in their projects. The team that uses an API might not know the team that developed the API, and vice versa. The researchers gathered information from more than 600 participants in their study.

## Where developers look for documentation about code

Overall, the researchers found that most developers looked in the header files for documentation:

> Survey respondents reported it would be most convenient to find answers to many of these questions in header files, though interviewees indicated code could be accurate and quick enough to read in many cases.

The researchers also found that, for simpler APIs, many developers read the code (rather than consulting the docs) to see if they can quickly understand the API. Some developers have philosophical views about distrusting the accuracy and currency of documentation and prefer to view the code as the primary source of information. In some cases, maintaining documentation for code becomes more of a liability and a hindrance for developers. For simple code, doc just gets in the way or becomes outdated (thus misleading and harming the documentation's credibility).

Beyond skipping docs when the code is simple enough to understand on its own, the researchers also recommend avoiding docs while development is in constant flux (because it would make documentation a constantly evolving target). The researchers say you might also consider skipping code documentation when there aren't sufficient resources to keep the documentation updated. When maintainers can't keep the documentation up to date, it "rots" and becomes more of a liability.

The following chart shows when documentation might not be necessary with code:

<img src="https://idratherbewritingmedia.com/images/when-not-comment-on-code.png" style="max-width: 400px" alt="When not to comment on code"/>

However, for more complex code, especially where multiple files and generated code might be involved, developers still relied on documentation to understand it. The researchers explain:

> When isn’t code enough to be self-documenting? Sometimes, developers had no problem reading code, and in fact preferred it
for finding more accurate information. However, there are some cases where self-documentation isn’t feasible, like code with overly complex method signatures and generated code. Other details, like recommended usage, just can’t be conveyed by source code.

## When to document code

The researchers find that there's an ideal time for writing and updating documentation:

> This study also shows the messiness of proposing updates to documentation. The ideal time to propose changes to documentation is during code authoring and review, possibly through a surrogate like a code reviewer. Documentation can get updated only infrequently after it is initially written, as future updates may raise questions of whether the information adds clutter or redundancy.

In other words, write the docs when the code development is still fresh in your mind (or in the developer's mind). If you wait too long after active development finishes, the documentation will likely be neglected and forgotten, as developers move on to other projects.

## What questions to address in code documentation

The researchers also try to understand what types of answers and guidance should be in the documentation. This is a more difficult, broad question, and their answer is generally "API usage." More specifically,

> Most searchers and maintainers we interviewed had opinions about what did belong in documentation, at both the level of headers and in-line comments. Maintainers and searchers mentioned the importance of describing how a file relates to other files in the project (S17), the state of the world when a method is called (S8), executable examples (M5, M8), implementation comments for future maintainers of an API (M5), explicit links to external documentation (M5), semantics of a function (M8), main concepts that someone should understand and know to use the API (M8), “what” the code is doing and “why” at a statement level (M6), and even a proof of correctness (M6). It is unsurprising that not all of this information was available for all of the APIs we saw during this study.

The researchers arrange this information into a chart for readability:

<img src="https://idratherbewritingmedia.com/images/api-usage-what-to-document.png" alt="What to focus on in documentation" />

## Conclusion

Overall, this research has many insights and conclusions. Probably the main takeaway, as expressed in the title ("When not to comment"), is to recognize when code is simple enough that it doesn't need documentation. However, making this decision must surely be difficult because it presumes that most developers have the same technical level. More advanced developers can probably extrapolate the API's usage from code, but beginning developers might need more handholding. Do comments interfere with readability for advanced developers but aid readability for new developers?

Skipping docs based on the assumption that code is more readable on its own also assumes that you can trust the judgment of the engineers who designed and created the code. In my experience, the development team almost always overestimates the level of intuitiveness of the code they wrote and assumes more capability in their audience than the audience actually has. How many times have you heard engineers say, "Users will understand this &mdash; and if they don't, they *shouldn't* be using the API." Are the risks of omitting docs greater than the risk of including them?

The article addresses many of these concerns and presents a complex view about each of these facets &mdash; where to store documentation, when to document, what questions to address, and more. There's not always a clear path to follow (it's messy), and many environmental, product, and audience details must factor into the documentation strategy. Still, this article provides solid research and probes the topic in illuminating ways.


---
title: "How to design API documentation for opportunistic (active, experiential) learning styles"
categories:
- academics-and-practitioners
- api-doc
keywords: api documentation, learning styles, opportunistic
bitlink: http://bit.ly/designforopportunisticbehavior
summary: "A recent study looked at how developers interact with API documentation. It found a mix of systematic and opportunistic learning styles. While we often write with the former in mind, focusing on the latter styles (opportunistic) might be more beneficial, and will cause us to focus on improving search, navigation, interactive components, troubleshooting, error messages, and other action-oriented features."
---

## Study on how developers use API docs

The latest issue of [Communication Design Quarterly](https://sigdoc.acm.org/publication/), a publication of SIGDOC (the Special Interest Group for Design of Communication), features a highly relevant article called [How Developers Use API Documentation: An Observation Study](https://sigdoc.acm.org/cdq/how-developers-use-api-documentation-an-observation-study/). Several researchers from Merseburg University in Germany &mdash; Michael Meng, Stephanie Steinhardt, and Andreas Shubert &mdash; set out to "understand how developers use documentation when starting to work with a new API."

Their methodology is fairly straightforward: they "asked software developers to solve a set of pre-defined tasks using a public API unfamiliar to them on the basis of the documentation published by the API provider." Basically, these users had to figure out how to construct REST API requests with the right parameters and other configurations in order to send requests that would return the needed information. The researchers then observed how the developers used the API documentation to figure out the tasks.

There are a lot of great observations and conclusions in this article. I'm just summarizing and highlighting the information here. I recommend that you [read the article](https://sigdoc.acm.org/cdq/how-developers-use-api-documentation-an-observation-study/) for the full details.

## Systematic versus opportunistic behaviors

The authors present some previous research about "systematic" and "opportunistic" learning behaviors. These terms are typically how previous researchers describe the contrasting user behaviors.

You're undoubtedly familiar with these two types of behaviors. Sometimes when you get a new device, you just start pushing the buttons and exploring how it works based on inputs and responses, trial and error (this is "opportunistic" behavior). Other times you might crack open the user guide and start reading from page one (this is "systematic" behavior). Other times you blend the two modes ("pragmatic" behavior). Same with developers using an API.

The authors describe the opportunistic behavior patterns in their study as follows:

> ... these developers worked in a more intuitive manner and seemed to deliberately risk errors. They often tried solutions without double-checking in the documentation whether the solutions were correct. For example, P10 changed parameter values to values that seemed to match based on experience with similar problems, but he did not check in the documentation whether the values were actually correct or even existing. P2 inserted parameters that he had noticed at some point in the documentation before, but did not attempt to re-consult the relevant section of the documentation to make sure that the parameters were spelled correctly. ...
>
> We found that opportunistic developers in our test started the first task with some example code from the documentation which they then modified and extended. Once a task was completed, the piece of code that solved the task was used as starting point for the next task, which again was a potential source of error. Developers in this group worked in a highly task-driven manner, but also tried things that were not related to the task, but possibly helped them to build a broader understanding of the API in passing. For example, P9 submitted a request for a UPS service (United Parcel Service) which was not required by any of the tasks, simply in order to see what would happen.
>
> We noted that developers which we assigned to the opportunistic group did not take time to get a general overview of the API before starting with the first task. They scrolled briefly through some pages of the documentation, checked the tools available and then started with the first task. Developers from the opportunistic group wanted fast and direct access to information. They did not systematically read larger sections of the documentation, but typically searched for a specific piece of information and then scanned the documentation

In contrast, the systematic developers approached tasks like this:

> In our test, we note that these developers took some time to explore the API and to prepare the development environment before starting with the first task. Moreover, they took some time to get a general orientation. For example, P7 and P8 studied some sections in the documentation, then sent a GET request to the API and analyzed the response to check whether the request-response process worked as expected.

## Designing for opportunistic behavior

When I'm writing docs and structuring my help system, I admit that I often have the more systematic developer in mind &mdash; the one that will read the material from start to end, the one who begins at step one, reads conceptual introductions, and then proceeds to the code examples and such. But it seems like that learning preference doesn't describe a huge percentage of learners. It's probably better to design for the opportunistic behavior, since this behavior pattern tends to go against our natural inclinations for linear and top-down information design. The linear/systematic behavior might be more accommodated by default, but the non-linear/opportunistic behavior tends to be more neglected.

How do you design for opportunistic behavior? If you recognize that users learn this way, you'll put more emphasis in code comments and code samples, more emphasis on error messages and troubleshooting, more emphasis on interactive experiences (such as Swagger UI) so developers can try out requests, more emphasis on clear navigation and search to facilitate the user jumping around for specific information.

The authors call out some of these design patterns in their recommendations. The second half of the article provides recommendations such as:

* "Provide transparent navigation and a powerful search function"
* "Provide clean and working code samples"
* "Enable fast use of the API"
* "Provide important information redundantly"
* "Organize the content according to API functionality"

## A note on "opportunistic" terminology

Note that "opportunistic" isn't the author's own terminology choice (it's a term previous researchers used), and I admit that I dislike the adjective (though "systematic" is all right, since it doesn't cast the learning style in a negative way). No doubt opportunism was chosen to characterize someone who looks for immediate opportunities to act, but opportunism more commonly has a negative connotation of exploiting a situation for personal gain.

The authors say that opportunistic behavior "bears many similarities with the exploratory and active approach described by John Carroll ..." Is "exploratory" or "active" or "bottom-up" learning a better description? I feel like I should be able to offer a better word, and I'm guessing that educators have terms for these learning styles. Personally, I like *intuitive* or *experiential* or even *impulsive* learning more than *opportunistic*. But I'm still on the hunt for the best word here...

## Where users spend the most time

Despite the differences in learning preferences, the researchers found that "the strategy a developer follows does not seem to predict a tendency towards using information from the Concepts page in our test." In other words, just because you're an opportunistic user, it doesn't mean you always skip conceptual explanations (it's just that you might not start there).

The authors measured the time users spent in various parts of the documentation:

<img src="https://idratherbewritingmedia.com/images/percentageoftimespent.png" style="max-width: 500px;"/>

Regarding the different information types, the authors say users looked for topics rather than categories of information &mdash; in other words, they didn't necessarily distinguish between Concepts versus Recipes versus Reference information types as they searched for information. As a result, the researchers recommend a more topic-based organization strategy:

> **Organize the content according to API functionality.** A first aspect concerns the high-level organization of the API documentation. From the results of our study, we conclude that API documentation should be structured according to categories that reflect the functionality or content domain of the API rather than using categories that signal the type of information provided. Instead of dividing documentation into “Samples,” “Concepts,” “API reference” and “Recipes,” the API used in our study should be reorganized using categories such as “Shipment Handling,” “Address Handling” and so on. If developers experience a problem while working with the API and turn to the API documentation to find information that solves the problem, they are likely to know the content domain of their problem (such as shipments or address handling), but it is more difficult for them to predict whether the information they are looking for is presented in the API reference, in a section dedicated to presenting code examples, or in a section discussing concepts. Note that this guideline can be viewed as an application of the principle of minimalist documentation according to which the components of the documentation should reflect task structure (van der Meij & Carroll, 1995).

This is a somewhat radical recommendation because almost all API docs clearly separate out the reference information and label it as such. But perhaps the conceptual and recipe-based information can more easily integrate and re-use information from the reference section in seamless, unified ways. That way if you're looking for information on Shipping Handling, you might see the relevant Shipping Handling endpoints and parameters as well as tutorials right in the same place (instead of jumping over to Reference for the Shipping Handling endpoint, then back to Recipes for how it might be used, and then over to Concepts for other Shipping Handling information).

It makes sense to have a Reference section where all endpoints are listed, but if this is the only place where these endpoints are described, this pattern might not be most convenient for users.

The authors also recommend that you integrate concepts with their related tasks:

> **Present conceptual information integrated with related tasks.** Another aspect relevant in this respect concerns the integration of conceptual information that developers need in order to use the API successfully. Confirming results reported in Meng et al. (2018), our study supports the conclusion that developers vary with respect to whether they use conceptual overviews that introduce important API concepts in a systematic way. While some developers use such offerings, others tend to ignore them. To reach both groups of developers, conceptual information should not be aggregated in a dedicated section or document that signals to focus on conceptual information. We recommend presenting conceptual information integrated with the description of tasks or usage scenarios where knowledge of these concepts is needed. To give an example from the API used in our test, information regarding the representation of a shipment should be introduced in the section describing how to create a new shipment, and specific features of a return shipment should be provided in the section describing how return shipments are handled.

I love this section because it helps reinforce how poor the DITA information model really is. I don't want to bring upon the wrath of DITA enthusiasts, who will point out that DITA is a technical schema only and not an information design pattern, but c'mon, DITA's specialized topics that clearly separate out concept from task from reference and troubleshooting topics here seems like a big fail when evaluating the observations in this article. If you are using DITA, hopefully you can assemble single topics that provide a more integrated approach across these specialized information types.

## Conclusion

Overall, it's great to see the focus of research on API documentation, especially on REST APIs. Although many of the observations seem to echo Carroll's observations decades earlier about active, experimental learning styles, it's good info and we still have a ways to go to design appropriately for this learning style.

{% include random_ad.html %}
