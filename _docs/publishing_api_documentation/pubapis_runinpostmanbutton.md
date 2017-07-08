---
title: Run in Postman Button
permalink: /pubapis_runinpostmanbutton.html
sidebar: docapis
weight: 7.11
section: publishingapis 
path1: /publishingapis.html
---

## Run in Postman button

The [Run in Postman button](https://www.getpostman.com/integrations/run-button) provides a **Run in Postman** button that, when clicked, imports your API info into Postman (either the Chrome app or Mac app) so users can run calls using the Postman client.

## Instructions

First, [import your Swagger spec into Postman](https://www.getpostman.com/docs/postman/collections/data_formats#importing-postman-data) or enter your API information manually. Then see [Create the Run in Postman button](https://www.getpostman.com/docs/postman_for_publishers/run_button/creating_run_button).

## Demo

See the many [demos here](https://www.getpostman.com/integrations/run-button).

Here's a demo using the sample Mashape weather API:

<div class="postman-run-button"
data-postman-action="collection/import"
data-postman-var-1="d1b7adeb50d95d9851e7"></div>
<script type="text/javascript">
  (function (p,o,s,t,m,a,n) {
    !p[s] && (p[s] = function () { (p[t] || (p[t] = [])).push(arguments); });
    !o.getElementById(s+t) && o.getElementsByTagName("head")[0].appendChild((
      (n = o.createElement("script")),
      (n.id = s+t), (n.async = 1), (n.src = m), n
    ));
  }(window, document, "\_pm", "PostmanRunObject", "https://run.pstmn.io/button.js"));
</script>

## Pros and Cons

Postman provides a powerful REST API client that many developers are familiar with. It allows users to customize the API key and parameters and save those values. Although you don't have the in-browser experience to try out calls, in many ways the Postman client is more useful. This is what developers often use to save and store API calls as they test and explore the functionality.

Especially if your users are already familiar with Postman, Run in Postman is a good option to provide (especially as one option of many for users to try out your API), as it allows users to easily integrate your API into a client they can use. It gives them a jumping off point where they can build on your information to create more detailed and customized calls.

If you don't already have a "Try it out" feature in your docs, the Run in Postman button gives you this interactivity in an easy way, without requiring you to sacrifice the single source of truth for your docs.

The downside is that your parameter and endpoint descriptions don't get pulled into Postman. Additionally, if users are unfamiliar with Postman, they may struggle a bit to understand how to use it. In contrast, the "Try it out" editors that run directly in the browser tend to be more straightforward and do a better job integrating documentation (including sample responses and the model they follow).
