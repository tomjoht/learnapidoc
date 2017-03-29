---
title: "Help authoring tools"
permalink: /pubapis_hats.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.2
section: publishingapis
---

Help authoring tools (HATs) refer to the common toolset often used by technical writers. Common HATs include MadCap Flare, Adobe Robohelp, Author-it, and more. Sure, you can use these tools to create API documentation.

Here's a sample help output from Flare for the Photobucket API:

<a href="https://pic.photobucket.com/dev_help/WebHelpPublic/PhotobucketPublicHelp_Left.htm#CSHID=FAQ/FAQOverview.htm|StartTopic=Content/FAQ/FAQOverview.htm|SkinName=WebHelp"><img src="images/hatphotobucket.png" alt="Publishing API docs" /></a>

## Pros of using a help authoring tool

Some advantages of using a HAT include the following:

### + Comfortable authoring environment for writers

If writers are going to be creating and publishing the documentation, using a tool technical writers are familiar with is a good idea.

### + Integrates reference information with guides and tutorials.

You won't have a division between an output that is generated from a reference doc generator (such as Swagger) and user guide material. It can be one seamless whole.

### + Handles the toughest tech comm scenarios.

When you have to deal with versioning, translation, content re-use, conditional filtering, authoring workflows, and PDF output, you're going to struggle to make this work with the other tools mentioned in this course.

### + HATs reinforce the fact that API doc is more than endpoints
HATs reinforce the fact that good API documentation is more than just a set of endpoints and parameters. Good API documentation includes guides and tutorial topics as well. Developers rarely write that kind of information, yet it's just as important as the reference documentation. HATs lend themselves more to these guide and tutorial topics.

## Cons of using a help authoring tool

Some disadvantages of using a HAT include the following:

### - Most HATs don't run on Macs
Using a HAT also presents some disadvantages. First, almost no HAT runs on a Mac. But many developers and designers prefer Macs because they have a much better development platform. For example, to make a cURL call, you just open Terminal and paste in the call. With a Windows machine, installing cURL and libcurl is much more onerous and harder to use.

### - Dated UI won't help sell the product
The output from a help authoring tool usually looks dated. The problem with the dated tripane look and feel is that API documentation *is* the interface that users navigate. There isn't a separate GUI interface that the help complements. The help is front and center as the information product that users get.

If you want to promote the idea that your API is modern and awesome, you want a website that looks modern and awesome as well. In fact, you might have a UX developer create the website itself. If you lead with an outdated tripane site that loads frames, developers may not be as excited to use your API.

In Flare's latest release, you can customize the display in pretty significant ways, so maybe it will help end the dated tripane output look and feel.

### - Doesn't integrate with other site components

Many of the API doc sites are single-website experiences. The API docs are usually part of the main website, not a link that opens in its own window, separate from the other content.

 If you can output a format that another site can consume, great. But if you split and divide the user into separate sites, you're following a less common pattern with API doc sites.

### - Removes authoring capability from developers

 If you're hoping for developers to contribute to the documentation, it's going to be hard to get buy-in if you're using a HAT. HATs are tools for writers, not developers. Then again, if you don't expect developers to contribute, then this becomes a moot point.
