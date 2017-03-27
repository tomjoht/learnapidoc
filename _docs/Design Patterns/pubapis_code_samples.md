---
title: "Abundant code samples"
permalink: /pubapis_code_samples.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.6
section: designpatterns
---

More than anything else, developers love code examples. Usually the more code you can add to your documentation, the better.

Here's an example from Evernote's API:

<a href="https://dev.evernote.com/doc/articles/note-sharing.php"><img src="images/evernotecodesamples.png" alt="Evernote code examples" /></a>

The writers at Parse [emphasize the importance of code samples](http://blog.parse.com/learn/engineering/designing-great-api-docs/):

>Liberally sprinkle real world examples throughout your documentation. No developer will ever complain that there are too many examples. They dramatically reduce the time for developers to understand your product. In fact, we even have example code right on our homepage.

## Syntax highlighting

For code samples, you want to incorporate syntax highlighting. There are numerous syntax highlighters that you can usually incorporate into your platform. For example, Jekyll uses either Pygments or Rouge. These highlighters have stylesheets prepared to highlight languages based on specific syntax.

When you include a code sample, you usually instruct the syntax highlighter what language to use. If you don't have access to a syntax highlighter for your platform, you can always [manually add the highlighting using syntax highlighter library](http://code.tutsplus.com/tutorials/quick-tip-how-to-add-syntax-highlighting-to-any-project--net-21099).

## Code formatting

Another important element in code samples is to use consistent white space. Although computers can read minified code, users usually can't or won't want to look at minified code. Use a tool to format the code with the appropriate spacing and line breaks.

Sometimes development shops have an official style guide for formatting code samples. This might prescribe details such as the following:

* spaces inside of parentheses
* line breaks
* inline code comment styles

For example, here's a [JavaScript style guide](http://google.github.io/styleguide/javascriptguide.xml).

If developers don't have an official style guide, ask them to recommend one online, and compare the code samples against the guidelines in it.
