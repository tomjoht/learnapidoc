---
title: "Make edits to Javadoc tags"
permalink: nativelibraryapis_editing_javadoc.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 11.6
section: nativelibraryapis
path1: nativelibraryapis.html
last-modified: 2018-12-26
---

It's pretty common for developers to add Javadoc tags and brief comments as they're creating Java code. In fact, if they don't add some annotations, the IDE will usually produce a warning error.

{% include random_ad4.html %}

However, the comments that developers add might be poor, incomplete, or incomprehensible. A tech writer's job with Javadoc is often to edit the content that's already there, providing more clarity, structure, inserting the right tags, and more.

* TOC
{:toc}

## What to look for when editing Javadoc content

{% include image_ad_right.html %}

{% include random_ad2.html %}

When you make edits to Javadoc content, look for the following:

* **Missing doc**. Lots of Javadoc is incomplete. Look for missing documentation.
* **Consistent style**. See if the existing tags follow [Java's style conventions with annotations](nativelibraryapis_javadoc_tags.html).
* **Clarity**. Some descriptions are unintelligible due to the curse of knowledge (it might be hard to tell without a stronger grasp of Java)

{% include random_ad3.html %}

## <i class="fa fa-user-circle"></i> Make some edits to the Javadoc

Make some edits to a class and method. Then regenerate the Javadoc and find your changes. See how they get rendered in the output.

{% include tip.html content="If you need to review how to export to Javadoc, see [Activity: Generate a Javadoc from a sample project](nativelibraryapis_create_javadoc.html). Each time you export to Javadoc, you need to select the classes you want to be included." %}

{% include ads.html %}
