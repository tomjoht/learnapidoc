---
title: Do you create API doc by looking at source code?
permalink: /survey_creation_from_source_code.html
categories:
- api-doc
course: "Documenting REST APIs"
weight: 12.4
sidebar: docapis
section: survey
path1: /survey.html
---

{: .survey}
[Survey question](survey_introduction.html): Do you create documentation by looking at the source code of API files?

From 43 responses, the results were as follows:

![lookingatsource](images/lookingatsource.png)

This question could have been worded a little better to provide a range of answers, such as _often, sometimes, rarely,_ and _never_. A lot of people look at the source code now and then to try to clarify details about parameters or other information, but most don't use the source code intimately to get the information they need. For example, one person wrote:

> Yes, sometimes. How much has varied from job to job, and also varies for different projects - sometimes I get great information from developers, sometimes I have to investigate. I always like to get the code to check simple things like arguments, return types etc. are as advertised. In some roles I have written scripts to check such things match in code and docs. However it's not generally a good idea to work entirely from the code with nothing else to go on. You won't find the ‘why' in the code, generally.

Another person wrote:

> yes to an extent; read specs and look at code for behavior when in doubt (though code's not ready till end of dev cycle, usually, so looking at code usually ends up = last minute corrections)

And another:

> Yes, sometimes. Developer-written Javadoc does not always describe the code fully.

In contrast, some respondents are more immersed in code. One person wrote:

> I test and create the source code myself.

This is certainly a spectrum question. Many people who are perhaps developers first and technical writers second might spend all day in the source code to get the information they need, because they're also writing the code themselves. In contrast, people who are technical writers first and only interact with developers probably go into the source code only when they're hunting for missing information they can't find elsewhere.

In another survey question about main challenges tech writers face with API doc, many said getting information from developers is a major challenge. If developers don't provide the information either through meetings, specs, demos, test cases, or other interactions, technical writers probably foray into the source code to see if they can ferret out the answer.

For the most part, and especially with REST APIs, technical writers don't need to go into the source code very often. One person said,

> not needed up to now, running requests in REST and SOAP has given enough info, also looking at spec docs and other high level plan docs, as well as matching services to the actual live site.

However, from time to time technical writers do consult the source.
