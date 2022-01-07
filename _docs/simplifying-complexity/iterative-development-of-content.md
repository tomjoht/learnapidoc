---
title: "Principle 9: Iterate and increment on content following an agile approach"
permalink: simplifying-complexity/iterative-and-increment-on-content.html
sidebar: simplifying_complexity
description: "Iterative development is a principle of design that applies as much to documentation as it does to software development and UX design. With iterative development, you continually improve the content by gathering feedback and then incorporate the feedback as appropriate into new iterations of the content. You write in a shorter cycles with increased feedback reviews, working on developing content over a longer period of time rather than a short burst of writing activity in a one-and-done type effort. This iterative approach better addresses scenarios involving complex documentation where the audience, needed information, steps, and other details are less certain and predictable."
published: false
---

## Iterating on a doc a dozen times

I recently worked on a documentation topic for a new feature that went through about a dozen iterations with product teams, stakeholders, field engineers, and others over a short period of time. At first, I made a few revisions to the content based on reviews with the engineering team. Then when the reviewers expanded to field engineers and stakeholders, the number of iterations increased to a new version every couple of days. With each iteration, we incorporated feedback to improve the document. After about a dozen iterations, we moved the document to the next phase of review with early release partners.

Not every project I work on has so many iterations. But this project made me reflect on a principle that is central for nearly every type of writing project: writing is an iterative process, with many layers of edits and revision. Too often, people consider writing as an activity they can do once and then be done with for good. For example, students writing essays might wait until a few days before the essay is due (or worse, the night before), and then sink a few hours into writing the content and be done. They turn the essay in, get a grade, and then never revisit the content. The same might be said for product teams writing docs the week before release. After the docs have been written and product released, the doc is done.

This is not the formula for developing good content in the long term. To develop good content, you need to push the content through multiple iterations of review and edits based on incoming feedback. It's rare that you hit the target on the first try. For example, in writing this topic, I will likely let the first draft sit a few days before editing it again. After a few rounds of initial edits, I'll push it out for others to read. Based on the feedback, I'll edit it some more, and then after some months I'll return to it with fresh eyes to review and edit it again, and so forth. Each time I hope to make the content more and more useful and insightful.

With tech comm content, the iterative process is the same as with other types of writing, but the forms of review differ. Feedback comes in through project teams, through support teams working with customers on issues, through feedback forms, analytics, and other channels. Instead of making the updates yourself, you might assign the task to the product team to handle. Regardless of who makes the update, you should incorporate this feedback to iterate and increment the content, improving its value to users each time.

In an ideal world, content would improve each time it gets used, like a stiff baseball mitt becoming more worked in with each catch. The questions, issues, or other feedback from each person who uses the content would be relayed back to the writer to enhance the content, fixing errors related to accuracy, correctness, completeness, coverage, and more.

Iteration is a central development of content, and the web provides the optimal architecture for continually improving content. With printed material, including PDF, content is more static. The paradigm of printed material is that once printed, it is mostly finished/final. But with web content, you can subtly introduce incremental improvements without requiring the user to re-download or re-purchase a physical object to get the enhanced content. This is the approach I've used in developing my [API documentation course](/learnapidoc). I've been incrementally improving this content over the past three years. In fact, iterative improvement is one of the characteristics that separates blog posts (usually one-off writing efforts) from documentation content (which is supported, maintained, and improved over time). It's why documentation has a higher lifetime value than blog posts.

## Why iterative design fits complex scenarios so well

Before we dive into iterative development, let me explain why this principle deserves a space in the Simplifying Complexity series. You might say, isn't iteration a principle behind _all_ writing, not just complex scenarios?

Sure, while iterative development is a good idea regardless of the complexity of the content, with complex content there's a much greater need for iteration because you rarely hit the target on the first try. With complex scenarios, there are a variety of use cases and users that you're negotiating as you write the content. What might be right for one type of user might not work for another.

The software itself that you're documenting can also be a moving target, with developers adding or modifying or removing features on a weekly basis (often without letting you know what changes they make). In the scenario I described earlier (iterating over the same content a dozen times in a few weeks), at one point the product team decided to split the rollout into two phases, so half the documentation was literally postponed. What's in, what's out, what features are coming and when &mdash; during the authoring process, these details aren't always crystal clear.

Also, as with almost all doc scenarios, the user is absent at the time of writing, so the tech writer must constantly make guesses (hopefully informed ones) about the user's technical level, information needs, development environment, and business goals &mdash; all often in a vacuum where no usability research has been done. (I explored this challenge of writing for the absent user in depth in [Principle 6: Reconstruct the absent user](/simplifying-complexityreconstructing-the-absent-user.html).) Without the many user types present, whether your content connects with their needs is often questionable and only confirmed in hindsight.

Overall, technical documentation faces the same challenges as software development. It's nearly impossible to predict whether your product will meet the user's needs until you release it to the audience. Especially with highly complex products that involve a lot of different variables, conditions, environments, and business goals, iteration is essential to eventually getting the content right.

In an extreme example, think of trying to solve the Rubik's Cube. Ideally, for optimum efficiency, you would take the least number of turns required to solve it. But given the complexity of the task, this is not practical &mdash; it's not how anyone arrives at the solution. You can't strategically plan all your moves in advance and then solve the Rubik's Cube in under 20 seconds. To solve the Rubik's Cube (or any complex problem), you usually make a lot of unnecessary spins and turns as you try to move closer to your goal. With each attempt, you evaluate whether you're achieving your goal (in the case of Rubik's Cube &mdash; getting all colors grouped together).

Think of writing documentation for complex software products somewhat like playing Rubik's Cube and plan for multiple iterations before you get it right. However, in contrast to Rubik's Cube, with tech comm, hopefully between each iteration you increment the content based on feedback rather than just trying a random new direction.

## Agile development is software development's approach to handling complexity

Before diving into strategies for iterating with _content_ development, it's important to note that iterative development is a distinguishing characteristic of agile _software_ development. Agile methods evolved from waterfall methods in an effort to address the complex uncertainties and unknowns in a more practical way.

Waterfall methods approached project management with a heavy amount of up-front planning and scoping of requirements, resources, and timelines. When you would complete one stage, the work would progress to the next level, and so on (like a waterfall cascading to new terrace levels). However, despite the careful planning and strategic analysis, waterfall-run projects were regularly over-budget and delivered past deadline. In fact, studies by McKinsey and Oxford University found that

> “large software projects on average run 66 percent over budget and 33 percent over schedule; as many as 17 percent of projects go so badly that they can threaten the very existence of the company.” ([Achieving success in large, complex software projects](https://www.mckinsey.com/business-functions/digital-mckinsey/our-insights/achieving-success-in-large-complex-software-projects). )

Why did so many waterfall projects run over budget and past schedule? Is it because the project managers were poor estimators of the work involved? Is it because they under-bid costs and timelines in order to secure project funding? Not really. It's because software development is a complex undertaking, and you can't know all the details from the start. It's like planning your life for the next decade. You can't know everything that's going to happen ahead of time; sometimes you won't know what you have to face until you get into the nitty gritty details of it and see what challenges, incompatibilities, and other complexities surface.

Software development's big evolution to agile methodologies involved shortening the development cycle and incorporating regular product reviews between development cycles. You code for a couple of weeks and then release something that you can show to customers or stakeholders. You gather their feedback and make sure you're on track. With each iteration, you might find yourself abandoning ideas or redoing features with another approach &mdash; essentially iterating on the same efforts until you get it right. If you find that you're going in the wrong direction, well then you've “failed fast” and can course correct early on.

In contrast, if you isolate yourself in development tasks for two years before touching base with customers to see if you're on track, you'll likely find that you veered off course long ago.

Here's another way to think about it &mdash; what you're creating is like an untested hypothesis or theory. Ian Spence and Kurt Bitner explain that agile software development follows a scientific hypothesis model, where theories are frequently tested to see if they're correct:

> In a sense, many things on a software development project are theories, or more accurately, assertions that need to be evaluated. The plan itself is composed of many assertions about how long things will take to accomplish. Even the requirements are assertions about the characteristics of a suitable solution. Just because some stakeholders or subject matter experts say a requirement is valid does not mean that they are correct. We need to evaluate even the requirements to determine whether they define the right solution to the problem at hand. ([What is iterative development? — Part 1: The developer perspective](https://www.ibm.com/developerworks/rational/library/mar05/bittner/index.html))

The software interface and workflow is a theory that engineers have constructed to address a user need or goal. But understanding whether their theory works requires them to release the software and get feedback from users.

To apply this same principle to documentation, consider that documentation is a theory you construct about how users will be able to achieve their goals. But you don't know if your theory is correct. You need to release the documentation theory into the wild and observe the results: did the theory hold true? Did the theory accurately describe the steps users would need to take? Then based on the feedback, you can iterate on your theory to bring it closer to the reality.

I've mostly been referring to software development here, but UX design also follows iterative design as a common pattern for developing interfaces. Jakob Nielsen explains,

> It has long been recognized … that user interfaces should be designed iteratively in almost all cases because it is virtually impossible to design a user interface that has no usability problems from the start. ([Iterative Design of User Interfaces](https://www.nngroup.com/articles/iterative-design/))

If product teams could accurately describe all requirements from the start, what need would there be for usability testing at all? With product requirements and prototypes defined ahead of time, the success of the project would rest in merely executing the requirements. But that's not how it works because both software development and UX design is a complex endeavor, with many unknowns and details that can't be fully understood and planned for in advance. You make an attempt based on your best effort, you get some feedback from users, and then you iterate on a new version that hopefully gets you closer to what users want and need.

## The relationship between agile and docs

The _Scrum Guide_ describes scrum (a method for agile) as a “framework for developing, delivering, and sustaining **complex products**" (my emphasis). Although software development has traditionally been the group we think of most when considering agile, there's nothing in agile's methodology that restricts its application only to software. Agile is a method for dealing with complex projects of almost any type. If agile is an approach for building complex software products, shouldn't it also be the approach for building complex software documentation, too?

Much has been written about how documentation can align with the development cycles and pace of agile software development. Most commonly, the advice for creating delivery docs that customers will read is to ["document late"](http://agilemodeling.com/essays/documentLate.htm), which helps you avoid “treading heavy.” In other words, if the project is in constant flux, don't waste a lot of bandwidth and cycles updating your documentation with each change. Wait until the dust settles a bit, and then create your customer documentation.

While this approach is sound for working with agile projects, it misses the whole point of the agile development philosophy in documentation's own development process. It assumes that writing is a one-and-done effort that can be completed at the last minute. “Document late” is the same practice that students adopt in college writing courses: wait until the last weekend before a deadline, and then write your essay. Wait until just before your customer release, and then write your docs. We all know how those kinds of essays turn out in college. Would professors ever recommend that students “write late”? If this advice results in student essays barely worthy of the trash can, why would “documenting late” be any better in a corporate context?

If by “document late,” product members assume writing is a one-and-done effort, they commit the same errors as those outside software development might commit by asking why waterfall doesn't work. Creating developer documentation is a complex undertaking. It's rare that you get it right the first try. Most commonly, documentation tends to frustrate and anger users because it's hard to follow, is missing information, is inaccurate, or otherwise unclear. If teams are following a *document late* methodology combined with a one-and-done writing mentality, it's no mystery why the user experience of docs is poor.

Despite my objections to the document-late mentality, I'm not advocating that writers try to write documentation with each sprint, keeping pace with the constant changes and flux of a product under development. In fact, I also recommend starting documentation late in the project as well. _But where iterative development with the software product ends (at least with its first big release), iterative development with the documentation should begin._

Upon release (or earlier with focus groups, if possible), documentation itself should undergo the same iterations and cycles of review, similar to the software development process. At this point, documentation should be seen as its own project with its own life cycle, independent of the software project.

<figure><img class="docimage medium border" src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/agiledocdev_swimlanes.svg" alt="where iterative development with the software product ends, iterative development with the documentation should begin" /><figcaption>Documentation should follow the same iterative development processes as software development, but the timelines don't need to overlap. More commonly, you'll start the agile cycles for docs after the first big release of the software.</figcaption></figure>

That undertaking is extremely difficult given that the whole structure of the agile team (with a scrum master allocating points, holding sprint planning and retrospectives, etc.) basically winds down at some point. Docs then has to continue its own agile momentum (often without funding, which is a topic I'll return to later).

In _Agile Modeling_, Scott Ambler and Associates explain the need to incorporate iterative processes into documentation authoring. They explain:

> Ideally you should create documentation throughout the entire software development lifecycle (SDLC) when it makes the most sense, albeit that's usually towards the end of the lifecycle. When you do write documentation, you should take an evolutionary (iterative and incremental) approach to its development so that you gain feedback as to its actual value. In other words, write a little bit, show it to someone, get feedback, act on that feedback, and then iterate. The best documents are written iterative, not all at once. An iterative approach enables you to home in on what the audience for your documentation actually needs. ([Core Practices for Agile/Lean Documentation](http://www.agilemodeling.com/essays/agileDocumentationBestPractices.htm))

Ambler & Associates lean toward documenting late, but that late timeline doesn't mean a one-and-done effort. Instead, just as with agile software development, with agile doc development you shorten your publishing cycle and intersperse it with constant feedback to increment and evolve the content with each iteration.

## Ways to iterate on docs

With iterative design, it's important to note that during each iteration, you should be *incrementing* or *improving* your design to bring it closer to what users need. Iteration alone doesn't necessarily imply progress. You've got to base the iterations on some feedback that will move you forward. Spence and Bittner explain:

> Sadly, development can be iterative without being incremental. For example, the activities can be applied over and over again in an iterative fashion without growing the understanding of the problem or the extent of the solution, in effect leaving the project where it was before the iteration started. ([What is iterative development? — Part 1: The developer perspective](https://www.ibm.com/developerworks/rational/library/mar05/bittner/index.html))

How do you get this external feedback that allows you to increment with each iteration? In [Reciprocal knowledge networks and the iFixit Technical Writing Project](https://idratherbewriting.com/2018/07/25/how-the-network-shapes-knowledge-conversation-with-guiseppe-getto/), Guiseppe Getto explains the importance of the network in receiving feedback. Getto has students participate in iFixit projects (device repair) in order to put students “in scenarios that mimic real-world technical communication situations as closely as possible.” In the real world, projects aren't finished when you turn them in. By participating in iFixit, students learn that documentation needs to continually evolve based on feedback from the wiki moderators, from users interacting with the instructions, from other writers, from product updates, from new tools, and more. Documentation is one node in an interconnected network of other nodes that are constantly in flux. As these other nodes change, the documentation needs to also change.

Students realized this lengthy, ongoing iterative life cycle to docs and noted:

> “Each time our group was hoping to be finished with our guides, there was another area to improve, correct, or modify.”

Another said,

> You really have to check and recheck and recheck your information to be a technical writer.

These never-ending improvements, corrections, and modifications were often identified by other wiki moderators and users. Getto uses the term “networked rhetoric” to describe the reciprocally shaping influences that take place within a particular context. Look at the network that the documentation rests in, and consider how each actor in this network might influence the documentation, and how documentation in turn influences each actor. Some actors in the network might include the product team, the stakeholders, the target users, the support team, field engineers, other tech writers, other documentation in the same developer portal, and more. Even non-human actors (the tools used to author and publish, for example, or maybe tools for testing and troubleshooting devices) influence the documentation.

I won't go into detail about the myriad ways you can collect feedback from this network. But as long as you are plugged into communication channels with all of these groups, and you interact regularly with them, the feedback about docs should flow. If you aren't receiving any feedback, consider doing the following:

* Review the content with the product team prior to release and at regular intervals (such as with each release update)
* Monitor support cases related to your product
* Send out emails (to a wide swath of interested parties) listing all documentation updates you've made every two weeks
* Reach out to field engineers working with the product and specifically ask for feedback they've heard from customers
* Monitor the web for industry changes related to the product, especially with competitors and their products
* Look at how updates from other sets of documentation might affect your own documentation
* Conduct informal usability tests of the content with engineers outside the product team
* Embed feedback forms (or if you're more daring, comment forms) on all of your doc pages
* Attend events that tech evangelists hold (such as webinars, conferences, or other interactions) and listen to the questions being asked.
* Hold training sessions with users, and then gather feedback through hands-on activities.

There's no overwhelmingly helpful channel for feedback. With each approach mentioned above, feedback trickles in at a slow rate. For example, adding a feedback button on your docs doesn't mean you'll suddenly get a ton of useful feedback. You might get a comment a week, but you can supplement that by looking at a couple of support cases, and feedback from field engineers on a troublesome implementation, and questions asked after a recent tech evangelist webinar, and more.

My larger point is to emphasize the need for iteration. Iterative development is a paradigm shift for us because we've been trained all through our high school and college years to see writing as a one-and-done effort. Getto explains,

> Typically, even as technical communication professionals, there's a certain writing process we teach. It goes something like: stage 1) research the writing situation, stage 2) draft a document, stage 3) peer review, stage 4) revise. And there's nothing wrong with this writing process. It roughly resembles what all technical communicators do, to some extent. Its economical in that it fits within a learning module within an academic classroom.
>  
> But the issue is that when you're writing in an actual industry context, the devil's in the details. From my research, and also my work as a consultant, I know that some of those writing processes take months or even years and involve a small army of people. The docs are vetted by tons of SMEs and every time they get vetted there needs to be another peer review process, another revision, etc. until finally the document meets quality standards (or it's just due to the client, whichever comes first). ([Reciprocal knowledge networks and the iFixit Technical Writing Project](https://idratherbewriting.com/2018/07/25/how-the-network-shapes-knowledge-conversation-with-guiseppe-getto/))

To think that documentation might take months or even years to develop and reach the needed standards is a little daunting. How can we possibly iterate at such length given finite budgets and resource allocations?

## Infinite iterations and project/budget realities

Agile development seems to work well in software contexts, but most funding wells aren't infinite. No one expects the project to go on iterating forever (unless it's wildly successful and has never-ending income streams). For technical writers, suppose you ended your engagement with Project X long ago, after a couple of big releases. But you continue to monitor forum posts and support cases and create tickets for other incoming doc needs.

Presumably, all projects have some ongoing maintenance budget allocated, so you could work these fixes in via that budget. But here's the problem. The longer you're at a company, the more project ownership you accrue. If you've been at a company 5+ years, you might have worked on 20 or so projects. Are you still the go-to person for implementing all of these small fixes and updates (the iterations) based on ongoing feedback over the life of the product? The longer you're at a company, the more you get pulled in different directions.

What can you do? Ideally, you could transition the project to a new writer, who could tackle the documentation from a fresh perspective. But if your team is small and you're no longer allocated to spend time on the project, you can shift the role that you play from author to delegator. Rather than developing content yourself, you can file tickets and assign them to the product teams to update. This might actually be an excellent approach that matches engineering skillsets &mdash; the documentation has already been written. At this point you're just asking developers to go in and fix little bits here and there based on very specific feedback. This is the kind of writing developers excel at (rather than filling out a blank page).

In [How API Documentation Fails](https://ieeexplore.ieee.org/document/7140676/), Martin Robillard and Gias Uddin surveyed developers to find out why API docs failed for them. They found that, unsurprisingly, most documentation fails due to content problems &mdash; the content is incomplete, inaccurate, missing, ambiguous, fragmented, etc. They note that the very people who can fix this content are those who have “deep, authoritative knowledge of the API's implementation,” but these developers are usually fully engaged in other work. Robillard and Uddin write,

> So, how can we improve API documentation if the only people who can accomplish this task are too busy to do it or are working on tasks that have been given a higher priority? One potential way forward is to develop recommendation systems that can reduce as much of the administrative overhead of documentation writing as possible, letting experts focus exclusively on the value-producing part of the task. As Barthélémy Dagenais and Martin Robillard discovered, a main challenge for evolving API documentation is identifying where a document needs to be updated.

Engineering teams are usually well removed from user contexts and feedback channels. As a technical writer focusing on other projects, you can log a ticket that specifically identifies a section that needs to be edited or added, and assign it to the engineers. In this way, you are identifying the problem areas and delegating the work. Don't underestimate the value of this connector role &mdash; harnessing knowledge of users and their issues can be one of the greatest informational assets you provide to the team. (For more on the power of user knowledge, see [Writing User-Centered Documentation, or, My Best Days as a Technical Writer](https://idratherbewriting.com/2012/06/21/writing-user-centered-documentation-or-my-best-days-as-a-technical-writer/)).

Also, keep in mind that documentation projects don't have an iteration cycle that is as time-consuming in the beginning as in the end. Near the beginning of the feedback cycles, you should receive big feedback for glaring issues or omissions. But as the documentation continues through multiple iterations, the feedback should get smaller and smaller until the work diminishes altogether. Nielsen explains,

> The first few iterations can probably be expected to result in major gains in usability as the true "usability catastrophes" are found and fixed. Later iterations have progressively smaller potential for improvements as the major usability problems are eliminated, and the design may eventually become so polished that very little potential for further improvement would remain. ([Iterative Design of User Interfaces](https://www.nngroup.com/articles/iterative-design/))

The life of the documentation isn't indefinite. The technology landscape changes fairly rapidly, and before too many birthdays, you'll find that the platform on which the software was coded has evolved to something else. At this point, the engineering team is often re-engaged in a new effort, and a new documentation project for the rewritten application often begins again.

## Questions for iterating and incrementing on content following an agile approach

* How many iterations has the content been through?
* What input are you using between each iteration?
* How are you collecting feedback about content?
* How many different perspectives can you incorporate to gather input through each iteration?

## References

Chandrasekaran, Sriram; Gudlavalleti, Sauri; and Kaniyar, Sanjay. [Achieving success in large, complex software projects](https://www.mckinsey.com/business-functions/digital-mckinsey/our-insights/achieving-success-in-large-complex-software-projects). _McKinsey&Company._ July 2014.

[Core Practices for Agile/Lean Documentation](http://www.agilemodeling.com/essays/agileDocumentationBestPractices.htm)). _Agile Modeling. /Scott Ambler + Associates._

[Document Late: An Agile Core Practice](http://agilemodeling.com/essays/documentLate.htm). Agile Modeling. _Scott Ambler + Associates._

Getto, Guiseppe. [Networked Rhetoric: iFixit and the Social Impact of Knowledge Work &mdash; TechComm](https://www.stc.org/techcomm/2014/09/11/networked-rhetoric-ifixit-and-the-social-impact-of-knowledge-work/). _Technical Communication Journal._ 61.3, AUGUST 2014

Johnson, Tom. [Reciprocal knowledge networks and the iFixit Technical Writing Project — Conversation with Guiseppe Getto](https://idratherbewriting.com/2018/07/25/how-the-network-shapes-knowledge-conversation-with-guiseppe-getto/). Jul 25, 2018. idratherbewriting.com.

Nielsen, Jakob. [Iterative Design of User Interfaces](https://www.nngroup.com/articles/iterative-design/). _Nielsen Norman Group._ Nov 1, 1993.

Robillard, Martin and Uddin, Gias. [How API Documentation Fails](https://ieeexplore.ieee.org/document/7140676/). [*IEEE Software*](https://ieeexplore.ieee.org). Volume: 32, Issue: 4, July-Aug. 2015

Spence, Ian and Bittner, Kurt. [What is iterative development? — Part 1: The developer perspective](https://www.ibm.com/developerworks/rational/library/mar05/bittner/index.html). _IBM Developer Works._ March 15, 2005

Sutherland, Jeff, and Schwaber, Ken. _The Scrum Guide: The Definitive Guide to Scrum: The Rules of the Game._ Nov 2017. [Scrum Guides](https://www.scrumguides.org/scrum-guide.html)
