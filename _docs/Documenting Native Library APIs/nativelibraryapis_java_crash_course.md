---
title: Java in a nutshell
permalink: /nativelibraryapis_java_crash_course.html
course: "Documenting REST APIs"
weight: 7.2
sidebar: docapis
section: nativelibraryapis
---

To understand the different components of a Javadoc, you have to first understand a bit about Java. Just being familiar with the names of the different components of Java will allow you to enter conversations and understand code at a high level. When you describe different aspects of sample code, knowing when to call something a class, method, parameter, or enum can be critical to your documentation's credibility.

I'll run you through a brief crash course in the basics. For more detail about learning Java, I recommend consulting [lynda.com](http://lynda.com) and [safaribooksonline](http://safaribooksonline.com). Below I'll focus on some basic concepts in Java that will be important in understanding the Javadoc tags and elements.

## About Java

Java is one of the most common languages used because of its flexibility. Java isn't tied to a specific language platform because Java code compiles into byte code. The platform you deploy your code on contains a Java Virtual Machine (JVM) that interprets the byte code. Hence through JVMs, different platforms can interpret and run Java code. This gives Java more flexibility with different platforms.

## Classes

Classes are templates or blueprints that drive pretty much everything in Java. It's easiest to understand classes through an example. Think of a class like a general blueprint of a "bicycle." There are many different types of bicycles (Trek bikes, Specialized bikes, Giant bikes, Raleigh bikes, etc.). But they're all just different instances of the general class of a bicycle.

In Java, you start out by defining classes. Each class is its own file, and begins with a capital letter. The file name matches the class name, which means you have just one class per file.

Each class can contain a number of fields (variables for the class) and methods (subroutines the class can do).

Before the class name, an access modifier indicates how the class can be accessed. Several options for access modifiers are:

* `public`: Anyone can access
* `private`: Only other packages can access
* `static`: No one can change the class
* `abstract`: The class can't be instantiated, only sub-classed.

Here's an example of a class:

```java
public class Bicycle{

//code...

}
```

You mostly need to focus on `public` classes, since these are the classes that will be used by your audience. The `public` classes are the API of the library.

## Methods

Methods are subroutines or actions that the class can do. For example, with a bicycle you can pedal, brake, and turn. A class can have as many methods as it needs.

Methods can take arguments, so there are parentheses `()` after the method name. The arguments are variables that are used within the code for that method. For example:

```java
add(a, b) {
sum = a + b;
}
```

Methods can return values. When a method finishes, the value can be returned to the caller of the method.

Before the method name, the method indicates what type of data it returns. If the method doesn't return anything, `void` is listed. Other options are `String` or `int`.

Here's an example of some methods for our Bicycle class:

```java
class Bicycle {

	void turn() {
	// code ...
	}
	void pedal(int rotations) {
	System.out.println("Your speed is " + rotations + " per minute".);
	}

	int brake(int force, int weight) {
	torque == force * weight;
	return torque;
	}
}
```

See how the `brake` method accepts two arguments &mdash; `force` and `weight`? These arguments are integers, so Java excepts whole numbers here. (You must put the data type before the parameters in the method.) The arguments passed into this method get used to calculate the `torque`. The `torque` is then returned to the caller.

In Javadoc outputs, you'll see methods divided into two groups:

* **Instance methods**: Means that you can use the method in the instance of an object. If the method isn't an instance method, it's considered a static method. Static methods can be used directly from the class without instantiating an object first. Static methods can't be changed by any object or subclass.
* **Concrete methods**: These are methods that can be used when you instantiate an object. If a method isn't concrete, it's called an "abstract method." The only way you use an abstract method is by creating a subclass for the method.

Somewhere in your Java application, users will have something called a `main` method that looks like this:

```java
	public static void main(String[] args) {

	}
```

Inside the main method is where you add your code to make your program run. This is where the Java Virtual Machine will look to execute the code.

## Fields

Fields are variables available within the class. A variable is a placeholder that is populated with a different value depending on what the user wants.

Fields indicate their data types, because all data in Java is "statically typed" (meaning, its format/length is defined) so that the data doesn't take up more space than it needs. Some data types include `byte`, `short`, `long`, `int`, `float`, or `double`. Basically these are numbers or decimals of different sizes. You can also specify a `char`, `string`, or `boolean`.

Here's an example of some fields in class:

```java
class Bicycle {

String brand;
int size;

}
```

Many times fields are "encapsulated" with getter-setter methods, which means their values are set in a protected way. Users call one method to set the field's value, and another method to get the field's value. This way you can avoid having users set improper values or incorrect data types for the fields.

Fields that are constant throughout the Java project are called ENUMS. Alternatively, the fields are given `public static final` modifiers.

## Objects

Objects are instances of classes. They are the Treks, Raleighs, Specialized, etc., of the Bicycle class.

If I wanted to use the `Bicycle` class, I would create an instance of the class. The instance of the class is called an object. Here's what it looks like when you "instantiate" the class:

```java

Bicycle myBicycle = new Bicycle();
```

You write the class name followed by the object name for the class. Then assign the object to be a new instance of the class. Now you've got `myBicycle` to work with.

The object inherits all of the fields and methods available to the class.

You can access fields and methods for the object using dot notation, like this:

```java
myBicycle Bicycle = new Bicycle();

myBicycle.brand = "Trek";
myBicycle.pedal();
```

You probably won't see many objects in the native library. Instead, the developers who implement the API will create objects. However, if you have a reference implementation or sample code on how to implement the API, you will see a lot of objects.

## Constructors

Constructors are methods used to create new instances of the class. The default constructor for the class looks like the one above, with `new Bicycle()`.

The constructor uses the same name as the class and is followed by parentheses (because constructors are methods).

Often classes have constructors that initialize the object with specific values passed in to the constructor.

For example, suppose we had a constructor that initialized the object with the brand and size:

```java
public class Bicycle{

public Bicycle(String brand, int size) {
	this.brand = model;
	this.size = size;
}

}
```

Now I use this constructor when creating a new Bicycle object:

```java
Bicycle myBicycle = new Bicycle ("Trek", 22);
```

It's a best practice to include a constructor even if it's just the default.

## Packages

Classes are organized into different packages. Packages are like folders or directories where the classes are stored. Putting classes into packages helps avoid naming conflicts.

When you create your class, if it's in a package called `vehicles`, you list this package at the top of the class:

```java
package vehicles

public class Bicycle{

}
```

Classes also set boundaries on access based on the package. If the access modifier did not say `public`, the class would only be accessible to members of the same package. If the access modifier were `protected`, the class would only be accessible to the class, package, and subclasses.

When you want to instantiate the class (and your file is outside the package), you need to import the package into your class, like this:

```java
import vehicles

	public static void main(String[] args) {

	}
```

When packages are contained inside other packages, you access the inner packages with a dot, like this:

```java
import transportation.motorless.vehicles.
```

Here I would have a transportation package containing a package called motorless containing a package called vehicles. Package naming conventions are like URLs in reverse (com > yoursite > subdomain).

Maven handles package management for Java projects. Maven will automatically go out and get all the package dependencies for a project when you install a Maven project.

## Exceptions

In order to avoid broken code, developers anticipate potential problems with exception handling. Exceptions basically say, if there's an issue here, flag the error with this exception and then continue on through the code.

Different types of errors throw different exceptions. By identifying the type of exception thrown, you can more easily troubleshoot problems when code breaks because you know the specific error that's happening.

You can identify a specific exception the class throws in the class name after the keyword `throws`:

```java
public class Bicycle throws IOException {

}
```

When you indicate the exception here, you list the type of exception using a specific Javadoc tag (explained later).

## Inheritance

Some classes can extend other classes. This mean a class inherits the properties of another class. When one class extends another class, you'll see a note like this:

```java
public class Bicycle extends Vehicle {

}
```

This means that `Bicycle` inherits all of the properties of `Vehicle` and then can add to them.

## Interfaces

An interface is a class that has methods with no code inside the method. Interfaces are intended to be implemented by another class that will insert their own values for the methods. Interfaces are a way of formalizing a class that will have a lot of subclasses, when you want all the subclasses to standardize on common strings and methods.

## JAR files and WAR files

The file extension for a class is .java, but when compiled by the Java Development Kit into the Java program, the file becomes .class. The .class file is binary code, which means only computers (in this case, the Java Virtual Machine, or JVM) can read it.

Developers often package up java files into a JAR file, which is like a zip file for Java projects. When you distribute your Java files, you'll likely provide a JAR file that the developer audience will add to their Java projects.

Developers will add their JAR to their class path to make the classes available to their project. To do this, you right-click your project and select **Properties**. In the dialog box, select **Java Build Path**, then click the **Libraries** tab. Then click **Add JARs** and browse to the JAR.

When you deliver a JAR file, developers can use the classes and methods available in the JAR. However, the JAR will not show them the source code, that is, the raw Java files. For this, users will consult the Javadoc.

If you're distributing a reference implementation that consists of a collection of Java source files (so that developers can see how to integrate your product in Java), you'll probably just send them a zip file containing the project.

A WAR file is a web application archive. A WAR is a compiled application that developers deploy on a server to run an application. Whereas the JAR is integrated into a Java project while the developers are actively building the application, the WAR is the deployed program that you run from your server.

That's probably enough Java to understand the different components of a Javadoc.

## Summary

Here's a quick summary of the concepts we talked about:

* **Class**: blueprints for something
* **Object**: an instance of a class
* **Methods**: what the object/class can do
* **Fields**: variables in the object/class
* **Constructor**: a method to create an object for a class
* **Package**: a folder that groups classes
* **Access modifier** (e.g, public): the scope at which a thing can be accessed
* **Interface**: a skeleton class with empty methods (used for standardizing)
* **Enum**: a data type offering predefined constants
* **Subclass**: a class that inherits the fields + methods of another class
* **JAR file**: a zip-like file containing Java classes
* **WAR file**: a compiled Java web application to be deployed on a server
