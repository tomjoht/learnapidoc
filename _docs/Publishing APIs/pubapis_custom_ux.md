---
title: "Custom UX solutions"
permalink: /pubapis_custom_ux.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.1
section: publishingapis
---

If you want to build a beautiful API doc website that rivals sites such as [Parse.com](http://parse.com) and others, you'll most likely need to involve a UX engineer to build it. Fortunately, this is a solution that many UX engineers and other web developers are usually excited to tackle.

<img src="images/uxteam.png" alt="Getting help from your UX team" />

## When it makes sense to partner with UX

If you want to integrate your API documentation into your main website, ask the person designing your main website for strategies on integrating the doc site into it. This integration might allow you to leverage authentication (if needed) and other interaction points (such as with forums or support tickets).

## Web platform languages

Many custom websites are built using a variety of JavaScript, HTML, and CSS tools. Most likely you'll be able to supply a batch of Markdown or HTML files to the web developer to integrate.
## Solution at Badgeville

When I worked at Badgeville, our solution for publishing API documentation was to use custom scripts that pulled some information from source files and pushed them into templates.

## Use scripts to generate JSON from source code

The source files were stored on Github, and the writers could edit the descriptions of the parameters, fields, etc. Our developers created scripts that would look into the code of the source files and render content into JSON files in a specific structure.

## Import the JSON into your web CMS

Since we published all help content on a Drupal site, we hired a Drupal development agency that would take information from a JSON file and push the information into a custom-built template.

After the scripts were integrated into the Drupal site, we would have developers periodically run the build scripts to generate a batch of JSON files.

The upload scripts checked to ensure the JSON files were valid, and then they were pushed into the templates and published. Each upload would overwrite any existing content with the same file names.

## Developing custom solutions

If your documentation is published on a web-based CMS, you can probably find a development agency to create a similar script (if you don't have in-house engineers to create them).

A lot of companies have custom solutions for their API documentation. Sometimes this kind of solution just makes sense and allows you to right-size the workflow to fit your specific information.
