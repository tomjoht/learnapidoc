---
title: "Set up a test environment"
course: "Documenting REST APIs"
permalink: testingdocs_test_environment.html
weight: 6.2
sidebar: docapis
section: testingdocs
path1: testingdocs.html
last-modified: 2019-08-20
---

The first step to testing your instructions is to set up a test environment. Without this test environment, it will be difficult to make any progress in testing your instructions.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Kinds of test environments

The kind of test environment you set up depends on your product and company. In the following sections, I explain testing setup details for different scenarios:

* [Testing on a test server](#test_servers)
* [Testing local builds](#local_builds)
* [Testing sample apps in specific programming languages](#sample_apps)
* [Testing hardware products](#hardware_products)

## Testing on a test server {#test_servers}

The easiest way to test an API is by making requests to a test server where the API service is configured. QA can usually help you with access to the test server. With the test server, you'll need to get the appropriate URLs, login IDs, roles, etc. Ask QA if there's anything you shouldn't alter or delete because sometimes the same testing environment is shared among groups.

{% include random_ad2.html %}

Additionally, make sure your logins correspond with the permissions users will have. If you have an admin login, you might not experience the same responses as a regular user.

You may also need to construct certain files necessary to configure a server with the settings you want to test. Understanding exactly how to create the files, the directories to upload them to, the services to stop and restart, and so on, can require a lot of initial investigation.

{% include random_ad4.html %}

Exactly what you have to do depends on your product, the environment, the company, and security restrictions, etc. No two companies are alike. Sometimes it's a pain to set up your test system, and other times it's a breeze.

{% include image_ad_right.html %}

At one company, to gain access to the test system, we had to jump over a series of security hurdles. For example, connections to the web services from internal systems required developers to go through an intermediary server. To connect to the web server test instance, you had to SSL to the intermediary server, and then connect from the intermediary to the web server. (This wasn't something users would need to do, just internal engineers.)

The first time I attempted this, I asked a developer to help me set this up. I carefully observed the commands and steps he went through on my computer. I later documented it for future knowledge purposes, and other engineers used my doc to set up the same access.

## Testing local builds {#local_builds}

Many times, developers work on a local instance of the system before pushing it to a test server. In other words, they build the app or web server entirely on their own machines and run through test code there, long before pushing it to a test server. If you're plugged into the project this early, great &mdash; you might have more influence on the API's design and can influence changes as needed. To build code locally, you may need to install special utilities or frameworks, become familiar with various command line operations to build the code, and more.

If you can get the local builds running on your own machine, it's usually worthwhile because it can empower you to document content ahead of time, long before the release.

If it's too complicated to set up a local environment, you can ask an engineer to install the local system on your machine. Sometimes developers like to just sit down at your computer and take over the task of installing and setting up a system. They can work quickly on the command terminal and troubleshoot systems or quickly proceed through installation commands that would otherwise be tedious to walk you through.

{% include ads.html %}

Many times, developers aren't too motivated to set up your system, so they may give you a quick explanation about installing this and that tool. But never let a developer say "Oh, you just do a, b, and c." Then you go back to your desk and nothing works, or it's much more complicated than he or she said it would be. It can take persistence to get everything set up and working the first time.

If a developer is knee-deep in sprint tasks and heavily backlogged, he or she may not have time to help you properly get set up. Be patient and ask the developer to indicate a good time to go over the setup.

With local builds, setting up a functional system is much more challenging than using a test server. Still, if you want to write good documentation, setting up a test system is essential. Good developers know and recognize this need, and so they're usually accommodating (to an extent) in helping set up a test environment to get you started.

## Testing sample apps {#sample_apps}

Depending on the product, you might also have a [sample app](docapis_codesamples_bestpractices.html) or [SDK](docapis_sdks.html) in your code deliverables. You often include a sample app or SDK (or multiple apps and SDKs in various programming languages) with a product to demonstrate how to integrate and call the API. If you have a test app that integrates the API, you'll probably need to install some programs or frameworks on your own machine to get the sample app working.

For example, you might have to build a sample Java app to interact with the system &mdash; so you'd likely need to have the Java Development Kit and a Java IDE installed on your computer to make it work. If the app is in PHP, you probably need to install PHP. Or if it's an Android app, you will probably need to download Android Studio and connect it to virtual (or actual) device.

There are usually fewer instructions about how to run a sample app because developers assume users will already have these environments set up on their machines. (It wouldn't make sense for a user to choose the Java app if they didn't already have a Java environment, for example.)

The sample app is among the most helpful pieces of documentation. As you set up the sample app and get it working, look for opportunities to add documentation in the code comments. At the very least, get the sample app working on your own computer and include the setup steps in your documentation.

## Testing hardware products {#hardware_products}

If you're documenting a hardware product, you'll want to secure a device that has the right build installed on it. Big companies often have prototype devices available. At some companies, there may be kiosks where you can "flash" (quickly install) a specific build number on the device. Or you may send your device's serial number to someone who manages a pool of devices that receive beta-version updates from the cloud.

{% include random_ad3.html %}

With some hardware products, it may be difficult to get a test instance of the product to play with. I once worked at a government facility documenting a million-dollar storage array. The only time I was allowed to see the storage array was by signing into a special data server room environment, accompanied by an engineer, who wouldn't dream of letting me actually touch the array, much less swap out a storage disk, run commands in the terminal, replace a RAID, or do some other task (for which I was writing instructions).

I learned early on to steer my career towards jobs where I could actually get my hands on the product, usually software code, and play around with it. When I was working at Amazon, I had a drawer full of Fire TV devices and prototypes. I happened to work in the Amazon devices section, so I had almost every model of Fire TV, Echo Dot, Echo Spot, Echo Show, TVs with Fire OS, and more. Through Android Studio and Android Debug Bridge (ADB), I would run an app on one of these physical devices to test how it works. It's a lot of fun to play around with different devices.

If you're documenting hardware, you need access to the hardware to provide reliable documentation on how to use it. You'll need to understand how to run apps on the device and how to interface with it. Hopefully, the product is one that you can access to play around with in a direct, hands-on way.

Working at Google, the product I was documenting included Google services, such as Google Maps, Play Store, and Assistant, embedded directly in the car's infotainment system. These services are built on the Android operating system. The group I was in maintained a fleet of vehicles, mostly Volvo Polestars and XC-90s, with test installs of Android and these Google services. One day I decided to check a fleet car out and drove it around for a couple of weeks. The experience gave me a much better understanding of the product, one that I didn't entirely possess before when I was just writing about the features. I could experience first-hand in many real situations what the user experience was with the product, and while in some cases I was underwhelmed, in others I was kind of like, wow, this is cool. I logged about 25 bugs while I had the car during this time. 

## If you encounter developer resistance ...

Many times developers don't expect that a technical writer will be doing anything more than just transcribing and relaying the information given to him or her by engineers. With this mindset, a developer might not immediately think that you need or want a sample app to test out the calls or other code. You might need to ask (or even petition) the developers for it.

I've found that most of the time, developers respect technical writers much more if the technical writers can test out the code themselves. Engineers also appreciate any feedback you may have as you run through the system. Technical writers, along with QA, are usually the first users of the developer's code.

If a developer or QA person can't give you access to any such test server or sample code, be suspicious. How can a development and QA team create and test their code without a sample system where they expect it to be implemented? And if there's a sample system, why can't you also have access so you can write accurate, thorough documentation on how to use it?

Sometimes developers don't want to go through the effort of getting something working on your machine, so you may have to explain more about your purpose and goals in testing. If you run into friction, be persistent. It might take one or more days to get your test environment set up. For example, it took me several days to get an app framework to build successfully on my Fire TV device. But once you have a test system set up, it makes it much easier to create documentation because you can start to answer your own questions.

## Next steps

After you get the test environment set up, it's time to [test your instructions](testingdocs_test_your_instructions.html).
