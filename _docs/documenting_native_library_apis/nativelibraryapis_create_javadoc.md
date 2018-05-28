---
title: "Activity: Generate a Javadoc from a sample project"
permalink: /nativelibraryapis_create_javadoc.html
course: "Documenting REST APIs"
weight: 10.3
sidebar: docapis
section: nativelibraryapis
path1: /nativelibraryapis.html
---

Javadoc is the standard output for Java APIs, and it's really easy to build a Javadoc. The Javadoc is generated through something called a "doclet." Different doclets can parse the Java annotations in different ways and produce different outputs. But by and large, almost every Java documentation uses Javadoc. It's standard and familiar to Java developers.

* TOC
{:toc}

## Characteristics of Javadoc

Here are some other characteristics of Javadoc:

* Javadoc is supported by Oracle
* Javadoc's output integrates directly into IDEs that developers use.
* The Javadoc output is skinnable, but you can't add non-ref files to it.
* The Javadoc comment style is highly similar to most other document generators.

{% include random_ad.html %}

## Generate a Javadoc

{% include activity.html %}

1.  In Eclipse, go to **File > Export**.
2.  Expand **Java** and select **Javadoc.** Then click **Next**.
3.  Select your project and package. Then in the right pane, select the classes you want included in the Javadoc. Don't select the class that contains your main method. In this sample project, the main method is included in App.java.

	  <img src="images/generatejavadoc.png" alt="Generating a Javadoc" class="medium" />

4.  Select which visibility option you want: Private, Package, Protected, or Public. Generally you select **Public**.

	  Your API probably has a lot of helper or utility classes used on the backend, but only a select number of classes will actually be used by your developer audience. These classes are made public. It's the public classes that your developer audience will use that form the API aspect of the class library.

5.  Make sure the **Use standard doclet** radio button is selected (it's selected by default).
6.  Click the **Browse** button and select the output location where you want the Javadoc generated. By default, it will be generated in the same project folder as your code, but in a subfolder called **doc**. This way you can browse the Javadoc directly within your Eclipse IDE.

    For this activity, choose a different output location (such as a folder on your desktop or in your documents) other than the default. Reason being, the project already has the generated Javadoc in a docs folder, so you might not even realize that you've generated a Javadoc file because your new output will just overwrite the existing doc files.

7.  Click **Next**.

	  <img src="images/javadocnext1.png" alt="Javadoc next screen" />

	  Here you can select if you want to omit some tags, such as @author and @deprecated. Generally you don't include the @author tag, since it may only be important internally, not externally. You can also select different options in the Javadoc frame. If you have a custom stylesheet, you can select it here. Most likely you would only make superficial style changes such as with colors.

8.  Click **Next**.

	  <img src="images/generatejavadocnext2.png" alt="Overview page" />

	  Here you can select an HTML page that you want to be your [overview page in the Javadoc](https://docs.oracle.com/javase/7/docs/technotes/tools/windows/javadoc.html#overviewcomment). You can select any HTML page and it will be included in the index.

9.  Click **Finish**.

    If prompted to update the Javadoc location (which likely differs from your Eclipse workspace location), do so by clicking **Yes to all**.

    Browse to the destination location and open the index.html file in your browser to view the files.

{% include random_ad2.html %}

## Javadoc and error checking

Javadoc also checks your tags against the actual code. If you have parameters, exceptions, or returns that don't match up with the parameters, exceptions, or returns in your actual code, then Javadoc will show some warnings.

<img src="images/javadocerrorchecking.png" alt="Javadoc error checking" />

{% include activity.html %}

Try removing a parameter from a method and generate the Javadoc again. Make sure the console window is open.
