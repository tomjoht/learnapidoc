---
title: Documenting code samples and tutorials
permalink: /docapis_codesamples_bestpractices.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 5.6
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

As you write documentation for developers, you'll start to include more and more code samples. You might not include these more detailed code samples with the endpoints you document, but as you create tasks and more sophisticated workflows about how to use the API to accomplish a variety of tasks, you'll end up leveraging different endpoints and showing how to address a variety of scenarios.

The following sections list some best practices around code samples.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Code samples are like candy for developers

Code samples play an important role in helping developers use an API. No matter how much you try to explain and narrate *how*, it's only when you *show* something in action that developers truly get it.

Recognize that, as a technical writer rather than a developer, you aren't your audience. Developers aren't newbies when it comes to code. But different developers have different specializations. Someone who is a database programmer will have a different skill set from a Java developer who will have a different skillset from a JavaScript developer, and so on.

{% include random_ad.html %}

Developers often make the mistake of assuming that their developer audience has a skill set similar to their own, without recognizing different developer specializations. Developers will often say, "If the user doesn't understand this code, he or she shouldn't be using our API."

It might be important to remind developers that users often have technical talent in different areas. For example, a user might be an expert in Java but only mildly familiar with JavaScript.

## Focus on the why, not the what

In any code sample, you should focus your explanation on the *why*, not the *what*. Explain why you're doing what you're doing, not the detailed play-by-play of what's going on.

Here's an example of the difference:

* **what**: In this code, several arguments are passed to jQuery's `ajax` method. The response is assigned to the data argument of the callback function, which in this case is `success`.
* **why**: Use the `ajax` method from jQuery because it allows cross-origin resource sharing (CORS) for the weather resources. In the request, you submit the authorization through the header rather than including the API key directly in the endpoint path.

## Explain your company's code, not general coding

Developers unfamiliar with common code not related to your company (for example, the `.ajax()` method from jQuery) should consult outside sources for tutorials about that code. You shouldn't write your own version of another service's documentation. Instead, focus on the parts of the code unique to your company. Let the developer rely on other sources for the rest (feel free to link to other sites).

## Keep code samples simple

Code samples should be stripped down and as simple as possible. Providing code for an entire HTML page is probably unnecessary. But including it doesn't hurt anyone, and for newbies it can help them see the big picture.

Avoid including a lot of styling or other details in the code that will potentially distract the audience from the main point. The more minimalist the code sample, the better.

When developers take the code and integrate it into a production environment, they will make a lot of changes to account for scaling, threading, and efficiency, and other production-level factors.

## Add both code comments and before-and-after explanations

Your documentation regarding the code should mix code comments with some explanation either after or before the code sample. Brief code comments are set off with forward slashes `//` in the code; longer comments are set off between slashes with asterisks, like this: `/* .... */`.

Comments within the code are usually short one-line notes that appear after every 5-10 lines of code. You can follow up this code with more robust explanations later.

This approach of adding brief comments within the code, followed by more robust explanations after the code, aligns with principles of progressive information disclosure that help align with both advanced and novice user types.

## Make code samples copy-and-paste friendly

Many times developers will copy and paste code directly from the documentation into their application. Then they will usually tweak it a little bit for their specific parameters or methods.

Make sure that the code works. When I first used used some sample `ajax` code, the `dataType` parameter was actually spelled `datatype`. As a result, the code didn't work (it returned the response as text, not JSON). It took me about 30 minutes of troubleshooting before I consulted the [`ajax` method](http://api.jquery.com/jquery.ajax/) and realized that it should be `dataType` with a capital `T`.

Ideally, test out all the code samples yourself. This allows you to spot errors, understand whether all the parameters are complete and valid, and more. Usually you just need a sample like this to get started, and then you can use the same pattern to plug in different endpoints and parameters. You don't need to come up with new code like this every time.

## Provide a sample in your target language

With REST APIs, developers can use pretty much any programming language to make the request. Should you show code samples that span across various languages?

Providing code samples is almost always a good thing, so if you have the bandwidth, follow the examples from Evernote and Twilio. However, providing just one code example in your audience's target language is probably enough, if needed at all. You could also skip the code samples altogether, since the approach for submitting an endpoint follows a general pattern across languages.

Remember that each code sample you provide needs to be tested and maintained. When you make updates to your API, you'll need to update each of the code samples across all the different languages.

## Code samples are maintenance heavy with new releases

Getting into code samples leads us more toward user guide tasks than reference tasks. However, keep in mind that code samples are a bear to maintain. When your API pushes out a new release, will you check all the code samples to make sure the code doesn't break with the new API (this is called regression testing by QA).

What happens if new features require you to change your code examples? The more code examples you have, the more maintenance they require.

{% comment %}
## Implement the JavaScript code snippet

You usually don't need to show the code sample on a working HTML file, but if you want to show users code they can make work in their own browsers, you can do so.

1.  Create a new HTML file with the basic HTML elements:

    ```html
    <!DOCTYPE html>
    <head>
    <title>My sample page</title>
    </head>
    <body>

    </body>
    </html>
    ```

2.  Insert the JavaScript code you copied inside some `script` tags inside the `head`:

    ```html
    <!DOCTYPE html>
    <head>
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script>
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
      "method": "GET",
      "headers": {
        "accept": "application/json",
        "x-mashape-key": "APIKEY"
      }
    }

    $.ajax(settings).done(function (response) {
      console.log(response);
    });
    </script>
    </head>
    <body>

    </body>
    </html>
    ```

3.  The Mashape Weather API requires the `dataType` parameter, which Postman doesn't automatically include. Add `"dataType": "json",` in the list of `settings`:

    ```html
    <!DOCTYPE html>
    <head>
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script>
    var settings = {
      "async": true,
      "crossDomain": true,
      "dataType": "json",
      "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
      "method": "GET",
      "headers": {
        "accept": "application/json",
        "x-mashape-key": "APIKEY"
      }
    }

    $.ajax(settings).done(function (response) {
      console.log(response);
    });
    </script>
    </head>
    <body>
    hello
    </body>
    </html>
    ```

4. This code uses the `ajax` method from jQuery. The parameters are defined in a variable called `settings` and then passed into the method. The `ajax` method will make the request and assign the response to the `done` method's argument (`response`). The `response` object will be logged to the console.
5. Open the file up in your Chrome browser.
6. Open the JavaScript Developer Console by going to **View > Developer > JavaScript Console**. Refresh the page.

You should see the object logged to the console.

<img src="images/consoleexamplefrompostman.png" alt="Object logged to the console" />

{% include random_ad.html %}

Let's say you wanted to pull out the `sunrise` time and append it to a tag on the page. You could do so like this:

```html
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "dataType": "json",
  "url": "https://simple-weather.p.mashape.com/weatherdata?lat=37.354108&lng=-121.955236",
  "method": "GET",
  "headers": {
    "accept": "application/json",
    "x-mashape-key": "APIKEY"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
  $("#sunrise").append(response.query.results.channel.astronomy.sunrise);
});
</script>
</head>
<body>
<h2>Sunrise time</h2>
<div id="sunrise"></div>
</body>
</html>
```

This code uses the `append` method from jQuery to assign a value from the response object to the `sunrise` ID tag on the page.

## General code samples

Although you could provide general code samples for every language with every call, it's usually not done. Instead, there's often a page that shows how to work with the code in various languages. For example, with the Wunderground Weather API, they have a page that shows general code samples:

<a href="http://www.wunderground.com/weather/api/d/docs?d=resources/code-samples&MR=1"><img src="images/wundergroundcodesamples.png" alt="Wunderground code samples" /></a>

Although the Mashape Weather API doesn't provide a code sample in the Weather API page, Mashape as a platform provides a general code sample on their [Consume an API in JS](http://docs.mashape.com/javascript) page. The writers explain that you can consume the API with code on an HTML web page like this:

<img src="images/mashapejsconsumption.png" alt="Consuming a REST API through JavaScript" />

You already worked with this code earlier, so it shouldn't be new. It's mostly same code as the JavaScript snippet we just used, but here there's an error function defined, and the header is set a bit differently.


## Create a code sample for the surfreport endpoint

As a technical writer, add a code sample to the `surfreport/{beachId}` endpoint that you're documenting. Use the same code as above, and add a short description about why the code is doing what it's doing.

Here's my approach:

### Code example

The following code samples shows how to use the surfreport endpoint to get the surf height for a specific beach.

```html
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "dataType": "json",
  "url": "https://simple-weather.p.mashape.com/surfreport/25&days=1",
  "method": "GET",
  "headers": {
    "accept": "application/json",
    "x-mashape-key": "APIKEY"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
  $("#surfheight").append(response.query.results.channel.surfheight);
});
</script>
</head>
<body>
<h2>Surf Height</h2>
<div id="surfheight"></div>
</body>
</html>
```

In this example, the `ajax` method from jQuery is used because it allows us to load a remote resource asynchronously.

In the request, you submit the authorization through the header rather than directly in the endpoint path. The endpoint limits the days returned to 1 in order to increase the download speed.

For demonstration purposes, the response is assigned to the `response` argument of the `done` method, and then written out to the `surfheight` tag on the page.

We're just getting the surf height, but there's a lot of other data you could choose to display.

You might not include a detailed code sample like this for just one endpoint, but including some kind of code sample is almost always helpful.

<h2 id="code-example">Code example</h2>

<p>The following code samples shows how to use the surfreport endpoint to get the surf height for a specific beach. </p>

{% comment %}  
<pre class="html">
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "dataType": "json",
  "url": "https://simple-weather.p.mashape.com/surfreport/25?days=1&units=metric",
  "method": "GET",
  "headers": {
    "accept": "application/json",
    "x-mashape-key": "APIKEY"
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
  $("#surfheight").append(response.query.results.channel.surf.height);
});
</script>
</head>
<body>
<h2>Surf Height</h2>
<div id="surfheight"></div>
</body>
</html>
</pre>
{% endcomment %}

<pre>
&lt;!DOCTYPE html&gt;
&lt;head&gt;
&lt;script src=&quot;http://code.jquery.com/jquery-2.1.1.min.js&quot;&gt;&lt;/script&gt;
&lt;script&gt;
var settings = {
  &quot;async&quot;: true,
  &quot;crossDomain&quot;: true,
  &quot;dataType&quot;: &quot;json&quot;,
  &quot;url&quot;: &quot;https://simple-weather.p.mashape.com/surfreport/25?days=1&amp;units=metric&quot;,
  &quot;method&quot;: &quot;GET&quot;,
  &quot;headers&quot;: {
    &quot;accept&quot;: &quot;application/json&quot;,
    &quot;x-mashape-key&quot;: &quot;APIKEY&quot;
  }
}

$.ajax(settings).done(function (response) {
  console.log(response);
  $(&quot;#surfheight&quot;).append(response.query.results.channel.surf.height);
});
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h2&gt;Surf Height&lt;/h2&gt;
&lt;div id=&quot;surfheight&quot;&gt;&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>

<p>In this example, the <code>ajax</code> method from jQuery is used because it allows us to load a remote resource asynchronously.</p>
<p>In the request, you submit the authorization through the header rather than directly in the endpoint path. The endpoint limits the days returned to 1 in order to increase the download speed.</p>

<p>For demonstration purposes, the response is assigned to the <code>response</code> argument of the <code>done</code> method, and then written out to the <code>surfheight</code> tag on the page.</p>

<p>We're just getting the surf height, but there's a lot of other data you could choose to display.</p>
{% endcomment %}
