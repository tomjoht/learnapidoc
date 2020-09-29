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

different types of usability:

Question 1. Can you tell us a bit about the work you do for [employer]?
* developer docs for devices group
* encourage development of apps on appstore -- without apps, the devices are paperweights

Question 2. How is usability connected to the work you do?
* usability (making things more usable)
  a. physical products
  b. code products
  c. documentation products

### Usability with physical products

* sample of product usability. assess how user friendly something is. example: headphones. how do they fit? do they hurt your ears? how is the sound? product usability not a common task in my world. mostly experience as a volunteer. e.g., hey we have a new device, need volunteers to try it out. here's your free gift card.

design principles with usability teams are pretty well established. refer to design book with 125 design principles. [Universal Principles of Design, Revised and Updated: 125 Ways to Enhance Usability, Influence Perception, Increase Appeal, Make Better Design Decisions, and Teach through Design](https://www.amazon.com/Universal-Principles-Design-Revised-Updated/dp/1592535879)

TW's role: some people get tired of writing docs as a bandaid for products. Ted at the Church -- wanted to fix the problems. Jonathon Colman interview -- he wants to influence product design. By the time the doc task gets to you, product is already mostly finalized. It's too late to change the design. most you can do is change some names and microcopy here and there. when you switch into usability, you're usually no longer doing technical writing. you're designing products. involves lots of interactions with customers. early prototypes, feedback, iteration.

### Usability with code products

devx code is also a "product." how easy is something to implement, understand, work with. It's a shift to thinking of code as a product. Also much harder to evaluate. with headphones, you could try them on and use them. with code, unless you're an engineer, it's much harder to try the code on and use it. but that's essentially what you're doing. would be much more familiar to a coder.

example: one API at former company required you to create custom authentication keys for each different endpoint, which was really cumbersome.

design principles not so well established. See Arnaud Lauret book: [The Design of Web APIs](https://www.manning.com/books/the-design-of-web-apis)

questions you might ask: how easily can you understand the different endpoints? can you use them together to achieve your goal? do you have to call one API, get a result, plug it into another API, get a result, concatenate the results, page through them, etc? do you have to be an expert or is most of the logic handled behind the scenes? does the API return the information that you need?

Keep in mind that each API is usually a request that provides a response. you use the APIs to create something -- like a recipe in the kitchen. you give people certain ingredients and let them mix/match into what they want to bake. how useful are the ingredients you're providing to people?

TW's role: again, you usually are pulled in too late to influence the core design. but you can check for consistency of names, casing, and other more superficial decisions. Probably what matters are things like what languages and services are used, what is the architectural model of the thing. unless you have a strong engineering background in developer design, probably won't be jumping in here to make design recommendations. However, you are usually the first user, and i make it a point to get products to work. but also, if you're interfacing with partners, usually what usability involves is gathering feedback from partners on these designs. you will likely be writing documentation about these early designs that gets floated out to partners.

### Usability withy documentation products

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
