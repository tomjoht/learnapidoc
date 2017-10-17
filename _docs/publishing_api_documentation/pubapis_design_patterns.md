---
title: "Design patterns overview"
permalink: /pubapis_design_patterns.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.2
section: publishingapis
path1: /publishingapis.html
---

In the previous topic, we browsed up to [100 API doc sites](pubapis_apilist) and looked for similar patterns in their design. "Design patterns" are common approaches or techniques in the way something is designed. In looking over the many API doc sites, I tried to identify common approaches in the way the content was published.

The following design patterns are common with API doc sites: structure and templates, website platforms, abundant code examples, long-ish pages, and interactive API explorers. I explore each of these elements in the following sections.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Pattern 1: Structure and templates {#structure_and_templates}

One overriding commonality with API documentation is that they share a common structure, particularly with the reference documentation around the endpoints. In an upcoming chapter, I dive into the common sections in [endpoint documentation](docendpoints.html). The non-reference topics also share similar topics, which I [touch on later](#docnonref) as well.

From a tool perspective, if you have common sections to cover with each endpoint, it makes sense to formalize a template to accommodate the publishing of that content. The template can provide consistency, automate publishing and style, and allow you to more easily change the design without manually reformatting each section. You could just remember to add the exact same sections on each page, but this requires more manual consistency.

With a template, you can insert various values (descriptions, methods, parameters, etc.) into a highly stylized output. Rather than work with all the style tags in your page directly, you can create values that exist as an object on a page. A custom script can loop through the objects and insert the values into your template.

Different authoring tools have different ways of processing templates. In Jekyll, a static site generator, here's how you might go about it. In the frontmatter of a page, you could list out the key value pairs for each section.

```
resource_name: surfreport
resource_description: Gets the surf conditions for a specific beach.
endpoint: /surfreport
```

And so on.

You could then use a for loop to cycle through each of the items and insert them into your template:

{% raw %}
```liquid
{% for p in site.endpoints %}
<div class="resName">{{p.resource_name}}</div>
<div class="resDesc">{{p.resource_description}}</div>
<div class="endpointDef">{{p.endpoint}}</div>
```
{% endraw %}

This approach makes it easy to change your template without reformatting all of your pages. For example, if you decide to change the order of the elements on the page, or if you want to add new classes or some other value, you just alter the template. The values remain the same, since they can be processed in any order.

Note that this kind of structure is really only necessary if you have a lot of different endpoints. If you only have a handful, there's no need to automate the template process.

I provided details with Jekyll only as an example. Many of the web platforms and technologies used implement a similar templating approach.

When I worked at Badgeville, a gamification startup, we published using Drupal. We had a design agency construct a highly designed template in Drupal To publish the API reference documentation, engineers wrote a custom script that generated the content from a database into a JSON script that we imported into Drupal. The import process populated various fields in the template.

The resulting output was an eye-popping, visually appealing design. To achieve that kind of style in the UX, it would have certainly required a lot of custom div tags to apply classes and other scripts on the page. By separating the content from the template format, we could work with the raw content but also insert it dynamically into the stylized template.

As you look for documentation tools, keep in mind the need to templatize your API reference documentation.

## Pattern 2: A website platform {#website_platform}

Many API doc sites provide *one integrated website* to present all of the information. You usually aren't opening help in a new window, separate from the other content. The website is branded with the same look and feel as the product. Here's an example from Yelp:

<a href="https://www.yelp.com/developers/documentation"><img src="images/yelpapi.png" alt="Yelp API documentation" /></a>

I hinted at this earlier, but with API documentation, there isn't an application interface that the documentation complements. In most cases, the API documentation itself is the product that users navigate to use your product. As such, users will expect more from it.

One of the challenges in using documentation generated from [OpenAPI](pubapis_swagger_intro.html) or some other document generator is figuring out how to integrate it with the rest of the site. Ideally, you want users to have a seamless experience across the entire website. If your endpoints are rendered into their own separate view, how do you integrate the endpoint reference into the rest of the documentation?

If you can integrate the branding and search, users may not care. But if it feels like users are navigating several sites poorly cobbled together, the UX experience will be somewhat fragmented.

{% include random_ad.html %}

Think about other content that users will interact with, such as Marketing content, terms of service, support, and so on. How do you pull together all of this information into a single site experience without resorting to an overbloated CMS or some other web framework?

The reality is that most API documentation sites are custom-designed websites that blend seamlessly with the other marketing content on the site, because your API doc must sell your API. As a website platform (rather than a tripane help output), you can leverage all the scripts, CSS, and JS techniques available in building websites. You aren't limited to a small subset of available tools that are allowed by your [HAT](pubapis_hats.html); instead, you have the whole web landscape and toolset at your disposal.

This open invitation to use the tools of the web to construct your API doc site is both a blessing and a challenge. A blessing because, for the most part, there's nothing you can't do with your docs. You're only limited by your lack of knowledge about front-end coding. But it's also a challenge because many of the needs you may have with docs (single sourcing, PDF, variables, and more) might not be readily available with common website tooling.

## Pattern 3: Abundant code samples {#abundant_code_examples}

More than anything else, developers love [code examples](docapis_doc_code_samples.html). Usually the more code you can add to your documentation, the better. Here's an example from Evernote's API:

<a href="https://dev.evernote.com/doc/articles/note-sharing.php"><img src="images/evernotecodesamples.png" alt="Evernote code examples" /></a>

The writers at Parse [emphasize the importance of code samples in docs](http://blog.parse.com/learn/engineering/designing-great-api-docs/):

>Liberally sprinkle real world examples throughout your documentation. No developer will ever complain that there are too many examples. They dramatically reduce the time for developers to understand your product. In fact, we even have example code right on our homepage.

For code samples, you'll want to incorporate syntax highlighting. The syntax highlighter colors different elements of the code sample appropriately based on the programming language. There are numerous syntax highlighters that you can usually incorporate into your platform. For example, Jekyll uses [rouge](https://github.com/jneen/rouge) by default. Another common highlighter is [pygments](http://pygments.org/). These highlighters have stylesheets prepared to highlight languages based on specific syntax.

Usually tools that you use will incorporate one of these highlighting tools (based on Ruby or Python) into their HTML generation process. (You don't implement the syntax highlighter as a standalone tool.) If you don't have access to a syntax highlighter for your platform, you can [manually add a highlighting using syntax highlighter library](http://code.tutsplus.com/tutorials/quick-tip-how-to-add-syntax-highlighting-to-any-project--net-21099).

Another important element in code samples is to use consistent white space. Although computers can read minified code, users usually can't or won't want to look at minified code. Use a tool to format the code with the appropriate spacing and line breaks. You'll need to format the code based on the conventions of the programming language. Fortunately, there are many code beautifier tools online to automate that (such as [Code Beautify](https://codebeautify.org/javaviewer)).

Sometimes development shops have an official style guide for formatting code samples. This might prescribe details such as the following:

* Spaces inside of parentheses
* Line breaks
* Inline code comment styles

For example, here's a [JavaScript style guide](http://google.github.io/styleguide/javascriptguide.xml).

If developers don't have an official style guide, ask them to recommend one online, and compare the code samples against the guidelines in it.

I dive [more into code samples](docapis_doc_code_samples.html) later in this book.

## Pattern 4: Longish pages {#longish_pages}

One of the most stark differences between regular end-user documentation and developer documentation is that developer doc pages tend to have longer pages. In a [post on designing great API docs](http://blog.parse.com/learn/engineering/designing-great-api-docs/), the writers at Parse explain that short pages frustrate developers:

>Minimize Clicking
>
>It's no secret that developers hate to click. Don't spread your documentation onto a million different pages. Keep related topics close to each other on the same page.
>
>We're big fans of long single page guides that let users see the big picture with the ability to easily zoom into the details with a persistent navigation bar. This has the great side effect that users can search all the content with an in-page browser search.
>
>A great example of this is the Backbone.js documentation, which has everything at your fingertips.

The Backbone.js documentation takes this length to an extreme, publishing everything on one page:

<a href="http://backbonejs.org/"><img src="images/backbonejs.png" alt="Backbone JS" /></a>

For another example of a long page, see the Reddit API:
<a href="https://www.reddit.com/dev/api"><img src="images/redditpage.png" alt="Backbone JS" /></a>

Why do API doc sites tend to have long-ish pages? Here are a few reasons:

* **Provides the big picture**: As the Parse writers indicate, single-page docs allow users to zoom out or in depending on the information they need. A new developer might zoom out to get the big picture, learning the base REST path and how to submit calls. But a more advanced developer already familiar with the API might only need to check the parameters allowed for a specific endpoint. The single-page doc model allows developers to jump to the right page and use Ctrl+F to locate the information.
* **Many platforms lack search**: A lot of the API doc sites don't have good search engines. In fact, many lack built-in search features altogether. This is partly because Google does such a better job at search, the in-site search feature of any website is often meager by comparison. Also, some of the other document generator and static site generator tools just don't have search (neither did Javadoc). Without search, you can find information by creating long pages and using Ctrl+F.
* **Everything is at your fingertips**: If the information is chunked up into little pieces here and there, requiring users to click around constantly to find anything (as is [often the case with DITA's information model](http://idratherbewriting.com/2013/04/22/does-dita-encourage-authors-to-fragment-information-into-a-million-little-pieces/)), the experience can be like playing information pinball. As a general strategy, you want to include complete information on a page. If an API resource has several different methods, splitting them out into separate pages can create findability issues. Sometimes it makes sense to keep all related information in one place, or rather "everything at your fingertips."
* **Today's navigation controls are sophisticated**: Today there are better navigation controls for moving around on long pages than in the past. For example, [Bootstrap's Scrollspy feature](http://getbootstrap.com/javascript/#scrollspy) dynamically highlights your place in the sidebar as you're scrolling down the page. Other solutions allow collapsing or expanding of sections to show content only if users need it.

Usually the long pages on a site are the reference pages. Personally, I'm not a fan of listing every endpoint on the same page. Long pages also present challenges with linking as well. Either way you approach page length, developers probably won't care that much. They will care much more about the content on the page.

## Pattern 5: API Interactivity {#interactive_api_explorers}

A recurring feature in many API doc publishing sites is interactivity with API calls. Swagger, readme.io, Apiary, and many other platforms allow you to try out calls and see responses directly in the browser.

For APIs not on these platforms, wiring up an API Explorer is often done by engineers. Since you already have the API wiring to make calls and receive responses, creating an API Explorer is not usually a difficult task for a UI developer. You're just creating a form to populate the endpoint's parameters and printing the response to the page.

Here's a sample API explorer from [Watson's AlchemyLanguage API](https://watson-api-explorer.mybluemix.net/apis/alchemy-language-v1#!/Authors/get_html_HTMLGetAuthors) that uses [Swagger or OpenAPI](pubapis_swagger_intro.html) to provide the interactivity.

<a href="https://watson-api-explorer.mybluemix.net/apis/alchemy-language-v1#!/Authors/get_html_HTMLGetAuthors"><img src="images/watson-try-it-out.png"/></a>

Are API explorers novel, or extremely instructive? If you're going to be making a lot of calls, there's no reason why you couldn't just use [cURL](docapis_make_curl_call.html) or [Postman](docapis_postman.html) (particularly the [Postman Run Button](pubapis_other_tool_options.html#postman)) to quickly make the request and see the response. However, the API Explorer embedded directly in your documentation provides more of a graphical user interface that makes the endpoints accessible to more people. You don't have to worry about entering exactly the right syntax in your call &mdash; you just have to fill in the blanks.

However, API Explorers tend to work better with simpler APIs. If your API requires you to retrieve data before you can use a certain endpoint, or if the data you submit is a JSON object in the body of the post, or you have some other complicated interdependency with the endpoints, the API Explorer might not be as helpful.

Nevertheless, clearly it is a design pattern to provide this kind of interactivity in the documentation.

If your users log in, you can store their API keys and dynamically populate the calls and code samples with API keys. The API key can most likely be a variable that stores the user's API key. This is a feature provided with sites like [Readme.io](pubapis_other_tool_options.html#readmeio).

However, if you store customer API keys on your site, this might create authentication and login requirements that make your site more complex to create. If you have users logging in and dynamically populating the explorer with their API keys, you'll probably need a front-end designer and web developer to pull this off.

## Dealing with more challenging factors

A lot of the solutions we've looked at tend to break down when you start applying more difficult requirements in your tech comm scenario. You may have to resort to more traditional tech comm tooling if you have to deal with some of the following challenges:

* Translation
* Content re-use
* Versioning
* Authentication
* PDF

You can handle all of this through a custom platform such as [Jekyll](pubapis_jekyll.html), but it's not going to be a push-button experience. It will require a higher degree of technical skill and coding.

At one company where I used Jekyll, we had requirements around both PDF output and versioning. We singled sourced the content into about 8 different outputs (for different product lines and programming languages). Double that number if you include PDF output for the same content. Jekyll provides a templating language called Liquid that allows you to do conditional filtering, content re-use, variables, and more, so you can fill these more robust requirements.

To handle PDF, I used a tool called [Prince](http://www.princexml.com/) that converts a list of HTML pages into a PDF document, complete with running headers and footers, page numbering, and other print styling. Other writers might use [Pandoc](https://pandoc.org/) to fill simpler PDF requirements.

To handle authentication, we uploaded the HTML output into a Salesforce site.com space and used Salesforce as the authentication layer. The custom uploading was my least favorite part of the solution, but a more integrated authentication solution (potentially using [One Login](https://www.onelogin.com/) or a custom authentication solution) would have required more engineering resources.

## Some non-patterns

Finally, I just want to mention some non-patterns in API documentation. In the [list of 100 API doc sites](pubapis_apilist.html), rarely do you see the ability to video tutorials, page commenting features (except through the [Edit on GitHub button](pubapis_edit_on_github_buttons.html)), PDF output, translation, responsive mobile displays, or help authoring tool outputs.

By non-patterns, it's not to say these elements aren't a good idea. But generally they aren't emphasized as primary requirements.

[1]: http://idratherbewriting.com/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/

[2]: https://en.wikipedia.org/wiki/1%25_rule_(Internet_culture)
[sarah]: http://www.scriptorium.com/2017/03/tcworld-india-2017-focus-future/
[kate]: http://idratherbewriting.com/2016/10/28/markdown-or-restructuredtext-or-dita-choosing-format-tech-docs/#comment-3193454817
