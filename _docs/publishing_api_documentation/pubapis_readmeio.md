---
title: "Readme.io"
permalink: /pubapis_readmeio.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.9
section: publishingapis
path1: /publishingapis.html
---

You can publish documentation on hosted platforms specifically built for API and developer documentation. One of these more promising platforms is [readme.io](http://readme.io).

{% if site.target == "web" %}
* TOC
{:toc}
{% endif %}

## No need to spend time developing your own site

If you consider how much time it requires to build, maintain, troubleshoot, etc., your own website, then it really does make sense to consider an existing third-party platform where someone has already built all of this out for you.

In this tutorial we'll explore how to publish content on readme.io in more depth.

<a href="http://readme.io"><img src="images/readmeio.png" alt="Readme.io" /></a>

In this workshop activity, you'll publish this [weatherdata endpoint documentation](https://www.mashape.com/fyhao/weather-13#weatherdata) on readme.io.

### a. Set up a readme.io project

1. Go to [readme.io](http://readme.io).
1. Click the **Sign Up** button in the upper-right corner and sign up for an account.
2. If necessary, click **+Add Project**. Then add a Project Name (e.g., Weather API), Subdomain (e.g., weather-api), and Project Logo. Then click **Create**.

	<img src="images/projectsettingsreadmeio.png" alt="Project Settings" />

### b. Configure API settings

In the left sidebar, click **Reference Docs**, and then click **API**. You can either import a Swagger file or input the API information manually. Readme.io provides a number of wizard-like screens to move you through the documentation process, prompting you with forms to complete.

<img src="images/readmeio_manual_api.png"

Although you can add your API information manually, you can also import a  [Swagger](http://idratherbewriting.com/learnapidoc/pubapis_swagger_intro.html) file. You can experiment by choosing one from the [Swagger examples](https://github.com/OAI/OpenAPI-Specification/tree/master/examples/v2.0/yaml), such as [this one](https://raw.githubusercontent.com/OAI/OpenAPI-Specification/master/examples/v2.0/json/petstore-expanded.json).

I won't provide detailed steps for configuring documentation in Readme.io. Their UI is constantly improving/changing, and you should see their documentation for full details. Just recognize that Readme.io provides a robust GUI for creating API documentation, in a way that is more extensive and well-designed than virtually any other platform available.

The output provides an interactive, try-it-out experience with endpoints:

<img src="images/readmeiotryitout.png" alt="Try it on readme.io" />

The experience is similar to Swagger in that the response appears directly in the documentation. This API Explorer gives you a sense of the data returned by the API.

## Limitations with Readme.io

Readme.io is a pretty sweet platform, and you don't have to worry about describing your API based on a specification based on either RAML or Swagger. But this also has downsides. It means that your doc is tied to the Readme.io platform. Additionally, you can't auto-generate the output from annotations in your source code.

Additionally, if the cloud location for your docs isn't an option, that may also pose challenges. Finally, there isn't any content re-use functionality, so if you have multiple outputs for your documentation that you're single sourcing, Readme.io may not be for you.

Even so, the output is sharp and the talent behind this site is top-notch. The platform is constantly growing with new features, so maybe all of this functionality will eventually be there.

{% include random_ad.html %}
