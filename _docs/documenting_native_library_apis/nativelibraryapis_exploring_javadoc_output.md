---
title: "Explore the Javadoc output"
permalink: /nativelibraryapis_exploring_javadoc_output.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 11.5
section: nativelibraryapis
path1: /nativelibraryapis.html
---

The Javadoc output hasn't changed much in the past 20 years, so in some sense, it's predictable and familiar. On the other hand, the output is dated and lacks some critical features, like search, or the ability to add more pages. In this topic, we'll explore how the Javadoc is organized.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Class summary

{% include random_ad3.html %}

Open the index.html file in the Javadoc folder you generated in [Activity: Generate a Javadoc from a sample project](nativelibraryapis_create_javadoc.html).

The class summary page shows a short version of each of the classes. The description you write for each class (up to the period) appears here. It's kind of like a quick reference guide for the API.

{% include course_image.html size="large" filename="classsummary" ext_print="png" ext_web="png" alt="Class summary" caption="Class summary" %}

You click a class name (in this case, `ACMESmartphone` or `Dynamite`) to dive into the details.

## Class details

When you view a class page, you're presented with a summary of the fields, constructors, and methods for the class. Again, this is just an overview. When you scroll down, you can see the full details about each of these elements.

{% include course_image.html size="large" url="http://docs.oracle.com/javase/7/docs/api/" filename="fulldetails" ext_print="png" ext_web="png" alt="Full class details" caption="Full class details" %}

{% include random_ad2.html %}

## Other navigation

If you click **Package** at the top, you can also browse the classes by package. Or you can go to the classes by clicking the class name in the left column. You can also browse everything by clicking the **Index** link.

{% include course_image.html size="large" filename="allclassesjavadoc" ext_print="png" ext_web="png" alt="All the ways to browse the classes" caption="All the ways to browse the classes" %}

{% include random_ad.html %}

For more information about how the Javadoc is organized, click the **Help** button in the Javadoc top navigation bar.

{% include image_ad_left.html %}
