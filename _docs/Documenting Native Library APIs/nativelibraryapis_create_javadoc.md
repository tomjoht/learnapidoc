---
title: Create a Javadoc
permalink: /nativelibraryapis_create_javadoc.html
course: "Documenting REST APIs"
weight: 7.3
sidebar: docapis
section: nativelibraryapis
---

Javadoc is the standard output for Java APIs, and it's really easy to build a Javadoc. The Javadoc is generated through something called a "doclet." Different doclets can parse the Java annotations in different ways and produce different outputs. But by and large, almost every Java documentation uses Javadoc. It's standard and familiar to Java developers.

## Characteristics of Javadoc
Here are some other characteristics of Javadoc:

* Javadoc is supported by Oracle
* Javadoc's output integrates directly into IDEs that developers use.
* The Javadoc output is skinnable, but you can't add non-ref files to it.
* The Javadoc comment style is highly similar to most other document generators.

## Generate a Javadoc


1. Go to **File > Export**.
2. Expand **Java** and select **Javadoc.** Then click **Next**.
3. Select your project and package. Then in the right pane, select the classes you want included in the Javadoc. Don't select the class that contains your main method.

	<img src="images/generatejavadoc.png" alt="Generating a Javadoc" />

4. Select which visibility option you want: Private, Package, Protected, or Public. Generally you select **Public**.

	Your API probably has a lot of helper or utility classes used on the backend, but only a select number of classes will actually be used by your developer audience. These classes are made public. It's the public classes that your developer audience will use that form the API aspect of the class library.

5. Make sure the **Use standard doclet** radio button is selected.
6. Click the **Browse** button and select the output location where you want the Javadoc generated.
7. Click **Next**.

	<img src="images/javadocnext1.png" alt="Javadoc next screen" />

	Here you can select if you want to omit some tags, such as @author and @deprecated. Generally you don't include the @author tag, since it may only be important internally, not externally. You can also select different options in the Javadoc frame. If you have a custom stylesheet, you can select it here. Most likely you would only make superficial style changes such as with colors.

8. Click **Next**.

	<img src="images/generatejavadocnext2.png" alt="Overview page" />

	Here you can select an HTML page that you want to be your overview page in the Javadoc. You can select any HTML page and it will be included in the index.

9. Click **Finish**.

## Javadoc and error checking



Javadoc also checks your tags against the actual code. If you have parameters, exceptions, or returns that don't match up with the parameters, exceptions, or returns in your actual code, then Javadoc will show some warnings.

Try removing a parameter from a method and generate the Javadoc again. Make sure the console window is open.

<img src="images/javadocerrorchecking.png" alt="Javadoc error checking" />
