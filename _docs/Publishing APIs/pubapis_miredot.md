---
title: "Miredot"
permalink: /pubapis_miredot.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.0
section: publishingapis
---

One of the tools you can use to generate API documentation from source -- as long as your source is Java-based -- is Miredot.

Miredot is a plugin for Maven, which is a build tool that you integrate into your Java IDE. Miredot can generate an offline website that looks like this:

<a href="http://miredot.com/exampledocs/"><img src="images/miredotexample.png" alt="Miredot example" /></a>

You can read the [Getting started guide](http://miredot.com/docs/getting-started/) for Miredot for instructions on how to incorporate it into your Java project.

Miredot supports many annotations in the source code to generate the output. The most important annotations they support include those from Jax-rs and Jackson. See [Supported Frameworks](http://www.miredot.com/docs/supportedframeworks/) for a complete set of supported annotations.

## Example annotations

Here's an example of what these annotations look like. Look at the [CatalogService.java](https://github.com/Qmino/miredot-petstore/blob/master/src/main/java/com/qmino/miredot/petstore/service/CatalogService.java) file. In it, one of the methods is `updateCategory`.

You can see that above this method is a "doc block" that provides a description, the parameters, method, and other details:

```
    /**
     * Update category name and description. Cannot be used to edit products in this category.
     *
     * @param categoryId The id of the category that will be updated
     * @param category   The category details
     * @summary Update category name and description
     */
    @PUT
    @Path("/category/{id}")
    @Consumes({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public void updateCategory(@PathParam("id") Long categoryId, Category category);
```

Miredot consumes this information and generates an output.

## Activity: Explore Miredot's output

1. First browse the [Miredot sample code](https://github.com/Qmino/miredot-petstore/blob/master/src/main/java/com/qmino/miredot/petstore/service/CatalogService.java).
2. To see how this information gets rendered in the Miredot output, go to the [Petstore example docs](http://miredot.com/exampledocs/), expand **Catalog > Category** on the right, and then select **PUT**. Or go directly [here](http://www.miredot.com/exampledocs/#268738548).

<a href="http://www.miredot.com/exampledocs/#268738548"><img src="images/miredotupdatecategory.png" alt="Miredot update category" /></a>

If you browse the navigation of Miredot's output, it's an interesting-looking solution. This kind of documentation might fit a Java-based REST API well.

But the authoring of the docs would really only work for Java developers. It wouldn't work well for technical writers unless you're plugged into the source control workflow.
