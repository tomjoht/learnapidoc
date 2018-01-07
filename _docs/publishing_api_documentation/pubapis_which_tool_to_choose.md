---
title: "Which tool to choose for API docs -- my recommendations"
permalink: /pubapis_which_tool_to_choose.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 7.42
section: publishingapis
path1: /publishingapis.html
redirect_from:
- /learnapidoc/pubapis_tools_vs_content.html
---

* TOC
{:toc}

## Choosing the right publishing solution

Which solution should you choose? As I said earlier, it depends on your skillset, product, and environment. But here's my recommendation.

If you can avoid building and maintaining your own server, then use a hosting and deployment platform such as [CloudCannon](pubapis_publishing_tool_options.html#cloudcannon), [Read the Docs](pubapis_publishing_tool_options.html#readthedocs), [Netlify](pubapis_publishing_tool_options.html#netlifycms), or [Aerobatic](pubapis_publishing_tool_options.html#aerobatic). By using one of these platforms, you offload a tremendous burden in maintaining a server. Usually, within a company, engineering groups manage and control the server infrastructure. Setting up and maintaining your own server for documentation using internal resources only can be a huge expense and headache. It can take months if not years to get engineering to give you space on a server, and even if they do, it likely will not provide half of the features you need (like continuous delivery and a CLI). That's why I recommend these hosting and deployment options if ta all possible. Maintaining your own server is not the business you want to be in, and these platforms enable you to be much more efficient. (Removing the hassle of publishing by automating builds from the server will simplify your life unimaginable ways.)

If you have web development skills (or access to UX talent) and want control over your doc solution (maybe you want to build a custom theme or incorporate special scripts), then use either [Hugo](pubapis_publishing_tool_options.html#hugo), [Sphinx](pubapis_publishing_tool_options.html#sphinx), or [Jekyll](#pubapis_publishing_tool_options.html) (these fit in nicely with the hosting and deployment platforms &mdash; Sphinx with [Read the Docs](pubapis_publishing_tool_options.html#readthedocs), Jekyll with [GitHub Pages](#pubapis_publishing_tool_options.html#github_pages) or [CloudCannon](pubapis_publishing_tool_options.html#cloudcannon), or Hugo with [Netlify](pubapis_publishing_tool_options.html#netlify)).

[Readme](pubapis_publishing_tool_options.html#readme) provides a ready-made design for your site, removing the need for both designing a theme and figuring out hosting/deployment. That can save you a lot of time and effort. However, I personally want more control and flexibility over the information design and theme. I like to experiment, and I want the power to code whatever feature I want, such as an embedded navigation map, a special TOC for series items, or whatever.

When you use a platform such as Jekyll, Sphinx, Hugo, or some other open static site generator, you have the power and control to create the complex features you need. If you're a serious technical writer (maybe you migrated form the world of DITA and are used to more robust tooling?), you're going to want a platform that can go as deep as you want to take it. Jekyll, Sphinx, and Hugo offer this depth in the platform. (Granted, this power and control will require a more complex platform and learning, but you can start out easy with a ready-made theme and later work your way into custom development if desired.)

Markup is also a consideration. If you've narrowed the choice down to Sphinx with rST or Jekyll/Hugo with Markdown, then at this point ask yourself whether engineers at your company will write in rST. If they'll write in rST, great, Sphinx is probably superior for documentation projects due to the [advantages of rST](pubapis_markdown.html#rst_and_asciidoc). But if engineers prefer Markdown, then maybe Jekyll or Hugo will be more successful.

Choosing Jekyll or Hugo rather than Sphinx does have a strong argument because their communities extend beyond documentation groups. Sphinx was designed as a documentation platform, so it's audience tends to be more niche. Ask yourself, which platform will likely gain more community and popularity &mdash; one that is geared towards documentation groups (which are always a niche crowd), or one for web development in general? Documentation tooling almost never wins out against more general web development tools. So the tradeoff with Jekyll or Hugo is that although they lack some better documentation features (cross-references, search, semantic markup), they might have more community and momentum in the long-term.

Regardless of the tool, I recommend describing your API using the [OpenAPI specification](pubapis_swagger_intro.html) rather than [creating your own template](pubapis_design_patterns.html#structure_and_templates) or manually defining these reference sections. Not many doc tools easily [incorporate and display the OpenAPI specification](pubapis_combine_swagger_and_guide.html) (yet), so perhaps the best alternative might be to [embed Swagger UI](pubapis_swagger.html) (assuming more deep integration isn't possible) into your doc platform. (I've seen some deeper integrations of Swagger UI into existing websites, and some day I hope to do this with a Jekyll theme, but I haven't yet.)

Some static site generators do have some good display for API docs, like [Slate](#slate). That might be a good option. But will the platform have the support, tutorials, maintenance, and features to sustain the platform in the long run?

One option I recommend against is [building your own tool from scratch](#custom_ux_solutions). Although I like having control over the doc solution, I've spent far too much time developing themes or working on other documentation platform needs than I intended to. I once had lunch with a tech writer who told me he's working on building his own system from scratch using Ruby. Although this might be a good way to learn Ruby, it seems inefficient for a tech writer, who should be focusing more on documentation and content rather than tools.

## Tools verus content

Although this section has focused heavily on tools, I want to emphasize that content always trumps tooling. The content should be your primary focus, not the tools you use to publish the content. Once you get the tooling infrastructure in place, it should mostly take a back seat to the daily tasks of content development.

I've changed my doc platforms numerous times, and rarely does anyone seem to care or notice. As long as it "looks decent," most project managers and users will focus on the content much more than the design. In some ways, the design should be invisible and unobtrusive, not foregrounding the focus on the content. In other words, the user shouldn't be distracted by the tooling.

{% include random_ad.html %}

For the most part, users and reviewers won't even notice all the effort behind the tools. Even when you've managed to single source content, loop through a custom collection, incorporate language switchers to jump from platform to platform -- the feedback you'll get is, "This sentence is incorrect." Or, "There's a typo here."

## Questions to consider when choosing tools

At this point, think about your requirements, your audience, and try to pick the right tools for your situation. Here are a few questions to consider as you think about the right tool for you:

* Will developers be writing or contributing to the content?
* Does your security group restrict you from using third-party platforms to host documentation?
* Do you have a budget to pay a third-party platform for hosting?
* Do you want to manage the web platform details yourself or offload this onto another group/company?
* How many endpoints do you have to document?
* Should you push documentation from the source into your documentation?
* Does the documentation need be visible on the web, or does it need to be private?
* To what extent do you want customers to have a one-stop-shopping experience -- reading docs, logging support tickets, posting to forums, viewing news?
* Do you have UX resources to help build a custom solution?
