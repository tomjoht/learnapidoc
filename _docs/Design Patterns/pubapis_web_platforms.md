---
title: "Website platform"
permalink: /pubapis_web_platforms.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 6.5
section: designpatterns
---

Many API doc sites provide one integrated website to find all of the information. You usually aren't opening help in a new window, separate from the other content. The website is branded with the same look and feel as the product. Here's an example from Yelp:

<a href="https://www.yelp.com/developers/documentation"><img src="images/yelpapi.png" alt="Yelp API documentation" /></a>

## Documentation as product interface

I hinted at this earlier, but with API documentation, there isn't an application interface that the documentation complements. In most cases, the API documentation itself is the product that users navigate to use your product. As such, users will expect more from it.

## Integrating information across the entire site

One of the challenges in using documentation generated from Swagger, Miredot, or some other document generator is figuring out how to integrate it with the rest of the site. Ideally, you want users to have a seamless experience across the entire website. If your endpoints are rendered into their own separate view, how do you integrate the endpoint reference into the rest of the documentation?

If you can integrate the branding and search, users may not care. But if it feels like users are navigating several sites poorly cobbled together, the UX experience will be somewhat fragmented.

Think about other content that users will interact with, such as Marketing content, terms of service, support, and so on. How do you pull together all of this information into a single site experience without resorting to an overbloated CMS like Drupal or some other web framework?
