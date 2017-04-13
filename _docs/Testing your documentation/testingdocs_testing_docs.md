---
title: "Testing your docs"
course: "Documenting REST APIs"
permalink: /testingdocs_testing_docs.html
weight: 1
sidebar: docapis
section: testingdocs
---

Walking through all the steps in documentation yourself, as a technical writer, is critical to producing good documentation. But the more complex setup you have, the more difficult it can be to walk through all of the steps.

Especially with developer documentation, the tasks required to test out your documentation are not trivial. Still, they are essential to creating user-centered documentation. If you want to move beyond merely editing and publishing engineer-written documentation, you'll need to build sample apps or set up the systems are necessary to test the API docs as closely as possible to what actual users will do or use.

{% if site.target == "web" %}
* TOC
{:toc}
{% endif %}

## Step 1: Set up a test environment

The first step to testing your instructions is to set up a test environment.

<a href="https://flic.kr/p/6Grete"><img src="images/testingeverything.jpg" alt="Testing everything" /></a>

Although the test environment seems like a no-brainer, it really isn't. A lot of times, developers test systems on their local machines, so setting up a web instance requires someone to get a server, install the latest build, and give you access to it. Get the appropriate URLs, login IDs, roles, etc. from your QA team. Ask them if there's anything you shouldn't alter or delete, since sometimes the same testing environment is shared among groups. Without this test environment, it will be difficult to make any progress in testing your instructions.

Other times the platform requires extensive architecture to set up. For example, you might have to build a sample Java app to interact with the system. Setting up these resources on your own machine may prove challenging.

In addition to a local build, it might be important to acquire a test app, or build one yourself. Usually developers work from a sample app, or testers have a sample app developed that integrates the calls so they can test and explore them in a simulated environment.

Many times developers don't expect that a technical writer will be doing anything more than just transcribing and relaying the information given to them. With this mindset, a developer might not immediately think that you want a sample app to actually test out the calls or other code. You must ask for it. If a developer or QA person can't produce or deliver any such test app or sample code, be suspicious. How can a development and QA team create and test their code without a sample system where they expect it to be implemented? And if there's a sample system, why can't you also have access so you can write good documentation on how to use it?

If you're documenting a hardware product, you'll want to secure a prototype that has the development build installed on it. Big companies often have prototype devices available. At Amazon, we had kiosks where you could "flash" (quickly install) a specific build number on the device.

It may be difficult to get a test instance of the product to play with. I once worked at a government facility documenting a million-dollar storage array. The only time I ever got to see it was by signing into a special data server room environment, accompanied by an engineer, who wouldn't dream of letting me actually touch the thing, much less swap out a storage disk, run commands in the terminal, replace a RAID, or do some other task for which I was supposedly writing instructions. (I learned early on to steer my career my jobs where I could actually get my hands on and play around with.)

Most of the time QA and engineering teams work on local instances of the system, meaning they build the system on their local machines and run through test code there. It can be challenging to build out local versions of code on your own box. You may need to install some special utilities, get familiar with various command line operations to build the code, and more. But if you can get the local builds running on your own machine, do it. It will serve you in the long run and empower you to document content ahead of time, long before the release.

Alternatively, you can request that developers or QA deploy the code on a test server that you can access. Depending on the product, you might be able you to run the code from the cloud and execute calls there. For example, developers often push a test build to a server that QA runs tests against. If this is the case, it's preferably to test on these alpha web server environments because the code tends to be more stable. Further, if you can hook into a set of scripts QA uses to run tests, you can often get a jump start on the tasks you're documenting.

If it's really complicated to set up a local environment or to access a test server, ask an engineer to install a local system on your machine. Tell him or her that, in order to write good documentation -- documentation that is accurate, complete, and doesn't assume anything -- you need access to these test systems. Sometimes developers like to just sit down at your computer and take over the task of installing and setting up a system. They can work quickly on the command terminal and troubleshoot systems or quickly proceed through installation commands that would otherwise be tedious to walk you through. Developers also like to show off their technical acumen.

At one company, to gain access to the test system, we had to jump over a series of security hurdles. For example, connections to Amazon Web Services from internal systems required developers to go through an intermediary server. So to connect to the AWS test instance, you had to SSL to the intermediary server, and then connect from the intermediary to AWS. The first time I asked a dev to help me set this up. I carefully observed the commands and steps. I later documented it for future knowledge purposes, and other engineers used my doc to set up the same access.

You may also need to construct certain YML files necessary to configure a server with the settings you want to test. Understanding exactly how to create the YML files, the directories to upload them to, the services to stop and restart, and so on can require a lot of asking around for help. Exactly what you have to do depends on your product, the environment, the company, and security restrictions, etc. No two companies are alike. Sometimes it's a pain in the ass to set up your test system, and other times it may be a breeze.

Can you see how just getting the test system set up and ready can be challenging? Still, if you want to write good documentation, this is essential. Good developers know and recognize this need, and so they're usually somewhat accommodating in helping set up a test environment to get you started.

Many times developers aren't too motivated to set up your system, so they may give you a quick explanation about installing this and that tool. But never let a developer say "Oh, you just do a, b, and c." Then you go back to your station and nothing works, or it's much more complicated than he or she let on. It can take persistence to get everything set up and working the first time.

## Step 2: Test the instructions yourself

After setting up the test environment, the next step is to test your instructions. Again, this isn't rocket science, but it's critical to producing good documentation.

One benefit to testing your instructions is that you can start to answer your own questions. Rather than taking the engineer's word for it, you can run a call, see the response, and learn for yourself. (This assumes the application is behaving correctly, though, which may not be the case.)

In fact, a lot of times you can confront an engineer and tell him or her that something isn't working correctly, or you can start to make suggestions for improving things. You can't do this if you're just taking notes about what engineers say, or if you're just writing documentation from specs.

When things don't work, you can identify and log bugs. This is helpful to the team overall and increases your own credibility with the engineers. It's also immensely fun to log a bug against an engineer's code, because it shows that you've discovered flaws and errors in the system.

Other times the bugs are within your own documentation. For example, I had one of my parameters wrong. Instead of `verboseMode`, the parameter was simply `verbose`. This is one of those details you don't discover unless you test something, find it doesn't work, and then set about figuring out what's wrong.

If you're testing a REST API, you can probably submit the test calls using cURL or Postman. This will allow you to save the calls so you can test a variety of scenarios.

When you start to run your own tests and experiments, you'll begin to discover what does and does not work. For example, at one company, after setting up a test system and running some calls, I learned that part of my documentation was unnecessary. I thought that field engineers would need to configure a database with a particular code themselves, when it turns out that IT operations would actually be doing this configuration.

I didn't realize this until I started to ask how to configure the database, and an engineer (a different one from the engineer who said the database would need configuration) said that my audience wouldn't be able to do that configuration, so it shouldn't be in the documentation.

It's little things like that, which you learn as you're going through the process yourself, that make accessing a test environment vital to good documentation.

While working at Amazon, it wasn't until I built my own app and submitted it to the Appstore that I discovered some  bugs. At the time, I was documenting an app template (like a starter kit) called [Fire App Builder](https://developer.amazon.com/public/solutions/devices/fire-tv/docs/fire-app-builder-overview). This app template was designed for third-party Android developers building streaming media apps for the Amazon Appstore. Our developers spent more than a year building this app template that third-party developers would use.

To get a better understanding of the developer's tasks and process, I needed to be familiar with the steps I was asking developers to do. For me, that meant building an app and actually submitting my app to the Appstore -- the whole workflow from beginning to end.

First, I had to figure out how to get content for my app. I decided to take the video recordings of podcasts and meetups that we had through the [Write the Docs podcast](http://podcast.writethedocs.org/) and various WTD meetups and use that media for the app.

Since Fire App Builder didn't support YouTube as a web host, I downloaded the MP4s from YouTube and uploaded them directly to my web host, Bluehost.

Then I needed to construct the media feed that I would use to integrate with Fire App Builder. Fire App Builder basically reads all the media from a feed whose syntax you target with Jayway Jsonpath or XPath expression queries.

I used Jekyll to build my feed. You can view my JSON-based feed here: [podcast.writethedocs.org/fab.json](http://podcast.writethedocs.org/fab.json). The feed is automatically generated through Liquid `for` loops in Jekyll.

The most difficult part in setting up this feed was configuring the `recommendations` object. Each video has some `tags`. The `recommendations` object needs to show other videos that have the same tag. Getting the JSON valid there was challenging and I relied on some support from the [Jekyll Talk forum](http://talk.jekyllrb.com/t/how-to-exclude-comma-in-last-item-in-for-loop-that-is-prefaced-by-if-condition-and-output-valid-json/380/4).

After I had the media and the feed, integrating it into Fire App Builder was easy because, after all, I wrote the documentation on how to do this.

Submitting the app into the Appstore was actually fun. You can view the Write the Docs podcast app in the Amazon Appstore website [here](https://www.amazon.com/Id-Rather-Be-Writing-Podcast/dp/B06Y23TNC4/ref=sr_1_1?s=mobile-apps&ie=UTF8&qid=1491708630&sr=1-1&keywords=write+the+docs).

<a href="https://www.amazon.com/Id-Rather-Be-Writing-Podcast/dp/B06Y23TNC4/ref=sr_1_1?s=mobile-apps&ie=UTF8&qid=1491708630&sr=1-1&keywords=write+the+docs"><img src="/images/writethedocastfiretvapp.png" />

Here's what the app screens look like on your Fire TV:

<img src="/images/wtdpodcastscreenshot1.png" alt="Write the Docs Podcast app" />

When you select a video, you see a video preview screen:

<img src="/images/wtdpodcastscreenshot2.png" alt="Write the Docs Podcast app" />

The meetups are divided into various categories, which gives some order to the list of videos.

Submitting the app into the Appstore helped me see some challenges developers were having in submitting apps. For example, I found out that device targeting (listing certain features in your Android manifest to identify which Fire devices your app supports) didn't work correctly for Fire TV apps. This issue wasn't directly related to the Fire App Builder template, though.

I also discovered an issue with the app template that developers had been unaware of. Although developers had tested the app template for many months, they hadn't tested pushing apps into the Appstore with it. It turns out that the app has an in-app purchases component (not active or configured by default) that triggers the Appstore to automatically add a tag indicating that the app contains in-app purchases.

This surprised the dev team, but it was too late to fix the issue prior to the app template release. The developers then said users could simply deregister the component from the app. I modified the doc to indicate this. Then I tried deregistering the component from the app and submitted a new version, but the issue persisted.

This experience reinforced to me the importance of testing everything myself and not taking the developer's word for how something works. It also reinforced the fact that it is absolutely vital to get my hands on the code I'm documenting and run it through as real of a situation as I can.

It's not always possible to run code through real situations, and there are some times when I might facilitate the editing and publishing of engineering-written docs, but that's not the scenario I prefer to work in. I love getting my hands on the code and actually trying to make it work in the scenario it was designed for. Really, how else can you write good documentation?

It is often difficult to set up scenarios to test developer tools, but it's necessary, and once you set up a system, it empowers you to test and try out many other features. For example, after I had the app built, I could then test out the recommendations feature, which was the big feature in the release. I could also test out device targeting, audio focus handling, and other features.

Testing documentation for developers is difficult because we often just provide reference APIs for them to integrate into their own apps. We assume that they already have apps, and so all they need is the API integration information.

For example, for general Fire TV users who aren't using the Fire App Builder template, I also wrote documentation on how to integrate and send recommendations. But since I didn't have my own Fire TV app to test this with, I didn't play around with the code to actually send recommendations. I had to take on faith much of this information based on the engineer's instructions and the feedback we were getting from users.

As you can imagine, I later discovered gaps in the docs that I needed to address. For example, when you actually send recommendations to Fire TV, Fire TV only uses some of the recommendations info you send, but I didn't indicate in the docs which fields actually get used. This can leave developers wondering if they integrated the recommendations correctly.

Putting together an app from scratch that leverages all the recommendation API calls requires considerably more effort, but to get the initial foundation going, it's the step to take.

Overall, make sure to test the code you're documenting in as real of a situation as you can. You'll be surprised what you discover. Reporting back the issues to your team will make your product stronger and increase your value to the team. It also makes tech writing as a career a lot more engaging.
