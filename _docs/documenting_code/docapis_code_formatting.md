---
title: Formatting code documentation
permalink: /docapis_code_formatting.html
keywords:
course: "Documenting REST APIs"
weight: 7
sidebar: docapis
section: docapiscode
path1: /doccode.html
published: false
---

*you need to use code syntax highlighting correctly to make the code readable.*
 *you have to use proper style formatting with white space and such*
*Is there any way to collapse the comments or to provide a way to expand the comments?*
With span or div comments, doesn’t this remove the ability to comment in the code. I think you’d need to give up your syntax highlighting, or maybe you … I’m not sure.*
- What if you could somehow provide an easy way to provide documentation right next to code?* *Like twilio? The dual pane, with code in focus.* *There is this paradox that the more you document, the more you interfere with the readability of the code.*
*there are lots of innovative things people are doing with code that wasn’t really possible before.*
What are some innovative techniques around code?*strip sample:* [Stripe.js and Elements | Stripe Payments](https://stripe.com/docs/stripe-js)
 What if code scrolls horizontally? Should you implement horizontal scrolling?*
 What is a Jupiter notebook?*[Project Jupyter | Home](http://jupyter.org/) [The evolution of Jupyter Notebook: Jupyter Lab – Mohtadi Ben Fraj – Medium](https://medium.com/@mohtedibf/the-evolution-of-jupyter-notebook-jupyter-lab-704f3e93230c)

 *Can you give people real-time feedback through validators, like Swagger Editor?*
 *Are line numbers really useful? Do people reference them?*

*should you highlight the code as a different color?*

*Here’s an example from eBay:* [Getting Started with Search: Specifying XML Results in a Shopping API GET Request](https://developer.ebay.com/DevZone/shopping/docs/HowTo/PHP_Shopping/PHP_FIA_GUP_Interm_NV_XML/PHP_FIA_GUP_Interm_NV_XML.html)

*How do you highlight or denote the parts of the code that a user needs to customize? What conventions or patterns are common with that?


How much height do you allow for code samples before you cut it off? Seems like it’s fairly common to cut it off at like 800px or so.*
3. *Here’s a key article:
2. *How do you dynamically insert API keys or other stuff into sample calls to make them more copy and pastable?*

 *When should you show scroll bars with code? A limit on the vertical horizon, on the horizontal axis? Should you shrink code so that it becomes smaller and smaller in the responsive view? Or like stripe should you make it not shrink so small but rather be a fixed width? Should writers about any need for horizontal scrolling, or is this okay? I don’t get any scroll bars on* stripe: [IBAN Element Quickstart | Stripe Elements](https://stripe.com/docs/stripe-js/elements/iban)

How do you allow users to navigate among comments in your code? Would the scrollto plugin really be a good idea?*
11. *How do you annotate code? Here’s an example:*
*This is from Android Programming for Beginners. Exploring the project's Java code and the main layout's XML code. This chapter provides a really interesting way to describe and document code. It walks you through more or less section by section. But the numbers allow you to expand with more depth. There are multiple layers here. Do you explain what packages are, and classes? We assume the user has this knowledge, right? But you have to understand what knowledge the user already has versus what knowledge the user needs. What does the user need to know? It is not readily apparent. There is no immediate task, or is there?*

 *Is the 3 column design an effort to try to provide narration of code separate from the code, to keep the two separated and easily scannable? Yes, this is a key point that you want to emphasize. How do you create a running commentary about code without interfering with the code itself. This is what has led to the 3 column display.*
2. *Are gists something you should be using?*
*Check out* [The Golden Rules of Code Documentation – Java, SQL and jOOQ.](https://blog.jooq.org/2013/02/26/the-golden-rules-of-code-documentation/)

*How could you implement the side by side scrolling technique with more regularity? I really think this might be the way to go. Problem is width, but maybe this is all right? Also, how to do code syntax highlighting while also having markers in the code that indicate narrative points?*

- it's hard to reference the code. you might want to refer to different parts of the code during conceptual explanations.  It could be useful to have some line numbers to reference this, but it might not be so wise to count on this for maintainability.
