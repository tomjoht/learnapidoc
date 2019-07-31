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

One technique is to create an additional, third column in your layout. You devote the middle column to your conceptual explanation and your right column to the code. This way the code and the narration are juxtaposed such that readers can glance at the code while reading your conceptual explanations. Here's an example from Twilio showing this juxtaposed approach:

{% include course_image.html url="https://www.twilio.com/docs/authy/tutorials/account-verification-java-servlets?code-language=Java&code-sample=code-verify-an-authy-code-7&code-sdk-version=default#sending-a-token-on-account-creation" size="750px" filename="twiliocodedocexample1" ext_print="png" ext_web="png" alt="Twilio code documentation" caption="Twilio code documentation" %}

In this example, the conceptual content and steps appears in the middle column, with the code on the right, with a dark background behind the code to create visual contrast.

{% include course_image.html url="https://www.twilio.com/docs/authy/tutorials/account-verification-java-servlets?code-language=Java&code-sample=code-verify-an-authy-code-7&code-sdk-version=default#configuring-authy" size="750px" filename="twiliocodedocblurirrelevant" ext_print="png" ext_web="png" alt="Blurring out irrelevant code" caption="Blurring out irrelevant code" %}

Some screens actually blur out the irrelevant code, allowing you to focus your attention on the right parts being articulated in the conceptual area.

One challenge with this juxtaposed approach is screen space. To pull off a third-column design, you need to occupy the whole screen, without margins. I'm surprised Twilio doesn't include a switch to collapse the left-side navigation, which would give more space for the code.

As is, the code is only partially visible. The code extends horizontally with an option to scroll right, but surely the designers must have cringed in developing a UI that involves a healthy dose of back-and-forth horizontal scrolling.

Additionally, implementing blur and focus views based on the point the user is at in the tutorial must be technically challenging and somewhat cumbersome.

Another challenge is that the code and explanations of the code rarely line up horizontally all the way down. Suppose you have one method in the code that occupies just a single line, but explaining this method occupies 30 lines of conceptual explanation. By the time the user reaches the bottom of the conceptual explanation, the referenced code is no longer juxtaposed. Now you not only have horizontal scrolling for the user to see the code, but you have to scroll up and down the column to locate the relevant code. Designing a UI to accommodate all of these moving parts not only seems challenging, but also puts more burden on the user as well.

Another challenge with this juxtaposed design is that code is often spread out across multiple files. The view on the design column doesn't indicate whether all the code appears in the same Java file or whether we're seeing code from multiple Java files.

## Lego approach

Another approach is to build the code from the ground up level by level, which I'm calling the Lego approach. For an example of the Lego approach, take a look at this example from the eBay Shopping API: [Searching By Seller: Reviewing Information About A Seller](https://developer.ebay.com/DevZone/shopping/docs/HowTo/PHP_Shopping/PHP_FIA_GUP_Interm_NV_XML/PHP_FIA_GUP_Interm_NV_XML.html#step1).

{% include course_image.html url="https://developer.ebay.com/DevZone/shopping/docs/HowTo/PHP_Shopping/PHP_FIA_GUP_Interm_NV_XML/PHP_FIA_GUP_Interm_NV_XML.html#step1" size="750px" filename="ebayshoppingapiexample" ext_print="png" ext_web="png" alt="Lego approach shown through eBay Shopping API" caption="Lego approach shown through eBay Shopping API" %}

Their tutorial contains five steps:

> * Step 1: Set up basic files and folders
> * Step 2: Add code for making the GetUserProfile call and displaying the results
> * Step 3: Add code for making the FindItemsAdvanced call and displaying the results
> * Step 4: Add HTML and Javascript for the user interface
> * Step 5: Run the code

You start with a blank file. Then with each step, you add more and more code until you have a fully working example. Like with Legos: You start with a base, and then you add more and more parts on top of it until you have a fully working model.

The Lego model seems like the most compelling model for documenting code, in my estimation, but it's not necessarily an approach that seems logical at first. In the [intro to this section](docapis_code_difficulty.html), I explained that my approach to documenting the Lambda function was to proceed section by section, more or less, through the code to explain each part. However, this is not the best approach because code is non-linear. Also, finished code often has logic that is abstracted away into variables or other referenced functions so that the final code remains cleaner and more concise, but also more opaque. Finished code is often too messy and confusing to document in any teachable way.

If you want to teach someone how to understand code, you have to start simple and work your way up. The next technique explains this approach through the metaphor of the Nautilus.

## The nautilus approach

The nautilus approach is similar to the Lego approach, but rather than describing chunks of work that are tackled one by one, you describe the core, simple patterns that users need to know. You start with the simplest code and then let the project grow larger and larger as needed.

In a blog post explaining this approach, Paul Gustafson, who runs a technical writing staffing company in the Bay area called [Expert Support](http://expertsupport.com/), says that the nautilus provides a good metaphor for technical communication. The nautilus follows a spiral pattern (Fibonacci sequence) that allows it to start small and gradually grow larger and larger as needed:

{% include course_image.html url="https://commons.wikimedia.org/wiki/File:NautilusCutawayLogarithmicSpiral.jpg" border="true" filename="1920px-NautilusCutawayLogarithmicSpiral" ext_print="jpg" ext_web="jpg" alt="Nautilus" caption="Nautilus" %}

Paul writes:

> Fostering understanding, which is what technical communications is all about, happens most efficiently by following a similar pattern....
>
> When your understanding is small, you learn best when the first lesson imparts information for a small, simple task with traits importantly akin to the first nautilus chambers.
>
> ... The good news for the nautilus is that the small chambers follow the same basic plan as the bigger chambers. If the first tasks a learner masters are fundamentally similar to more complex tasks farther down the syllabus, the student begins to understand and apply those patterns. The sooner newbies learn to “think about things the right way,” the sooner they “get it,” which is exactly what both the instructor and the student want. ([Lessons from a cephalopod](http://expertsupport.com/2018/09/lessons-from-a-cephalopod/))

Following the nautilus approach, you start with the simple, core patterns and then build up more and more code around it gradually as needed. You don't start by describing the complex finished work from the get-go. That finished work likely involves all kinds of code abstractions and rearrangements for a clean finished product. Instead, you start with the basic patterns, and then let users build from that.

I like this approach. The problem is that we want to explain how the finished code works. We might have 500 lines of code that we want to articulate, while the nautilus approach would have us explain just several small pieces of that code. Hence there's an A to Z type of pattern. We describe A (the simplest core pattern) and eventually work our way to Z (the final code).

To the technical writer looking at the finalized code, there's no clear sense of how the developer got there. We often can't decouple the Nautilus-like logic that the developer started with, which led him or her toward this more complex end.

To illustrate this point more clearly, let me provide an example. Although I'm not an engineer, I'm handy with Jekyll and theming, and the other day I set about creating a template that would take a content export from a ticketing tool and render it as a documentation report.

My template looks like this:

```
{% raw %}
<div class="sprintDuration">{{page.duration}}</div>

{% assign sprintYamlFile = page.sprint_yaml_file %}

<div class="metaReportInfo" markdown="span">
Tech writers: {% for member in page.team_members %}<a href="https://somesite.company.com/users/{{member}}">{{member}}</a>{% unless forloop.last %}, {% endunless %}{% endfor %}<br/>
Team: <a href="https://ourteamsite.company.com/">DevComm</a><br/>
Sprint: <a href="{{page.sprint_link}}">Link</a>
</div>

<div id="top"></div>
<div class="all-items">

<h2 id="high-level-summary">High-level Summary</h2>

{{page.high_level_summary}}

{% include sprintdisplaylogic.html %}

{% assign sprintYamlFileOpen = page.sprint_yaml_file_open %}

<h2>Open Issues</h2>
<p>ACME project has <b>{{page.open_items_acme}}</b> open issues. Beta project has has <b>{{page.open_items_beta}}</b> open issues.</p>

{% include sprintdisplaylogic_open.html %}

{% include sprintstylesandscripts.html %}
{% endraw %}
```

This code looks kind of like gibberish, really. I have some "include" files where I've abstracted away the logic because I'll be repeating it from report to report. And of course I don't want the scripts and styles showing here, as they'll clutter up the logic and I'm also repeating that content with each new report file.

Imagine trying to document this code. If your started from the top and worked your way to the bottom, it would be a real mess. The explanation would also be hard to read and understand for users. It's just confusing and kind of jumbled. It doesn't help that I put this together in haste, without much thought for a clean, elegant solution. I needed to get this report out fast, so I hacked together the template as quickly as I could. Developers building applications often implement hacks and other quick-fixes using ["duct tape and WD-40"](https://www.joelonsoftware.com/2009/09/23/the-duct-tape-programmer/), as Joel Spolsky says, to get a working solution shipped to meet a deadline.

For example, in this code I couldn't get the usual table of contents tag that kramdown Markdown provides working

```
{% raw %}
* TOC
{:toc}
{% endraw %}
```

So I just googled TOC generator and copied in some code I found online that worked on the first try. Unfortunately, the TOC generator only looked at a single level (such as `h2` tags), so nesting additional levels wouldn't be reflected in the TOC. Not a problem in my current template, so I just noted the limitation in a code comment and moved on. Didn't have time to investigate why the TOC tag wouldn't render on this template.

This kind of finalized code, with all of its quick hacks, is not instructive to someone looking to build their own report template. Instead, it would be more useful if I started from scratch with the core pattern. That pattern involves looping through a JSON file (the ticketing export) and pulling out the key values that I want to display. Once users learn these core patterns, they can build on them to create more complex solutions, such as inserting variables into the loop so that you can repeat the looping without duplicating the loop for every report category manually.

As I said, the problem with the Nautilus approach is that my documentation will teach the user the A, B, C parts of the code (the simple parts), while mostly leaving the finalized code unarticulated. The documentation won't detail how we go to the X, Y, Z (more advanced, finalized product).

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
