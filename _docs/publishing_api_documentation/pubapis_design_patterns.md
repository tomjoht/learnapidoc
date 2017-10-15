---
title: "Design patterns overview"
permalink: /pubapis_design_patterns.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.2
section: publishingapis
path1: /publishingapis.html
---

Design patterns are common approaches or techniques in the way something is designed. In looking over the many API doc sites, I tried to find some common design patterns in the way the content was published. I already mentioned the division between guides, tutorials, and reference documentation. Here I want to explore more design-specific elements in API doc sites.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Several design patterns with API docs

Here are several design patterns with API doc sites:

* [Structure and templates](#structure_and_templates)
* [Website platform](#website_platform)
* [Abundant code examples](#abundant_code_examples)
* [Longish pages](#longish_pages)
* [Interactive API explorers](#interactive_api_explorers)
* [Edit on Github buttons](#edit_on_github_buttons)

I explore each of these elements in the following sections.

## Pattern 1: Structure and templates {#structure_and_templates}

If you have a lot of endpoints, you can construct a template that forces specific values in the same template. This is important because you want to establish a consistency with each endpoint. You're basically filling in the blanks.

You could just remember to add the exact same sections on each page, but this requires more manual consistency.

<a href="https://flic.kr/p/oFD6MM"><img src="images/structure.png" alt="Structure, by Rafal Zych" /></a>

You might want to insert various values (descriptions, methods, parameters, etc.) into a highly stylized output. Rather than work with all the style tags in your page directly, you can create values that exist as an object on a page. A custom script can loop through the objects and insert the values into your template.

Different authoring tools have different ways of processing templates. In Jekyll, a static site generator, this is how you do it.

In the frontmatter of a page, you list out the key value pairs:

```
resource_name: surfreport
resource_description: Gets the surf conditions for a specific beach.
endpoint: /surfreport
```

And so on.

You then use a for loop to cycle through each of the items and insert them into your template:

{% raw %}
```liquid
{% for p in site.endpoints %}
<div class="resName">{{p.resource_name}}</div>
<div class="resDesc">{{p.resource_description}}</div>
<div class="endpointDef">{{p.endpoint}}</div>
```
{% endraw %}

This approach makes it easy to change your template without reformatting all of your pages. For example, if you decide to change the order of the elements on the page, or if you want to add new classes or something, you just alter the template. The values remain the same, since they can be processed in any order.

Note that this kind of structure is really only necessary if you have a lot of different endpoints. If you only have a handful, there's no need to really automate the template process.

## Pattern 2: A website platform {#website_platform}

Many API doc sites provide one integrated website to find all of the information. You usually aren't opening help in a new window, separate from the other content. The website is branded with the same look and feel as the product. Here's an example from Yelp:

<a href="https://www.yelp.com/developers/documentation"><img src="images/yelpapi.png" alt="Yelp API documentation" /></a>

I hinted at this earlier, but with API documentation, there isn't an application interface that the documentation complements. In most cases, the API documentation itself is the product that users navigate to use your product. As such, users will expect more from it.

One of the challenges in using documentation generated from Swagger, Miredot, or some other document generator is figuring out how to integrate it with the rest of the site. Ideally, you want users to have a seamless experience across the entire website. If your endpoints are rendered into their own separate view, how do you integrate the endpoint reference into the rest of the documentation?

If you can integrate the branding and search, users may not care. But if it feels like users are navigating several sites poorly cobbled together, the UX experience will be somewhat fragmented.

{% include random_ad.html %}

Think about other content that users will interact with, such as Marketing content, terms of service, support, and so on. How do you pull together all of this information into a single site experience without resorting to an overbloated CMS like Drupal or some other web framework?

## Pattern 3: Abundant code samples {#abundant_code_examples}

More than anything else, developers love code examples. Usually the more code you can add to your documentation, the better.

Here's an example from Evernote's API:

<a href="https://dev.evernote.com/doc/articles/note-sharing.php"><img src="images/evernotecodesamples.png" alt="Evernote code examples" /></a>

The writers at Parse [emphasize the importance of code samples](http://blog.parse.com/learn/engineering/designing-great-api-docs/):

>Liberally sprinkle real world examples throughout your documentation. No developer will ever complain that there are too many examples. They dramatically reduce the time for developers to understand your product. In fact, we even have example code right on our homepage.

For code samples, you want to incorporate syntax highlighting. There are numerous syntax highlighters that you can usually incorporate into your platform. For example, Jekyll uses either Pygments or Rouge. These highlighters have stylesheets prepared to highlight languages based on specific syntax.

{% include random_ad.html %}

When you include a code sample, you usually instruct the syntax highlighter what language to use. If you don't have access to a syntax highlighter for your platform, you can always [manually add the highlighting using syntax highlighter library](http://code.tutsplus.com/tutorials/quick-tip-how-to-add-syntax-highlighting-to-any-project--net-21099).

Another important element in code samples is to use consistent white space. Although computers can read minified code, users usually can't or won't want to look at minified code. Use a tool to format the code with the appropriate spacing and line breaks.

Sometimes development shops have an official style guide for formatting code samples. This might prescribe details such as the following:

* spaces inside of parentheses
* line breaks
* inline code comment styles

For example, here's a [JavaScript style guide](http://google.github.io/styleguide/javascriptguide.xml).

If developers don't have an official style guide, ask them to recommend one online, and compare the code samples against the guidelines in it.

## Pattern 4: Longish pages {#longish_pages}

One of the most stark differences between regular GUI documentation and developer documentation is that developer doc pages tend to be longer. In a [post on designing great API docs](http://blog.parse.com/learn/engineering/designing-great-api-docs/), the writers at Parse explain

>Minimize Clicking
>
>It's no secret that developers hate to click. Don't spread your documentation onto a million different pages. Keep related topics close to each other on the same page.
>
>We're big fans of long single page guides that let users see the big picture with the ability to easily zoom into the details with a persistent navigation bar. This has the great side effect that users can search all the content with an in-page browser search.
>
>A great example of this is the Backbone.js documentation, which has everything at your fingertips.

Here's the Backbone.js documentation:

<a href="http://backbonejs.org/"><img src="images/backbonejs.png" alt="Backbone JS" /></a>

For another example of a long page, see the Reddit API:
<a href="https://www.reddit.com/dev/api"><img src="images/redditpage.png" alt="Backbone JS" /></a>

Why do API doc sites tend to have long-ish pages? Here are a few reasons:

* **Provides the big picture**: As the Parse writers indicate, single-page docs allow users to zoom out or in depending on the information they need. A new developer might zoom out to get the big picture, learning the base REST path and how to submit calls. But a more advanced developer already familiar with the API might only need to check the parameters allowed for a specific endpoint. The single-page doc model allows developers to jump to the right page and use Ctrl+F to locate the information.
* **Many platforms lack search**: A lot of the API doc sites don't have good search engines. In fact, many lack search altogether. This is partly because Google does such a better job at search, the in-site search feature of any website is going to be meager by comparison. Also, some of the other document generator and static site generator tools just don't have search (neither did Javadoc). Without search, you can find information by creating long pages and using Ctrl+F.
* **Everything is at your fingertips**: If the information is chunked up into little pieces here and there, requiring users to click around constantly to find anything, the experience can be like playing information pinball. As a general strategy, you want to include complete information on a page. If an API resource has several different methods, splitting them out into separate pages can create findability issues. Sometimes it makes sense to keep all related information in one place, or rather "everything at your fingertips."
* **Today's navigation controls are sophisticated**: Today there are better navigation controls for moving around on long pages than in the past. For example, [Bootstrap's Scrollspy feature](http://getbootstrap.com/javascript/#scrollspy) dynamically highlights your place in the sidebar as you're scrolling down the page. Other solutions allow collapsing or expanding of sections to show content only if users need it.

Usually the long pages on a site are the reference pages. Personally, I'm not a fan of listing every endpoint on the same page. Either way you approach it, developers probably won't care that much. They will care much more about the content on the page rather than the page length.

## Pattern 5: API Interactivity {#interactive_api_explorers}

A recurring feature in many API doc publishing sites is interactivity. Swagger, readme.io, Apiary, and many other platforms allow you to try out calls and see responses.

For APIs not on these platforms, wiring up an API Explorer is often done by engineers. Since you already have the API wiring to make calls and receive responses, creating an API Explorer is a feasible task for a UI developer.

Here's a sample API explorer from Twitter:

<a href="https://dev.twitter.com/rest/tools/console"><img src="images/twitterapiexplorer.png" alt="Twitter API Explorer" /></a>

Are API explorers novel, or extremely instructive? If you're going to be making a lot of calls, there's no reason why you couldn't just use cURL to quickly make the request and see the response. The API Explorer provides more of a GUI, however, that makes the endpoints accessible to more people. You don't have to worry about entering exactly the right syntax in your cURL call -- you just have to fill in the blanks.

However, API Explorers tend to work better with simpler APIs. If your API requires you to retrieve data before you can use a certain endpoint, or if the data you submit is a JSON object in the body of the post, or you have some other complicated interdependency with the endpoints, the API Explorer might not be as helpful.

Nevertheless, clearly it is a design pattern to provide this kind of interactivity in the documentation.

If your users log in, you can store their API keys and dynamically populate the calls with API keys. Not doing so seems a bit lazy with the user experience. The API key can most likely be a variable that stores the user's API key.

However, if you store customer API keys on your site, this might create authentication and login requirements that make your site more complicated. If you have users logging in and dynamically populating the explorer with their API keys, you'll probably need a front-end designer and web developer to pull this off. [readme.io](http://readme.io) is one of the platforms that allows you to store API keys for users and dynamically populate your code samples with them.

## Pattern 6: Edit on Github buttons {#edit_on_github_buttons}

One common design pattern in API docs is a button or link that says "Edit on Github." This button takes users to the source file on Github, where they can edit the content. I'd seen this button on many API doc sites, so I decided to give it a try with my own docs.

Here's what my docs look like with the Edit on Github button:

<a href="https://developer.amazon.com/public/solutions/devices/fire-tv/docs/getting-started-developing-apps-and-games-for-amazon-fire-tv"><img src="images/myeditongithubbutton.png"/></a>

When I announced the new Github integration to my project team, the project manager responded enthusiastically about the potential for "crowdsourcing docs."

The term "crowdsource" hadn't been in my mind when putting my docs on GitHub, but I nevertheless welcomed the idea.

It seemed I was well on my way to setting up a massive collaboration engine for documentation. I expected developers to immediately start logging issues, submitting pull requests, and more. But even after a few weeks, almost no one made an edit, logged an issue, or contributed any pull requests. (Well, except one mysterious person, who created a small PR but then closed it.)

In a short time period one can't expect much, especially without promoting and educating users about it. Still, I hoped for a bit more.

I decided to ask the gurus on WTD Slack how they got developers to contribute edits.

Eric Holscher said I need to build up a culture that cares about documentation, and then encourage developers to help.

Anne Gentle said that developers are more likely to contribute to docs when the docs co-exist in the same repos as the code.

I understand that getting developers to contribute to docs is not a change that happens overnight. Culture is always hard to transition.

Putting docs into the same repo as the code might be helpful, but not all docs have corresponding code repos. Additionally, for docs that do have corresponding repos, devs may want to release quarterly (after some QA and verification). In contrast, I want to make doc updates as needed, on the fly.

As I was browsing around on some tech comm blogs, I ran across this [slide deck][sarah] from Sarah O'Keefe about her keynote at tcworld India.

<figure><a href="http://www.scriptorium.com/2017/03/tcworld-india-2017-focus-future/"><img src="images/isitafad.png"/></a><figcaption>Slide 29</figcaption></figure>

Although I don't have more details about this part of her presentation, the word "fad" got me thinking. Is docs as code a fad? How exactly is the docs-as-code trend different from the wiki trend, which peaked about eight years ago and then floundered?

Let's turn back the clock a bit. About 8 years ago, many people in tech comm were excited about wikis. Why? Wikis allowed anyone to contribute to a body of information, without knowledge of anything more than a simple wiki syntax.

Wikis decentralized docs by enabling push-button collaboration and publishing. Sites like Wikipedia showed us the power of collaboration on a massive scale, and wiki platforms took off.

In [My Journey To and From Wikis: Why I Adopted Wikis, Why I Veered Away, and a New Model][1], I wrote about why I embraced wikis. I embraced wikis because I alone didn't have the needed perspective to address all the information needs that users would have. I wanted to tap into the users' insights and knowledge to complete the gaps in my docs. I wrote:

> When the community owns the content, community members can also keep content up to date when the original author flounders. Many times the original author isn't aware of all the places that content is out of date. As community members use the documentation, they often find places that need updating. Because the content is on a wiki, they can quickly and easily make these updates.

![Shared ownership](images/shared-ownership.png)

Additionally, I wanted to iterate continuously on the docs. Wikis removed the need to build, publish, and deploy content. It all happened magically in the browser when you hit save.

I also noticed that every interesting site online had a massive community driving it:

> The potential reward in collaborating with the masses is an idea that shouldn't be underestimated. Almost everything interesting happening on the web comes about through community. Think of any well-known site. Its innovation isn't the technical features of the platform but rather the community.

During the height of wikis, I had my docs on Mediawiki and also wrangled the efforts of a large volunteer community. I worked for a non-profit in Utah at the time, and many people wanted to help out. Although docs were on a wiki and editable by anyone, we primarily tried to crowdsource our blog. We had dozens of volunteers who indicated they wanted to write, and I started assigning articles on various topics to them.

To manage 60+ different non-specialized volunteer writers, I used a lot of index cards pinned up into various quadrants on my cube walls. I invited volunteers to tackle specific subjects they had some knowledge about, and then helped connect them with the right info to write it.

I found the [90-9-1][2] rule about volunteers to be true. 90% of the people on any community project remain quiet lurkers; 9% contribute moderately, and 1% contribute actively. But even with just 9% + 1% of people contributing, the volunteer writing effort showed some fruits. We generated about 18 articles in total (over a period of about 6 months). It seemed superficially successful.

Then I started measuring times. I began to realize that the overhead of getting volunteers to write outweighed the time I spent managing the volunteers. If it took 2-3 hours to manage a volunteer through the writing cycle, or an equivalent 2-3 hours for me to write the article myself, was I really gaining a lot?

One barrier insiders frequently ran up against was the inability to access knowledge behind the firewall. Volunteers didn't have access to the insider resources they needed. They didn't have any of the following:

* JIRA sites
* SharePoint sites
* Test environments
* Internal contacts
* Product roadmaps
* Team standups and other meetings

In short, they lacked the information, resources, and contacts to actually get the information they needed to write the articles. But if I had to get all this info and somehow transfer it to the volunteer writer, I felt I'd done most of the work already.

![Access to insider knowledge](images/knowledge-needed600.png)

Besides contributing to the blog, some people also made edits to docs on the wiki. But the same problems existed. All contributions happened post-release, so their edits were applied to existing docs. The people who made edits to existing docs usually did so in awkward ways that required fixing or other edits.

{% include random_ad.html %}

To make an addition to docs, you can't just add a paragraph wherever you want. You have to understand the whole so you know what exists and where. You also have to understand doc style and conventions and voice so that your content can fit seamlessly in. It's not so easy, especially for someone who might not want to dedicate much time to this effort.

Ultimately, I don't remember more than 10 small edits to tech docs overall.

Eventually, the efforts to crowdsource the blog and wiki died. I explained why the effort failed:

> I tried the volunteer writing model for more than a year. I kept thinking that if I just figured out the right approach, it could take off into endless productivity. With 100+ writers creating content on a regular basis, we could publish new blog posts daily. We could translate documentation overnight. We could sketch out a skeleton of tasks to write about, and then have volunteers fill in the details. It didn't happen.
>
> The reasons, as I have stated, can be summarized in three bullet points:
>
> * Writing requires insider knowledge that volunteers lack.
> * Professional writing standards are usually beyond volunteer capabilities.
> * The management overhead in coordinating volunteer writing barely outperforms the return.
>
This marked a turning point for me in using wikis as a collaborative platform.
>
> Because collaborative writing failed, I didn't see any need to continue using wikis as a platform, since help authoring tools could provide more robust outputs in different formats.

To make crowdsourcing work, you have to chunk tasks into a little, almost effortless pieces of work. When you multiply that tiny effort by thousands of contributors, you suddenly have something significant.

I compared the crowdsourcing strategy to moving projects. If you put everything in boxes, each volunteer can easily grab and carry a box. But if everything isn't already packed up in easy-to-transport boxes, the volunteers flounder.

![Effortless chunks of content](images/moving-service-project-600.png)

But writing doesn't granularize into little effortless chunks/boxes like that, so these efforts fail. For example, you can't ask 100 people to each write 1 sentence in an article.

I also found that you don't need a wiki to enable collaboration. In fact, volunteers preferred to make edits to Word documents shared via Dropbox. I wrote:

> Many volunteers who write articles are uncomfortable publishing them directly on the wiki. They prefer to write in Microsoft Word and upload the articles to Dropbox or JIRA.....When I started to realize that wikis weren't a necessary platform for interacting with volunteers, I started to rethink the wiki as a platform. You can have a lot of success with community and collaboration without using a wiki at all. In fact, because the content is not being published live, for the whole world to see and immediately interact with, volunteers actually feel more comfortable contributing.

This is a significant observation that is worth expanding on. In my experience, most engineers don't want their content to make it directly into production, without an editorial workflow. This is their worst fear, actually. They want to do quick brain dumps on internal wiki pages (or in Word docs) and send them to tech writers to clean up, verify, and polish before publishing.

With that context, let's look at docs as code again. Suppose you're implementing docs as code for purposes of crowdsourcing docs among engineers. If writing docs isn't the engineers' main job, the result will likely be the same as crowdsourcing efforts with wikis -- *dismal*.

Sure, there will be some shimmering lights here and there. Just like some wikis *were* (or *are*) successful. But in general, the majority of tech writers who try to crowdsource their docs will find a lack of significant contributions. The contributions they do get will demand editorial and management overhead.

(Note that from a tech comm career perspective, this is good. This means companies can't crowdsource you out of a job. No new tech platform or workflow is going to make that magic river of free documentation start flowing.)

Wikis may have died out with docs as a way to crowdsource info, but they didn't die out as a corporate platform. Wikis, in fact, have become the **standard corporate platform** for employees to share and publish information. Wikis such as Confluence have largely replaced SharePoint.

In my last 3 jobs, wikis were used across the company for employees to write and publish internal information. In my current job at Amazon, there are at least a million internal wiki pages (across multiple wiki platforms -- Mediawiki, Confluence, and XWiki). Why? Because wikis give people *easy tools to do their jobs*. (Or at least it simplifies the part of their job that involves sharing information.)

Docs-as-code tooling can have similar gains. It can empower engineers to do their jobs as far as documentation is concerned. If it's the engineer's **job** or **role** to document something, the engineer will be more likely to do it using the coding tools and workflows familiar to them.

Even for non-engineers, giving people a simple tool and publishing workflow can help people author and distribute content. The simple tool might be Markdown syntax and a repository that automatically builds and deploys the content.

Again, forget about crowdsourcing. Docs as code is giving people simple, free, open-source tools to do the writing/publishing tasks they need to do. For that purpose alone, docs as code has the power to move beyond just being a fad. There is real value in empowering common people to author and publish content (without expensive help authoring tools, without knowledge of XML syntax, without years of professional tech writing know-how, etc.).

<img src="images/simplifiedauthoringtools-01.png" />

Simplification of authoring and publishing tools is at the heart of the docs-as-code movement. No more black boxes that handle your content. No more expensive, proprietary systems to submit to. No more impossible-to-adjust-outputs-unless-you-know XSLT/XSFO-XS-whatever to style your output. You can integrate it all simply, easily, and inexpensively. It works with other web tools and other systems too. You can integrate with the latest web technologies and tools. You can leverage help from modern UX devs.

Here are some of the revolutionary benefits that docs-as-code tools provide:

- Read in plain text with Markdown (or other similar lightweight syntax). You don't need a special editor to provide a WYSIWYG display because of all the angle bracket tags.
- Manage files as plain text (rather than binary files only machines can read). This allows version control systems like Git to do diffs on the content.
- Manage files in version control repos. You can branch content to manage multiple versions without creating various copies of files. You can collaborate in a distributed fashion with multiple team members.
- Automate builds and deployment of your content from repos using scripts. Because you're working with simple text files, you can integrate this content into deployment scripts.

In my GitHub repo, there are active contributions from a writer who is our localization manager. She's been editing the Japanese translations. When we started, she was only marginally familiar with basic HTML. But with docs-as-code tools, she regularly updates Markdown files, commits to the repo, pulls updates, and runs build scripts.

Simplicity has its own tradeoffs, though. In exchange for simpler tools, you give up more robust functionality. In a recent comment on a previous post, a reader who was accustomed to using DITA and DocBook for over a decade lamented about the loss of switching to Markdown. [Kate writes][kate]:

> I am desperately trying to embrace Markdown after 10 years of using DocBook and then DITA. But I am increasingly finding it difficult.
>
> I'm not certain that building/generating docs from Markdown is that much simpler. I think that a lot of customization is still required to get a nice output. And if people are increasingly adding HTML in order to be able use a table or to create an ID for a section, are we really making things that much simpler? There seems to be a lot of customizations and plugins, etc to do things like check links--these are great, but they can easily become out of date.
>
> I miss having the concept of a map file that contains pointers to my topics.
>
> I miss using oXygen. I miss it's SEARCH. I miss using it's link checker. I miss seeing reused content appear inline in my topic. I miss being able to filter out conditioned content. I miss wysiwig table editors and I miss seeing my images inline. I miss seeing tag errors inline. I am a fairly technical person--I often used the text editor more than the Wysiwyg editors...

While some aspects of authoring are simplified, others -- such as developing your own custom output, or engineering search functionality -- become more complex. In the end, you have to weigh whether the simplification of some aspects is worth the complication of others.

For example, is writing in a simple Markdown syntax worth it if it makes it more problematic to push your content through translation workflows? Is a system that allows for occasional edits from contributing engineers worth it if you have to develop a number of custom, complicated programming scripts to validate, build, and deploy your content?

If you can cultivate a community where devs contribute their time and attention to docs, great. But if the crowdsourcing efforts fail, it doesn't mean docs as code or even wikis failed. You've still given people simple tools to write and publish documentation.

Although I mentioned crickets as a response for crowdsourcing docs in my current role, it's not entirely fair. We do have several groups outside of our own that learned the doc-as-code tools and published their docs. They didn't edit my docs -- they created their own.

Regardless of the participation, I'm planning to leave my docs on GitHub for a lot longer before evaluating the efforts. I suspect it's too early to evaluate much of anything. Most engineers probably don't realize they *can* edit docs, so I have some education efforts to make both internally and externally. Only after I get the collaboration engine moving along can I begin to evaluate whether the tradeoffs for simplicity were worth it.

## Dealing with more challenging factors

A lot of the solutions we've looked at tend to break down when you start applying more difficult requirements in your tech comm scenario. If you have to deal with some of these challenges, you may have to resort to more traditional tech comm tooling.

* Translation
* Content re-use
* Versioning
* Authentication
* PDF

You can handle all of this through a custom platform such as Jekyll, but it's not going to be a push-button experience. It will require a higher degree of technical skill and maneuvering.

With my Jekyll doc theme, I'm single sourcing one of my projects into about 9 different outputs (for different product lines and programming languages). Jekyll provides a templating language called Liquid that allows you to do conditional filtering, content re-use, variables, and more.

To handle PDF, I'm using a tool called Prince that converts a list of HTML pages into a PDF document, complete with running headers and footers, page numbering, and other print styling.

To handle authentication, I upload the content into a Salesforce site.com and use Salesforce as the authentication layer. It's my least favorite part of the solution, but a more integrated authentication will probably involve some engineering resources to help out.

## Some non-patterns

Finally, I just want to mention some non-pattern. By this, I mean these are elements that aren't as common in API doc sites:

* PDF output
* Mobile display
* Comments on pages
* Video tutorials

By non-patterns, it's not to say these elements aren't a good idea. But generally they aren't emphasized in many of the API doc sites.

[1]: http://idratherbewriting.com/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/

[2]: https://en.wikipedia.org/wiki/1%25_rule_(Internet_culture)
[sarah]: http://www.scriptorium.com/2017/03/tcworld-india-2017-focus-future/
[kate]: http://idratherbewriting.com/2016/10/28/markdown-or-restructuredtext-or-dita-choosing-format-tech-docs/#comment-3193454817
