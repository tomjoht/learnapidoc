---
title: "Design patterns with API doc sites"
permalink: /pubapis_design_patterns.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.2
section: publishingapis
path1: /publishingapis.html
---

In the previous topic, we browsed up to [100 API doc sites](pubapis_apilist.html) and looked for similar patterns in their design. "Design patterns" are common approaches or techniques in the way something is designed. The following design patterns are common with API doc sites: structure and templates, website platforms, abundant code examples, lengthy pages, and interactive API explorers. I explore each of these elements in the following sections.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Pattern 1: Structure and templates {#structure_and_templates}

One overriding commonality with API documentation is that they share a common structure, particularly with the reference documentation around the endpoints. In an earlier section, we explored the common sections in [endpoint documentation](docendpoints.html). The [non-reference topics](docnonref.html) also share similar topics, which I touched upon earlier as well.

From a tool perspective, if you have common sections to cover with each endpoint, it makes sense to formalize a template to accommodate the publishing of that content. The template can provide consistency, automate publishing and styles, and allow you to more easily change the design without manually reformatting each section. (Without a template, you could just remember to add the exact same sections on each page, but this requires more effort to be consistent.) With a template, you can insert various values (descriptions, methods, parameters, etc.) into a highly stylized output, complete with div tags and other style classes.

Different authoring tools have different ways of processing templates. In [Jekyll](pubapis_jekyll.html), a static site generator, you can create values in a [YAML file](pubapis_yaml.html) and loop through them using Liquid to access the values.

Here's how you might go about it. In the frontmatter of a page, you could list out the key value pairs for each section.

```
resource_name: surfreport
resource_description: Gets the surf conditions for a specific beach.
endpoint: /surfreport
```

And so on.

You could then use a [`for` loop](https://help.shopify.com/themes/liquid/objects/for-loops) to cycle through each of the items and insert them into your template:

```liquid
{% raw %}{% for p in site.endpoints %}
<div class="resName">{{p.resource_name}}</div>
<div class="resDesc">{{p.resource_description}}</div>
<div class="endpointDef">{{p.endpoint}}</div>
{% endfor %}{% endraw %}
```

This approach makes it easy to change your template without reformatting all of your pages. For example, if you decide to change the order of the elements on the page, or if you want to add new classes or some other value, you just alter the template. The values remain the same, since they can be processed in any order.

For a more full-fledged example of API templating, see the [Aviator theme from Cloud Cannon](https://github.com/CloudCannon/aviator-jekyll-template). In my [Jekyll tutorial](pubapis_jekyll.html#publish-the-endpoint-in-the-jekyll-aviator-theme) later in the course, I include an activity where you add a new weatherdata endpoint to the Aviator theme, using the same frontmatter templating designed by the theme author.

The sample endpoint for adding books in the Aviator theme looks as follows:

```
---
title: /books
position: 1.1
type: post
description: Create Book
right_code: |
  ~~~ json
  {
    "id": 3,
    "title": "The Book Thief",
    "score": 4.3,
    "dateAdded": "5/1/2015"
  }
  ~~~
  {: title="Response" }

  ~~~ json
  {
    "error": true,
    "message": "Invalid score"
  }
  ~~~
  {: title="Error" }
---
title
: The title for the book

score
: The book's score between 0 and 5

The book will automatically be added to your reading list
{: .success }

Adds a book to your collection.

~~~ javascript
$.post("http://api.myapp.com/books/", {
  "token": "YOUR_APP_KEY",
  "title": "The Book Thief",
  "score": 4.3
}, function(data) {
  alert(data);
});
~~~
{: title="jQuery" }
```

(The `~~~` are alternate markup for backticks <code>&#96;&#96;&#96;</code>. `{: .success }` is [kramdown](https://kramdown.gettalong.org/) syntax for custom classes.) The theme author created a layout that iterates through these values and pushes the content into HTML formatting. If you look in the [Aviator's index.html file](https://github.com/CloudCannon/aviator-jekyll-template/blob/master/index.html), you'll see this code:

```html
{% raw %}{% assign sorted_collections = site.collections | sort: "position" %}
{% for collection in sorted_collections %}
	{% assign sorted_docs = collection.docs | sort: "position" %}
	{% for doc in sorted_docs %}
		<section class="doc-content">
			<section class="left-docs">
				<h3>
					<a id="{{ doc.id | replace: '/', '' | replace: '.', '' }}">
						{{ doc.title }}
						{% if doc.type %}
							<span class="endpoint {{ doc.type }}"></span>
						{% endif %}
					</a>
				</h3>
				{% if doc.description %}
					<p class="description">{{doc.description}}</p>
				{% endif %}

				{{ doc.content | replace: "<dl>", "<h6>Parameters</h6><dl>" }}
			</section>

			{% if doc.right_code %}
				<section class="right-code">
					{{ doc.right_code | markdownify }}
				</section>
			{% endif %}
		</section>
	{% endfor %}
{% endfor %}{% endraw %}
```

This code uses `for` loops in [Liquid scripting](https://help.shopify.com/themes/liquid/basics) to iterate through the items in the `api` collection and pushes the content into the HTML styles of the template. The result looks like this:

<a href="https://tangerine-lemon.cloudvent.net/" class="noExtIcon"><img src="images/aviatortheme.png" /></a>

Note that this kind of structure is really only necessary if you have a lot of different endpoints. If you only have a handful, there's no need to automate the template process.

I provided details with Jekyll only as an example. Many of the web platforms and technologies used implement a similar templating approach.

When I worked at Badgeville, a gamification startup, we published using Drupal. We had a design agency construct a highly designed template in Drupal. To publish the API reference documentation, engineers wrote a custom script that generated the content from a database into a JSON file that we imported into Drupal. The import process populated various fields in the template.

The resulting output was an eye-popping, visually appealing design. To achieve that kind of style in the UX, it would have certainly required a lot of custom div tags to apply classes and other scripts on the page. By separating the content from the template format, we could work with the content without worrying about the right style tags and other formatting.

As you look for documentation tools, keep in mind the need to templatize your API reference documentation.

Also note that you don't have to create your own templates to display API documentation. You can probably already see problems related to custom templates. The templates are entirely arbitrary, with terms and structure based on the designer's perceived needs and styles. If you write documentation to fit a specific template, what happens when you want to switch themes? You'd have to create new templates that parse through the same custom frontmatter. It's a lot of custom coding.

Given that REST APIs follow similar characteristics and sections, wouldn't it make sense to create a standard in the way APIs are described, and then leverage tools that parse through these standard descriptions? *Yes!* That's what the OpenAPI specification is all about. Later in this course, I explain several [REST API description formats](pubapis_rest_specification_formats.html), and then launch into an extensive tutorial for the [OpenAPI specification](pubapis_openapi_tutorial_overview.html). Afterwards, I provide a tutorial for reading the OpenAPI specification using [Swagger UI](pubapis_swagger.html), along with an activity to [create your own Swagger UI](pubapis_swagger_ui_activity.html).

My point here is that you shouldn't be daunted by the coding challenges around creating your own API templates. The Aviator theme shows one custom approach, and I highlight it here with code samples to demonstrate the complexity and custom-nature of defining your own templates.

## Pattern 2: A website platform {#website_platform}

Many API doc sites provide *one integrated website* to present all of the information. You usually aren't opening help in a new window, separate from the other content. The website is branded with the same look and feel as the product. Here's an example from Yelp:

<a href="https://www.yelp.com/developers/documentation" class="noExtIcon"><img src="images/yelpapi.png" alt="Yelp API documentation" /></a>

I hinted at this earlier, but with API documentation, there isn't an application interface that the documentation complements. In most cases, the API documentation itself is the interface that users navigate to use your product. As such, users will expect more from it.

One of the challenges in using documentation generated from [OpenAPI](pubapis_swagger_intro.html) or some other document generator is figuring out how to integrate it with the rest of the site. Ideally, you want users to have a seamless experience across the entire website. If your endpoints are rendered into their own separate view, how do you integrate the endpoint reference into the rest of the documentation?

If you can integrate the branding and search, users may not care. But if it feels like users are navigating several sites poorly cobbled together, the UX experience will be somewhat fragmented.

{% include random_ad.html %}

Think about other content that users will interact with, such as Marketing content, terms of service, support, and so on. How do you pull together all of this information into a single site experience without resorting to an overbloated CMS or some other web framework?

The reality is that most API documentation sites are custom-designed websites that blend seamlessly with the other marketing content on the site, because your API doc must sell your API. As a website platform (rather than a tripane help output), you can leverage all the HTML, CSS, and JS techniques available in building websites. You aren't limited to a small subset of available tools that are allowed by your [HAT](pubapis_hats.html); instead, you have the whole web landscape and toolset at your disposal.

This open invitation to use the tools of the web to construct your API doc site is both a blessing and a challenge. A blessing because, for the most part, there's nothing you can't do with your docs. You're only limited by your lack of knowledge about front-end coding. But it's also a challenge because many of the needs you may have with docs (single sourcing, PDF, variables, and more) might not be readily available with common website tooling.

## Pattern 3: Abundant code samples {#abundant_code_examples}

More than anything else, developers love [code examples](docapis_doc_code_samples.html), and the abundance of syntax-highlighted, properly formatted code samples on API doc sites constitutes a design pattern. Usually the more code you can add to your documentation, the better. Here's an example from Evernote's API:

<a href="https://dev.evernote.com/doc/articles/note-sharing.php" class="noExtIcon"><img src="images/evernotecodesamples.png" alt="Evernote code examples" /></a>

The writers at Parse [emphasize the importance of code samples in docs](http://blog.parse.com/learn/engineering/designing-great-api-docs/), giving the following advice:

>Liberally sprinkle real world examples throughout your documentation. No developer will ever complain that there are too many examples. They dramatically reduce the time for developers to understand your product. In fact, we even have example code right on our homepage.

For code samples, you'll want to incorporate syntax highlighting. The syntax highlighter colors different elements of the code sample appropriately based on the programming language. There are numerous syntax highlighters that you can usually incorporate into your platform. For example, Jekyll uses [rouge](https://github.com/jneen/rouge) by default. Another common highlighter is [pygments](http://pygments.org/). These highlighters have stylesheets prepared to highlight languages based on specific syntax.

Usually, tools that you use for authoring will incorporate highlighting utilities (based on Ruby or Python) into their HTML generation process. (You don't implement the syntax highlighter as a standalone tool.) If you don't have access to a syntax highlighter for your platform, you can [manually add a highlighting using syntax highlighter library](http://code.tutsplus.com/tutorials/quick-tip-how-to-add-syntax-highlighting-to-any-project--net-21099).

Another important element in code samples is to use consistent white space. Although computers can read minified code, users usually can't or won't want to look at minified code. Use a tool to format the code with the appropriate spacing and line breaks. You'll need to format the code based on the conventions of the programming language. Fortunately, there are many code beautifier tools online to automate that (such as [Code Beautify](https://codebeautify.org/javaviewer)).

Sometimes development shops have an official style guide for formatting code samples. This style guide for code might prescribe details such as the following:

* Spaces inside of parentheses
* Line breaks
* Inline code comment styles

For example, here's a [JavaScript style guide](http://google.github.io/styleguide/javascriptguide.xml). If developers don't have an official style guide, ask them to recommend one online, and compare the code samples against the guidelines in it. I dive [more into code samples](docapis_doc_code_samples.html) in another topic.

## Pattern 4: Lengthy pages {#longish_pages}

One of the most stark differences between regular end-user documentation and developer documentation is that developer doc pages tend to be much longer. In a [post on designing great API docs](http://blog.parse.com/learn/engineering/designing-great-api-docs/), the writers at Parse explain that short pages frustrate developers:

>It's no secret that developers hate to click. Don't spread your documentation onto a million different pages. Keep related topics close to each other on the same page.
>
>We're big fans of long single page guides that let users see the big picture with the ability to easily zoom into the details with a persistent navigation bar. This has the great side effect that users can search all the content with an in-page browser search.
>
>A great example of this is the Backbone.js documentation, which has everything at your fingertips.

The Backbone.js documentation takes this length to an extreme, publishing everything on one page:

<a href="http://backbonejs.org/" class="noExtIcon"><img src="images/backbonejs.png" alt="Backbone JS" /></a>

For another example of a long page, see the Reddit API:
<a href="https://www.reddit.com/dev/api" class="noExtIcon"><img src="images/redditpage.png" alt="Backbone JS" /></a>

Why do API doc sites tend to have such lengthy pages? Here are a few reasons:

* **Provides the big picture**: As the Parse writers indicate, single-page docs allow users to zoom out or in depending on the information they need. A new developer might zoom out to get the big picture, learning the base REST path and how to submit calls. But a more advanced developer already familiar with the API might need only to check the parameters allowed for a specific endpoint. The single-page doc model allows developers to jump to the right page and use Ctrl+F to locate the information.
* **Many platforms lack search**: A lot of the API doc sites don't have good search engines. In fact, many lack built-in search features altogether. This is partly because Google does such a better job at search, the in-site search feature of any website is often meager by comparison. Also, some of the other document generator and static site generator tools just don't have search (neither did Javadoc). Without search, you can find information by creating long pages and using Ctrl+F.
* **Everything is at your fingertips**: If the information is chunked up into little pieces here and there, requiring users to click around constantly to find anything (as is [often the case with DITA's information model](http://idratherbewriting.com/2013/04/22/does-dita-encourage-authors-to-fragment-information-into-a-million-little-pieces/)), the experience can be like playing information pinball. As a general strategy, you want to include complete information on a page. If an API resource has several different methods, splitting them out into separate pages can create findability issues. Sometimes it makes sense to keep all related information in one place, with "everything at your fingertips."
* **Today's navigation controls are sophisticated**: Today there are better navigation controls today for moving around on long pages than there were in the past. For example, [Bootstrap's Scrollspy feature](http://getbootstrap.com/docs/4.0/components/scrollspy/) dynamically highlights your place in the sidebar as you're scrolling down the page. Other solutions allow collapsing or expanding of sections to show content only if users need it.

Usually the long pages on a site are the reference pages. Personally, I'm not a fan of listing every endpoint on the same long page. Long pages also present challenges with linking as well. However, I do tend to create lengthier pages in API doc sites than I typically see in other types of documentation.

## Pattern 5: API Interactivity {#interactive_api_explorers}

A recurring feature in many API doc publishing sites is interactivity with API calls. Swagger, readme.io, Apiary, and many other platforms allow you to try out calls and see responses directly in the browser.

For APIs not on these platforms, wiring up an API Explorer is often done by engineers. Since you already have the API functionality to make calls and receive responses, creating an API Explorer is not usually a difficult task for a UI developer. You're just creating a form to populate the endpoint's parameters and printing the response to the page.

Here's a sample API explorer from [Watson's AlchemyLanguage API](https://watson-api-explorer.mybluemix.net/apis/alchemy-language-v1#!/Authors/get_html_HTMLGetAuthors) that uses [Swagger or OpenAPI](pubapis_swagger_intro.html) to provide the interactivity.

<a href="https://watson-api-explorer.mybluemix.net/apis/alchemy-language-v1#!/Authors/get_html_HTMLGetAuthors" class="noExtIcon" class="noExtIcon"><img src="images/watson-try-it-out.png"/></a>

Are API explorers novel, or instructive? If you're going to be making a lot of calls, there's no reason why you couldn't just use [curl](docapis_make_curl_call.html) or [Postman](docapis_postman.html) (particularly the [Postman Run Button](pubapis_other_tool_options.html#postman)) to quickly make the request and see the response. However, the API Explorer embedded directly in your documentation provides more of a graphical user interface that makes the endpoints accessible to more people. You don't have to worry about entering exactly the right syntax in your call &mdash; you just have to fill in the blanks.

However, API Explorers tend to work better with simpler APIs. If your API requires you to retrieve data before you can use a certain endpoint, or if the data you submit is a JSON object in the body of the post, or you have some other complicated interdependency with the endpoints, the API Explorer might not be as helpful. Nevertheless, clearly it is a design pattern to provide this kind of interactivity in API documentation.

If your users log in, you can store their API keys and dynamically populate the calls and code samples with API keys. The API key can most likely be a variable that stores the user's API key. This is a feature provided with sites like [Readme.io](pubapis_other_tool_options.html#readmeio).

However, if you store customer API keys on your site, this might create authentication and login requirements that make your site more complex to create. If you have users logging in and dynamically populating the explorer with their API keys, you'll probably need a front-end designer and web developer to create this experience.

## Some non-patterns in API doc sites

Finally, I'd like to briefly mention some non-patterns in API documentation. In the [list of 100 API doc sites](pubapis_apilist.html), you rarely see any of the following:

* Video tutorials
* PDFs
* Commenting features
* Translated sites
* Single sourced outputs for different roles

By non-patterns, it's not to say these elements aren't a good idea. But generally they aren't emphasized as primary requirements.
