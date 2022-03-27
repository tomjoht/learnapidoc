---
title: Documentation kickoff meetings and product demos
permalink: docapis_kickoff_meeting_agenda.html
course: "Documenting REST APIs"
weight: 12.5
sidebar: docapis
section: devportals
path1: docapis_managing_doc_processes.html
last-modified: 2020-09-02
---

At some point after receiving a new documentation project, the first step in the project is to hold a documentation kickoff meeting and product demo. These meetings are mostly about gathering information so you can create the documentation. The following are some initial questions and topics for these meetings.

* TOC
{:toc}

## Meeting agendas

The general purpose of this documentation kickoff meeting is to review the intake ticket, which should include a host of detail about the project. (See [Create project plans for the documentation projects](docapis_managing_doc_projects.html#create_project_plans) in Managing documentation projects for a list of fields.) Chances are, a product manager has completed half or fewer of the intake fields, as they just don't know all the possible information. No worries, though, as you'll be going through this information in more detail here.

After reviewing the ticket, you want to go over the product or features that you'll be documenting. If this is a large project, you might have a separate meeting for the product demo. If it's smaller, you can combine them. Obviously, adjust the advice here for the nature of the product, product teams, and company. During the demo, consider the following questions as a way to gather more information about the product or feature.

{% include random_ad2.html %}

## Project overview

First, get some basic information. At a high-level, what’s the project here? What's the scope? Complexity? Timelines? Is it a new product, or are you just adding a feature to an existing product? What doc set are you modifying? What team will you be working with? Is this external or internal documentation? What format will the documentation be in, and how will you deliver it?

## Product overview

After gathering some high-level project details, dive into more detail about the product.

**Product overview**

*   What does this product do?
*   What problem does it solve?
*   Is this an API? Is there reference documentation?

**Use cases**

*   When would you use this?
*   Larger picture scenario?
*   Common use cases?

**Target users**

*   Who are the intended users?
*   How do you know they actually want this feature?
*   Do you have any voice-of-the-developer type feedback from users about this feature?
*   What roles do users have? Are they engineers? What type of engineers are they?
*   What's the user's technical level?
*   Are users familiar with certain programming languages or systems?

{% include ads.html %}

**Technical prerequisites**

*   What do you need to install or set up before you can run this product?
*   Do you assume they already have an app? Is there a starter app or toolkit?
*   Are there any required permission groups?
*   Are there language prerequisites (e.g., familiarity with Android)? What language is this? For example, is this for Java apps? Is this an agnostic REST API? Are there SDKs for any specific languages?
*   Are there device prerequisites? 32-bit? 64-bit? Mac/PC/Linux? Android/iOS?

**Background knowledge prerequisites**

*   What do you expect the user to know? For example, do you assume proficiency with any systems or frameworks? What framework? What specific areas?
*   Do you assume they understand any existing tools or processes?

**Development effort**

*   How long do you anticipate that the implementation will be?
*   From a developer's perspective, what's the scope and complexity of the integration?
*   How hard is this going to be for devs? On a scale of 1 to 10, what's the difficulty level here? And how do you know?

**Components involved**

*   What are all the components involved in this situation?
*   What are the relationships between each of the components?
*   How do each of the components influence each other? What actions exist between the components?

{% include random_ad4.html %}

## Tasks Overview

*   What's the larger workflow of how to use the various classes in an end-to-end workflow (initialization, termination, etc.)
*   What is the overall user journey here?
*   What are the main tasks or core functions (e.g., classes) people will be using?
*   What fields, methods, and returns does each class have?

**Setup and initialization tasks**

*   Do you have to declare certain permissions or initialize something, or add a library to your project?
*   Do you need to declare dependencies? Does the project include dependencies? How are they retrieved?
*   Does the user need to request permissions? What does a manifest look like for the project?
*   Is there an initialization process?

**Sample usage**

*   Can you show the usage for one API call so that users can extrapolate how to work with other APIs?
*   Can you talk through a code sample of how it works -- e.g., a representative example from the API?
*   Are there constructors to initialize a class or other ways to initiate processes?

**Common tasks**

*   What are some common tasks users would perform?
*   Can you provide a walkthrough of some common tasks in an end-to-end way?

## Reference docs

{% include image_ad_right.html %}

The essence of an API is inputs and outputs. Something goes in, and something comes out. Is this input and output already described in reference documentation? No matter the language, always focus on inputs and outputs to understand an API.

**Overview**

*   In general, what does this code do?
*   What are the inputs and outputs?

**Inputs**

*   What parameters does this take in?
*   What are the data types for each of the parameters?
*   What max/min values do the parameters have?
*   What are sample values for the parameters?
*   Are each of the parameters required?
*   Are there callbacks?
*   How often can developers call the functions?

**Outputs**

*   What does the object do with the inputs? Is there an algorithm that does something?
*   Does the speed of the function's algorithm increase as the size of the input increases? (Big O notation)
*   What gets returned to the caller?
*   How do you access the output?
*   Do you have to page through the results?

## Best practices

*   Any general best practices to be aware of?
*   What are some best practices for efficient inputs? Does processing time increase as size of parameter inputs increase? Would some inputs cause this function to run slowly? How can a developer make this run as fast as possible?
*   What are some best practices for reducing memory? Are there best practices for making this run as efficient as possible? Do you have to release resources, destroy objects, remove heaps, or do some other memory freeing of resources?
*   How frequently can you call the API? Are there access limits?
*   What gotchas or quirks should developers be aware of?

{% include random_ad3.html %}

## Error messages and handling

*   What error messages might users see?
*   Are there error scenarios to be aware of?
*   What happens if you input invalid data?
*   What happens if you exceed your rate or number of allowed calls? throttled?

## Testing

*   Are there any test classes or tests you can do to make sure that it works?
*   Can they test out their code before submitting their app or something?

## Sample app

*   What is QA using to test this code? Can you use this as a sample app?
*   What would you need to run this yourself? Can you test it in a sample app?
*   Is there a demo of a sample app?

## Release notes

**Details of release**

*   What's being released?
*   What are the version numbers, dates etc., of the release?

**Known limitations**

*   What known limitations or issues exist?
