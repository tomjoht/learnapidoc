---
title: How much code do you need to know?
permalink: /jobapis_learning_code.html
course: "Documenting REST APIs"
weight: 10.2
sidebar: docapis
section: jobapis
path1: /jobapis.html
---

With developer documentation roles, some level of coding is required. But you don't need to know as much as developers, and acquiring that deep technical knowledge will usually cost you expertise in other areas.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Adequate versus Deep Technical Knowledge

In [Enough to Be Dangerous: The Joy of Bad Python](http://hackwrite.com/posts/enough-to-be-dangerous/), Adam Wood argues that tech writers don't need to be expert coders, on par with developers. Learning to code badly is often enough to perform the tasks needed for documentation.

Wood writes:

> You already know how hard it is to go from zero (or even 1) to actually-qualified developer. And you've met too many not-actually-qualified developers to have any interest in that path.
> So how do you get started?
> By deciding you are not ever going to write any application code. You are not going to be a developer. You are not even going to be a "coder."
> You are going to be a technical writer with bad coding skills. ([Enough to Be Dangerous: The Joy of Bad Python](http://hackwrite.com/posts/enough-to-be-dangerous/))

Wood says tech writers who are learning to code often underestimate the degree of difficulty in learning code. To reach developer proficiency with production-ready code, tech writers will need to sink much more time than they feasibly can. As such, tech writers shouldn't aspire to the same level as a developer. Instead, they should be content to develop minimal coding ability, or "enough to be dangerous."

James Rhea, in response to my post on [Generalist versus Specialist](https://idratherbewriting.com/2016/12/20/changing-roles-of-technical-writers/), also says that "adequate" technical knowledge is usually enough to get the job done, and acquiring deeper technical knowledge has somewhat diminishing returns, since it means other aspects of documentation will likely be neglected. Rhea writes:

> I wouldn't aim for deep technical knowledge. I would aim for adequate technical knowledge, recognizing that what constitutes adequacy may vary by project, and that technical knowledge ought to grow over time due to immersion in the documentation and exposure to the technology and the industry.
>
> I speculate that the need for writers to have deep technical knowledge diminishes as Tech Comm teams grow in size and as other skills become more important than they are for smaller Tech Comm teams. I'm not claiming that deep technical knowledge is useless. I'm suggesting that (to frame it negatively) neglecting deep technical knowledge has less severe consequences than neglecting content curation, doc tool set, or workflow considerations. ([Adding Value as a Technical Writer](https://withintheordinary.wordpress.com/2016/12/21/adding-value-as-a-technical-writer/))

In other words, if you spend excessive amounts of time learning to code, at the expense of tending to other documentation tasks such as shaping information architecture, analyzing user metrics, overseeing translation workflows, developing user personas, ensuring clear navigation, and more, your doc's technical content may improve a bit, but the overall doc site will go downhill.

Additionally, while engineers can fill in the deep technical knowledge needed, no one will provide the tech comm tasks in place of a tech writer. As evidence, just look at any corporate wiki. Corporate wikis are prime examples of what happens when engineers (or other non-tech writers) publish documentation. Pages may be rich with technical detail, but the degree of ROT (redundant, outdated, trivial content) gets compounded, navigation suffers, clarity gets muddled, and no one can find anything.

Almost every time I dive deep into my company's wiki, I encounter mountains of poorly written pages, abandoned content, impossible to navigate spaces, and other issues. It's a completely hit-and-miss, frustrating experience.

{% include random_ad2.html %}

Anyone who has a wiki at their company usually has a similar experience. Because no one really cares about internal wikis, companies let them degenerate into content junkyards. The same would happen if we focused only on programming and other technical details at the expense of other tech comm aspects.

## Times when deeper tech knowledge is needed

In contrast to Wood and Rhea, [James Neiman](http://drjamesneiman.com/), an experienced API technical writer, says that tech writers need an engineering background, such as a computer science degree, to excel in API documentation roles.

Neiman says tech writers often need to look over a developer's shoulder, watching the developer code, or listen to an engineer's brief 15-minute explanation, and then return to their desks to create the documentation.

Neiman also says you may need to take the code examples in Java and produce equivalent samples in another language, such as C++, all on your own. In Neiman's view, API technical writers need more technical depth to excel than Wood and Rhea suggest.

James Neiman and [Andrew Davis](http://www.synergistech.com/) (a recruiter for API tech writers in the Bay area) recently gave a presentation titled [Finding the right API Technical Writer](https://www.youtube.com/embed/lmNHBg20ql0) at an API conference in London last October (scrub to around the 23-minute mark) for the highlights).

{% if site.format == "web" %}
<iframe width="560" height="315" src="https://www.youtube.com/embed/lmNHBg20ql0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
{% endif %}

Clearly, Neiman argues for a higher level of coding proficiency than Wood or Rhea. The level of coding knowledge required no doubt depends on the position, environment, and expectations at your company. If you're in a situation where the code is over your head, developers may send you chunks of code to add to the documentation.

Without the technical acumen to fully understand, test, and integrate the code in meaningful ways, you will be at the mercy of engineers and their terse explanations or cryptic inline comments. Your role will be reduced more to scribe than writer.

{% include random_ad.html %}

Neiman says in one company, he tested out the code from engineers and found that much of the code relied on programs, utilities, or other configurations already set up on the developers' computers. As such, the engineers were blind to the initial setup requirements that users would need to properly run the code. Neiman says this is one danger of simply copying and pasting the code from engineers into documentation. While it may work on the developer's machine, it will often fail for users.

The more technical you are, the more powerful of a role you can play in shaping the information. Neiman is a former engineer and says that during his career, he has probably worked with 20-25 different programming languages. Being able to learn a new language quickly and get up to speed is a key characteristic of his tech comm consulting success, he says.

## Techniques for learning code

The difficulty of learning programming is probably the most strenuous aspect of API documentation. How much programming do you need to know? How much time do you spend learning to code? How much priority should you spend on it?

For example, do you dedicate 2 hours a day to simply learning to code in the particular language of the product you're documenting? Should you carve this time out of your employer's time, or your own, or both? How do you get other doc work done, given that meetings and miscellaneous tasks usually eat up another 2 hours of work time? What strategies should you implement to actually learn code in a way that sticks? What if what you're learning has little connection or relevance with the code you're documenting?

There are a lot of questions about just how to learn code, and I don't have all the answers. But here's what I know:

*  Developer documentation requires some familiarity with code.
*  You have to understand explanations from engineers, including the terms used.
*  You should be able to test code from engineers.
*  Learning code will require a constant effort.
*  Learning to code badly may be enough to create good documentation.

## It's okay to be a bad coder

Technical writers will likely be generalists with the code, not really good at developing it themselves but knowing enough to get by, often getting code samples from engineers and explaining the basic functions of the code at a high level.

Some might consider the tech writer's bad coding ability and superficial knowledge somewhat disappointing. After all, if you want to excel in your career, usually this means mastering something in a thorough way.

It might seem depressing to realize that your coding knowledge will usually be kindergartner-like in comparison to developers. This positions tech writers more like second-class citizens in the corporation &mdash; in a university setting, it's the equivalent of having an associates degree where others have PhDs.

However, I take consolation in the fact that my job is not to code but rather to create awesome *documentation*. Creating awesome documentation isn't just about knowing code. There are a hundred other details that factor into the creation of good documentation. As long as you set your goals on creating great documentation, not just on learning to code, you won't feel disappointed in being a bad coder. This direction doesn't address all the issues around learning programming, but it helps me remember that at the end of the day, my job involves documentation, not just knowledge of code.

See these two topics for more details about working with code:

* [SDKs and sample apps](docapis_sdks_and_sample_apps.html)
* [Code samples and tutorials](docapis_codesamples_bestpractices.html)
