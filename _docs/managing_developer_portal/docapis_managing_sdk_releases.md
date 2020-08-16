---
title: Processes for managing SDK release processes
permalink: /docapis_managing_sdk_releases.html
course: "Documenting REST APIs"
weight: 12.4
sidebar: docapis
section: devportals
path1: /docapis_managing_dev_portals.html
---

So far we've talked about processes for managing [developer documentation projects](docapis_managing_doc_projects) and [small doc requests](docapis_managing_small_doc_requests). When you're working in a developer portal, you might also be responsible for managing and distributing SDKs and other sample code. Don't assume that developers know how the right processes for distributing SDKs, sample apps, and other tools &mdash; even if someone else might distribute it, they might look to you for guidance and signoff. The process here describes a few callouts that you should look for before publishing these code artifacts.

* TOC
{:toc}

## Definition of an SDK

I explored in SDKs (software developer kits) in depth earlier in [SDKs (software development kits)](docapis_sdks.html) but covered the topic from a documentation perspective &mdash; what do you need to document when it comes to SDKs, what level of instruction is required, etc. A software developer kit might include a language-specific library for your API (for example, a Java JAR library file or an Android AAR file that developers would integrate into their projects) along with a sample app, debugging tools, and other tools necessary for building software.

## Sample scenario with tech writers and SDK distribution

Let's assume that you've written the documentation for the SDK, and now the developers are ready to publish. They've got binary assets, such as a JAR file, AAR file, C++ libraries, along with sample apps and other code that they need to push out there. Since you're controlling the distribution mechanisms on the developer portal, maybe they'll send you the SDK zip file to publish along with other documentation assets you're already publishing. Or maybe they'll ask you to review or sign off on the SDK. Or perhaps they'll just ask you to publish release notes for an SDK they're making available elsewhere.

Your role with the SDK's release and distribution differs by company, for sure, as well as how you're distributing it (S3 bucket, JCenter, Maven, GitHub, or other online repository). How do you review these code artifacts to make sure they're publish-ready?

## The intake process

First, as with other requests, consider pointing developers to a specialized intake form for their SDK request. This request can require developers to provide information that will let you know if the SDK is ready to be published. The SDK intake ticket might have fields like this:

<div class="docSample" markdown="block">
**SDK release request**

* Legal signoff: y/n \| name
* Security signoff: y/n \| name
* QA signoff: y/n \| name
* Javadoc or Doxygen Reference Docs: y/n
* How-to documentation: y/n \| link:
* Version information: y/n
* Release notes: y/n \| link:
* Contents description: y/n \| link:
* README file: y/n

Does the README contain the following:
* Overview of the SDK's functionality, at least several sentences long: y/n
* Link back to documentation on the Developer Portal: y/n
* Links to tutorials on implementing the SDK and any other important tasks: y/n
* Information about where to find support: y/n
* Details about the version: y/n
* Link to find the release notes: y/n

Is your binary available on JCenter or Maven? y/n
</div>


## Requirements

Let's go into more detail about each of these requirements. Each of the following sections will expand on the points listed in the intake form.

### Legal Signoff

In cases where your company has a Legal team, Legal's approval should be required to release any SDK, sample app, and any other code artifact. Legal can ensure that you are using the correct licenses for the software, that each page appropriately displays the license information and other details. They will assess whether your software has any third-party libraries, including open-source libraries and whether you have the rights to publish and distribute the SDK with these other libraries.

Legal might also look at trademark usage and names. For example, the sample code shouldn't reference other companies or trademarked names in examples or text, and your product's name should align with your company's branding guidelines and not conflict with other of your company's products and services. Legal might also check to ensure that you're not using any prohibited words, image assets, or copyrighted material.

### Security signoff

Your code should also receive approval from security before it can be distributed. Security review can ensure that the SDK doesn’t create any vulnerabilities, that is doesn’t expose risks that can be exploited, and so on. For example, your security group might have restrictions about using implicit grant authorization or some other method for authorizing requests. They might review how the users (developers) get access to usernames, passwords, and API keys to authorize and initialize their libraries. They might ensure that proper permissions are specified in manifest files that request permissions from users before functions can be called in apps. They might look at how you're managing and storing customer information, and so on.

Security isn't an area you need to be familiar with yourself beyond a high-level &mdash; rather, the requirement here is to get signoff from a security expert before distributing an engineering team's SDK.

### QA Signoff

Your SDK or other code should be tested through a formal QA process. The QA group providing signoff would be within the business unit of the group developing the SDK. Usually, before you receive a request to release an SDK, it's assumed that QA has signed off on the code. However, this isn't always the case, and if you're managing incoming assets for many different teams, inside and outside your immediate business unit, you might be working with different development teams with different standards. Asking to confirm QA signoff shouldn't pose any challenges to the request unless they don't have a QA process.

It's still a good idea to ensure QA signs off, though. Think about how many version updates SDKs often have where the update addresses some bug or issue with the SDK. Probably half or more releases will be related to issues with the existing SDK. By asking for QA signoff, you can better understand who the QA team is. If you wanted to go an extra step here, you can ask the QA team for a list of their validation tests (which they probably store in a QA test system like Rally), and then review the documentation against the test cases. Does the documentation cover the main features and tasks that QA is testing against? By reviewing the requirements against the documentation, you can quickly see whether the documentation is complete.

### Javadoc or Doxygen Reference Docs

SDKs should include reference documentation in the form of a [Javadoc](nativelibraryapis_create_javadoc.html), [Doxygen](nativelibraryapis_doxygen.html), or other auto-generated reference documentation appropriate to the library. The reference documentation should be included in the download and can also be made available online as a link in the documentation. Delivering this is a standard and is usually added inside of a folder called "docs."

Check to make sure that the reference documentation is correctly generated. If you wanted to go a step further, you could verify that the annotations and tags in the source are correct. I covered [Javadoc tags](nativelibraryapis_javadoc_tags.html) in the Java section of the course. Usually, engineers generate this reference documentation, and technical writers provide tutorials and how-to information for how to use the classes, functions, or other reference documentation. Including the reference documentation with the SDK release allows developers to view the documentation directly in their IDE. Technical writers don't usually create the auto-generated reference documentation, but its information should align with the documentation.

### How-to Documentation

Reference documentation alone is insufficient. Your SDK should also have sufficient how-to documentation or other tutorials so that developers can implement the SDK or other code. In particular, the documentation should include the following related to the SDK:

* Implementation guidelines that explain how to incorporate the SDK into a project
* Explanations about how to perform common tasks that involve the SDK

Presumably, the main documentation covers this in detail. However, suppose you're playing a publisher role for a team and not working specifically with their documentation. Check the documentation to make sure you can identify the implementation tutorial. See if other tutorials address some of the classes/functions in the reference documentation.

### Readme file

The SDK needs to include a README file (typically named `README.md`), common to any code project, that provides the following:

* Overview of the SDK's functionality
* Link back to documentation on your developer portal (unless the documentation is entirely included with the SDK itself)
* Links to important tutorials (such as implementing the SDK)
* Information about where to find support
* Details about the version
* Link to the release notes

There's a lot more one could say about Readme files. For example, browse this [curated list of Readme files](https://github.com/matiassingers/awesome-readme) in the Awesome Readme repo. Also see [Write the Readable README](https://www.writethedocs.org/videos/na/2016/write-the-readable-readme-daniel-beck/) by Daniel Beck at the WTD 2016 conference.

In general, some Readme files might compress a lot of documentation into the Readme. My approach is that the Readme should provide brief summaries and descriptions but mostly link to the main documentation for this information (e.g, installation, implementation, configuration, etc.).

{: .note}
Preparing this Readme might actually be the main request from the engineering team who wants to distribute the SDK.

Most developers expect the Readme to have detailed information, and it might make sense to pack your Readme with condensed versions information also available in your docs, especially so that the repository has the right keywords for searches and other visibility on whatever site/platform you're distributing your code. But to avoid duplicating information in multiple places online (between the Readme and your main documentation), as long as you provide summaries plus links of the expected information, this should satisfy developer needs. Links that point to documentation pages are also easier to update, since presumably you can update your documentation pages dynamically but might require engineering involvement to update the Readme.

{% include random_ad.html %}

### Version Information

The SDK should include the version number for the release. This version number lets users know whether their existing file is outdated, and lets you establish guidelines about compatibility based on different versions. The version number might be indicated both in the README file and code.

Version numbering should follow a consistent pattern for the organization (or at least for the project). As a general rule, minor releases are indicated by a dot version; major releases by a whole number. Sometimes teams will have internal releases that increment the version, so the actual released versions might skip a few versions. If so, you can note that the skipped versions were internal releases.

### Release Notes

The release of any SDK should include release notes indicating what has changed. Release notes can indicate whether the release is backwards compatible or the extent of support/compatibility for intended devices for each version. For example, if the latest version creates breaking changes with previous versions, this needs to be called out in the release notes. If the latest version is compatible with all previous versions (a best practice), you might note this as well.

{% include image_ad_right.html %}

To provide more detail here, suppose version 1 of an SDK has a class called ACME that developers have implemented in their projects. Version 2 presumably wouldn't change ACME in a way that would break version 1 implementations of that code.

Release notes usually indicate both a version number and a date. Exactly how these are highlighted on a release notes page varies from product to product. Follow a consistent and readable date.

### Contents description

The documentation for the SDK should provide a description of contents in the SDK. For example, if the SDK includes a library, sample app, debugging tools, and other files, these should be itemized and described in the documentation so that users know what is included in this kit of software development tools. This practice is similar to purchasing any product that you assemble &mdash; the first page of documentation usually has a list of parts included in the product.

## Hosting Java and Android on JCenter, Maven Central

Now that we've covered requirements about the SDK content itself, the next question concerns hosting. Where do you host your SDK files so that developers can download them?

Your organization might already have a file storage and distribution in place (such as storing the files on S3 or some other web server). However, SDKs tend to have some common distribution sites that you should be aware of.

{% include random_ad2.html %}

For Java, commonly the SDK will include a JAR file; for Android, the SDK often includes an AAR file. C++ might include a DLL. These are binaries that developers will download and incorporate into their projects. Rather than manually downloading the files, developers can automatically pull from online distribution repositories to dynamically include the files when they build their projects.

Two common distribution sites for Java-related projects are [JCenter](https://bintray.com/bintray/jcenter) and [Maven Central](https://search.maven.org/). JCenter is a central distribution point for Java and Android libraries. JCenter has everything that Maven Central has and more. Code for other libraries will have different online repositories.

As another example, with [Jekyll](https://jekyllrb.com) (what this site is built with), [Bundler](https://bundler.io/) (a package and dependency manager) retrieves the latest [jekyll gem](https://rubygems.org/gems/jekyll) from [RubyGems](https://rubygems.org/), which is a gem hosting service.

When developers build their projects, they usually have a build tool that retrieves needed resources from online repositories and pulls them directly into the project. For example, Android uses Gradle to manage dependencies. To declare a dependency on an Android library in JCenter, you list `jcenter()` in your list of project dependencies, and then include the package name and version you want to pull. Now Gradle will handle getting that dependency automatically into your project. You can read more here: [Dependency management in Gradle](https://docs.gradle.org/current/userguide/dependency_management.html#dependency_management_in_gradle).

## GitHub

Many SDKs have a [sample app](docapis_sample_apps.html) that demonstrates integration with the SDK and the provided functionality, even if the sample app is just bare-bones simple and only includes some basic buttons in the UI to initiate events. Many times, sample apps are included with the SDK. If the sample app is more extensive, consider distributing it through GitHub as open-source project instead.

Releasing your project on GitHub doesn't require the code to be open source, but the project source must be viewable. (You can't just upload a compiled binary onto GitHub.) You probably can't just create a new GitHub repo in your organization, but you can instruct engineering teams to do so following any outlined processes.

{% include random_ad3.html %}

Keep in mind that distributing code on GitHub entails some support for the code. For example, if users log issues about bugs, who will respond? Will it be important to track the number of stars and follows for the repo? Who will be the one who actually pushes the code into the repo? You definitely want engineering teams to own this process not because it's technically difficult, but because you want them to feel a sense of ownership and commitment for participation there. If the tech writers handle all aspects of the GitHub repo, tech writers end up playing support roles in responding to issues or handling other administrative details.
