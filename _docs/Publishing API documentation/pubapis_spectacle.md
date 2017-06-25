---
title: Spectacle
permalink: /pubapis_spectable.html
sidebar: docapis
weight: 7.12
section: publishingapis
---

[Spectacle](https://github.com/sourcey/spectacle) is a Github project that builds an output from a Swagger file. The display provides a three-pane output similar to the Stripe or Slate docs. After you download the project files, you can build the display using Node simply by referencing your Swagger file.

## Demos

Here's a [demo output](https://cheesestore.github.io/). You can also see an [output that uses the Mashape weather API file](../files/spectacle/fulloutput/index.html).

## Pros and Cons

With almost no needed setup or configuration, you can have a world-class output and site for your API docs. As long as the Swagger spec that you integrate is fully detailed, the generated Spectacle site will be attractive and full-featured.

You can also build the Spectacle site without the frame so you can embed it into another site. However, in playing with this embed option, I found that I would have to create my own styles. If using the default styles in the full-site output, they most likely will overwrite or interfere with your host site's appearance.

I'm also not sure if you can add your own doc pages to the Spectacle site.
