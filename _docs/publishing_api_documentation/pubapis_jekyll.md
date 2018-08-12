---
title: "Jekyll and CloudCannon continuous integration publishing"
permalink: /pubapis_jekyll.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.92
section: publishingapis
path1: /publishingapis.html
---

Static site generators are a breed of website compilers that package up a group of files (usually written in Markdown) and make them into a fully deployable website. There are more than 350 different static site generators. You can browse them at [staticgen.com](http://www.staticgen.com/). One of the most popular static site generator (based on number of downloads, usage, and community) is [Jekyll](https://jekyllrb.com/), and it's the one I have the most experience with, so I'll be focusing on Jekyll here.

* TOC
{:toc}

## Jekyll

Jekyll is a Ruby-based static site generator, meaning it uses Ruby as the underlying programming language to compile the website. This site and my [blog](https://idratherbewriting.com) use Jekyll, and I used Jekyll for the documentation at my past two jobs. For example, all the docs [here](https://developer.amazon.com/appstore/documentation) use Jekyll. With Jekyll, you can publish a fully functional tech comm website that includes content re-use, conditional filtering, variables, PDF output, and everything else you might need as a technical writer.

{% include random_ad2.html %}

Here's a documentation theme that I developed for Jekyll:

<a href="https://idratherbewriting.com/documentation-theme-jekyll/" class="noExtIcon"><img src="images/jekylldocumentationtheme.png" size="large" alt="My Jekyll Documentation theme" /></a>

There isn't any kind of special API reference endpoint formatting here, but the platform is so flexible, you can do anything with it as long as you know HTML, CSS, and JavaScript (the fundamental language of the web). With a static site generator, you have a tool for building a full-fledged website using pretty much any style or JavaScript framework you want. With the Jekyll website, you can include complex navigation, content re-use, translation, and more.

## Static site generators give you a flexible web platform

Static site generators give you a lot of flexibility. They're a good choice if you need a lot of control and customization with your site. You're not locked into rigid templates or styles. You define your own templates and structure things however you want.

With static site generators, you can do the following:

* Write in a text editor working with Markdown
* Create custom templates for documentation
* Use a revision control repository workflow
* Customize the look and feel of the output
* Insert JavaScript and other code directly on the page

## Developing content in Jekyll

One of the questions people ask about authoring content with static site generators is how you see the output and formatting given that you're working strictly in text. For example, how do you see images, links, lists, or other formatting if you're authoring in text?

When you're authoring a Jekyll site, you open up a preview server that continuously builds your site with each change you save. If you use Atom editor, you can use a terminal built directly into Atom (I use the [PlatformIO IDE Terminal](https://atom.io/packages/platformio-ide-terminal) package).

Here's what my current view looks like:

{% include course_image.html size="large" filename="writinginjekyll" ext_print="png" ext_web="png" alt="Atom text editor view while working in Jekyll" caption="Atom text editor view while working in Jekyll" %}

On a separate window, I usually view the build at the preview server URL (`http://localhost:4000/`) to make sure the formatting and images looks right:

{% include course_image.html size="large" filename="jekyllpreviewserver" ext_print="png" ext_web="png" alt="Jekyll preview server" caption="Jekyll preview server" %}

This setup works fairly well. Granted, I do have a large monitor, so it gives me more real estate. On a small screen, you might have to switch back and forth between screens to see the output.

Admittedly, the Markdown format is easy to use but also susceptible to error, especially if you have complicated list formatting. But the majority of the time, writing in Markdown is a joy. You can focus on the content without getting wrapped up in tags. If you do need complex tags, anything you can write in HTML or JavaScript you can include on your page.

## Automating builds from Github

Let's follow an example in publishing in [CloudCannon](https://cloudcannon.com/), "The Cloud CMS for Jekyll," using the Documentation Theme for Jekyll (the theme I built). You don't need to have a Windows machine to facilitate the building and publishing &mdash; you'll do that via CloudCannon and Github. (Of course, being able to build locally is important if you're developing with Jekyll, but I want to avoid installation issues here and demo the continuous deployment features that a host like CloudCannon provides.) This tutorial will show you how to plug into a robust hosting platform that reads content stored and managed on GitHub.

{% include random_ad.html %}

## Set up your doc theme on Github

1.  Go to the [Github page for the Documentation theme for Jekyll](https://github.com/tomjoht/documentation-theme-jekyll) and click **Fork** in the upper-right corner.

	 When you fork a project, a copy of the project (using the same name) gets added to your own Github repository. You'll see the project at <code>https://github.com/{your github username}/documentation-theme-jekyll</code>.

	 Sometimes people fork repositories to make changes and then propose pull requests of the fork to the original repo. Other times people fork repositories to create a starting point for a splinter project from the original. Github is all about social coding &mdash; one person's ending point is another person's starting point, and multiple projects can be merged into each other. You can [learn more about forking here](https://help.github.com/articles/fork-a-repo/).

2.  Sign up for a free account at [CloudCannon](https://cloudcannon.com); sign in using your GitHub credentials.
3.  Once you sign in, click **Create Site** and then give the new site a name.
4.  Click the **GitHub Repository: Sync with a branch** box.

    {% include course_image.html size="large" filename="cloudcannonsyncwithgithub" ext_print="png" ext_web="png" alt="Sync with GitHub" caption="Sync with GitHub" %}

5.  Choose the GitHub repo that you forked &mdash; **Documentation theme for Jekyll**. Select the **gh-pages** branch.

6.  CloudCannon pulls the files from the synced repo over to CloudCannon.
7.  When the sync finishes, click **Start Site Build** to have CloudCannon build Jekyll from the server.

    When it finishes building, you see "Your first build is complete!".

8.  Click **Go to Editor Dashboard.**
9.  From the Dashboard, click the **View Live Site** box:

    {% include course_image.html size="large" filename="cloudcannonviewlivesite" ext_print="png" ext_web="png" alt="View Live Site" caption="View Live Site" %}

	  The preview URL will be something random, such as https://doted-lily.cloudvent.net/. When you visit the URL, the theme should look just like the [Documentation theme for Jekyll here](https://idratherbewriting.com/documentation-theme-jekyll).

10. Using the CloudCannon user interface, you can make updates to files and the updates will sync back to GitHub. Likewise, if you push updates to GitHub, CloudCannon will be notified, pull the changes, and rebuild the output.

I have to say, the integration between CloudCannon and GitHub is pretty mind-blowing. Through CloudCannon, you can offload all the hassle of hosting and maintaining your website, but you aren't locked into the system in a proprietary way. Your content lives in a custom Jekyll theme on GitHub.

CloudCannon automatically builds the site when you commit new updates to your GitHub repo, entirely removing the publishing and deployment step with a website. CloudCannon also provides additional features for authentication, metrics, suggested improvements, and more.

The only drawback with CloudCannon is that your company must allow you to host documentation content on GitHub. Also, CloudCannon charges a monthly fee (see their [pricing](https://cloudcannon.com/pricing/)). If you need to make a case for third-party hosting, I recommend doing so by analyzing the costs of internal hosting and maintenance.

## Make an update to your Github repo

Remember your Github files are syncing from Github to CloudCannon. Let's see that workflow in action.

1.  In your browser, go to your Github repository that you forked and make a change to a file.

	  For example, browse to the index.md file, click the **Edit this file** button (pencil icon), make an update, and then commit the update.

2.  Return to CloudCannon and observe that your site automatically starts rebuilding.

    {% include course_image.html size="large" filename="cloudcannonsitestatus" ext_print="png" ext_web="png" alt="CloudCannon detects the change and automatically rebuilds Jekyll" caption="CloudCannon detects the change and automatically rebuilds Jekyll" %}

Wait until the build finishes (the blue circling arrows change into a green check mark), and then look for the change at the preview URL. The change should be reflected.

You've now got a workflow that involves Github as the storage provider syncing to a Jekyll theme hosted on CloudCannon. You're publishing on the fly, based on commits to a repo. This is the essential characteristic of a [docs-as-code publishing workflow](pubapis_docs_as_code.html).

## Publish the endpoint in the Jekyll Aviator theme

Let's say you want to use a theme that provides ready-made templates for REST API documentation. Although my Jekyll documentation theme could work, it doesn't have templates coded for API endpoint reference documentation. In this activity, you'll publish the weatherdata endpoints that we worked on earlier; we'll use the [Aviator API documentation theme](https://github.com/CloudCannon/Aviator-Jekyll-Theme) by CloudCannon, which is designed for REST APIs.

<a href="https://github.com/CloudCannon/Aviator-Jekyll-Theme" class="noExtIcon" class="noExtIcon"><img src="images/aviatortheme.png" alt="CloudCannon Aviator theme" /></a>

{% include course_image.html url="https://github.com/CloudCannon/Aviator-Jekyll-Theme" size="" border="" filename="aviatortheme" ext_print="png" ext_web="png" alt="CloudCannon Aviator theme" caption="CloudCannon Aviator theme" %}

My Jekyll documentation theme is just one possibility for a Jekyll site. Most people who use it end up heavily customizing it for their needs. You could also use this [Aviator API documentation theme](https://github.com/CloudCannon/Aviator-Jekyll-Theme) or many others.

## Doc Websites Using Jekyll

Here are some websites using Jekyll:

*  [Bootstrap](http://getbootstrap.com/)
*  [Beegit](http://help.beegit.com/)
*  [Stack Overflow blog](https://blog.stackoverflow.com/)
*  [RethinkDB](http://rethinkdb.com/docs/)
*  [Github docs](https://help.github.com/)
*  [Basekit](http://docs.basekit.com/)
*  [Jekyllrb docs](http://jekyllrb.com/docs/home/)
*  [SendGrid docs](https://sendgrid.com/docs)
*  [Atlassian Design](https://design.atlassian.com/)
*  [CloudCannon docs](https://docs.cloudcannon.com/)
*  [Wistia help center](http://wistia.com/support)
*  [Liquid (Shopify)](https://help.shopify.com/themes/liquid/basics)
*  [devo.ps documentation](http://docs.devo.ps/)
*  [healthcare.gov](http://www.healthcare.gov)
