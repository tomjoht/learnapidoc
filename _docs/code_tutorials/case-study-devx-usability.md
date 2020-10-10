---
title: "Example of Devx Usability"
permalink: /devx-usability-example.html
course: "Documenting REST APIs"
weight: 7.91
sidebar: docapis
section: docapiscode
path1: /doccode.html
published: false
---

In [API design and usability](evaluating-api-design.html), I covered different aspects of usability related to API design. In this topic, I'll explore usability related to developer technologies in general, independent of API design.

* TOC
{:toc}


## Three types of usability

Although usability generally refers to making any product easier to use, for the tech writer working in developer docs, usability can be roughly divided into three different areas:

* [Usability with physical products](#physical_products)
* [Usability with code products](#code_products)
* [Usability with documentation](#documentation_products)

### Usability with physical products {#physical_products}

Usability with physical products is what most people traditionally think of when talking about usability. When you have a physical product to use, it's easy to assess how user-friendly it is.

For example, suppose you're testing the usability of headphones. A product usability researcher might bring in a dozen beta testers to try the headphones on, adjust the headphone controls, use the headphones in their daily workflows, and so on. Users might assess the headphones based on comfort, familiarity of buttons, how easy they might be to pair to bluetooth, the placement of the microphone, and so on.

Usually technical writers are too far down the line to influence product design. By the time the product arrives at your inbox, people are just asking you to provide documentation for the product. If you were writing documentation for the headphones, it would not be feasible for you to push back on the design and try to get the product to team to reconsider fundamental aspects of the design, such as the placement of the microphone or the fit over your ears. You might be able to influence button names at this point, and maybe catch glitches in the software (e.g., maybe the bluetooth pairing is wonky), but don't expect too much. Influence on product design is usually required before the specs are sent to the factory. After factory lockdown, it's hard to change a product. And documentation is usually something that begins post-factory, for sure.

Product design has a rich history of
design principles with usability teams are well established. See this book for many good ideas on how to assess the usability of a product: [Universal Principles of Design, Revised and Updated: 125 Ways to Enhance Usability, Influence Perception, Increase Appeal, Make Better Design Decisions, and Teach through Design](https://www.amazon.com/Universal-Principles-Design-Revised-Updated/dp/1592535879).

Some technical writers get fed up with documenting poorly designed products, so they decide to move into usability and product design. But once you make this move, you're usually operating outside the standard tech writer domain. For more on playing a product design role, see [Playing a product design role as a content designer -- podcast with Jonathon Colman](/blog/podcast-colman-playing-product-design-roles-as-a-content-designer/).

### Usability with code products {#code_products}

In the developer documentation domain, usability with code products is more common. Few usability researchers venture into the code domain because it's much less clear how to assess the usability of code. But rest assured, usability is just as much in play with code "products" for developers as with physical products (or products with GUIs).

Code usability asks questions such as these: How easy is it for developers to use the code? Do the APIs provide the information they need? How long does it take them to figure it out and implement it? Are you using a language or framework that will be familiar to your audience? Are you following general patterns in the industry for tackling problems?

Let me illustrate with an example. One product I documented was the Video Skills Kit for Fire TV (for the Amazon developer portal). The first implementation involved an approach (later called cloudside) that involved about a dozen different technologies. The implementation required devs to use several AWS services (Identity Access Management, CloudWatch, Lambda), several Appstore services (Login with Amazon and security profiles, Alexa console for video skill configuration, a client library (JAR), Amazon Device Messaging, Live App Testing), as well as configure a Fire TV device through the Alexa app. These services were on top of Android.

The first problem is that users were unfamiliar with all of these services, so when they ran into problems, they were hard to troubleshoot. Additionally, troubleshooting was also difficult because when something didn't work, there were a dozen different places where something might be misconfigured. For example, after integrating everything, you could say "Alexa, watch Interstellar," and your app would play the video. But if it didn't work, you had to investigate where the problem could be. The logs could provide a clue, but if you have some invalid formatting in your Lambda function, Alexa might respond, "Something went wrong." There were many backend services as well that processed information, and when issues occurred there (e.g., Alexa not trained to parse a phrase or word), it led to even more confusion.

The implementation for the Video Skills Kit took partners a long time (multiple months, usually). We had a sample app, and each time I would go through the steps to set up the services around the sample app, it would take the entire afternoon and often day. So many pieces had to be in place, and many times it felt like a house of cards &mdash; if one little piece was misconfigured, the whole thing didn't work.

Fast-forward two years later. The product team released a new approach to the Video Skills Kit configuration: app-only integrations. The app-only integrations grounded most of the configuration within Android itself. Users didn't have to bother with configuring any AWS services, no Lambda functions, no authorization through ADM. Developers instead would only need to configure BroadcastReceivers in their Android app to handle incoming messages sent from an on-device routing agent built into Fire TV. Partners welcomed this approach much more wholeheartedly. Not only did the implementation stay within the technology realm they were familiar with (Android), it didn't cobble together a dozen different services that all had to be working in harmony for success. Troubleshooting was also simplified because most issues were contained within the same Android platform. Implementation time was reduced to a couple of weeks instead of months.

Finally, one other aspect of the code design was the speed of communication. With the first solution (cloudside), messages had to travel from one service to another (Alexa in the cloud to a Lambda function in AWS, then to the partner's app on Fire TV). With the app-only integration, most of the communication took place on the device itself. Alexa sent a message to an on-device routing agent that communicated with the app (also installed on the device). The communication between components was much faster, with fewer latency problems.

In general, when evaluating code usability, consider these questions:

* Does the implementation use a technology that our target developers are familiar with?
* Does the implementation rely on a few core services or components rather than a dozen cobbled together?
* How easy will it be to troubleshoot errors and identify where things are going wrong?
* How long will it take developers to finish the implementation?
* Is there a latency for the communication across the different components?

Evaluating developer usability is harder because many times, there are technology constraints that make more streamlined approaches more problematic. No one sets out to build a house of cards, with cardboard-and-glue workarounds, but as you encounter one issue after another, with fast deadlines to finish the code, you might adopt solutions that work in the short term but which require a lot of hacks. String together too many hacks and accrue too much technical debt (shortcuts that provide fixes while leaving larger problems unresolved), and you head down that path to the house-of-cards solution.

In general, teams building developer tools strive to provide APIs or other tools that simplify the third-party user's implementation. You want to abstract complexity behind an API, so that the developer need only provide the specified inputs and gets the desired outputs in a response. The developer probably doesn't care (or need to know) how the sausage is made on the backend to transform the inputs into outputs. If you can abstract more of this complexity behind the scenes, it will result in a better developer experience.

Assessing the architectural design of a developer solution isn't easy for most technical writers. Unless you have an engineering background and can assess the feasibility of an approach, you might not have a lot of input. A lot of factors go into a solution, including security, memory usage, required infrastructure, latency, and more. In most scenarios, tech writers struggle just to understand the entire workflow and articulate it. Going the extra mile to suggest a more efficient and streamlined architectural design is often something that would be next-level for tech writers.

However, if you simply keep an eye out for the questions I mentioned earlier, this can provide you with a starting point for evaluation. You're often the first user of the code product, so teams value your feedback, even if you're not an engineer.

### Usability withy documentation products {#documentation_products}

Finally, you can also incorporate usability with documentation.

documentation is also a product. how easy is the documentation to understand, follow? is the documentation something that users can easily search to find information?

example: your car manual. is it easy for users to find information? are the terms used the same one's in user's heads? is the layout easy to scan? is the information understandable? does it contain information related to problems you have? does it address your level of skill of what you can/can't do? e.g., changing headlight. changing oil. changing air filters.

TW's role: this can be an meta-activity outside of writing. for example, setting up search, coding the help site's theme, building a glossary that spans across products, etc. but it also relates to actually writing for your current project.

documentation usability at church job - focus on implementing principles of design that are based off of usability. insights from watching people use documentation: advanced users scan, beginners watch videos. [Introduction to User-Centered Documentation](https://idratherbewriting.com/ucd-introduction/)

considerations:
- readability - simpler as a toggle related to complexity
- performance load - reduce complexity/strain
- modularity - allow independent and updatable subsystems that can be updated/understood alone
- five hat racks (org by catagory, time, location, alphabet, magnitude)
- entry point - how easy to get started
- wayfinding - signposts
- forgiveness - correcting information during experimentation

you can leverage many similar design principles from the 125 principles book. link to my site with the info. biggest design tip: draw a map that connects the dots across topics.

## Concrete example

recent project: code product -- team released an API to allow for devs to make their apps respond to voice commands.

* with API i mentioned, team released one implementation approach a couple of years ago. involved using about 10 different services. some unfamiliar services. makes it harder. alexa console, IAM Lambda, Cloudwatch, ADM, adb, security profile, Login with Amazon, Android, App Submission console, live app test. the process involves stringing them together.

* downsides of the first approach: unfamiliarity with services, pinpointing what's wrong (which service?), slow communication times between services.

* second approach: fewer services, most code rooted in android that they were already familiar with, communication happens more on device rather than across different cloud services (so faster), easier to debug issues.

* usability principles in devx: much less in focus than product usability. but a few emerged here:
  - (performance load) don't string together a dozen different services. kind of interesting in context of cloud infrastructures forming.
  - use languages and tools familiar to users
  - avoid communication that has a slow result due to moving from one system to another.

TW's role: not usually to influence the design but rather to document the design. the system architect or code development team comes up with the design.

## How docs supports Devx usability

agile development process involves early checkin with customer. so the role of doc is more often to write doc drafts during those prerelease phases where the dev team is trying to figure out the right processes for the design. you aren't really stepping in and making suggestions so much as working on multiple iterations of docs prerelease.

you can help by getting the early designs out to customers. strategies for docs when you have prerelease versions? not as polished? challenge is that you want product team to be able to iterate on docs, but you need to pull them into your authoring system to make them professional and available.

Example: juggler. 1-2 interested partners, engineers have a draft document. they want you to come in and work on the docs, but you clearly don't have time for this. decisions:
- light copyedit and publish poor material with your name on it?
- force teams to handle their own docs until the design is finalized?
- really engage with each iteration and provide more solid input, assist in gathering feedback or administering surveys to capture more objective feedback

lots of PMs will make decisions based on what 1-2 important partners say.... not a lot of usability analysis before major efforts are started with code projects. most usability pros don't enter devx realm. lots of opportunity here to apply efforts, but it is intimidating. fortunately, you can simply act as an interface to gather much of this info.


===========

•	Potential follow up question: How do you approach usability or engage in user-testing (or other usability related) practices in the work you do?

Question 3. How does your employer approach usability in its operations?
- product usability is much more common. testing out new devices. calls for volunteers, etc.

Question 4. What trends do you see as central to usability today?  In the future (e.g., the next 3-5 years)?
- working on docs prerelease

Question 5. What suggestions do you have for someone who might be considering a career in technical communication?
- steer your career into developer docs. washington is good starting point b/c it has major cloud vendors.
