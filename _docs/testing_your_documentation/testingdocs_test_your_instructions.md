---
title: "Test all instructions yourself"
course: "Documenting REST APIs"
permalink: /testingdocs_test_your_instructions.html
weight: 4.1
sidebar: docapis
section: testingdocs 
path1: /testingdocs.html
---

After setting up your [test environment](testingdocs_test_environment.html), the next step is to test your instructions. This will likely involve testing API endpoints with various parameters along with testing other configurations. Testing all your docs can be challenging, but it's where you'll get the most value in creating documentation.

{% if site.target == "web" %}
* TOC
{:toc}
{% endif %}

## Benefits to testing your instructions

One benefit to testing your instructions is that you can start to answer your own questions. Rather than taking the engineer's word for it, you can run a call, see the response, and learn for yourself. (This assumes the application is behaving correctly, though, which may not be the case.)

A lot of times, when you discover a discrepancy in what's supposed to happen, you can confront an engineer and tell him or her that something isn't working correctly. Or you can make suggestions for improving workflows, terms, responses, error messages, etc. You can't do this if you're just taking notes about what engineers say, or if you're just copying information from wiki specs or engineer-written pages.

When things don't work, you can identify and log bugs in issue tracking systems such as JIRA. This is helpful to the team overall and increases your own credibility with the engineers. It's also immensely fun to log a bug against an engineer's code, because it shows that you've discovered flaws and errors in the system.

Other times, the bugs are within your own documentation. For example, I had one of my parameters wrong. Instead of `verboseMode`, the parameter was simply `verbose`. This is one of those details you don't discover unless you test something, find it doesn't work, and then set about figuring out what's wrong.

If you're testing a REST API, you can submit the test calls using [cURL](docapis_make_curl_call.html), [Postman](docapis_postman), or another REST client. Save the calls so that you can quickly run a variety of scenarios.

When you start to run your own tests and experiments, you'll begin to discover what does and does not work. For example, at one company, after setting up a test system and running some calls, I learned that part of my documentation was unnecessary. I thought that field engineers would need to configure a database with a particular code themselves, when it turns out that IT operations would actually be doing this configuration.

I didn't realize this until I started to ask how to configure the database, and an engineer said that my audience wouldn't be able to do that configuration, so it shouldn't be in the documentation.

It's little things like that, which you learn as you're going through the process yourself, that make testing your docs vital to writing good developer documentation.

## Going through the whole process

In addition to testing individual endpoints and other features, it's also important to go through the whole user workflow from beginning to end.

While working at Amazon, it wasn't until I built my own app and submitted it to the Appstore that I discovered some bugs. At the time, I was documenting an app template designed for third-party Android developers building streaming media apps for the Amazon Appstore.

To get a better understanding of the developer's tasks and process, I needed to be familiar with the steps I was asking developers to do. For me, that meant building an app and actually submitting my app to the Appstore &mdash; the whole workflow from beginning to end.

To build my sample app, I had to first figure out how to get content for my app. I decided to take the video recordings of podcasts and meetups that we had through the [Write the Docs podcast](http://podcast.writethedocs.org/) and various WTD meetups and use that media for the app.

Since the app template didn't support YouTube as a web host, I downloaded the MP4s from YouTube and uploaded them directly to my web host.

Then I needed to construct the media feed that I would use to integrate with the app template. The app template could read all the media from a feed by targeting it with Jayway Jsonpath or XPath expression syntax.

I used Jekyll to build my feed. You can view my JSON-based feed here: [podcast.writethedocs.org/fab.json](http://podcast.writethedocs.org/fab.json). I auto-generated the feed through Liquid `for` loops in Jekyll.

The most difficult part in setting up this feed was configuring the `recommendations` object. Each video has some `tags`. The `recommendations` object needs to show other videos that have the same tag. Getting the JSON valid there was challenging and I relied on some support from the Jekyll forum.

After I had the media and the feed, integrating it into Fire App Builder was easy because, after all, I had written the documentation for that.

Submitting the app into the Appstore was fun and illuminated parts of the developer's workflow that I hadn't previously understood. You can view the Write the Docs podcast app in the Amazon Appstore website [here](https://www.amazon.com/Id-Rather-Be-Writing-Podcast/dp/B06Y23TNC4/ref=sr_1_1?s=mobile-apps&ie=UTF8&qid=1491708630&sr=1-1&keywords=write+the+docs).

<a href="https://www.amazon.com/Id-Rather-Be-Writing-Podcast/dp/B06Y23TNC4/ref=sr_1_1?s=mobile-apps&ie=UTF8&qid=1491708630&sr=1-1&keywords=write+the+docs"><img src="images/writethedocastfiretvapp.png" />

Here's what the app screens look like on your Fire TV:

<img src="images/wtdpodcastscreenshot1.png" alt="Write the Docs Podcast app" />

When you select a video, you see a video preview screen:

<img src="images/wtdpodcastscreenshot2.png" alt="Write the Docs Podcast app" />

The meetups are divided into various categories, which gives some order to the list of videos.

All seemed to go well, but then I discovered some bugs that I wouldn't have discovered had I not actually submitted the app into the Appstore. First, I found that device targeting (listing certain features in your Android manifest to identify which Fire devices your app supports) didn't work correctly for Fire TV apps. This issue wasn't directly related to the apptemplate, though.

I also discovered other issues. Although developers had tested the app template for many months, they hadn't tested pushing apps into the Appstore with the app template. It turns out the template's in-app purchases component (not active or configured by default) automatically triggered the Appstore to automatically add a tag indicating that the app contains in-app purchases.

This surprised the dev team, and it would have caused a lot of issues if all apps that third-party developers were building suddenly showed this in-app purchases tag.

The developers said users could simply deregister the component from the app. So I modified the doc to indicate this. Then I tried deregistering the component from the app and submitted a new version, but the in-app-purchases tag issue persisted.

{% include random_ad.html %}

This experience reinforced to me the importance of testing everything myself and not taking the developer's word for how something works. It also reinforced how absolutely vital it is to get your hands on the code you're documenting and run it through as real of a situation as you can.

It's not always possible to run code through real situations, and there are times when I might just help edit and publish engineering-written docs, but that's not the scenario I prefer to work in. I love getting my hands on the code and actually trying to make it work in the scenario it was designed for. Really, how else can you write good documentation?

Another team developer a different tool for publishing apps, which I also set about documenting. This tool was designed for non-technical end users and was supposed to be so easy, it didn't have any more documentation than a brief FAQ.

I tested the tool from beginning to end by creating and submitting an app with it. By the time I finished, I had more than 30 questions along with several significant issues that I discovered.

## Empowered to test additional features

Testing documentation for developers is difficult because we often just provide reference APIs for users to integrate into their own apps. We assume that they already have apps, and so all they need is the API integration information. But many times you can't know what issues the API has until you integrate it into a sample app, using the API in a full scenario from beginning to end.

For example, for general Fire TV users who weren't using the app template, I also wrote documentation on how to integrate and send recommendations. But since I didn't have my own general Fire TV app (not one built with Fire App Builder) to test this with, I didn't play around with the code to actually send recommendations. I had to take on faith much of my information based on the engineer's instructions and the feedback we were getting from beta users.

As you can imagine, I later discovered gaps in the documentation that I needed to address. (It turns out when you actually send recommendations to Fire TV, Fire TV uses only *some* of the recommendations info you send in the display. But in my initial docs, I didn't indicate which fields actually get used. This left developers wondering if they integrated the recommendations correctly. Unsurprisingly, in our forums, a third-party developer soon asked what he was doing wrong because a field he was passing seemed to have no effect on the display.)

Putting together an app from scratch that leverages all the recommendation API calls requires more effort, for sure. But to get the initial foundation going, it's the step I needed to take to ferret out all the potential issues users would face.

Overall, make sure to test the code you're documenting in as real of a situation as you can. You'll be surprised what you discover. Reporting back the issues to your team will make your product stronger and increase your value to the team.

## Enjoyment benefits from testing

Testing your instructions makes the tech writing career a lot more engaging. I'd even say that testing all the docs is what converts tech writing from a boring, semi-isolated career to an engaging, interactive role with your team and users.

There's nothing worse than ending up as a secretary for engineers, where your main task is to listen to what engineers say, write up notes, send it to them for review, and listen to their every word as if they're emperors who give you a thumbs up or thumbs down. That's not the kind of technical writing work that inspires or motivates me.

Instead, when I can walk through the instructions myself, and confirm whether they work or not, adjusting them with more clarity or detail as needed, that's when things become interesting. (And actually, the more I learn about the knowledge domain itself -- the technology, product landscape, business and industry, etc -- the appeal of technical writing increases dramatically.

In contrast, if you just stick to technical editing, formatting, publishing, and curating, these activities will likely not fulfill you in your career (even though these activities are still worthwhile). Only when you get your synapses firing in the knowledge domain you're writing in as well as your hands dirty testing and trying out all the steps and processes does the work of technical writing come alive.

## Accounting for the necessary time

Note that it takes time to try out the instructions yourself and with users. It probably doubles or triples the documentation time. Writing thorough, accurate instructions that address users with different setups, computers, and goals is tedious. You don't always have this time before release.

Don't assume that once your product is released, your doc is done. You can always go back over your existing docs and improve them. Consider the first release a kind of "Day 1" for your docs. It's the first iteration. Your docs will get better with each iteration. If you can capture feedback as your docs get used (feedback from forums, contact email, logs, and other means), you can improve it and see gaps that you likely missed.
