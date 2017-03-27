---
title: "Design pattern: Structure and templates"
permalink: /pubapis_structure_and_templates.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.4
section: designpatterns
---

If you have a lot of endpoints, you can construct a template that forces specific values in the same template. This is important because you want to establish a consistency with each endpoint. You're basically filling in the blanks.

You could just remember to add the exact same sections on each page, but this requires more manual consistency.

<a href="https://flic.kr/p/oFD6MM"><img src="images/structure.png" alt="Structure, by Rafal Zych" /></a>

## Pushing values into more stylized outputs

You might want to insert various values (descriptions, methods, parameters, etc.) into a highly stylized output. Rather than work with all the style tags in your page directly, you can create values that exist as an object on a page. A custom script can loop through the objects and insert the values into your template.

## Templates in Jekyll

Different authoring tools have different ways of processing templates. In Jekyll, a static site generator, this is how you do it.

In the frontmatter of a page, you list out the key value pairs:

```
resource_name: surfreport
resource_description: Gets the surf conditions for a specific beach.
endpoint: /surfreport
```

And so on.

You then use a for loop to cycle through each of the items and insert them into your template:

{% raw %}
```liquid
{% for p in site.endpoints %}
<div class="resName">{{p.resource_name}}</div>
<div class="resDesc">{{p.resource_description}}</div>
<div class="endpointDef">{{p.endpoint}}</div>
```
{% endraw %}

## Templates make it easy to change display globally

This approach makes it easy to change your template without reformatting all of your pages. For example, if you decide to change the order of the elements on the page, or if you want to add new classes or something, you just alter the template. The values remain the same, since they can be processed in any order.

Note that this kind of structure is really only necessary if you have a lot of different endpoints. If you only have a handful, there's no need to really automate the template process.
