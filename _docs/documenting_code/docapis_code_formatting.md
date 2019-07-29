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

In this section, we'll dive into strategies for actually documenting code. There are a number of approaches people take here, and I've covered them with examples and commentary.

* TOC
{:toc}

## Juxtaposed commentary in a third column

One huge challenge in writing code documentation is figuring out how to juxtapose your explanation of what's going on in the code with the code itself. Best practices for documentation in general involve placing helpful instruction next to the area of confusion, and here the common practice is to add inline comments peppered throughout code. But suppose you want a longer running commentary about what's going on in the code (because the level of complexity can't be relayed in a one or two line informal comment). How do you juxtapose the conceptual/explanatory information next to the code?

If your commentary dwarfs the code, you risk making the code unreadable. If you arrange the commentary in sections that come long after the code, you risk creating a chasm between the explanation and the code, such that readers won't know what parts of the code your explanation refers to.

One technique is to create an additional column in your layout. You devote the middle column to your conceptual explanation and your right column to the code.

{% include course_image.html url="https://www.twilio.com/docs/authy/tutorials/account-verification-java-servlets?code-language=Java&code-sample=code-verify-an-authy-code-7&code-sdk-version=default#sending-a-token-on-account-creation" size="750px" filename="twiliocodedocexample1" ext_print="png" ext_web="png" alt="Twilio code documentation" caption="Twilio code documentation" %}

In this example, the conceptual content and steps appears in the middle column, with the code on the right, with a dark background behind the code to create visual contrast.

{% include course_image.html url="https://www.twilio.com/docs/authy/tutorials/account-verification-java-servlets?code-language=Java&code-sample=code-verify-an-authy-code-7&code-sdk-version=default#configuring-authy" size="750px" filename="twiliocodedocblurirrelevant" ext_print="png" ext_web="png" alt="Blurring out irrelevant code" caption="Blurring out irrelevant code" %}

Some screens actually blur out the irrelevant code, allowing you to focus your attention on the right parts being articulated in the conceptual area.

Challenges with juxtaposed narration like that are with screen space. To pull off a third-column design, you need to occupy the whole screen, without margins. I'm surprised they didn't include a switch to collapse the navigation, which would give more space for the code.

The code is only partially visible. The code extends horizontally with an option to scroll right, but surely the designers must have cringed in developing a UI that involves a healthy dose of back-and-forth horizontal scrolling.

Additionally, implementing blur and focus views based on the point one is at in the tutorial must be technically challenging and somewhat cumbersome.

Another challenge is that code is often spread out across multiple files. The view on the design column doesn't indicate whether all the code appears in the same Java file or whether we're seeing code from multiple Java files. And what if users want to copy and paste the code to run it on their own? The way the code view transitions based on the stage in the tutorial makes it difficult to copy.

## Lego approach

Another approach is to build the code from the ground up level by level, which I'm calling the Lego approach. For an example of the Lego appraoch, take a look at this example from the eBay Shopping API: [Searching By Seller: Reviewing Information About A Seller](https://developer.ebay.com/DevZone/shopping/docs/HowTo/PHP_Shopping/PHP_FIA_GUP_Interm_NV_XML/PHP_FIA_GUP_Interm_NV_XML.html#step1).

{% include course_image.html url="https://developer.ebay.com/DevZone/shopping/docs/HowTo/PHP_Shopping/PHP_FIA_GUP_Interm_NV_XML/PHP_FIA_GUP_Interm_NV_XML.html#step1" size="750px" filename="ebayshoppingapiexample" ext_print="png" ext_web="png" alt="Lego approach shown through eBay Shopping API" caption="Lego approach shown through eBay Shopping API" %}

Their tutorial contains five steps:

> * Step 1: Set up basic files and folders
> * Step 2: Add code for making the GetUserProfile call and displaying the results
> * Step 3: Add code for making the FindItemsAdvanced call and displaying the results
> * Step 4: Add HTML and Javascript for the user interface
> * Step 5: Run the code

You start with a blank file. Then with each step, you add more and more code until you have a fully working example. Like with Legos: You start with a base, and then you add more and more parts on top of it until you have a fully working example.

The problem with this approach is one of context. It might be difficult to grasp as a whole just where we're going, though presumably this could be solved by presenting the whole solution up front before proceeding to build it section by section from the ground up.

## Experiment to learn

Another approach to documenting code is to integrate built-in execution capabilities so that users can learn as they go. The most common example of interactive documentation for APIs is with Swagger UI, which I have already covered at length in [Introduction to OpenAPI and Swagger](pubapis_swagger_intro.html) and shown in the [Swagger UI Demo](pubapis_swagger_demo.html):

{% include course_image.html url="pubapis_swagger_demo.html" size="750px" filename="swagger-try-it-out-example" ext_print="png" ext_web="png" alt="Try it out button in Swagger's interactive REST API interface" caption="Try it out button in Swagger's interactive REST API interface" %}

Swagger provides an ingenious blending of documentation and try-it-out interactions that help users learn (by both reading and doing). But making requests with REST API endpoints tends to be somewhat simple. More extensive code tutorials will be harder to make interactive in the browser. Even so, some "Notebooks" (as they're often called) allow you to run code, specifically [Jupyter Notebooks](https://jupyter.org/). Jupyter promotes the ability to run code in the browser:

> The Jupyter Notebook is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text. Uses include: data cleaning and transformation, numerical simulation, statistical modeling, data visualization, machine learning, and much more.

Google has some collaborative notebook options with TensorFlow documentation, which has operations that you can execute using Google Notebooks. In the following screenshot, you can see an option to "Run code now":

{% include course_image.html url="https://www.tensorflow.org/tutorials" size="750px" filename="tensorflowruncodenow" ext_print="png" ext_web="png" alt="Interactive code examples from TensorFlow" caption="Interactive code examples from TensorFlow" %}

Clicking "Run code now" takes you to Google's interactive notebooks that actually run the code in the browser:

{% include course_image.html url="https://colab.research.google.com/github/tensorflow/docs/blob/master/site/en/tutorials/_index.ipynb" size="750px" filename="tensorflowexperimentasyougo" ext_print="png" ext_web="png" alt="Google's interactive notebooks lets you run the code in the browser" caption="Google's interactive notebooks lets you run the code in the browser" %}







## inline comments

https://hackaday.com/2019/03/05/good-code-documents-itself-and-other-hilarious-jokes-you-shouldnt-tell-yourself/

https://www.freecodecamp.org/news/code-comments-the-good-the-bad-and-the-ugly-be9cc65fbf83/

https://hackernoon.com/write-good-documentation-6caffb9082b4

https://medium.com/@andrewgoldis/how-to-document-source-code-responsibly-2b2f303aa525

https://hackernoon.com/write-good-documentation-6caffb9082b4 (what versus why)

links within code



scrolling focus

pop-ups

placemarkers [1]

diagrams (that screenshot)

layers approach. https://developer.ebay.com/DevZone/shopping/docs/HowTo/PHP_Shopping/PHP_FIA_GUP_Interm_NV_XML/PHP_FIA_GUP_Interm_NV_XML.html

split out files into tabs. https://stripe.com/docs/stripe-js


challenge is that any marker you put in the code can't be rendered as code itself. tricky from a tools perspective.


* **Formatting the code properly, and referring to various lines, is also a challenge.** You want to apply code syntax highlighting based on the code language but also based on code formatting for that language following standard conventions in that language (e.g., where to insert line breaks, spaces, capitalization, etc.). If you have 50-100 lines of code, referring to different aspects of the code is also challenging &mdash; you could conceivably refer to line numbers, if your samples have them, but that approach also has its problems. Do you wrap code or let the user scroll horizontally? How much do you pepper code with inline comments, writing for that opportunistic, experiential programmer rather than the systematic programmer who starts from page one?

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
