---
title: "Javadoc tags"
permalink: /nativelibraryapis_javadoc_tags.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.4
section: nativelibraryapis
---


Javadoc is a document generator that looks through your Java source files for specific annotations. It parses out the annotations into the Javadoc output. Knowing the annotations is essential, since this is how the Javadoc gets created.

The following are the most common tags used in Javadoc. Each tag has a word that follows it. For example, `@param latitude` means the parameter is "latitude".

<div markdown="span" class="alert alert-success" role="alert"><i class="fa fa-check-square-o"></i> <b>Tip:</b> To see a lengthy Javadoc tag, see this <a href="http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#examples">example from Oracle</a>.</div>

The following are some common Javadoc tags:

* **@author**  A person who made significant contribution to the code. Applied only at the class, package, or overview level. Not included in Javadoc output. It's not recommended to include this tag since authorship changes often.
* **@param** A parameter that the method or constructor accepts. Write the description like this: `@param count Sets the number of widgets you want included.`  
* **@deprecated** Lets users know the class or method is no longer used. This tag will be positioned in a prominent way in the Javadoc. Accompany it with a @see or {@link} tag as well. |
* **@return** What the method returns.
* **@see** Creates a see also list. Use {@link} for the content to be linked.
* **{@link}** Used to create links to other classes or methods. Example: `{@link Foo#bar}` links to the method `bar` that belongs to the class `Foo`. To link to the method in the same class, just include #bar.
* **@since 2.0** The version since the feature was added.
* **@throws** The kind of exception the method throws. Note that your code must indicate an exception thrown in order for this tag to validate. Otherwise Javadoc will produce an error. @exception is an alternative tag.
* **@Override** Used with interfaces and abstract classes. Performs a check to see if the method is an override.

## Comments versus Javadoc tags

A general comment in Java code is signaled like this:

```java
// sample comment...

/*
sample comment
*/
```

Javadoc does nothing with these comments.

To include content in Javadoc, you add *two* asterisks at the start, before the class or method:

```java
/**
*
*
*
*
*/
```

(In Eclipse, if you type /** and hit return, it autofills the rest of the syntax automatically.)

The format for adding the various elements is like this:

```java
/**
* [short description]
* <p>
* [long description]
*
* [author, version, params, returns, throws, see, other tags]
* [see also]
*/
```

Here's a real example of Javadoc comments for a method.

```java
/**
* Zaps the roadrunner with the amount of volts you specify.
* <p>
* Do not exceed more than 30 volts or the zap function will backfire.
* For another way to kill a roadrunner, see the {@link Dynamite#blowDynamite()} method.
*
* @exception IOException if you don't enter an data type amount for the voltage
* @param voltage the number of volts you want to send into the roadrunner's body
* @see #findRoadRunner
* @see Dynamite#blowDynamite
*/
public void zapRoadRunner(int voltage) throws IOException {
   if (voltage < 31) {
       System.out.println("Zapping roadrunner with " + voltage + " volts!!!!");
   }
   else {
    System.out.println("Backfire!!! zapping coyote with 1,000,000 volts!!!!");
   }
}
```

## Where the Javadoc tag goes

You put the Javadoc description and tags _before_ the class or method (no need for any space between the description and class or method).

## What elements you add Javadoc tags to

You add Javadoc tags to classes, methods, and fields.

* For the @author and @version tags, add them only to classes and interfaces.
* The @param tags get added only to methods and constructors.
* The @return tag gets added only to methods.
* The @throws tag can be added to classes or methods.

## Public versus private modifiers and Javadoc

Javadoc only includes classes, methods, etc. marked as public. Private elements are not included. If you omit `public`, the default is that the class or method is available to the package only. In this case, it is not included in Javadoc.

## The description

There's a short and long description. Here's an example showing how the description part is formatted:

```java
/**
* Short one line description.
* <p>
* Longer description. If there were any, it would be
* here.
* <p>
* And even more explanations to follow in consecutive
* paragraphs separated by HTML paragraph breaks.
*
* @param variable Description text text text.
* @return Description text text text.
*/
public int methodName (...) {
// method body with a return statement
}
```

(This example comes from [Wikipedia entry](http://en.wikipedia.org/wiki/Javadoc).)

The short description is the first sentence, and gets shortened as a summary for the class or method in the Javadoc. After a period, the parser moves the rest of the description into a long description. Use `<p>` to signal the start of a new paragraph. You don't need to surround the paragraphs with opening and closing `<p>` tags -- the Javadoc compiler automatically adds them.

Also, you can use HTML in your descriptions, such as an unordered list, code tags, bold tags, or others.

After the descriptions, enter a blank line (for readability), and then start the tags. You can't add any more description content below the tags. Note that only methods and classes can have tags, not fields. Fields (variables) just have descriptions.

Note that the first sentence is much like the `shortdesc` element in DITA. This is supposed to be a summary of the entire class or method. If one of your words has a period in it (like `Dr. Jones`), then you must remove the space following the period by adding `Dr.&nbsp;Jones` to connect it.

Avoid using links in that first sentence. After the period, the next sentence shifts to the long paragraph, so you really have to load up that first sentence to be descriptive.

The verb tense should be present tense, such as _gets, puts, displays, calculates..._

What if the method is so obvious (for example, printPage) that your description ("prints a page") becomes obvious and looks stupid? Oracle says in these cases, you can omit saying "prints a page" and instead try to offer some other insight:

> Add description beyond the API name.
>  The best API names are "self-documenting", meaning they tell you basically what the API does. If the doc comment merely repeats the API name in sentence form, it is not providing more information. For example, if method description uses only the words that appear in the method name, then it is adding nothing at all to what you could infer. The ideal comment goes beyond those words and should always reward you with some bit of information that was not immediately obvious from the API name. -- [How to write javadoc comments](http://www.oracle.com/technetwork/articles/java/index-137868.html)

## Avoid @author

Commenting on Javadoc best practices, one person says to avoid @author because it easily slips out of date and the source control provides better indication of the last author. ([Javadoc coding standards](http://blog.joda.org/2012/11/javadoc-coding-standards.html)

## Order of tags

Oracle says the order of the tags should be as follows:

```java
@author (classes and interfaces)
@version (classes and interfaces)
@param (methods and constructors)
@return (methods)
@throws (@exception is an older synonym)
@see
@since
@serial
@deprecated
```

## @param tags

@param tags only apply to methods and constructors, both of which take parameters.

After the @param tag, add the parameter name, and then a description of the parameter, in lowercase, with no period, like this:

```java
@param url the web address of the site
```

The parameter description is a phrase, not a full sentence.

The order of multiple @param tags should mirror their order in the method or constructor.

[Stephen Colebourne recommends](http://blog.joda.org/2012/11/javadoc-coding-standards.html) adding an extra space after the parameter name to increase readability (and I agree).

As far as including the data type in the parameter description, Oracle says:

> By convention, the first noun in the description is the data type of the parameter. (Articles like "a", "an", and "the" can precede the noun.) An exception is made for the primitive int, where the data type is usually omitted. -- [How to write doc comments using Javadoc](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#tag)

The example they give is as follows:

```java
@param ch the character to be tested
```

However, the data type is visible from the parameters in the method. So even if you don't include the data types, it will be easy for users to see what they are.

Note that you can have multiple spaces after the parameter name so that your parameter definitions all line up.

@param tags must be provided for every parameter in a method or constructor. Failure to do so will create an error and warning when you render Javadoc.

Note that usually classes don't have parameters. There is one exception: Generics. Generic classes are classes that work with different type of objects. The object is specified as a parameter in the class in diamond brackets: `<>`. Although the Javadoc guidance from Oracle doesn't mention them, you can add a @param tag for a generic class to note the parameters for the generic class. See this [StackOverflow post](http://stackoverflow.com/questions/2015972/is-there-a-javadoc-tag-for-documentating-generic-type-parameters) for details. Here's an example from that page:

```java
/**
* @param <T> This describes my type parameter
    */
    class MyClass<T>{

        }
```

## @return tag

Only methods return values, so only methods would receive a @return tag. If a method has `void` as a modifier, then it doesn't return anything. If it doesn't say `void`, then you must include a @return tag to avoid an error when you compile Javadoc.

## @throws tag

You add @throws tags to methods or classes only if the method or class throws a particular kind of error.

Here's an example:

```java
@throws IOException if your input format is invalid
```

Stephen Colebourne recommends starting the description of the throws tag with an "if" clause for readability.

> The @throws feature should normally be followed by "if" and the rest of the phrase describing the condition. For example, "@throws if the file could not be found". This aids readability in source code and when generated.

If you have multiple throws tag, arrange them alphabetically.

## Doc comments for constructors

It's a best practice to include a constructor in a class. However, if the constructor is omitted, Javadoc automatically creates a constructor in the Javadoc but omits any description of the constructor.

Constructors have @param tags but not @return tags. Everything else is similar to methods.

## Doc comments for fields

Fields have descriptions only. You would only add doc comments to a field if the field were something a user would use.

## Cases where you don't need to add doc comments

Oracle says there are 3 scenarios where the doc comments get inherited, so you don't need to type them:

> When a method in a class overrides a method in a superclass
>  When a method in an interface overrides a method in a superinterface
>  When a method in a class implements a method in an interface
>  -- [How to write Javadoc comments](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#tag)

## @see tags

The @see tag provides a see also reference. There are various ways to denote what you're linking to in order to create the link. If you're linking to a field, constructor, or method within the same field, use `#`.

If you're linking to another class, put that class name first followed by the `#` and the constructor, method, or field name.

If you're linking to a class in another package, put the package name first, then the class, and so on. See this sample from Oracle:

```java
@see #field
@see #Constructor(Type, Type...)
@see #Constructor(Type id, Type id...)
@see #method(Type, Type,...)
@see #method(Type id, Type, id...)
@see Class
@see Class#field
@see Class#Constructor(Type, Type...)
@see Class#Constructor(Type id, Type id)
@see Class#method(Type, Type,...)
@see Class#method(Type id, Type id,...)
@see package.Class
@see package.Class#field
@see package.Class#Constructor(Type, Type...)
@see package.Class#Constructor(Type id, Type id)
@see package.Class#method(Type, Type,...)
@see package.Class#method(Type id, Type, id)
```

-- [How to write Javadoc comments](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#tag)

## Links

You can create links to other classes and methods using the `{@link}` tag.

Here's an example from [Javadoc coding standards](http://blog.joda.org/2012/11/javadoc-coding-standards.html) on making links:

```java
/**
* First paragraph.
* <p>
* Link to a class named 'Foo': {@link Foo}.
* Link to a method 'bar' on a class named 'Foo': {@link Foo#bar}.
* Link to a method 'baz' on this class: {@link #baz}.
* Link specifying text of the hyperlink after a space: {@link Foo the Foo class}.
* Link to a method handling method overload {@link Foo#bar(String,int)}.
*/
public ...
```

To link to another method within the same class, use this format: `{@link #baz}`. To link to a method in another class, use this format: `{@link Foo#baz}`. However, don't over hyperlink. When referring to other classes, you can use `<code>` tags.

To change the linked text, put a word after `#baz` like this: `@see #baz Baz method`.

## Previewing Javadoc comments

In Eclipse, you can use the Javadoc tab at the bottom of the screen to preview the Javadoc information included for the class you're viewing.

<img src="images/javadocpane.png" alt="Javadoc pane" />

## More information

* [Oracle's explanation of Javadoc tags](http://www.oracle.com/technetwork/articles/java/index-137868.html)
* [Javadoc](http://docs.oracle.com/javase/7/docs/technotes/tools/windows/javadoc.html)
