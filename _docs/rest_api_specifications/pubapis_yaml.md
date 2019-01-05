---
title: Working in YAML
permalink: /pubapis_yaml.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.20
section: restapispecifications
path1: /restapispecifications.html
---

Before we dive into the steps of the [OpenAPI Tutorial](pubapis_openapi_tutorial_overview.html), it will help to have a better grounding in YAML, since this is the most common syntax for the OpenAPI specification document. (You can also use [JSON](docapis_analyze_json.html), but the prevailing trend with the OpenAPI document format is YAML.)

YAML stands for "YAML Ain't Markup Language." This means that the YAML syntax doesn't have markup tags such as `<` or `>`. Instead, it uses colons to denote an object's properties and hyphens to denote an array.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Working with YAML

YAML is easier to work with because it removes the brackets, curly braces, and commas that get in the way of reading content.

<figure><a href="http://yaml.org/" class="noExtIcon"><img src="images/yamlscreenshot.png" alt="YAML" /></a><figcaption>The YAML site itself is written using YAML, which you can immediately see is not intended for coding web pages.</figcaption></figure>

YAML is an attempt to create a more human-readable data exchange format. It's similar to JSON (which is actually a subset of YAML) but uses spaces, colons, and hyphens to indicate the structure.

Many computers ingest data in a YAML or JSON format. It's a syntax commonly used in configuration files and an increasing number of platforms (like Jekyll), so it's a good idea to become familiar with it.

{% include random_ad.html %}

## YAML is a superset of JSON

For the most part, YAML and JSON are different ways of structuring the same data. Dot notation accesses the values the same way. For example, the Swagger UI can read the `openapi.json` or `openapi.yaml` files equivalently. Pretty much any parser that reads JSON will also read YAML. However, some JSON parsers might not read YAML because there are a few features YAML has that JSON lacks (more on that [below](#yaml_specific_features).

## YAML syntax

With a YAML file, spacing is significant. Each two-space indent represents a new level:

```yaml
level1:
  level2:
    level3:
```

Each new level is an object. In this example, the `level1` object contains the `level2` object, which contains the `level3` object.

{: .note}
With YAML, you generally don't use tabs (since tab spacing is non-standard). Instead, you space twice.

Each level can contain either a single key-value pair (also referred to as a *dictionary* in YAML lingo) or a *sequence* (a list of hyphens):

```yaml
level3:
  -
    itema: "one"
    itemameta: "two"
  -
    itemb: "three"
    itembmeta: "four"
```

The values for each key can optionally be enclosed in quotation marks. If your value has a colon or quotation mark in it, enclose it in quotation marks.

{% include random_ad2.html %}

## Comparing JSON to YAML

Earlier in the course, we looked at various [JSON structures involving objects and arrays](docapis_analyze_json.html). So let's look at the equivalent YAML syntax for each of these same JSON objects.

{: .tip}
You can use [Unserialize.me](http://www.unserialize.me/) to make the conversion from JSON to YAML or YAML to JSON.

Here are some key-value pairs in JSON:

```json
{
"key1":"value1",
"key2":"value2"
}
```

Here's the same structure expressed in YAML syntax:

```yaml
key1: value1
key2: value2
```

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
      "age":43
   },
   {  
      "name":"Shannon",
      "age":41
   }
]
```

Here's the same array containing objects converted to YAML:

```yaml
-
  name: Tom
  age: 42
-
  name: Shannon
  age: 41
```

Hopefully, by seeing the syntax side by side, it will begin to make more sense. Is the YAML syntax more readable? It might be difficult to see in these simple examples, but generally it is.

JavaScript uses the same dot notation techniques to access the values in YAML as it does in JSON. (They're pretty much interchangeable formats.) The benefit to using YAML, however, is that it's more readable than JSON.

However, YAML might be more tricky because it depends on getting the spacing just right. Sometimes that spacing is hard to see (especially with a complex structure), and that's where JSON (while maybe more cumbersome) is perhaps easier to troubleshoot.

## Some features of YAML not present in JSON {#yaml_specific_features}

YAML has some features that JSON lacks. You can add comments in YAML files using the `#` sign. YAML also allows you to use something called "anchors." For example, suppose you have two definitions that are similar. You could write the definition once and use a pointer to refer to both:

```yaml
api: &apidef Application programming interface
application_programming_interface: *apidef
```

If you access the value, the same definition will be used for both. The `*apidef` acts as an anchor or pointer to the definition established at `&apidef`.

You won't use these unique YAML features in the OpenAPI tutorial, but they're worth noting because JSON and YAML aren't entirely equivalent. For details on other differences between JSON and YAML, see [Learn YAML in Minutes](http://learnxinyminutes.com/docs/yaml/). To learn more about YAML, see this [YAML tutorial](http://rhnh.net/2011/01/31/yaml-tutorial).

YAML is also used with [Jekyll](pubapis_jekyll.html). See my [YAML tutorial in the context of Jekyll](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_yaml_tutorial) for more details.
