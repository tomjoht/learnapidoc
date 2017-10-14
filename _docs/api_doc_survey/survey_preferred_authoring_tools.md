---
title: What authoring tool/syntax do you use?
permalink: /survey_preferred_authoring_tools.html
course: "Documenting REST APIs"
weight: 12.3
sidebar: docapis
section: survey
path1: /survey.html
---

{: .survey}
[Survey question](survey_introduction.html): What tool or authoring syntax do you use to create your programming guides? (DITA, Flare, Markdown?)

There were 38 responses, which I have represented as follows:

![authoringtools](images/authoringtools.png)

Once more, in hindsight, I realize how poorly worded my survey question was. I didn't define what I meant by “programming guides.” By “programming guides” I meant those tutorials outside of any auto-generated content. Presumably if you're generating API reference documentation from a platform-based API like Java, you would use Javadoc, for C++ you would Doxygen, and maybe for REST, you might use Swagger.

Fortunately, I think most people guessed my original meaning and answered correctly, because only two responses listed auto-generated docs. But one person's response, “Not sure I understand the question. javadoc, doxygen, framemaker, webworks, straight HTML”, suggests that others may have misinterpreted this as well.

Another unfortunate nuance with the question is that I don't distinguish between tools used in the past versus tools used today. Someone may have used Framemaker in the 90s for their API doc but has since moved on to Confluence. However, both tools are reflected as tools API doc writers use.

Most striking with the results is the Other category. Rather than listing all of the responses with one or two answers, I lumped them into a category that I called “Other.” _Other_ responses included the following:

*   Markdown into Doxygen: 2
*   Home-built CMS: 1
*   XML-based doc mgmt system: 1
*   Notepad++: 2
*   XML: 2
*   FrontPage: 1
*   Document!X: 1
*   Corilla: 1
*   Dreamweaver: 1
*   Authorit: 1
*   Javadoc: 1
*   JSDoc: 1
*   Mediawiki: 1
*   DocBook: 1
*   Webworks: 2
*   Sphinx: 2
*   reStructuredText: 1
*   LaTeX: 1
*   general wiki: 1
*   Help&Manual: 1
*   Robohelp:2
*   SPFE: 1

Despite the fragmentation of tools, we do have some clear winners: Confluence, raw HTML, DITA, Flare, Markdown, Framemaker, and Word.

By the way, when most people list Word, they do so with some qualification. For example, one person wrote, “One job involved using Word (shudders).” Word is usually a tool forced upon someone like a disease they don't want and have been trying to get rid of.

In contrast, one person wrote, “Given the choice and a clean slate, I'd prefer markdown, reStructuredText or if resources allow, DITA .” This answer shows the preferences people have, and which I will comment on later.

## Wikis are not dead

One takeaway here is that Atlassian Confluence remains a popular tool in the API doc space (despite its [problems with content re-use and markup](http://idratherbewriting.com/2014/09/24/two-major-confluence-problems-poor-content-re-use-and-no-wiki-markup/)). I didn't ask whether the tools were used internally or externally, but I imagine that Atlassian Confluence is a common platform for internal collaboration when you have a lot of engineers contributing information to a project. While SharePoint may have been more common 10 years ago, I think Confluence has taken a lead (though I'm only speculating based on my own experience).

Although I previously used wikis a lot and then moved beyond them (see my series, [Using wikis for technical documentation in a community](http://idratherbewriting.com/series/my-journey-to-and-from-wikis/) for details), I am starting to wonder if wikis aren't the killer platform after all. Although wikis trend towards redundant, outdated, trivial content (ROT), they also tend to contain more substantial, robust information in places – if you can only find it, and figure out what's current and what's outdated.

In a way, wikis are like the web itself. You land on a gem here and there, among many stub-like pages, that has in-depth information contributed by some highly technical person who, perhaps after a moment of triumph, decided to document something with detail. And then moved on.

Atlassian Confluence also works well as a companion tool to JIRA, which is a common bug-tracking tool used by every IT department I've ever worked for. Atlassian's ability to combine JIRA and Confluence seems like a major win.

Regardless of the platform, should we be using wikis with API doc? I'm not sure, but the fact that a collaborative authoring tool leads the pack in popularity means that wikis should be serious considerations.

## Fragmentation of tools

The other most striking result is the Other category. Although wikis (particularly Confluence) led the suvey, they didn't whip the competition. 13 out of 38 is only 34%, and from those who are using Confluence, I bet at least a third are using it only internally.

What we see in the Other category is a fragmentation of tools, a trend toward many different solutions. I wrote about this trend earlier in a couple of posts:

*   [Is tool fragmentation in tech comm a good thing?](http://idratherbewriting.com/2014/08/05/tool-fragmentation-tech-comm-good-thing/)
*   [Benefits of tool diversity, part II](http://idratherbewriting.com/2014/08/07/benefits-tool-diversity-part-ii/)

In part II, I celebrate the possibilities that non-standardization can bring for potentially leading to better ways of authoring. If everyone used the same approach, we'd all be stuck in a boring cycle of sameness, with little innovation or serendipitous advancement. Instead, by trying different tools and markups and approaches, you might really run across something that revolutionizes communication processes in radically better ways.

## Working in raw code/text file formats

Let's look at another trend: raw HTML, Markdown, and DITA. What do all of these approaches have in common? They're plain text formats that you can construct in something as simple as a text editor, such as Sublime Text, or an IDE, such as Eclipse.

Those writing raw HTML might be using Markdown as a gateway into the HTML, or they really just may be coding everything in HTML. Honestly, HTML markup is simpler than DITA markup, so there's really not a lot of disadvantages to just using straight HTML in your authoring (except that you can't re-use or filter content so nimbly).

I like to think that the use of HTML, Markdown, and DITA suggests a preference for working in code, for working with plain text in editors that allow you to manipulate Java just as well as documentation. Writers working in API doc are code savvy, and they like putting their own tags around content. They like working in code editors, whether those code editors are plain text editors where they're adding HTML markup, or XML editors where they're adding DITA tags, or perhaps some Markdown editor that allows them to add Markdown syntax. In plain text, you don't have to play guessing games about formatting and display issues.

Given the preference for working in plain text code formats, it surprises me that Confluence, which lacks a wiki syntax that you can edit, remains so popular. Confluence does have macros that allow you to paste code snippets, so perhaps these macros are good enough. They allow plain text in places, and rich text everywhere else.

## Tools not seen

How about a brief foray into negative space. What tools are absent from the above? My heart sinks to not see WordPress mentioned anywhere. The most popular CMS on the Internet, powering a quarter of all websites online, doesn't even have one person in my survey using it for developer documentation.

Another striking absence is the lack of static site generators, like Jekyll and Github. For all the hullabaloo I hear about static site generators trending to replace database-driven models, I didn't see much evidence of it in my survey. (For more on flat files versus database models, see my post [Flat file systems versus database models for help](http://idratherbewriting.com/2014/11/05/flat-file-systems-versus-database-models-for-help/).) On the other hand, except for Confluence, there also wasn't a trend toward database models either.

## Conclusion

Discussions about tools are more charged than any other topic in tech comm. Although I'm inclined to say my sample size was too small to generalize a result, I don't think that's the case. The result is that tools are fragmented and there is no generalizable trend. If I were to increase my sample size, the only category that would grow larger is Other.
