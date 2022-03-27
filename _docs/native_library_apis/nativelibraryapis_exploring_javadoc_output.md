---
title: "Explore the Javadoc output"
permalink: nativelibraryapis_exploring_javadoc_output.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 11.5
section: nativelibraryapis
path1: nativelibraryapis.html
last-modified: 2018-12-26
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

<figure><img class="docimage large" src="{{site.media}}/classsummary.png" alt="Class summary" /><figcaption>Class summary</figcaption></figure>

You click a class name (in this case, `ACMESmartphone` or `Dynamite`) to dive into the details.

## Class details

{% include random_ad4.html %}

When you view a class page, you're presented with a summary of the fields, constructors, and methods for the class. Again, this is just an overview. When you scroll down, you can see the full details about each of these elements.

<figure><a target="_blank" class="noExtIcon" href="http://docs.oracle.com/javase/7/docs/api/"><img class="docimage large" src="{{site.media}}/fulldetails.png" alt="Full class details" /></a><figcaption>Full class details</figcaption></figure>

{% include random_ad2.html %}

## Other navigation

If you click **Package** at the top, you can also browse the classes by package. Or you can go to the classes by clicking the class name in the left column. You can also browse everything by clicking the **Index** link.

<figure><img class="docimage large" src="{{site.media}}/allclassesjavadoc.png" alt="All the ways to browse the classes" /><figcaption>All the ways to browse the classes</figcaption></figure>

{% include ads.html %}

For more information about how the Javadoc is organized, click the **Help** button in the Javadoc top navigation bar.

{% include image_ad_left.html %}
