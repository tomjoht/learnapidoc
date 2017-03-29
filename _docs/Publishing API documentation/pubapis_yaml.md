---
title: More about YAML
permalink: /pubapis_yaml.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 5.5
section: publishingapis
---

When you created the Swagger file, you used a syntax called YML. YML stands for "YAML Ain't Markup Language." This means that the YAML syntax doesn't have markup tags such as `<` or `>`.

<figure><a href="http://yaml.org/"><img src="images/yamlscreenshot.png" alt="YAML" /></a><figcaption>The YAML site itself is written using YAML, which you can immediately see is not intended for coding web pages.</figcaption></figure>

YML is easier to work with because it generally removes the brackets, curly braces, and commas that get in the way of reading content.

YML is an attempt to create a more human readable data exchange format. It's similar to JSON (JSON is actually a subset of YAML) but uses spaces to indicate the structure.

Many computers ingest data in a YML or JSON format. It's a syntax commonly used in configuration files and an increasing number of platforms (like Jekyll), so it's a good idea to become familiar with it.

## YAML is a superset of JSON

YAML and JSON are practically different ways of structuring the same data. Dot notation accesses the values the same way. For example, the Swagger UI can read the swagger.json or swagger.yaml files equivalently. Pretty much any parser that reads JSON will also read YAML. However, some YAML parsers might not read JSON, because there are a few features YAML has that JSON lacks (more on that later).

## YAML syntax

With a YML file, spacing is significant. Each two-space indent represents a new level:

```yaml
level1:
  level2:
    level3:
```

{: .note}
With YAML, you don't use tabs (since they're non-standard). Instead, you space twice.

Each level can contain either a single key-value pair (also referred to as a dictionary) or a sequence (a list of hyphens):

```yaml
---
  level3:
    -
      itema: "one"
      itemameta: "two"
    -
      itemb: "three"
      itembmeta: "four"
```

YAML files begin with `---`. The values for each key can optionally be enclosed in quotation marks or not. If your value has something like a colon or quotation mark in it, then you'll want to enclose it in quotation marks. And if there's a double quotation mark, then enclose the value in single quotation marks, or vice versa.

## Comparing JSON to YAML

Earlier in the course, we looked at various JSON structures involving objects and arrays. Here let's look at the equivalent YAML syntax for each of these same JSON objects.

{: .tip}
You can use [Unserialize.me](http://www.unserialize.me/) to make the conversion from JSON to YAML or YAML to JSON.

Here are some key-value pairs in JSON:

```json
{
"key1":"value1",
"key2":"value2"
}
```

Here's the same thing in YAML syntax:

```yaml
key1: value1
key2: value2
```

These key-value pairs are also called dictionaries.

Here's an array (list of items) in JSON:

```json
["first", "second", "third"]
```

In YAML, the array is formatted as a list with hyphens:

```yaml
- first
- second
- third
```

Here's an object containing an array in JSON:

```json
{
"children": ["Avery","Callie","lucy","Molly"],
"hobbies": ["swimming","biking","drawing","horseplaying"]
}
```

Here's the same object with an array in YAML:

```yaml
children:
  - Avery
  - Callie
  - lucy
  - Molly
hobbies:
  - swimming
  - biking
  - drawing
  - horseplaying
```

Here's an array containing objects in JSON:

```json
[  
   {  
      "name":"Tom",
      "age":39
   },
   {  
      "name":"Shannon",
      "age":37
   }
]
```

Here's the same array containing objects converted to YAML:

```yaml
-
    name: Tom
    age: 39
-
    name: Shannon
    age: 37
```

Hopefully by seeing the syntax side by side, it will begin to make more sense. Is the YAML syntax more readable? It might be difficult to see in these simple examples.

JavaScript uses the same dot notation techniques to access the values in YAML as it does in JSON. (They're pretty much interchangeable formats.) The benefit to using YAML, however, is that it's more readable than JSON.

However, YAML is more tricky sometimes because it depends on getting the spacing just right. Sometimes that spacing is hard to see (especially with a complex structure), and that's where JSON (while maybe more cumbersome) maybe easier to troubleshoot.

## Some features of YAML not present in JSON

YAML has some features that JSON lacks.

You can add comments in YAML files using the `#` sign.

YAML also allows you to use something called "anchors." For example, suppose you have two definitions that are similar. You could write the definition once and use a pointer to refer to both:

```yaml
api: &apidef Application programming interface
application_programming_interface: *apidef
```

If you access the value (e.g., `yamlfile.api` or `yamlfile.application_programming_interface`), the same definition will be used for both. The `*apidef` acts as an anchor or pointer to the definition established at `&apidef`.

For details on other differences, see [Learn YAML in Minutes](http://learnxinyminutes.com/docs/yaml/).
To learn more about YML, see this [YML tutorial](http://rhnh.net/2011/01/31/yaml-tutorial).
