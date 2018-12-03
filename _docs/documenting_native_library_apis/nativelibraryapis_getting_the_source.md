---
title: "Get the Java source"
permalink: /nativelibraryapis_getting_the_source.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 11.1
section: nativelibraryapis
path1: /nativelibraryapis.html
---

In order to understand documentation for Java APIs, it helps to have a context of some sort. As such, I created a simple little Java application (called [sample-java-project](https://github.com/tomjoht/sample-java-project)) to demonstrate how the various tags get rendered into the Javadoc.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Sample Java Project

The [sample Java project](https://github.com/tomjoht/sample-java-project) is a little application about different tools that a coyote will use to capture a roadrunner. There are two classes (ACMESmartphone and Dynamite) and another class file called App that references the classes.

{% include random_ad2.html %}

This program doesn't really do anything except print little messages to the console, but it's hopefully simple enough to be instructive in its purpose. The purpose of the app is to demonstrate different doc tags, their placement, and how they get rendered in the Javadoc.

## Download the project

One of your immediate challenges to editing Javadoc will be to get the source code into your IDE. The sample java project is [here on Github](https://github.com/tomjoht/sample-java-project).

First clone the source using version control. We covered some version control basics <a href="pubapis_version_control.html">earlier in the course</a>.

You can clone the source in a couple of ways:

```
git clone https://github.com/tomjoht/sample-java-project
```

Or click **Clone in Desktop** and navigate to the right path in Github Desktop.

(If you don't want to clone the source, you could click **Download ZIP** and download the content manually.)

{% include random_ad.html %}

## Open the project in Eclipse

1.  If you haven't already [downloaded and installed Eclipse](nativelibraryapis_overview.html#installation_reqs), do so.
1.  Open Eclipse and go to **File > New > Java Project**.
2.  Clear the **Use default location** check box, and then click **Browse** and select the folder where you cloned the Github project.

    {% include course_image.html border="true" filename="create-new-java-project" ext_print="png" ext_web="png" alt="Import existing Java project" size="small" caption="Import existing Java project" %}

3.  Click **Finish**.

	  The Java files should be visible in the left pane (Package Explorer) within your Eclipse IDE.

    {% include course_image.html size="medium" border="true" filename="eclipsefileview" ext_print="png" ext_web="png" alt="png" caption="Eclipse File View" %}

## <i class="fa fa-user-circle"></i> Play with the Sample Java Project

This Java app doesn't do much. It's main purpose is to create some classes where I can add some Javadoc annotations. But for fun, you can run the app.

1.  In the Package Explorer, expand **javadoc_tags**.
2.  Double-click the **App.java** file to open it.
3.  Click the **Run App** button <img src="images/javarunbutton.png" style="vertical-align:bottom" />.

The main method (`public static void main(String[] args) throws IOException`), which is contained in the **App.java** file, runs the functions defined in the other package's files (ACMESmartphone.java and Dynamite.java).

```java
public static void main(String[] args) throws IOException {

  // First initialize your smartphone using the model number and license key.
  ACMESmartphone myACMESmartphone = new ACMESmartphone(2.0, "398978fdskj");

  // Locate the roadrunner.
  myACMESmartphone.findRoadRunner("Santa Clara","California");

  // Zap the roadrunner with the amount of voltage you want.
  myACMESmartphone.zapRoadRunner(40);

}
```

You can view the details of each function by clicking the ACMESmartphone.java and Dynamite.java class files.

Then app prints this text to the console:

```
model2.0 now initialized for license 398978fdskj
location: Santa Clara, California
getting geocoordinates of roadrunner....
roadrunner located at Longitude = 39.2334, Latitude = 41.4899
Backfire!!! zapping coyote with 1,000,000 volts!!!!
```

{% include course_image.html  size="medium" border="" filename="java-app-in-action" ext_print="png" ext_web="png" alt="Running the program" caption="Running the program" %}

Note that I've chosen to position my Console on the bottom (to make the code visible), but by default it's on the right side.

## Side Note about Maven projects

Before leaving this intro topic on getting started with a Java project, I'd like to make a note about Maven. Java projects often have a lot of dependencies on packages that are third-party libraries or at least non-standard Java utilities. Rather than requiring users to download these additional packages and add them to their class manually, developers frequently use Maven to manage the packages. (Maven is to Java like Gradle is to Android.)

Maven projects use a pom.xml file that defines the dependencies. Eclipse ships with Maven already installed, so when you import a Maven project and install it, the Eclipse Maven plugin will retrieve all of the project dependencies and add them to your project.

The sample project doesn't use Maven, but I want to add a note about Maven here anyway. Chances are if you're getting a Java project from developers, you won't import it in the way I previously described. Instead, you'll import it as an existing Maven project.

(To import a Maven project into Eclipse, you would go to **File > Import > Maven > Existing Maven Projects** and click **Next**. In the Root Directory field, you would click **Browse** and browse to the Java project folder (which contains the Maven pom.xml file) and then click **Open**. Then you would click **Finish** in the dialog box. In the Project Explorer pane in Eclipse, you would right-click the Java folder and select **Run as Maven Install**. Maven retrieves the necessary packages and builds the project. If the build is successful, you will see a "BUILD SUCCESS" message in the console. You would then use the source code in the built project.)
