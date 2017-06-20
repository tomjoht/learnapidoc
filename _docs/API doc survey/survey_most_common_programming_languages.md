---
title: What programming languages are you most familiar with?
permalink: /survey_most_common_programming_languages.html
course: "Documenting REST APIs"
weight: 12.2
sidebar: docapis
section: survey
---

{: .survey}
[Survey question](survey_introduction): What programming languages are you most familiar with (e.g., Java, JavaScript)?

Here are the results:

![Common programming languages tech writers know](/images/commonlanguages-550x396.png)

By the way, I'm not a charting wizard. A couple of people pointed out that in my [previous post](http://idratherbewriting.com/2014/12/17/the-most-popular-type-of-apis-that-technical-writers-document/), I shouldn't have used a pie chart because the responses didn't add up to 100%. As a result, I updated that to a row of columns (like this one).

Also, this time I had 38 responses (6 more than last time). This survey is kind of growing as I analyze it. At the end I'll go back and redo all my calculations, but I don't anticipate that the trends will vary too much (so much that my analysis would become invalid anyway). Interestingly, the more I analyze the survey, the more people participate.

Based on the results, Java, JavaScript, and Python seem to be top languages technical writers know. Trailing these are C#, C++, and PHP.

Note that this survey question is somewhat broad. It doesn't ask which languages are used most in their jobs, whether the languages they know correspond with the APIs they document, whether the respondents learned the language as a result of actual need or just as a hobby, how well they know the language, or whether their knowledge is current (maybe they learned C++ in the 90s and have forgotten it long ago). This question is just a general probe into the basic language familiarity in a small group of surveyed tech writers.

## Correlations between REST doc and programming knowledge

Because respondents added their initials, I also correlated the answers that each person put down for “What type of API do you write documentation for?” with “What programming languages do you know?”

I thought that maybe those who just document REST might not know many programming languages. But actually, there wasn't a correspondence at all. Pretty much everyone in the API doc space is technical enough to be familiar with at least or two programming languages.

## What does it mean to “know” a language?

A lot of people qualified their understanding of a language. They wrote, “minimal knowledge” or “basic familiarity,” or “just reading about it”, or “familiar with the basic concepts and structure”, or “understood from a ‘documentation' perspective…so code understanding is very loosely understood” or “just by reading about it. No programming (yet)” or “I'm most comfortable in docs/understanding frameworks.”

Level of proficiency is an important point. A _tech writer_ putting "Java" on his or her resume implies different expectations than a _developer_ putting "Java" on his or her resume.

It's assumed that a technical writer who lists a programming language on a resume has an ability to read code in that language more or less, but not necessarily write code like a developer. One needs to be familiar with the different components, the terminology, how it all works and such. But anything more than simple programming in that language isn't expected.

Even so, I think that the more proficient you are with a language, the better. To write good documentation, you have to test and describe the code at some level. To test the code, you need to understand it more or less. This might mean setting up a project in an IDE and or some similar task.

No doubt you're calling an API in your documented tasks, so you have to add elements that aren't usually covered in beginner tutorials. Of course, the level of detail and difficulty of all this varies widely based on the language, the API, the context, etc.

## Why Java, Python, and JavaScript?

Why are these languages popular? Mainly, technical writers are merely following the trends of the web. Java is commonly used for web apps. JavaScript is frequently used as a means of integrating APIs on a web page. Python is actually common for processing and manipulating text and other data. (For example, you can create extensions to [Sphinx](http://sphinx-doc.org/) (a popular help authoring tool for developers) using Python.

In a survey done on Sitepoint, [The Best Programming Language to Learn in 2014: Mid-Year Update](http://www.sitepoint.com/best-programming-language-learn-2014-mid-year-update/), a more rigorous analysis was done analyzing job posts, social media, and other trackers to determine the most best languages to learn. Their conclusion?

<figure>[![Sitepoint's survey of the best programming languages to learn](/images/lang_rank-550x606.png)](http://www.sitepoint.com/best-programming-language-learn-2014-mid-year-update/)

<figcaption>Sitepoint's survey of the best programming languages to learn</figcaption>

</figure>

Quite amazingly, the top 7 responses align with the most common languages tech writers know!

I think the survey is an extremely important one. It can take months or years to learn a programming language. You certainly don't want to waste your time learning the wrong one. Suppose you decide to start with Visual Basic and spend months learning it, only to find that what employers really want you to know is Java.

## Why are some languages more in demand?

I said that the languages tech writers know reflect the trends of the web. Sitepoint has a better analysis of why these languages are more in demand:

Their reasoning is as follows:

> Perhaps it's not surprising to find Java topping most charts because it can be used in so many places: application development, server-side web development, Android development and — importantly — education. Many schools, colleges and universities teach Java so resources and questions are littered throughout the web. More recently, Python has gained traction as an introductory language so it will enjoy similar benefits.
>
> Next, we have C and C++ which been around for 45 years in various incarnations. If all C-based projects ceased today, a rich history of the language would remain on the web for many years to come.
>
> C# is slightly unusual given ASP.NET lingers at number 30 in the all-languages chart. That said, it has been in use for more than a decade and is almost as ubiquitous as Java. Many businesses sole output is Microsoft-based software.

Keep in mind that this Sitepoint survey is probably intended for programmers, not technical writers. But since technical writers work along side engineers, the two lists have similar applicability.

From their analysis, it seems that C and C++ are somewhat legacy languages that enjoy popularity based on their dominance for so long. And Python is more often learned as an introductory language. Because of Java's ability to integrate on the web through J2EE servers (e.g., Tomcat), it has a definite advantage for web-based applications.

## Where to start

When learning programming, where should you start? I've heard often that Python and JavaScript are good languages to start with. I haven't studied Python, but I really like JavaScript.

I used JavaScript extensively at Badgeville (while documenting a JavaScript SDK), and it was great being able to focus on just one language. JavaScript can be really simple or complex. What's great about JavaScript is that you run it in your browser and it does cool stuff, immediately.

And it can be useful too – once you understand how to use a jQuery library, you can do almost anything you want on a web page. You can see my dabbling with JavaScript in some of the things I've been doing with webhelp – such as dynamically adding a TOC, implementing a content filter, collapsible sections, a mini-TOC, and more. So I immediately see its applications.

Often with more core programming languages (C++ or Java), about the only thing I can do is write programs that produce console messages based on some logic. _Whooptido!_

Some programmers tell me that, if I want to learn a language, I might want to focus on Scala, R, and other languages that are emerging. Despite this, I've never seen any job description looking for technical writers who know Scala or R.

## Takeaways?

What's the takeaway from this question? It's hard to extrapolate, but I'm guessing that technical writers know Java, JavaScript, Python, C++, C#, and PHP because they've needed to learn it for some aspect of their job. This might mean that focusing on these languages will help qualify you for many job opportunities as well.

## Depth or breadth?

One question is whether depth or breadth is better with programming languages. Is it better to develop an advanced knowledge of Java at the expense of knowing other languages? Or is it better to be a jack-of-all-trades-master-of-none type of person?

My guess is the latter. Tech writers often interact with numerous programming languages and platforms. You don't need to be hard-core in every language (in fact, it would be nearly impossible without being a full-time developer). But you need to be able to navigate the landscape, understand the terminology, and know how to pick up information quickly.

## Other benefits

Another benefit to knowing programming languages is simply becoming familiar with how programmer's think. In a recent podcast I did with Joe Malin (not yet published), Joe mentioned the importance of understanding how programmers think. This is perhaps the greatest takeaway from learning a language. In that regard, it doesn't entirely matter whether you know Java, Python, C++, C#, or JavaScript. It matters that you understand general principles of programming, how programmers approach problems, the type of information they need to know, and so on.
