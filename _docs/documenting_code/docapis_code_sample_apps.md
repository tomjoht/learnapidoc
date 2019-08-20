---
title: Documenting code with sample apps
permalink: /docapiscode.html
keywords:
course: "Documenting REST APIs"
weight: 7
sidebar: docapis
section: docapiscode
path1: /doccode.html
published: false
---

Sample apps aren't just a convenience for developers, nor even an illuminating demonstration of abstract concepts in code. Sample apps are critical for technical writers to write good documentation. Without the ability to test content through a sample app, it's nearly impossible to know if your code instructions in your docs work. Of course, whether a sample app is warranted depends on the nature of the product you're documenting, but in general you need sample apps to make sure the steps in the documentation work correctly. Additionally, sample apps tend to be powerful learning tools for developers because they allow them to experiment and see code in context from end to end.

* TOC
{:toc}

## Sample apps are critical to writing good docs

Recently, I was working on documentation for a project called [Video Skills for Fire TV Apps](https://developer.amazon.com/docs/video-skills-fire-tv-apps/introduction.html). This product involves implementing Alexa video skills into Fire TV apps so that customers can say phrases like "Play Bosch" and the app will automatically play the content, without the need to use a remote control.

The implementation process is pretty involved and requires a [series of steps listed here](https://developer.amazon.com/docs/video-skills-fire-tv-apps/integration-overview.html). I inherited an initial set of docs (written by a PM) and sample app. I spent a month just getting the steps to work with the sample app. Then I spent another month fixing and updating the documentation. Using a sample app was critical for determining which steps in the initial docs were missing or incomplete. After I was confident that the steps worked well (because by following them, the sample app actually worked), I published the [sample app as a companion to the docs](https://developer.amazon.com/docs/video-skills-fire-tv-apps/sample-app.html).

Without testing the docs through this sample app, I wouldn't have had any idea if they actually worked, and I'd basically be an [engineer's secretary](/2018/11/19/avoid-being-secretary-for-engineers). What I love most about sample apps is that they provide an end-to-end sample of working code. If you're working in any particular language, a simple code snippet might not run on its own (unless it's a standalone web call to an endpoint). But a chunk of Java or PHP or C++ code will usually require a sample app to run, and an IDE to compile and run the code.

Having little disconnected pieces of code that aren't associated within a sample app often isn't a testable scenario. And if you have a bunch of code that you can't really test, how do you even know that it works? And if you don't know whether the code you're documenting even works, how can you feel good about the technical documentation you're writing?

## Getting approval to publish sample apps

Publishing a sample app alongside the docs is not an easy task. Most sample apps are distributed via GitHub, so you might need to get a company-approved GitHub repo for your sample app. To do that, there's usually an approval process that involves Legal and other stakeholders. You'll have to figure out the right license for the code, make sure you have approval to even use the libraries and other third-party components in the code, and more. You'll also need to tag the code with the license in the proper way, remove any confidential files or information, and follow other security-blessed protocol for releasing the code. You're kind of in engineering territory at this point.

## Is shoddy, half-complete code even worth sharing?

Another hurdle in releasing a sample app is code quality. Assuming you get approval to put the sample app in a GitHub repo, is the code even worth making available to engineers? Will the code provide a *clarifying* example of how to implement a technique in an app, or will the code just muddle the waters even more? Ideally, you want to make the sample app as simple as possible, elucidating the technique you are trying to demonstrate and nothing more. But isolating the code at that level of simplicity is tough because most apps usually require some other code to load and run.

With one project I worked on, developers didn't want to provide a sample app because they felt that any app that implemented Technique A but not Techniques B, C, D, E, and F would mislead developers. They might use the sample app as a starting point (copying the code wholesale, or developing out from the sample app as a starting point) and not realize that Techniques B, C, D, E, and F were also required.

But coding Techniques B, C, D, and E were beyond the scope of this sample app, the accompanying documentation, and they made everything much more complex. Was it better to not provide any sample app at all than to provide one that was either overly complex or which was rudimentary and incomplete?

With the video skills project I referenced earlier, the sample app was a fork of another Android streaming media template called [Fire App Builder](https://developer.amazon.com/docs/fire-app-builder/overview.html) that had a lot of interchangeable modules. All of these modules added a lot of confusion and bulk to what should otherwise be much simpler code. But the app looked and functioned like a real TV app, with a landing page and video thumbnails. Project teams often want to demonstrate code in all its glory, but they also want to keep everything as simple as possible. It's a tradeoff. A simpler Fire TV app might not even include a landing page or thumbnail view of videos.

Sometimes the only sample app you can get your hands on is too embarrassing for engineers to feel comfortable sharing, so you might have to pitch hard for its value in the docs. Getting engineers to build beautiful, illustrative sample apps to accompany the docs can be a tall order, especially if these same engineers are struggling to complete their bi-weekly sprint tasks. In a best case scenario, you might be able to leverage a sample app from the QA team. Surely the QA team is vetting a list of features using some kind of test code, which is likely packaged into a simple sample app.

Whether that sample app can be extrapolated into a companion piece for the documentation is another matter. Usually, test apps are rudimentary and not necessarily best practice showcases for code. On the other hand, showcase code probably has too much sophistication to be instructive. Simple is better when it comes to learning.

So you'll likely be stuck with some half-baked sample code you're using to test your docs with. Should you go ahead and use it anyway, releasing it to the developers you're trying to help with docs?

Internal engineers are usually a lot more cautious about sharing shoddy code. There is a danger of potentially doing more harm than good, especially if the code in the demo implements poor practices that developers then copy and duplicate in their own apps. But is it better to require developers to work out the code on their own (probably misinterpreting and also implementing it incorrectly) rather than potentially leading them astray with bad sample code?

The same could be said of documentation. Is it better to have poor docs than none at all? I like to err on the idea that providing some app, even if only partially functional, is better than providing no app at all simply because this sample app often proves critical to testing and validating the documentation.

## Who owns the sample apps?

Another question regarding sample apps involves decisions about ownership. Who owns the sample app, especially as a companion piece for the documentation? If the apps are integrated into the documentation and intended to highlight the docs, then wouldn't it make sense for the doc team to have some stake in the code's ownership? At the same time, who will respond to the issues logged on GitHub, the pull requests, and other comments around the code there? Ownership and responsibility matter.

I've seen repos abandoned by engineering teams who simply move on. Engineers transition to other projects and don't want to be supporting the same GitHub repos for the rest of their lives. Other times projects get de-prioritized or sunset, but the GitHub repo stays in the public space, and the initial docs remain, still supported by the doc team. In these cases, you might end up with a sample app that is seemingly inactive or unsupported (with issues piling up), and docs that you still continue support in a "keep the lights on" kind of way. You might have to keep tabs on the GitHub issues logs and champion internal sources to provide support.

## Partnering with QA


## Essential for validating documentation






. *How much code is too much? I mean, at what point do you put it all in a sample app?* *Do you show large samples so that users have the context, or will users lose focus from the larger context?*

Why are code samples so appealing to people? Is it because code implies some sort of action to take?* *You can make something work. It’s this act of doing that connects closely with the appeal.*

*When describing code, is it best to contextualize it in an end-to-end tutorial?*

*How much stock or caution do we have against bad code? Showing bad code is really worse than not showing any code at all?*
*8. Is it a best practice to store code samples in some separate system so they can be unit tested or otherwise verified with each release?*

9*. How much code  do  you show? If you want the code sample to be fully functional, you’re going to have to show more than if you simply want to keep it simple and focus on little fragments and snippets that don’t run in and of themselves but which are simpler.*

10. *What about your experience where devs were hesitant to include examples for fear that they would be copied and the complexity of the app would not be taken into account?*
