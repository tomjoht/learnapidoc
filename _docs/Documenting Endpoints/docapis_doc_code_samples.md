---
title: Documenting code samples
permalink: /docapis_doc_code_samples.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 3.0
sidebar: docapis
section: docendpoints
---

One aspect of REST APIs that facilitates widespread adoption is that they aren't tied to a specific programming language. Developers can code their applications in any language, from Java to Ruby to JavaScript, Python, C#, Ruby, Node JS, or something else. As long as they can make an HTTP web request in that language, they can use the API. The response from the web request will contain the data in either JSON or XML.

## Deciding which languages to show code samples in

Because you can't entirely know which language your end users will be developing in, it's kind of fruitless to try to provide code samples in every language. Many APIs just show the format for submitting requests and a sample response, and the authors will assume that developers will know how to submit HTTP requests in their particular programming language.

However, some APIs do show simple code snippets in a variety of languages. Here's an example from Evernote's API documentation:

<a href="https://dev.evernote.com/doc/articles/note-sharing.php"><img src="images/codesamplesevernote.png" alt="Evernote API code samples" /></a>

And another from Twilio:

<a href="https://www.twilio.com/docs/api/rest/making-calls"><img src="images/twiliocodeexamples.png" alt="Twilio code samples" /></a>

However, don't feel so intimidated by this smorgasbord of code samples. Some API doc tools might actually automatically generate these code samples because the patterns for making REST requests in different programming languages follow a common template. This is why many APIs decide to provide one code sample (usually in cURL) and let the developer extrapolate the format in his or her own programming language.

## Auto-generating code samples

You can auto-generate code samples from both Postman and Paw, if needed.

Paw has more than a dozen code generator extensions:

<a href="https://luckymarmot.com/paw/extensions/"><img src="images/pawcodegenerators.png" alt="Paw code generator" /></a>

Once you install them, generating a code sample is a one-click operation:

<img src="images/pawcodegen.png" alt="Paw code generators" />

The Postman app has most of these code generators built in by default.

{: .note}
Although these code generators are probably helpful, they may or may not work for your API. Always review code samples with developers. In most cases, developers supply the code samples for the documentation, and technical writers briefly comment on the code samples.

## Generate a JavaScript code sample from Postman

{: .note}
We covered some of this material earlier in more depth, so here I just cover it more briefly.

To generate a JavaScript code snippet from Postman:

1.  Configure a weatherdata request in Postman (or select one you've saved).
2.  Below the Send button, click the **Generate Code Snippets** button.
3.  In the dialog box that appears, browse the available code samples using the drop-down menu. Note how your request data is implemented into each of the different code sample templates.
4.  Select the **JavaScript > jQuery AJAX** code sample:

    <img src="images/postman_code_snippets.png" alt="Postman code snippet" />

5.  Copy the content by clicking the **Copy** button.

This is the JavaScript code that you can attach to an event on your page.

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

## SDKs provide tooling for APIs

A lot of times, developers will create an SDK (software development kit) that accompanies a REST API. The SDK helps developers implement the API using specific tooling.

For example, when I worked at Badgeville, we had both a REST API and a JavaScript SDK. Because JavaScript was the target language developers were working in, Badgeville developed a JavaScript SDK to make it easier to work with REST using JavaScript. You could submit REST calls through the JavaScript SDK, passing a number of parameters relevant to web designers.

An SDK is any kind of tooling that makes it easier to work with your API. SDKs are usually specific to a particular language platform. Sometimes they are GUI tools. If you have an SDK, you'll want to make more detailed code samples showing how to use the SDK.

## General code samples

Although you could provide general code samples for every language with every call, it's usually not done. Instead, there's often a page that shows how to work with the code in various languages. For example, with the Wunderground Weather API, they have a page that shows general code samples:

<a href="http://www.wunderground.com/weather/api/d/docs?d=resources/code-samples&MR=1"><img src="images/wundergroundcodesamples.png" alt="Wunderground code samples" /></a>

Although the Mashape Weather API doesn't provide a code sample in the Weather API page, Mashape as a platform provides a general code sample on their [Consume an API in JS](http://docs.mashape.com/javascript) page. The writers explain that you can consume the API with code on an HTML web page like this:

<img src="images/mashapejsconsumption.png" alt="Consuming a REST API through JavaScript" />

You already worked with this code earlier, so it shouldn't be new. It's mostly same code as the JavaScript snippet we just used, but here there's an error function defined, and the header is set a bit differently.

## Create a code sample for the surfreport endpoint

As a technical writer, add a code sample to the `surfreport/{beachId}` endpoint that you're documenting. Use the same code as above, and add a short description about why the code is doing what it's doing.

Here's my approach:

###Code example###

The following code samples shows how to use the surfreport endpoint to get the surf conditions for a specific beach. In this case, the code shows the overall recommendation about whether to go surfing.

```
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "dataType": "json",
  "url": "https://simple-weather.p.mashape.com/surfreport/25",
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
```

In this example, the `ajax` method from jQuery is used because it allows us to load a remote resource asynchronously.

In the request, you submit the authorization through the header rather than directly in the endpoint path. The endpoint limits the days returned to 1 in order to increase the download speed.

For demonstration purposes, the response is assigned to the `response` argument of the `done` method, and then written out to the `surfheight` tag on the page.

We're just getting the surf height, but there's a lot of other data you could choose to display.

You might not include a detailed code sample like this for just one endpoint, but including some kind of code sample is almost always helpful.
