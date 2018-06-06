---
title: Code samples and tutorials
permalink: /docapis_codesamples_bestpractices.html
keywords:
course: "Documenting REST APIs"
weight: 5.6
sidebar: docapis
section: docnonref
path1: /docnonref.html
---

Developer documentation tends to include a lot of code samples. You might not include these more detailed code samples with the endpoints you document, but as you create tasks and more sophisticated workflows about how to use the API to accomplish a variety of goals, you'll end up leveraging different endpoints and showing how to address different scenarios. The following sections list some best practices around code samples.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Code samples are like candy for developers

Code samples play an important role in helping developers use an API. Literally, code is another language, and when users who speak that language see it, the code communicates with them in powerful ways that descriptive text can't achieve.

{% include course_image.html size="medium" border="true" filename="nonref_codetutorials" ext_print="png" ext_web="svg" alt="Code tutorials" caption="Code is in another language, so as much as you might try to describe the communication in this other language through text, it often falls short. When developer see code, they can often read the code and understand it natively." %}

In user testing that Twilio did with their documentation, they found that pages that started more quickly with code samples performed better with users.

{% include course_image.html size="large" url="https://eventil.com/presentations/pOszD6" filename="twiliouserresearch" ext_print="png" ext_web="png" alt="Code samples with Twilio research" caption="Twilio found that pages that had fewer sentences before code samples engaged users more." %}

Pages with less than 4 sentences before code samples performed twice as well as pages with 11 sentences before code samples. Jarod Reyes explains:

> It's a mental block more than it is not being able to see code. It tells a developer that this page has a lot to say, and that they have a lot to do. They don't want to necessarily want to spend the time to read what you want to say. We saw this across section length; we saw this across page depth. Any time that there is a lot or prose on a page and not a lot of code, that page didn't perform well. ([How Twilio Writes Documentation](https://eventil.com/presentations/pOszD6))

When developers see code, it's the equivalent of seeing a task-based topic with a user guide &mdash; the code indicates a concrete action to take for the developer.

## Don't just provide reference docs

Sometimes, engineers avoid code samples because they feel the endpoint reference documentation contains all the information developers need and stands on its own. However, this view is often shortsighted. In an article on the Programmable Web called [The Six Pillars of Complete Developer Documentation](https://www.programmableweb.com/news/six-pillars-complete-developer-documentation/2011/09/12), the authors explain:

> While a developer’s guide should walk a developer through the basic usage of an API and its functionality, it can’t cover every possible use of that API in a coherent way. That is where articles and tutorials come in, to teach developers tangential or specialized uses of an API, like combining it with another service, framework, or API.

In other words, the articles and tutorials complement the reference documentation to provide more complete instruction. Developers on the product team often make the mistake of assuming that their developer audience has a skill set similar to their own, without recognizing different developer specializations. Internal developers will often say, "If the user doesn't understand this code, he or she shouldn't be using our API."

If you encounter this attitude, remind developers that users often have technical talent in different areas. For example, a user might be an expert in Java but only mildly familiar with JavaScript. Someone who is a database programmer will have a different skill set than someone who is a Python programmer who will have a different skillset from a front-end web development engineer, and so on. Given these differences and the likely possibility that you will have many novice (or unfamiliar) users, more extensive code tutorials are warranted.

## Focus on the why, not the what

In any code sample, focus your explanation on the *why*, not the *what*. Explain why you're doing what you're doing, not the detailed play-by-play of what's going on, especially when the *what* refers more to standard programming mechanics that aren't unique to your API.

Here's an example of the difference:

* **what**: "In this code, several arguments are passed to jQuery's `ajax` method. The response is assigned to the data argument of the callback function, which in this case is `success`."
* **why**: "Use the `ajax` method from jQuery because it allows cross-origin resource sharing (CORS) for the weather resources."

Developers unfamiliar with common code not related to your company (for example, the `.ajax()` method from jQuery) should consult outside sources for tutorials about that code. Don't write your own version of another service's documentation. Instead, focus on the parts of the code unique to your company. Let the developer rely on other sources for the rest (feel free to link to other sites).

## Add both code comments and before-and-after explanations

Your documentation regarding the code should mix code comments with some explanation either after or before the code sample. Different languages have different conventions for comments, but generally brief code comments are set off with forward slashes `//` in the code; longer comments are set off between slashes with asterisks, like this: `/* .... */`.

Comments within the code are usually short one-line notes that appear after every 5-10 lines of code. You can follow up this code with more robust explanations in your documentation, but it's ideal to pepper code samples with comments because it puts the explanation next to the code doing the action.

{% include random_ad2.html %}

This approach of adding brief comments within the code, followed by more robust explanations after the code, aligns with principles of [progressive information disclosure](http://idratherbewriting.com/2012/08/09/applying-progressive-information-disclosure-to-online-help-navigation/) that help align with both advanced and novice user types.

{% include random_ad.html %}

## Keep code samples simple

Code samples should be stripped down and as simple as possible. Providing code for an entire HTML page is probably unnecessary. But including some surrounding code doesn't hurt anyone, and for newbies it can help them see the big picture. (It's also easier to copy and paste.)

Avoid including a lot of styling or other details in the code that will potentially distract the audience from the main point. The more minimalist the code sample, the better. For example, if you're showing a simple JavaScript function, you might be tempted to support it with complex CSS styling so that the demo looks sharp. However, all that extra CSS will only introduce more complexity and confusion that competes with your original principle you're trying to show with the code sample.

When developers take the code and integrate it into a production environment, they'll probably make a lot of changes to account for scaling, threading, and efficiency, and other production-level factors. But don't start out this way just to have a polished and professional looking demo.

## Make code samples copy-and-paste friendly

Many times developers will copy and paste code directly from the documentation into their application. Then they will usually tweak it a little bit for their specific parameters or methods.

Make sure that the code works. When I first used used some sample `ajax` code, the `dataType` parameter was actually spelled `datatype`. As a result, the code didn't work (it returned the response as text, not JSON). It took me about 30 minutes of troubleshooting before I consulted the [`ajax` method](http://api.jquery.com/jquery.ajax/) and realized that it should be `dataType` with a capital `T`.

Ideally, test out all the code samples yourself. This allows you to spot errors, understand whether all the parameters are complete and valid, and more. In the earlier video from Twilio, they explain that they wanted to treat code samples in documentation like their other engineering code, so they started storing it in a separate container (also pushed to GitHub) that they could run regular tests on. The code would be pulled into the documentation where appropriate, but it wasn't just stored in the doc pages alone.

## Provide a sample in your target language

With REST APIs, developers can use pretty much any programming language to make the request. One question will inevitably arise: Should you show code samples that span across various languages? If so, how many languages?

Providing code samples is almost always a good thing, so if you have the bandwidth to show code samples in various languages, go for it. However, providing just one code example in your audience's target language is probably enough. If there isn't a standard language for most users, you could also just provide the curl examples in your docs, and then provide users a [Postman collection](docapis_postman.html) or an [OpenAPI specification file](pubapis_swagger_intro.html) &mdash; both of these approaches will allow developers to generate code samples in many different languages.

Remember that each code sample you provide needs to be tested and maintained. When you make updates to your API, you'll need to update each of the code samples across all the different languages. When your API pushes out a new release, you'll need to check all the code samples to make sure the code doesn't break with the new API (this is called "regression testing" in QA lingo). Including a lot of code samples increases the amount of testing and maintenance, but this is the most helpful type of content for users, so it's probably worth it.

## Sample code tutorials

The following are a few samples of code tutorials in API documentation.

### Weather Underground

{% include course_image.html url="http://www.wunderground.com/weather/api/d/docs?d=resources/code-samples&MR=1" filename="codesamples_weatherunderground" ext_print="png" ext_web="png" alt="Weather Underground code samples" caption="Weather Underground code samples" %}

In this Weather Underground example, there are various code samples across half a dozen languages, but no explanation about what the code sample returns. In this case, the code is probably simple enough that developers can look at it and understand from the code itself what's going on. Still, some explanation is usually warranted, especially if there are multiple ways to make the call.

Sometimes developers will tell you that code is "self-documenting," meaning it's evident from the code itself what's going on. Without a knowledge of the programming language, it's hard to evaluate this statement. If you encounter this question, consider corroborating this view with some other engineers, especially outside the product team (or with users, if you have access to them).

### Eventful

{% include course_image.html url="http://api.eventful.com/tools/tutorials/search" filename="eventfulcodesample" ext_print="png" ext_web="png" alt="Eventful code samples" caption="Eventful code samples" %}

You won't see chunks of code here, but the Eventful docs include various examples about query string parameters for the endpoints. Although these parameters are also defined in the [reference documentation for the search endpoint](http://api.eventful.com/docs/events/search), this tutorial expands on how to use the parameters in more of a friendly, tutorial way.

I like the Eventful tutorial because it shows how documentation that is usually contained in reference material can be pulled out and explained in a more narrative, example-full way. It shows more of the difference between reference and tutorial information.

### Twilio

{% include course_image.html url="https://www.twilio.com/docs/quickstart" filename="twiliocodesamples" ext_print="png" ext_web="png" alt="Twilio code samples" caption="Twilio code samples" %}

Twilio's tutorials are probably the most impressive and fully detailed tutorials in the examples here. Not only do they walk users through a task from beginning to end, they do so in half a dozen languages. The specific code examples have been extracted out into the right-column, while the narrative of the tutorial occupies in the middle column. All steps in the tutorial aren't shown at once. When you reach the end of one step, you click a button to show the next step. This might reduce any sense of intimidation users might feel when beginning the tutorial.

It's not clear whether the conceptual content in the middle column is single-sourced across each language. If so, it would lead to more consistency across the tutorials. But given that there are so many differences across languages, it's usually not possible to orchestrate this kind of single-sourcing (where 75% of the content is the same and 25% varies here and there, from one sentence or paragraph to the next). Single-sourcing this content would be a real challenge to maintain.

Another challenge is that the middle column feels narrow and cramped. There isn't much room for a screenshot (though presumably with developer docs, code samples are more important and are more flexible to fit in small spaces). Additionally, the right column doesn't scroll in sync with the middle column &mdash; it's mostly static (by design). But if it's fixed, I'm not sure why it needs to remain ever-present. Overall, there are challenges with the presentation, but Twilio has certainly innovated in this space with some interesting techniques. Twilio is probably one of the best developer documentation sites to imitate and learn from.

### Mailchimp

{% include course_image.html url="http://developer.mailchimp.com/documentation/mailchimp/guides/manage-subscribers-with-the-mailchimp-api/" filename="mailchimpcodesamples" ext_print="png" ext_web="png" alt="Mailchimp code samples" caption="Mailchimp code samples" %}

As usual, Mailchimp provides solid tutorials for their products. The "Before You Start" section any necessary prerequisites before starting the tutorial. Each part of the tutorial is set off with section headings.

The section heading style is worth considering over numbered steps. Most technical writers have numbered steps as a habit for tech docs, so when they start writing a tutorial, the first inclination is to begin a sequence of steps. But with a tutorial, you might have lengthy code samples that are followed by detailed explanations, and so on. Maintaining the list numbered across steps can become onerous. The section headings provide an easier formatting, and you can still preface each section heading with "Step 1", "Step 2", and so on.

### IBM Watson

{% include course_image.html url="https://console.bluemix.net/docs/services/conversation/tutorial.html#tutorial" filename="ibmwatsoncodesamples" ext_print="png" ext_web="png" alt="IBM Watson code samples" caption="IBM Watson code samples" %}

The IBM Watson tutorial does a nice job breaking up the tutorial steps into different sections, with easy-to-follow steps in each section. Up front, it lists the learning objectives, duration, and prerequisites. There's nothing particularly difficult about the formatting or the display &mdash; the emphasis focuses on the content.

## Code samples for sample weather API

Earlier in the course we walked through [each element of reference documentation](docapis_new_endpoint_to_doc.html) for a fictitious new endpoint called `surfreport` for the weather API we were working with. Let's return briefly to that scenario and assume that we also want to add a code tutorial for showing the surfreport on a web page. What might that tutorial look like? Here's an example:

<div class="docSample">

<h2>Code tutorial for surfreport endpoint</h2>

<p>The following code samples shows how to use the <code>surfreport</code> endpoint to get the surf height for a specific beach.</p>

{% if site.format == "web" or site.format == "pdf" %}
{% highlight javascript %}
<!DOCTYPE html>
<head>
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script>
var settings = {
  "async": true,
  "crossDomain": true,
  "url": "http://api.openweathermap.org/surfreport/25&days=1",
  "method": "GET"
}

$.ajax(settings).done(function (response) {
  console.log(response);
  $("#surfheight").append(response.surfreport.conditions);
});
</script>
</head>
<body>
<h2>Surf Height</h2>
<div id="surfheight"></div>
</body>
</html>
{% endhighlight %}

{% elsif site.format == "kindle" %}

<pre>
&lt;!DOCTYPE html&gt;
&lt;head&gt;
&lt;script src=&quot;http://code.jquery.com/jquery-2.1.1.min.js&quot;&gt;&lt;/script&gt;
&lt;script&gt;
var settings = {
  &quot;async&quot;: true,
  &quot;crossDomain&quot;: true,
  &quot;url&quot;: &quot;http://api.openweathermap.org/surfreport/25?days=1&amp;units=metric&quot;,
  &quot;method&quot;: &quot;GET&quot;
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
{% endif %}

<p>In this example, the <code>ajax</code> method from jQuery is used because it allows us to load a remote resource asynchronously.</p>

<p>In the request, you submit the authorization through a query string URL. The endpoint limits the days returned to 1 in order to increase the download speed.</p>

<p>For demonstration purposes, the response is assigned to the <code>response</code> argument of the <code>done</code> method, and then written out to the <code>surfheight</code> tag on the page.</p>

<p>We're just getting the surf height, but there's a lot of other data you could choose to display.</p>
</div>

Obviously, one could go into a lot more detail with the explanation, even going line by line through the code. But here the commentary is already about half the length of the code.
