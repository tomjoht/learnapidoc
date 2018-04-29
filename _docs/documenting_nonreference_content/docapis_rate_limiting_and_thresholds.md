---
title: Rate limiting and thresholds
permalink: docapis_rate_limiting_and_thresholds.html
keywords:
course: "Documenting REST APIs"
weight: 5.5
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

{: .note}
This page is under construction. I'll be finishing it by May 1, 2018.

{% include course_image.html url="" size="medium" border="true" filename="nonref_ratelimiting" ext_print="png" ext_web="svg" alt="Rate limiting" caption="Rate limiting" %}


Whether in the authorization keys or another section, you should list any applicable rate limits to the API calls. Rate limits determine how frequently you can call a particular endpoint. Different tiers and licenses may have different capabilities or rate limits.

If your site has hundreds of thousands of visitors a day, and each page reload calls an API endpoint, you want to be sure the API can support that kind of traffic.

Here's a great example of the rate limits section from the Github API:

{% include course_image.html url="https://developer.github.com/v3/#rate-limiting" filename="githubratelimiting" ext_print="png" ext_web="png" alt="Rate limiting section from Github" caption="Rate limiting section from Github" %}  
