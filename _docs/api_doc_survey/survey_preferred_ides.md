---
title: What IDE do you use?
permalink: /survey_preferred_ides.html
course: "Documenting REST APIs"
weight: 12.6
sidebar: docapis
section: survey
path1: /survey.html
---

{: .survey}
[Survey question](survey_introduction): What IDE do you use?

From 39 responses, here are the results:

![whatide2](/images/whatide2.png)

The "Other" category included NetBeans, Android Studio, Java Studio, WebStorm, Visual C++, RStudio, PyDev, and PyCharm. Usually one or two participants indicated that they used these.

## Analysis and interpretation

This turned out to be a great question, and it gives more context to some of the other questions, such as whether tech writers create doc by looking at the source code (60% said yes or sometimes), and what type of APIs tech writers document (78% REST, 41% Java and C++, 28% .NET).

## What is an IDE?

IDE stands for integrated development environment. Programmers use IDEs when they write code. Just as a DITA author might use OxygenXML not only to write doc code, but also to validate it, catch errors, and compile the source into a webhelp output, developers use IDEs to do the same.

An IDE will flag an error before you compile and suggest ways to fix it. You can log messages to a console. You can compile your code into an output (such as a JAR file for Java). You can use debugging tools, export documentation (such as to Javadoc formats), see syntax highlighting, use shortcuts to add code, and more.

## Text editors

A lot of people listed text editors such as Notepad++, Sublime Text, and Oxygen as the IDEs they use. I'm not sure why they put these text editors here, because most developers wouldn't consider a text editor to be an IDE (except maybe for JavaScript). If someone only listed a text editor, I counted this as "None."

An earlier survey question asked what type of APIs writers are documenting. Only about 40% are documenting Java, C++, or .NET APIs. This means the majority are documenting REST APIs, and as such, it makes more sense to use a text editor. However, if you're investigating Java source code through a text editor, to me this suggests that the foray into the code is superficial. If you're really playing around with programming code, you usually do so in an IDE so you can see it compile.

A lot of API doc writers play around with endpoints and various parameters, and use REST clients and browser plugins to test the calls, but this isn't really playing around in the source code. I don't consider an endpoint to be source code; instead the endpoint is controlled by source code that lives elsewhere.

The use of Visual Studio is a sign that writers are working with C#.

## Why ask this question?

I asked this question because I was curious to know what IDE was most common. There's a lot of variety from one IDE to the next, and learning one is akin to choosing your favorite editor. Although many editors offer similar functionality, once you learn where all the buttons, menus, and other options are, it becomes comfortable to you.

I use Eclipse and like it quite a bit. Eclipse is extremely extensible, meaning it can accommodate a variety of languages and interfaces. You can use it for Java, C++, J2EE, and more depending on the perspective you download. It's free, open source, and has a lot of plugins available. Best of all, when I try to write code, it gives me helpful hints about ways to fix my code.

Eclipse has about 2/3 of the market share for Java IDEs:

> Today it is the leading development environment for Java with a market share of approximately 65%.  
> --[Vogella](http://www.vogella.com/tutorials/Eclipse/article.html)

## Takeaways

What are the takeaways here? If you're documenting a REST API, you're probably fine just using a text editor like Notepad++ or Sublime Text to look at code. But if you're documenting a platform API, you definitely want to use Eclipse for Java or C++, and Visual Studio for .NET.
