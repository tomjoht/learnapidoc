---
title: "Developer Documentation Trends &mdash; Survey Results"
permalink: /docapis_trends.html
keywords:
course: "Documenting REST APIs"
weight: 1.9
sidebar: docapis
section: introtoapis
path1: /docapis_introtoapis.html
---

I recently [conducted a survey](/blog/developer-documentation-survey-2020/) about trends for those creating documentation for developers and engineers. You can view the results [here](../learnapidoc/slides/devdoctrends_results.html):

<a href="../learnapidoc/slides/devdoctrends_results.html"><img src="https://idratherbewritingmedia.com/images/api/devdoctrendssurveyresultstitle.png" alt="Developer Documentation Survey Results" style="max-width:500px; border: 1px solid #444"  /></a>

The survey results are presented in a slide format.

{% comment %}
## Survey summary

Audience limited to people writing docs for developers/engineers only
50 questions, mostly multiple choice
Promoted on my blog, Linkedin, Twitter
Survey was open from January to March, 2020
405 completed the survey
idratherbewriting.site/devdoctrendsreport

## Participant statistics

https://idratherbewritingmedia.com/images/api/trends-participant-statistics.png

## Previous surveys

## Trying to pin down noteworthy trends

During the last holiday break, I was sitting inside a cozy hotel room in Red River, New Mexico, on vacation but also thinking about tech comm trends. Every year, as one year ends and a new year begins, bloggers and other writers address trends for the coming year. Especially since this topic has always gathered more hits than other posts in the past, I wanted to write a new post about trends.

I found two recent research efforts about trends to be the most noteworthy: Saul Carliner's [Tech Comm Census results](https://www.stc.org/intercom/download/2018/) (published in Dec 2018 *STC Intercom*) and [Scott Abel's Benchmarking Survey](http://public2.brighttalk.com/resource/core/217857/the-state-of-technical-communication_474463.pdf) (also summarized in the same *Intercom* issue).

<img src="https://idratherbewritingmedia.com/images/lightningtalk_frustration.svg" alt="Reading the latest industry surveys on tech comm trends" />

Saul Carliner set about gathering a "Tech Comm Census" by gathering responses from 60 questions covering seemingly every facet of the technical communicator's work life. He partnered with the STC to promote the survey and gathered 676 responses. The results are interesting and encouraging, especially the finding that 70% of technical writers are satisfied with their job. At the same time, the survey seemed to miss many of the trends I'd been seeing within the developer doc space around Write the Docs and docs-as-code tools. I felt like the survey's results only partially represented my tech comm world.

The census reports only generally about "technologies" that technical communicators use, noting that "The most widely used technology by participants was word processing, used by 76 percent of participants. Next were Acrobat (66 percent), spreadsheets (65 percent), presentation graphics (51 percent), and graphics (43 percent)."

All tools (authoring, graphics, storage, planning, etc.) are lumped together, so it's hard to sort them out. The table looks like this:

<a href="https://www.stc.org/intercom/download/2018/"><img src="https://idratherbewritingmedia.com/images/technologiesusedsaul.png" style="max-width: 400px; border: 1px solid #dedede" alt="Technologies used" /></a>

If you narrow that down to actual authoring tools, it looks like this:

* Microsoft Word or Google Docs: 76%
* Help-authoring tools: 31%
* FrameMaker, Indesign: 30%
* CCMSs: 20%
* DITA: 14%

Saul acknowledged that his survey did not segment based on audiences tech writers write for, such as engineering versus non-engineering audiences. Another limitation was that 591 of the 676 survey respondents were STC members, which wasn't necessarily representative of the tech comm profession as a whole (see "A Note from the Guest Editor," Dec 2018 *Intercom*).

Scott Abel's [*Technical Communication Industry Benchmarking Survey*](http://public2.brighttalk.com/resource/core/217857/the-state-of-technical-communication_474463.pdf) (summarized in an *Intercom* article titled [Survey Reveals Top Tools, Trends, and Technologies in Use in Technical Communication Teams](https://www.stc.org/intercom/2019/01/survey-reveals-top-tools-trends-and-technologies-in-use-in-technical-communication-teams/)) gathers information about tools, trends, technologies, and other details from 600+ professional technical communicators. No details are provided about the intended audiences the respondents write for (e.g., engineering vs non-engineering audiences), but I assume the demographics of both authors and audiences generally align with those who read [The Content Wrangler](http://contentwrangler.com) and attend conferences such as [Information Development World](https://www.informationdevelopmentworld.com/), which tend to focus on content strategy, enterprise content re-use, multi-channel publishing, localization, chatbots, and more.

Scott's survey does actually include some API-related information. He found that "Fifty-eight percent of technical communication teams surveyed say they currently document APIs; 10 percent plan to in the future." One challenge tech writers face in documenting APIs is "using software tools not optimized for ease-of-use or writing efficiency, and lack of experience," Scott writes.

These responses about APIs are more relevant to my tech comm world, but they don't go far enough into dev docs for my interests. As with Saul's census, Scott's survey hardly mentions docs-as-code tools or workflows. In both surveys, communities like [Write the Docs](https://writethedocs.org/) aren't mentioned, and other more developer-oriented topics are left out, such as how writers integrate with engineering scrum teams, whether writers auto-generate the OpenAPI spec or manually create it, whether docs reviews are conducted like code reviews, and so on.

Granted, just because *I'm* interested in these more developer-documentation-related topics doesn't mean general tech comm surveys need to cover it. I just feel that some of the more interesting trends, especially related to the space I'm in, were overlooked. There are actually some fascinating trends taking place that I feel should have been noted.

What perplexed me most was to see Adobe FrameMaker and Microsoft Word used so prominently. Scott writes,

> While 47 percent of technical communication departments use Microsoft Word as their primary authoring tool, tech writers use a wide variety of software tools. For example, in tech comm departments that create multi-channel, multi-language content for highly configurable products or services, Adobe FrameMaker is the authoring tool of choice.
>
> Twenty percent of all technical communication teams surveyed say they create documentation using the Adobe Technical Communication Suite (a package of several Adobe products, including Adobe FrameMaker, bundled into one solution). Twenty-nine percent of technical writing teams use FrameMaker as their primary authoring tool; while the majority (90 percent) of those teams also sometimes utilize sister products—Adobe Illustrator and Adobe InDesign—to help them craft technical documentation deliverables.
>
> Other software tools technical communication teams use include Author-it (17 percent), Oxygen XML Editor (16 percent), Oxygen XML Author (14 percent), Arbortext (9 percent), MadCap Flare (5 percent), and Oxygen XML Web Author (3.5 percent).

Although the tools numbers between Scott and Saul's surveys more or less align, I knew these numbers didn't represent the tools used in the developer doc community. In fact, one recruiter for API doc positions told me that listing FrameMaker on your resume is a sure way to red flag yourself out of the position.

Upon closer reading of the Benchmarking report's results, I realized that the report doesn't say how many are actually using XML tools &mdash; the report says that for those who answered "Yes" to using XML, 73% are using DITA.

<a href="http://public2.brighttalk.com/resource/core/217857/the-state-of-technical-communication_474463.pdf"><img src="http://idratherbewritingmedia.com/images/xmlcontentresultsscott.png" alt="XML usage and tools"/></a>

We don't know how many out of 600 answered Yes to using XML. It could be six or six hundred. Likewise, the statistic about FrameMaker's usage at 29% qualifies that segment only to "tech comm departments that create multi-channel, multi-language content for highly configurable products or services." How many departments like this are there? Again, six or six hundred?

At any rate, the tools usage reported by the Benchmarking survey isn't too far off from previous WritersUA Tools surveys, when Joe Welinske used to measure tools used. In 2014, WritersUA found around 52% of writers (199 out of 382 respondents) used FrameMaker ([2014 WritersUA Tools Survey](http://www.welinske.com/2014-writersua-tools-survey/)). At some point, Joe stopped measuring tool usage.

Scott's survey does find that 21% of technical communicators use Markdown to create docs:

<a href="http://public2.brighttalk.com/resource/core/217857/the-state-of-technical-communication_474463.pdf"><img src="https://idratherbewritingmedia.com/images/markdownresultsscott.png" alt="Markdown usage" /></a>

This statistic doesn't seem pre-filtered and also fits in with my larger interests related to API documentation.

### State of API Report by Smartbear

### Previous survey about engineers

also include this: https://idratherbewriting.com/2019/03/21/trends-with-engineers-writing-docs/#results-and-analysis

### What's missing: a survey focused on trends in developer docs

Despite these thorough and informative surveys to gather insights in our field, I can't help but feel like they're missing more detail about trends taking place within the developer documentation space. Whenever tools are discussed in these surveys, the docs-as-code approach isn't mentioned. Communities like Write the Docs seem non-existent. Other topics seem left out, such as how writers integrate with scrum teams, or whether they are auto-generating the OpenAPI spec or manually creating it. Are so many authoring groups really using FrameMaker and distributing PDFs?

Overall, I am not sure that these survey results depict the community of tech writers creating technical content for the developer community, so I wanted to gather some more data on my own to see how different the developer documentation community might differ from other communities. I created a survey of 50 questions and hope to gather responses from at least 200 people. I'll leave the survey open for two months (until March 1, 2020) and promote it via my website and newsletter. I'll limit the audience to only those creating docs for developer audiences.


**MAIN SURVEY CATEGORIES**

1. Tools
2. Outputs
3. Processes
4. API
5. Profile

## 1. Tools

Questions related to tools:


https://idratherbewritingmedia.com/images/api/trends-categories-of-tools2.svg

**Tool use different**

* Many working in Markdown treat it like DITA — the tool is irrelevant because support for the format comes from so many platforms/tools.
* No longer a single tool for authoring, review, and publishing. Many different tools are used in different scenarios/purposes. See [Jamstack examples](https://jamstack.org/examples/).
* Some people working in dev doc work only in code annotations and OpenAPI specs. * There is no "authoring tool" apart from their IDE (e.g., IntelliJ IDEA)

**Tools influence content**
https://idratherbewritingmedia.com/images/api/trends-history-of-tools.svg

Article: [*How* you write influences *what* you write — interpreting trends through movements from PDF to web, DITA, wikis, CCMSs, and docs-as-code](https://idratherbewriting.site/howinfluenceswhat)

**EMERGING PICTURE**
* Writers use Confluence/Word/Google Docs for early content development.
* They assemble and build docs using a static site generator (Hugo, Jekyll, Gatsby, MkDocs) working in Visual Studio Code as the editor.
* They publish using a docs-as-code model with Git to trigger a CI/CD model deploying on company's own infrastructure.
* There's also a decent amount of wikis, Oxygen XML, and MadCap Flare use.


## Outputs

EMERGING PICTURE
Writers primarily create web content that fits into a larger developer portal.
The writers often help shape and build both the publishing solution and portal.
Localization, video tutorials, and PDF aren't overwhelmingly produced but do constitute about 1/4 of the output.


## Processes

EMERGING PICTURE

Writers participate on scrum teams, sometimes in limited capacity.
They review docs using the same tools engineers use to review code.
Engineers contribute through pull requests or through wikis.
The publishing process is streamlined through CI/CD.
Most content is generated within the company rather than outsourced.

## 4. API

EMERGING PICTURE
Almost invariably dev docs involves an API, usually a REST API.
When documenting the REST API, most use the OpenAPI spec.
Both writers and engineers collaborate as they generate out docs using Swagger UI or a custom parser.
The most important languages to know are JavaScript, Java, and Python.


## 5. Profile

What are the biggest challenges you face in working with developer docs? (Main answers: Technical know-how, time/bandwidth, getting reviews, addressing both novice and advanced users)

<table>
  <colgroup>
     <col width="40%">
     <col width="60%">
  </colgroup>
  <tbody>
     <tr>
        <td><b>age range</b></td>
        <td>evenly distributed</td>
     </tr>
     <tr>
        <td><b>gender</b></td>
        <td>52% male, 46% female</td>
     </tr>
     <tr>
        <td><b>company</b></td>
        <td>200+ different companies listed</td>
     </tr>
     <tr>
        <td><b>college degree</b></td>
        <td>31% humanities, 28% engineering, 15% tech comm</td>
     </tr>
     <tr>
        <td><b>satisfied with job</b></td>
        <td>38% agree, 37% strongly agree</td>
     </tr>
     <tr>
        <td><b>team size</b></td>
        <td>34% lone writer, 2-4 writers 31%, 5-7 writers 12%</td>
     </tr>
     <tr>
        <td><b>employee type</b></td>
        <td>86% full-time</td>
     </tr>
     <tr>
        <td><b>most affinity towards</b></td>
        <td>WTD 39%, none 31%, STC 14%</td>
     </tr>
     <tr>
        <td><b>time spent learning</b></td>
        <td>30 min 28%, 20 min 27%, 60 min 14%</td>
     </tr>
  </tbody>
</table>

## Survey data

### 1. Tools

#### What is your primary authoring tool for creating documentation?

<a href="https://www.questionpro.com/t/ZRimssZG1r6YD"><img src="https://idratherbewritingmedia.com/images/api/trends-primary-authoring-tools.png" /></a>

#### Freeform answer: What specific tool(s) are you using to create documentation?

   <table>
      <colgroup>
         <col width="40%">
         <col width="60%">
      </colgroup>
      <tbody>
         <tr>
            <td>Confluence 46 instances</td>
            <td>Oxygen XML 34 instances</td>
         </tr>
         <tr>
            <td>Flare 35 instances</td>
            <td>MS Word 26 instances</td>
         </tr>
         <tr>
            <td>Hugo 27 instances</td>
            <td>Jekyll 25 instances</td>
         </tr>
         <tr>
            <td>Custom 16 instances</td>
            <td>Redoc 15 instances</td>
         </tr>
         <tr>
            <td>Google Doc 15 instances</td>
            <td>Sphinx 12 instances</td>
         </tr>
         <tr>
            <td>Framemaker 11 instances</td>
            <td>MkDocs 11 instances</td>
         </tr>
         <tr>
            <td>Gatsby 10 instances</td>
            <td>DocuSaurus 8 instances</td>
         </tr>
         <tr>
            <td>Readme 8 instances</td>
            <td>Paligo 7 instances</td>
         </tr>
      </tbody>
   </table>

#### If you write content in a text editor, which text editor do you mainly use?

<a href="https://www.questionpro.com/t/ZRimssZG1r6YK"><img src="https://idratherbewritingmedia.com/images/api/trends-editor.png" /></a>

#### What's the most common source format used in your documentation?

<a href="https://www.questionpro.com/t/ZRimssZG1r6YG"><img src="https://idratherbewritingmedia.com/images/api/trends-most-common-source-format2.png" /></a>

#### In general, do you follow a "docs-as-code" approach, where you treat documentation similar to how developers treat code? (e.g., write docs in a text editor, manage with version control, compile using a static site generator, build from the server, etc.)

<a href="https://www.questionpro.com/t/ZRimssZG1r6YH"><img src="https://idratherbewritingmedia.com/images/api/trends-docs-as-code.png" /></a>

#### What software do you use to create graphics, screenshots, or other visuals?

<a href="https://www.questionpro.com/t/ZRimssZG1r6YI"><img src="https://idratherbewritingmedia.com/images/api/trends-graphics.png" /></a>
   <p class="small">Other: Draw.io (29), Gimp (17), Inkscape (15), Photoshop (15), PowerPoint (11), macOS (11)</p>

#### What platform do you use to host and publish documentation, especially to provide continuous integration/delivery (CI/CD)?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YJ"><img src="https://idratherbewritingmedia.com/images/api/trends-cicd.png" /></a>

#### Which kind of computer do you use?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YJ"><img src="https://idratherbewritingmedia.com/images/api/trends-mac-pc.png" /></a>

#### How do you manage your content?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YN"><img src="https://idratherbewritingmedia.com/images/api/trends-manage-content.png" /></a>

### 2. Outputs

#### What's the primary output format for your documentation (which you distribute to your audience)?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YL"><img src="https://idratherbewritingmedia.com/images/api/trends-primary-output.png" /></a>

#### Do you currently create video tutorials or screencasts?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yb"><img src="https://idratherbewritingmedia.com/images/api/trends-video-screencasts.png" /></a>

#### If you aren't creating video/screencasts, why not?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yc"><img src="https://idratherbewritingmedia.com/images/api/trends-why-no-video2.png" /></a>
   <p class="small">Main reasons: No bandwidth, tech constantly changes, and no one has asked for video.</p>

#### Did you play a significant role in developing/evolving your company's publishing solution (e.g., maybe you helped design the site,  workflows, strategies for content re-use, stylesheets, etc.)?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YM"><img src="https://idratherbewritingmedia.com/images/api/trends-significant-role.png" /></a>

#### Do your docs plug into a larger developer portal? (The developer portal organizes the docs for many different products with unified search, navigation, and other features that bring all the docs together under one roof.)

<a href="https://www.questionpro.com/t/ZRimssZG1r6Yl"><img src="https://idratherbewritingmedia.com/images/api/trends-larger-developer-portal2.png" /></a>

#### Do you outsource any documentation to an offshore authoring agency?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Ym"><img src="https://idratherbewritingmedia.com/images/api/trends-offshoring.png" /></a>

#### Do you localize your documentation?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Ym"><img src="https://idratherbewritingmedia.com/images/api/trends-localize2.png" /></a>


#### Do you usually generate out PDFs for documentation and distribute them to your audience?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YO"><img src="https://idratherbewritingmedia.com/images/api/trends-generate-pdfs.png" /></a>


### 3. Processes

#### How do you interact with engineering scrum teams?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YX"><img src="https://idratherbewritingmedia.com/images/api/trends-interact-scrum-teams2.png" /></a>

#### How do you review your docs prior to release?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YQ"><img src="https://idratherbewritingmedia.com/images/api/trends-how-review-docs2.png" /></a>

#### Does your doc publishing solution have continuous integration / continuous deployment (CI/CD)? For example, when you push to a certain branch, do builds kick off on a server and push the docs out to production?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YR"><img src="https://idratherbewritingmedia.com/images/api/trends-cicd-to-prod.png" /></a>

#### Do you outsource any documentation to an offshore authoring agency?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Ym"><img src="https://idratherbewritingmedia.com/images/api/trends-outsourcing.png" /></a>

#### Do you have a style guide for your team that standardizes terminology and conventions regarding style, grammar, and syntax?
<a href="https://www.questionpro.com/t/ZRimssZG1r6YV"><img src="https://idratherbewritingmedia.com/images/api/trends-style-guide.png" /></a>


#### When you collaborate with engineers, how do the engineers contribute?
<a href="ZRimssZG1r6Yn"><img src="https://idratherbewritingmedia.com/images/api/trends-when-you-collaborate-engineers.png" /></a>

### 4. API

#### Does the documentation you work on usually involve some kind of API?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yd"><img src="https://idratherbewritingmedia.com/images/api/trends-involve-an-api.png" /></a>


#### What is the most common type of API you work with?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Ye"><img src="https://idratherbewritingmedia.com/images/api/trends-most-common-api-type.png" /></a>

#### If you're creating REST API documentation, do you use the OpenAPI specification?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yf"><img src="https://idratherbewritingmedia.com/images/api/trends-openapi-spec.png" /></a>


#### How do you render the OpenAPI spec into documentation?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yg"><img src="https://idratherbewritingmedia.com/images/api/trends-how-render-openapi.png" /></a>


#### Do you primarily create the OpenAPI spec manually or do you auto-generate it from code annotations?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yh"><img src="https://idratherbewritingmedia.com/images/api/trends-generating-openapi.png" /></a>


#### Who generates out the OpenAPI specification at your company?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yi"><img src="https://idratherbewritingmedia.com/images/api/trends-who-generates-openapi-spec.png" /></a>


#### For reference docs for native library APIs (e.g. Javadoc or Doxygen), who creates this content?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yj"><img src="https://idratherbewritingmedia.com/images/api/trends-reference-docs.png" /></a>


#### What are the most common programming languages you need to know in your role with docs?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yk"><img src="https://idratherbewritingmedia.com/images/api/trends-common-programming-languages.png" /></a>


#### Which of the following new or trending technologies are you documenting (or will likely be documenting) this year?
<a href="https://www.questionpro.com/t/ZRimssZG1r6Yt"><img src="https://idratherbewritingmedia.com/images/api/trends-trending-technologies.png" /></a>
<p class="small">Main answers: Machine learning, big data, AI, data privacy, security, IoT</p>

### 5. Profile

#### General demographics
   <table>
      <colgroup>
         <col width="40%">
         <col width="60%">
      </colgroup>
      <tbody>
         <tr>
            <td><b>age range</b></td>
            <td>evenly distributed</td>
         </tr>
         <tr>
            <td><b>gender</b></td>
            <td>52% male, 46% female</td>
         </tr>
         <tr>
            <td><b>company</b></td>
            <td>200+ different companies listed</td>
         </tr>
         <tr>
            <td><b>college degree</b></td>
            <td>31% humanities, 28% engineering, 15% tech comm</td>
         </tr>
         <tr>
            <td><b>satisfied with job</b></td>
            <td>38% agree, 37% strongly agree</td>
         </tr>
         <tr>
            <td><b>team size</b></td>
            <td>34% lone writer, 2-4 writers 31%, 5-7 writers 12%</td>
         </tr>
         <tr>
            <td><b>employee type</b></td>
            <td>86% full-time</td>
         </tr>
         <tr>
            <td><b>most affinity towards</b></td>
            <td>WTD 39%, none 31%, STC 14%</td>
         </tr>
         <tr>
            <td><b>time spent learning</b></td>
            <td>30 min 28%, 20 min 27%, 60 min 14%</td>
         </tr>
      </tbody>
   </table>


#### What are the biggest challenges you face in working with developer docs?
<a href=""><img src="https://idratherbewritingmedia.com/images/api/trends-biggest-challenges.png" /></a>
<p class="small">Main answers: Technical know-how, time/bandwidth, getting reviews, addressing both novice and advanced users</p>

## Reflections on Tools


## Focusing on tools &mdash; ephemeral shifting winds only?

There's a lot that one could focus on these survey results, but I think the most salient feature, or one that catches my attention, is the prevalence of static site generator tools. Clearly, with 23% using static site generators (SSGs) and only 2% using FrameMaker, this represents a major shift. Surely this merits more exploration.

One immediate objection might be this question: why focus on tools? Aren't tools like shifting fashions? Like the style of jeans that changes from one decade to the next.

<img src="https://idratherbewritingmedia.com/images/lightningtalk_tools_jeans.svg" alt="Tools are like changing fashions"/>

This is why academics dislike tools &mdash; tools are ephemeral. One day it's Tool X, tomorrow it's Tool Y, and next week it's Tool Z. But what matters is the content and the theoretical foundations that determine what we write and how we present it to the user, right?

Sure, for the most part, I agree that tools are like the basketball player's shoes &mdash; undoubtedly not as important as the style of play, not as important as the plays that teams run or the strategies players apply to win the game.

But here's the thing. To some degree, *how* you write influences *what* you write. The *how* includes tools and the workflows you use with those tools.

To make this argument, I'll survey the doc tools technical communicators have used over the past 50 years or so and comment generally on how those tools influenced the user experience. This will be a birds-eye view with many general observations as I move from PDF to web, then to XML, wikis, CCMSs, and finally to docs-as-code.

*Warning:* At this level, I will make broad generalizations and try to connect trends together based on shaping forces and challenges that drive the evolution. At this level, it will be somewhat speculative but hopefully still informative. This tour through tool usage looks somewhat like this:

<img src="https://idratherbewritingmedia.com/images/lightningtalk_tools_history.svg" alt="Trends with tools" />

Note that this timeline isn't necessarily a progression &mdash; all of these tools are still in use to varying degrees. And some of these categories overlap.

## Before the web, there was PDF

Before the web, tech writers created PDFs to distribute content to users. PDFs encouraged long-form, book-like content. In general, readers were expected to move linearly through content from beginning to end.

John Carroll busted that myth when he observed how people actually used help. They didn't read from start to finish, like a book, but rather jumped around from task to task depending on their needs. (See [How to design documentation for non-linear reading behavior](https://idratherbewriting.com/2015/05/15/writing-for-users-who-read-non-sequentially/).)

Even so, the book paradigm encouraged sections and chapters rather than individual topics, and when tech writers started transitioning to the web, they migrated their books to web formats by auto-bursting them at specific breakpoints, such as by chapter or heading.

## Web encourages topic-based authoring

With the web medium, topic-based authoring took the spotlight, and tech writers began breaking up their content into small, standalone chunks online (like articles). The transition from book-length authoring to topic-based authoring introduced many new challenges. For content auto-bursted at breakpoints like subheadings, the chunks often didn't make sense alone.

Mark Baker's [Every Page Is Page One](https://idratherbewriting.com/2011/05/16/every-page-is-page-one/) is a reaction against these chunks that don't make sense alone (see [Topic Chunking and The Broken Alarm Clock](https://idratherbewriting.com/2011/04/27/topic-chunking-and-the-broken-clock/)). When you encounter help content that seems to require some other starting point to make sense, leaving you scratching your head at your starting point without the proper orientation to make sense from your entry point, the docs fail for that user. Mark said every page should sufficiently orient the user as if it were the user's first entry point in the docs.

Help authoring tools proliferated in the early days of the web, and writers became good at single-sourcing chunks into ever-increasing efficiencies. But here's my point: the tools and medium we used to create content influenced the content itself. This shift in tools and publishing outputs transitioned writers from creating book-length content that required more sequential, linear reading to more standalone topics that afforded non-linear reading behaviors.

## XML/DITA enforces structured authoring

Soon XML started to appear on the scene, which was an evolution from SGML markup. XML imposes a consistent structure on content, requiring users to conform to rules defined in schemas and other definition documents. The most widely adopted XML format in the U.S. is DITA (Darwin Information Typing Architecture). Donated by IBM to OASIS in 2005, DITA attempted to provide an industry standard for XML in tech comm. Writers didn't need to fuss about creating their own transformations of XML into different outputs but could tap into a standard that tool vendors would support in robust ways. Writers could focus entirely on content (conforming to the XML schema) and let the tools transform it into beautiful, readable outputs.

While DITA doesn't outwardly enforce a design pattern in docs, the atomic structuring of components with specialized topics ([task, concept, reference](https://everypageispageone.com/2012/07/28/the-tyranny-of-the-terrible-troika-rethinking-concept-task-and-reference/)) prompted writers to divide/fragment their content into individual units consisting of these types. DITA does let you create maps that assemble these task, concept, and reference units into more complex displays, but many DITA writers simply use a 1:1 relationship between the source and the display. As a result, the display from DITA projects often ended up with sometimes hundreds of tiny topics, some as small as one paragraph. (See [Does DITA Encourage Authors to Fragment Information into a Million Little Pieces?](https://idratherbewriting.com/2013/04/22/does-dita-encourage-authors-to-fragment-information-into-a-million-little-pieces/))

DITA is one of the most polarizing topics in tech comm, with many conflicting views on its information architecture and design patterns. I recently listened to a presentation (internal) from a tech writer who was providing guidelines to engineers on writing. He had compiled an attractive wiki with many excellent points. However, what appeared to be a massive trove of information with many pages turned out to be much smaller than it initially seemed. Some pages consisted of just one paragraph. He strung these pages together into larger navigation maps. You had to click around a lot to read it all. He said the design principle built on the principles of DITA.

Again, here we see that how you write influences what you write. When you write following an XML schema like DITA, this influences the output and display to the user. Tools and the technologies we follow in authoring and publishing aren't invisible, non-influential components in the writing process.

## Wikis and reciprocal feedback loops

DITA and XML are still popular formats, especially because larger systems (component content management systems, CCMSs) require structured content for processing and manipulation. But it didn't take long for people to realize a major limitation to XML: it's too cumbersome and complex to really scale beyond the tech comm team. What if you want more people to author and contribute? As crowdsourcing models started to gather attention, with sites like Wikipedia taking off, wikis started to become a popular format.

The promise of wikis was to allow docs to be crowdsourced by a community of disparate people (not necessarily tech writers) all collaborating together on content. Some felt that wikis might even eliminate the need for tech writers altogether. If you just created a wiki for your product, users would write the documentation for you. A thousand users each contributing one paragraph might create all the docs you'd need. Tech writers would act as curators, managers, and organizers of content rather than the primary authors.

Wikis provided an interesting platform. During the heyday of wikis, I was smack in the middle of a volunteer community and publishing content on MediaWiki. It was cool to monitor updates across the site and wonder about the identify of all the contributors making edits. Wikis introduced a more collaborative platform than any other before (and one that has won out as the default platform for internal docs).

One academic, Guiseppe Getto, who engages in iFixit projects with students, noted that wikis provide a "reciprocal network" that creates constant feedback loops in writing. He referenced [Latour's Actor-network theory](https://en.wikipedia.org/wiki/Actor-network_theory) to describe a model where the tool one uses literally becomes an actor in a network of influences that produces a result.

Guiseppe writes,

> What I noticed when my students were working in the Technical Writing Project is that the tools they used (literally, from the tool kit provided by iFixit) and the wiki technology they used to write their guides profoundly impacted their writing process.

For example, one writer adds content on a page. This content is modified by another writer (creating a feedback loop); then another writer modifies this modification (creating another feedback loop), and so on. Content is never fixed but continues evolving as more feedback loops set the content in motion. (See [Reciprocal knowledge networks and the iFixit Technical Writing Project -- Conversation with Guiseppe Getto](https://idratherbewriting.com/2018/07/25/how-the-network-shapes-knowledge-conversation-with-guiseppe-getto).)

Again, wikis provide evidence that *how you write influences what you write*. Guiseppe says that when students simply searched Google for information and wrote in more static formats, their content and writing experience was notably different than when writing in the immersive feedback loops of wikis.

Alas, the promise of wikis didn't win over the tech comm community. Even as I had 60+ volunteers engaged in my projects, I abandoned wikis because the efforts didn't pay off. I spent just as much time managing content and people as it would have taken to write the content myself. More than anything, external contributors lacked access to the right information sources and people to create the needed content. External contributors who added information post-release mainly just noted misspellings and broken links &mdash; processes that can be automated through verification scripts. (See [My Journey To and From Wikis: Why I Adopted Wikis, Why I Veered Away, and a New Model](https://idratherbewriting.com/2012/06/11/essay-my-journey-to-and-from-wikis-why-i-adopted-wikis-why-i-veered-away-from-them-and-a-new-model-for-collaboration/).)

## CCMSs re-use content across the enterprise

Another player in the landscape of tech comm tools is content management systems (CMSs) and component content management systems (CCMSs) &mdash; the latter is more common for tech comm. This is a broad category that might encompass both XML and wikis but which tends to stand alone as well. Content management systems were championed as ways to maximize the use of your content across many different channels and outputs, leveraging the content for the many outputs that the content could serve. Content management systems comprehensively track assets, noting metadata for each topic including the author, last modified date, instances where the content was (re)used, and more. CCMSs automated publishing across many different channels, leveraging your content as a treasured asset that would get maximum use and re-use. The seminal text for this category is Ann Rockley's [Managing Enterprise Content: A Unified Content Strategy](https://www.amazon.com/Managing-Enterprise-Content-Unified-Strategy/dp/032181536X).

With social media requiring more content, the CCMS would let you create one nugget of content that could be re-used not only in docs, but in marketing pages, white papers, blog posts, eLearning, and other channels. Without a CCMS, you would end up either clumsily duplicating this content through copy/paste, or it might become inconsistent with conflicting terms and concepts or other details if teams across the enterprise worked in silos. Instead of managing the content in one place for all channels, companies without a CCMS would exhaust themselves recreating the content in bespoke ways for each needed channel, or else the company would let the wells run dry by only using the content in one place. "Intelligent content" is all about re-using content more efficiently across the enterprise for all the needed channels.

How did the CCMS influence what writers wrote? Knowing that your content must stand true in many different outputs, it caused writers to think more broadly across the many different channels the content might appear in. Changing one component might require more comprehensive analysis for all the places it was re-used, and this system was intended to be a source of truth for many different groups (tech docs, marketing, support, and other groups) to share and leverage content. In this way, CCMSs tried to create more coherent and integrated content across the enterprise, not just for the tech comm group.

CCMSs are still widely used, especially by large organizations, but the cost and complexity of their implementations limits their popularity to the companies that can afford them. For example, a CCMS can easily cost half a million dollars to implement. This is clearly a tool for large enterprises. It takes a special corporate culture to manage docs in a centralized way across many different organizational boundaries and groups, and many CCMS implementations  fail. In an era where independent, autonomous agile groups are becoming the norm, with no centralized doc group or authority, the enterprise CCMS is difficult to support. (See [Autonomous Agile Teams and Enterprise Content Strategy: An Impossible Combination?](https://idratherbewriting.com/blog/agile-teams-and-enterprise-content-strategy/) and my [related podcast with Cruce Sanders](https://idratherbewriting.com/blog/podcast-with-cruce-sanders-enterprise-versus-agile/).)

I'm not saying that small agile teams following Scrum ended CCMS proliferation, as all of the tools I've mentioned are still in use today to varying degrees. However, the trend toward integration with Scrum teams encouraged writers to be more embedded with engineers. On many of these Scrum teams, which act somewhat autonomously, like startups within larger companies, and where roles are more multi-faceted and less defined, many engineers also played roles as writers, or "documentarians" as some call them. This brings us to our last category: docs-as-code.

## Docs-as-code and the promise to unlock collaboration with developers

The information economy encouraged more companies to deliver their information as a service through APIs, and as such more engineers started playing documentation roles with their APIs and other code. Naturally, developers used many of the same tools they used for code to write docs, leading to the "docs-as-code tools." Markdown formats rose in popularity, as this format was readable in plain text (and in the same editors developers used to write code). Additionally, Markdown worked well with version control systems like Git to show what changed from one commit to the next (diffs).

Developers like to create tools, and they started creating their own document generators to compile the Markdown pages into templates as a website. The hundreds of static site generators on [StaticGen](https://www.staticgen.com/) are a testament to the lively development in this space and the complete freedom to innovate &mdash; in contrast to the tightly constrained schemas of XML. A developer might decide to fork an existing tool to create a new version, scratching an itch they might have for some new feature. Or a developer might take an existing tool and implement it in their favorite language (React, Go, JavaScript, Python, Ruby, Rust, or more).

Doc-as-code tools use the same software processes as software developers use to develop code, so beyond the text editors to write content in plain text (instead of rendered through a visual editor), doc reviews often use code review tools, files are managed through version control such as Git, and deployment models follow a CI/CD (continuous integration / continuous deployment) model, where you simply push content to a branch in Git to kick off an automated process that builds your content from the server.

How has docs-as-code influenced what content we write? With no XML schemas to follow, Markdown follows a more free-form format (for better or worse). You can mix tasks, concepts, and reference more seamlessly based on the dictates of the content rather than the dictates of the schema. You can more easily paste in code examples, since you're just pasting code in text editors, and the code will usually be syntax-highlighted (through the static site generator) to make it more easily readable. (Try pasting the same code into a visual editor like Microsoft Word and you'll see the problems it creates.) This text-based format surely encourages more sharing and use of code samples in docs, just as Latex formats enabled more efficient authoring and sharing of equations &mdash; see [An Efficiency Comparison of Document Preparation Systems Used in Academic Research and Development](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0115069).

But the promise of doc-as-code is not just to provide an easy platform for developer docs. The promise of docs-as-code, and why tech comm groups embrace it, is to *unlock collaboration with developers by meeting them in their tools space and workflows.* When you embrace the developer's workflow (contributions through pull requests, management of features in version controls, builds from the server, open formats and templates that build the content, and more), you create a collaboration between developers and tech writers in more tightly coupled ways than was possible with proprietary, licensed-based tools following XML schemas. Docs-as-code tools unlock the potential for more developer collaboration with docs, which then influences the content we produce &mdash; simply put, the content includes more developer contributions and input.

Of course, the degree of collaboration depends on how much you push for it. You can use docs-as-code tools in a completely isolated way, not even extending permissions for developers to contribute pull requests for your content (similar to how you could also use a wiki for just one author). But doing so blocks the primary benefit of doc-as-code tools. The opportunity for collaboration *with developers* is available to exploit in unprecedented ways. (At the same time, collaboration with marketers becomes hampered.)

## Conclusion

Returning to my earlier question, are tools just passive receptors of content, or are they actively influencing the content we write? As I've painted broad brushstrokes from PDF to web, XML and DITA, wikis, CCMSs, to docs-as-code, I've described how these tools are more than passive foundations for content but rather act more prominently to shape the kind of content we produce. As a thought experiment, consider what your output would look like if you switched from one system to another, delivering through PDF instead of docs-as-code, or structuring your content with DITA instead of a wiki, or integrating with a CCMS, and so on. As you contemplate these transitions, it might be more evident that how you write influences what you write, in addition to shaping other aspects of the user experience.

Overall, there isn't really a "best" approach, nor necessarily a progressive evolution from one toolset to the other. However, we should recognize the particular strengths that a tool or technology has and capitalize on those strengths. If you're using a CCMS, maximize your content's use across the enterprise, breaking silos and department boundaries for content. If you're using a wiki, both seek out and welcome as many reciprocal feedback loops as possible. If you're using DITA, maximize re-use and intensify the focus on content rather than tools. If you're using PDF, create beautiful story arcs with more in-depth narratives for your content. If you're working in docs-as-code model, collaborate as much as possible with engineers. Each of these advantages can be preferable in different tech comm scenarios. Where we go wrong is not understanding the ways our tools shape content, or failing to exploit the advantages available to us by virtue of our tools.

## Sources

## Sources

* [Who Technical Communicators Are: A Summary of Demographics, Backgrounds, and Employment](https://www.stc.org/intercom/2019/01/who-technical-communicators-are-a-summary-of-demographics-backgrounds-and-employment/)
* [What Technical Communicators Do](https://www.stc.org/intercom/2019/01/what-technical-communicators-do/)
* [Professional Development of Technical Communicators](https://www.stc.org/intercom/2019/01/professional-development-of-technical-communicators/)
* [Job and Career Satisfaction Among Technical Communicators](https://www.stc.org/intercom/2019/01/job-and-career-satisfaction-among-technical-communicators/)

You can also listen to a [podcast from 10 Minute Tech Comm with Saul here](https://podcasts.apple.com/us/podcast/dr-saul-carliner-on-the-census-of-technical-communication/id920575683?i=1000447406551).

You can also read the results from Scott's benchmarking survey in [slide show format here](http://public2.brighttalk.com/resource/core/217857/the-state-of-technical-communication_474463.pdf). Or watch to a [webinar via BrightTalk here](https://www.brighttalk.com/webcast/9273/338293/the-state-of-technical-communication-2019).

([Survey Reveals Top Tools, Trends, and Technologies in Use in Technical Communication Teams](https://www.stc.org/intercom/2019/01/survey-reveals-top-tools-trends-and-technologies-in-use-in-technical-communication-teams/)).

http://www.welinske.com/2014-writersua-tools-survey/

 {% endcomment %}
