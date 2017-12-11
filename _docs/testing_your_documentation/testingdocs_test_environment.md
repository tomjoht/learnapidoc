---
title: "Set up a test environment"
course: "Documenting REST APIs"
permalink: /testingdocs_test_environment.html
weight: 4.1
sidebar: docapis
section: testingdocs
path1: /testingdocs.html
---

The first step to testing your instructions is to set up a test environment. Without this test environment, it will be difficult to make any progress in testing your instructions.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Types of test environments

The type of test environment you set up depends on your product and company. In the following sections, I explain testing setup details for different scenarios:

* [Testing local builds](#local_builds)
* [Testing from a test server](#test_servers)
* [Testing sample apps in specific programming languages](#sample_apps)
* [Testing hardware products](#hardware_products)

## Testing local builds {#local_builds}

Many times, developers work on local instances of the system, meaning they build the app or web server entirely on their own machines and run through test code there. To build code locally, you may need to install special utilities or frameworks, become familiar with various command line operations to build the code, and more.

If you can get the local builds running on your own machine, it's usually worthwhile because it can empower you to document content ahead of time, long before the release.

If it's too complicated to set up a local environment or to access a test server, ask an engineer to install the local system on your machine. Tell him or her that, in order to write good documentation &mdash; documentation that is accurate, complete, and doesn't assume anything &mdash; you need access to these test systems.

Sometimes, developers like to just sit down at your computer and take over the task of installing and setting up a system. They can work quickly on the command terminal and troubleshoot systems or quickly proceed through installation commands that would otherwise be tedious to walk you through.

At one company, to gain access to the test system, we had to jump over a series of security hurdles. For example, connections to the web services from internal systems required developers to go through an intermediary server. So to connect to the web server test instance, you had to SSL to the intermediary server, and then connect from the intermediary to the web server. (This wasn't something users would need to do, just internal engineers.)

The first time I attempted this, I asked a developer to help me set this up. I carefully observed the commands and steps he went through on my computer. I later documented it for future knowledge purposes, and other engineers used my doc to set up the same access.

Many times, developers aren't too motivated to set up your system, so they may give you a quick explanation about installing this and that tool. But never let a developer say "Oh, you just do a, b, and c." Then you go back to your station and nothing works, or it's much more complicated than he or she let on. It can take persistence to get everything set up and working the first time.

If a developer is knee-deep in sprint tasks and heavily backlogged, he or she may not have time to help you properly get set up. In this case, there are other methods that may be more practical, such as accessing the system from a test server.

## Testing on a test servers {#test_servers}

Instead of working with local builds, you can request that developers or QA deploy the code on a test server that you can access (assuming one isn't already available). Interacting with test systems is probably easier than building an application locally because the server will likely have the code and frameworks you need already installed. Depending on the product, you might be able you to run all the code on test server and execute calls there.

For example, developers often push a test build to a server that QA runs tests against. If this is the case, it's often preferable to test on these alpha or beta web server environments because the code tends to be more stable than local builds. Additionally, if you're not brought into the project until late in the development phase, test servers are likely already available.

If you can hook into a set of test cases QA teams use to run tests, you can often get a jump start on the tasks you're documenting. Good test cases usually list the steps required to produce a result, and the scripts can inform the documentation you write.

Ask your QA team where they keep their test cases &mdash; they're not always readily visible. [Testrail](http://www.gurock.com/testrail) is a common tool used to manage test cases. If your QA team uses it or some other tool, become familiar with it.

With the test system, you'll need to get the appropriate URLs, login IDs, roles, etc., from developers or QA. Ask if there's anything you shouldn't alter or delete because sometimes the same testing environment is shared among groups.

You may also need to construct certain files necessary to configure a server with the settings you want to test. Understanding exactly how to create the files, the directories to upload them to, the services to stop and restart, and so on can require a lot of asking around for help.

Exactly what you have to do depends on your product, the environment, the company, and security restrictions, etc. No two companies are alike. Sometimes it's a pain to set up your test system, and other times it's a breeze.

Can you see how just getting the test system set up and ready can be challenging? Still, if you want to write good documentation, setting up a test system is essential. Good developers know and recognize this need, and so they're usually accommodating (to an extent) in helping set up a test environment to get you started.

## Testing sample apps {#sample_apps}

Depending on the product, you might also have a sample app in your code deliverables. You often include a sample app (or multiple apps in various programming languages) with a product to demonstrate how to integrate and call the API. If you have a test app that integrates the API, you'll probably need to install some programs or frameworks on your own machine to get the sample app working.

For example, you might have to build a sample Java app to interact with the system. If the app is in PHP, you may need to install PHP. Or you may need to download Android Studio and connect it to an actual device.

There's usually fewer instructions about how to run a sample app because developers assume users will already have these environments set up on their machines. (It wouldn't make sense for a user to choose the Java app if they didn't already have a Java environment, for example.)

The sample app is among the most helpful pieces of documentation. As you set up the sample app and get it working, look for opportunities to add documentation in the code comments. At the very least, get the sample app working on your own computer and include the setup steps in your documentation.

## Testing hardware products {#hardware_products}

If you're documenting a hardware product, you'll want to secure a device that has the right build installed on it. Big companies often have prototype devices available. At some companies, there may be kiosks where you can "flash" (quickly install) a specific build number on the device.

With some hardware products, it may be difficult to get a test instance of the product to play with. I once worked at a government facility documenting a million-dollar storage array. The only time I was allowed to see the storage array was by signing into a special data server room environment, accompanied by an engineer, who wouldn't dream of letting me actually touch the array, much less swap out a storage disk, run commands in the terminal, replace a RAID, or do some other task (for which I was writing instructions).

I learned early on to steer my career towards jobs where I could actually get my hands on the product, usually software code, and play around with it. If you're documenting hardware, you need access to the hardware to provide reliable documentation on how to use it. You'll need to understand how to run apps on the device and interface with it. Hopefully, the product is one that you can access to actually play around with.

## Next steps

It might take one or more days to get your test environment set up. Be persistent. After you get the test environment set up, it's time to [test your instructions](testingdocs_test_your_instructions.html).
