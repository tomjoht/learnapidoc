---
title: "Which tool to choose for API docs -- my recommendations"
permalink: /pubapis_which_tool_to_choose.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.92
section: publishingapis
path1: /publishingapis.html
---

* TOC
{:toc}

## Choosing the right publishing solution

Which solution should you choose? As I said earlier, it depends on your skillset, product, and environment. But here's my recommendation.

If you can avoid building and maintaining your own doc site, then use an online hosted platform such as [Readme.io](#readmeio), [CloudCannon](#cloudcannon), [Read the Docs](#readthedocs), or [Netlify](#netlifycms). The tradeoff is that you abdicate some control to customize the solution and functionality, but you offload a tremendous burden for your server. Usually, within a company, engineering groups manage and control the server infrastructure. Setting up and maintaining your own server for documentation using internal resources only can be a huge expense and headache. It can take months if not years to get engineering to give you space on a server, and even if they do, it likely will not provide half of the features you need (like continuous delivery and a CLI). That's why I recommend third-party hosting if ta all possible. Maintaining your own server is not the business you want to be in, and these platforms enable you to be much more efficient. (Removing the hassle of publishing by automating builds from the server will simplify your life unimaginable ways.)

If you have web development skills (or access to UX talent) and want control over your doc solution (maybe you want to build a custom theme or incorporate special scripts), then use either Sphinx, Jekyll, or Hugo (these fit in nicely with the hosting and deployment platforms &mdash; Sphinx with Read the Docs, Jekyll with GitHub or CloudCannon, or Hugo with Netlify).

Although Readme provides a ready-made design for your site, I personally want more control and flexibility over the information design and theme. I like to experiment, and I want the power to code whatever feature I want, such as an embedded navigation map, a special TOC for series items, or whatever. When you use a platform such as Jekyll, Sphinx, Hugo, or some other open static site generator, you have the power and control to create the complex features you need. If you're a serious technical writer (maybe you migrated form the world of DITA and are used to more robust tooling?), you're going to want a platform that can go as deep as you want to take it. Jekyll, Sphinx, and Hugo offer this depth in the platform. (Granted, this power and control will require a more complex platform and learning, but you can start out easy with a ready-made theme and later work your way into custom development if desired.)

Markup is also a consideration. If you've narrowed the choice down to Sphinx with rST or Jekyll/Hugo with Markdown, then at this point ask yourself whether engineers at your company will write in rST. If they'll write in rST, great, Sphinx is probably superior for documentation projects due to the [advantages of rST](pubapis_markdown.html#rst_and_asciidoc). But if engineers prefer Markdown, then maybe Jekyll or Hugo will be more successful.

Choosing Jekyll or Hugo rather than Sphinx does have a strong argument because their communities extend beyond documentation groups. Sphinx was designed as a documentation platform, so it's audience tends to be more niche. Ask yourself, which platform will likely gain more community and popularity &mdash; one that is geared towards documentation groups (which are always a niche crowd), or one for web development in general? Documentation tooling almost never wins out against more general web development tools. So the tradeoff with Jekyll or Hugo is that although they lack some better documentation features (cross-references, search, semantic markup), they might have more community and momentum in the long-term.

Regardless of the tool, I recommend describing your API using the [OpenAPI specification](pubapis_swagger_intro.html) rather than [creating your own template](pubapis_design_patterns.html#structure_and_templates) or manually defining these reference sections. Not many doc tools easily [incorporate and display the OpenAPI specification](pubapis_combine_swagger_and_guide.html) (yet), so perhaps the best alternative might be to [embed Swagger UI](pubapis_swagger.html) (assuming more deep integration isn't possible) into your doc platform. (I've seen some deeper integrations of Swagger UI into existing websites, and some day I hope to do this with a Jekyll theme, but I haven't yet.)

Some static site generators do have some good display for API docs, like [Slate](#slate). That might be a good option. But will the platform have the support, tutorials, maintenance, and features to sustain the platform in the long run?

One option I recommend against is [building your own tool from scratch](#custom_ux_solutions). Although I like having control over the doc solution, I've spent far too much time developing themes or working on other documentation platform needs than I intended to. I once had lunch with a tech writer who told me he's working on building his own system from scratch using Ruby. Although this might be a good way to learn Ruby, it seems inefficient for a tech writer, who should be focusing more on documentation and content rather than tools.
