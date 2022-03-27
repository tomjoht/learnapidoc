---
title: Sample apps
permalink: docapis_sample_apps.html
keywords:
course: "Documenting REST APIs"
weight: 8.6
sidebar: docapis
section: docapiscode
path1: doccode.html
last-modified: 2020-08-09
---

Sample apps aren't just a convenience for developers, nor even an illuminating demonstration of abstract concepts in code. Sample apps are critical for technical writers to write good documentation. Without the ability to [test content](testingdocs_overview.html) through a sample app, it's nearly impossible to know if your code instructions in your docs work.

Whether a sample app is relevant and available depends on the nature of the product, but in general you need sample apps or sample code to make sure the steps in the documentation work correctly. Additionally, sample apps tend to be powerful learning tools for developers because they allow them to experiment and see code in context from end to end.

* TOC
{:toc}

## Sample apps are critical to writing good docs

Let me start the discussion by sharing an experience related to sample apps. At one company, I was working on documentation for a project called [Video Skills for Fire TV Apps](https://developer.amazon.com/docs/video-skills-fire-tv-apps/introduction.html). This product involves implementing Alexa video skills into Fire TV apps so that customers can say phrases like "Play Bosch" and the app will automatically play the content, without the need to use a remote control.

{% include ads.html %}

The implementation process was pretty involved and required a [series of steps listed here](https://developer.amazon.com/docs/video-skills-fire-tv-apps/integration-overview.html). I inherited an initial set of docs (written by a PM + engineers) and sample app. I spent a month just getting the steps to work with the sample app. Then I spent another month fixing and updating the documentation. Using a sample app was critical for determining which steps in the initial docs were missing or incomplete. After I was confident that the steps worked well (because by following said steps, the sample app actually worked), I published the [sample app as a companion to the docs](https://developer.amazon.com/docs/video-skills-fire-tv-apps/set-up-sample-app.html).

Without testing the docs through this sample app, I wouldn't have had any idea if they actually worked, and I'd basically be an [engineer's secretary](https://idratherbewriting.com/2018/11/19/avoid-being-secretary-for-engineers). What I love most about sample apps is that they provide an end-to-end sample of working code. If you're working in any particular language, a simple code snippet might not run on its own (unless it's a standalone web call to an endpoint). But a chunk of Java or PHP or C++ code will usually require a sample app to run, or an IDE to compile and run the code.

Having little disconnected pieces of code that aren't associated within a sample app often isn't a testable scenario. And if you have a bunch of code that you can't easily test, how do you even know that it works? If you don't know whether the code you're documenting works, how can you feel good about the technical documentation you're writing? This is why sample apps are critical &mdash; they let you know that your instructions probably work.

{% include random_ad2.html %}

## Getting approval to publish sample apps

I've discussed the importance of sample apps in writing documentation and testing that documentation. Should you also seek to publish the sample app as a companion to the documentation? For example, with each disconnected code snippet, you could point the user to the code in the sample app for context and more details.

Unfortunately, publishing a sample app alongside the docs is not an easy task. Most sample apps are distributed via GitHub, so you might need to get a company-approved GitHub repo for your sample app. To do that, there's usually an approval process that involves Legal and other stakeholders. You'll have to figure out the right license for the code, make sure you have approval to even use the libraries and other third-party components in the code, and more. You'll also need to tag the code with the license in the proper way, remove any confidential files or information, and follow other security protocols for releasing the code. You're kind of in engineering territory at this point.

## Code simplicity versus more robust functionality

Another hurdle in releasing a sample app is code quality. Assuming you get approval to put the sample app in a GitHub repo, is the code even worth making available to engineers? Will the code provide a *clarifying* example of how to implement a technique in an app, or will the code just muddle the waters even more?

{% include random_ad4.html %}

Ideally, you want to make the sample app as simple as possible, elucidating the technique you are trying to demonstrate in the docs and nothing more. But isolating the code at that level of simplicity is tough because most apps usually require some other code to load and run.

With one project I worked on, developers didn't want to provide a sample app because they felt that any app that implemented Technique A but not Techniques B, C, D, E, and F would mislead developers. Developers implementing the feature might use the sample app as a starting point (copying the code wholesale, or using the sample app as a starting point for their app) and not realize that Techniques B, C, D, E, and F were also required.

{% include random_ad3.html %}

But coding Techniques B, C, D, and E were beyond the scope of this sample app and accompanying documentation, and they made everything much more complex. Was it better to not provide any sample app at all rather than provide one that was either overly complex or which was rudimentary/incomplete?

With the video skills project I referenced earlier, the sample app was originally a fork of another Android streaming media template called [Fire App Builder](https://developer.amazon.com/docs/fire-app-builder/overview.html) that had a lot of interchangeable modules. All of these modules added a lot of confusion and bulk to what should otherwise be much simpler code. But the app looked and functioned like a real TV app, with a landing page and video thumbnails. Project teams often want to demonstrate code that yields an attractive output, but they also want to keep everything as simple as possible. Later on, the team replaced the sample app with a [much simpler one](https://github.com/amzn/sample-fire-tv-app-video-skill) that didn't have as many polished features as the original Fire App Builder app.

Overall, figuring out the right balance in a sample app is a tradeoff. A simpler Fire TV app might not even include a landing page or thumbnail view of videos, but it might be more illustrative from a code perspective. Users wouldn't be distracted by all the other code that isn't essential to implement for the feature you're describing.

{% include image_ad_right.html %}

## Functional but poorly written code

Sometimes the only sample app you can get your hands on is too embarrassing for engineers to feel comfortable sharing, so you might have to pitch hard for its value in the docs. Getting engineers to build beautiful, illustrative sample apps to accompany the docs can be a tall order, especially if these same engineers are struggling to complete their bi-weekly sprint tasks. In a best case scenario, you might be able to leverage a sample app from the QA team. Almost invariably, the QA team is vetting a list of features through some kind of test code, which is likely packaged into a simple sample app.

Whether that sample app can be extrapolated into a companion piece for the documentation is another matter. Usually, test apps are rudimentary and not necessarily best practice showcases for code. For example, maybe the code works/compiles, but there are many other aspects that engineers look for in code. In [The Best Code is No Code At All](https://blog.codinghorror.com/the-best-code-is-no-code-at-all/), Jeff Atwood (quoting another author) explains what amounts to good code:

> * Brevity of code
> * Featurefulness
> * Speed of execution
> * Time spent coding
> * Robustness
> * Flexibility

Atwood then explains:

> It's painful for most software developers to acknowledge this, because they love code so much, but the best code is no code at all. Every new line of code you willingly bring into the world is code that has to be debugged, code that has to be read and understood, code that has to be supported. Every time you write new code, you should do so reluctantly, under duress, because you completely exhausted all your other options. Code is only our enemy because there are so many of us programmers writing so damn much of it. If you can't get away with no code, the next best thing is to start with brevity.

In other words, all code that works is not the same. Code should be as brief and efficient as possible. Just because the code in a sample app used by QA executes the feature, it doesn't mean the technique used in the code runs efficiently (executes with speed), uses a low amount of memory (reduces space), is elegant (implements re-use), and so on. It might be like an old car that putters along the road &mdash; it will get you to your destination, eventually. But you wouldn't want other car builders to pattern their cars after it.

As such, internal engineers are usually a lot more cautious about sharing shoddy code. There is a danger of potentially doing more harm than good, especially if the code in the demo implements poor practices that developers then copy and duplicate in their own apps. Getting devs to create exemplary code is usually an effort beyond their initial mandate in building the feature.

Is it better to require third-party developers to work out the implementation code on their own (probably misinterpreting and also implementing it incorrectly) rather than potentially leading them astray with bad sample code? I think most developers would say yes. If you push for sample apps as companion pieces to documentation, you might have to find a compromise here between simple, half-baked but functional code and more robust, "showcase" code that would scale in a production environment. Even if you can't release the sample app, you can probably use the sample app for your own testing and validation of the documentation.

## Who owns and maintains the sample app?

If you do manage to publish the sample app, questions about ownership will need to be clarified. Who owns the sample app, especially as a companion piece for the documentation? If the apps are integrated into the documentation and intended to highlight the docs, then wouldn't it make sense for the doc team to have some stake in the code's ownership? At the same time, who will respond to the issues logged on GitHub, the pull requests, and other comments around the code there? Ownership and responsibility matter.

I've seen repos abandoned by engineering teams who simply move on to other projects. Engineers transition to other teams/projects/initiatives and don't want to be supporting the same GitHub repos for the rest of their lives. Other times, projects get de-prioritized or sunset, but the GitHub repo stays in the public space, and the initial docs remain, still supported by the doc team. In these cases, you might end up with a sample app that is seemingly inactive or unsupported (with issues piling up), and docs that you still continue support in a "keep the lights on" kind of way. You might have to keep tabs on the GitHub issues logs and champion internal sources to provide support.
