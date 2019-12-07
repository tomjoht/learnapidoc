---
title: "Evaluating API design"
permalink: /evaluating-api-design.html
course: "Documenting REST APIs"
weight: 7.7
sidebar: docapis
section: docapiscode
path1: /doccode.html
published: false
---

One of the interesting dimensions of technical writing is its intersection with usability in ways much closer than almost any other tech discipline. In [*The Design of Web APIs*](https://www.amazon.com/Design-Web-APIs-Arnaud-Lauret/dp/1617295108), Arnaud Lauret, aka the [API Handyman](https://apihandyman.io/), says,

>Exhaustively documenting APIs has a nice side effect—-it is testing the design. If you are unable to document how to use the API or how to implement it, it can be a sign of improper design.

In other words, as you write out the specific steps users need to follow to perform their goals, you are making your way through the user's footsteps and workflows. If you find these paths to be fuzzy and full of treacherous pits and underbrush, chances are the API's usability stinks.

Bob Watson has a post that echoes similar sentiments. In [If your API is hard to document, be warned](https://docsbydesign.com/2018/02/18/if-your-api-is-hard-to-document-be-warned/), Bob explains that one of the first signs that your API is in trouble is when the technical writers find it difficult to write the documentation. Bob compares technical writers to the canaries coal miners brought with them to detect poisonous gases. Bob says,

> If your API is hard to document, it could be a sign of more fundamental problems.

If technical writers find it "difficult to articulate market needs and pain points" (because they don't exist), or if technical writers find themselves "adding the verbal duct tape to make the product ready to ship," your API is in trouble. The first signs of an API's failure are likely signposted right there in subtle ways in the documentation.

Since technical writers are uniquely suited to provide feedback on usability, especially as we step through the user tasks in detail, it makes sense to expand here on what usability means, how to evaluate the usability of an API, and other details to look for. In presenting this information, I'll rely almost exclusively on Arnaud's [*The Design of Web APIs*](https://www.amazon.com/Design-Web-APIs-Arnaud-Lauret/dp/1617295108) since it provides an in-depth explanation of what makes an API usable.

## What is usability

Usability has the same meaning whether you're referring to end-user applications with user interfaces or developer code with an API. Usability refers to how easy it is for users to accomplish their desired tasks with the tool. In short, how easy is the tool to use? Or, how well does this tool let users accomplish their goals?

To evaluate usability, you must first understand what tasks users want to perform with the API. Since the API user's guide that technical writers create basically covers these tasks in detail, technical writers are perfectly situated to provide feedback on an API's usability.

## Challenges in evaluating developer experience usability

Despite the seemingly perfect fit between tech comm and usability, it's a lot more challenging than it might seem for tech writers to provide usability feedback.

The first issue is that tech writers are often too far downstream to have any actionable feedback on design. Questions about the API's design have been decided on long before the documentation task usually arrives in the tech writer's inbox. Unless you're extremely proactive in identifying APIs at their inception point, you probably don't even hear about the API until it's been approved by leadership and half-way coded. At this point, if you raise your hand and say, this endpoint doesn't make any sense to me, the feedback is too radical. Developers aren't going to drop everything and go back to the drawing board.

But supposing that the developers are listening intently on your feedback, the design is often above the head of technical writers. One time an engineering team for a project I was working on was finalizing their security design and solicited feedback on the authentication workflows. I dug into these security workflows with good intentions, but honestly I didn't have the engineering knowledge to evaluate whether the security mechanism they had chosen was the right one for the audience, or whether the process for authoring requests was appropriate, especially in context of the larger company policies around security and authorization.

Much of developer docs has the same knowledge weight. Technical writers are often straining to keep their head above water, learning as they go. We aren't often in a position to critique a position taken. And even when we create an end-to-end tutorial for using the API toward some business goal, it might be hard to decide whether the workflow is easy or hard &mdash; this is where lack of an engineering background can be challenging. Much of this stuff looks hard to implement, from my perspective. Whether it's the norm for the space, though, is hard to assess without working with other APIs in the space.

As such, it might be productive to focus our sights on a few concrete matters more within the technical writer's scope to evaluate. Now we'll jump into Arnaud's book for a more focused discussion of these points.

## Evaluating API usability

Arnaud says that "an inconsistent design introduces variations or contradictions that make an interface harder to understand and use." In other words, an API should be consistent in ways that developers can predict without always consulting the documentation. The following sections cover a few questions to ask related to consistency.

### Straightforward endpoints

Are endpoints intuitive in what they return? Or do you look at an endpoint and not have any idea what it returns? Keep in mind the list of tasks that users want to accomplish with the API, along with the terms they use to describe those tasks. Could you draw lines between the users tasks and the endpoints they might need to use to accomplish such goals? If so, then your endpoints are probably straightforward. If the two don't have any resemblance to each other, users will likely be stumped as well.

### Consistent endpoint patterns

Do the endpoints follow consistent patterns? A common pattern is to use plurals in the paths. Arnaud explains:

> Although there are no official REST rules regarding resource path design (apart from uniqueness), the most widely adopted format is `/{plural name reflecting collection’s item type}/{item id}`. Using resource paths exposing resource hierarchy and using plural names for collections to show the collection’s item type has become a de facto REST standard. In our example, a catalog should therefore be identified by `/products` and a product by `/products/{productId}`.

> ...Once consumers are familiar with the use of plural names for collections, they expect to see all collections with plural names. You singular for collections if you want, but whatever your choice, stick to it! And this doesn’t only apply to URLs: it concerns every single name and value you choose...

Look at the collection of endpoints in your API. Do they follow consistent formats as Arnaud explains above? Or are the endpoints a hodgepodge of different formats and tenses (e.g., `/products/{productId}` and `/transfer/{transferId}`), as if different teams worked independently on different parts of the API?

### Nouns in endpoints, verbs in operations

Another common pattern with endpoints is to use nouns with the resources, and let the operations/methods supply the verb. Arnaud covers this in his book, but other sites such as Stoplight also recommend the practice. From Stoplight.io:

> **Use nouns for resources** and avoid anything that looks like procedure calls. There’s no need for endpoints like `/getContacts` when we’re using HTTP methods. Instead, your resource would be named `/contacts` and you could perform the `GET` action (and any others that are relevant) against that resource.

At the most basic level, resources and their supported operations have a noun + verb grammar. If the endpoint name blends the resource with the operation, it can both be redundant as well as misleading. Separate nouns from verbs with endpoint names.

### Data formats in responses

Another point to consider is the data formats returned in responses. Arnaud writes,
> Data is at the core of APIs—resources, parameters, responses, and their properties shape an API. And all of their meanings, names, types, formats, and organization must be consistent in order to help consumers understand these easily.

Will developers prefer to work in metric or imperial systems? Celsius of Fahrenheit? Are you returning JSON or XML?

What time format are you returning, and is this format consistent across all your endpoints? For example, if you return Unix Epoch time for one endpoint but ISO 8601 for another endpoint, that's inconsistent. Further, do you even identify what units the data is in? Arnaud explains,

> People seek global uniformity in design. Once consumers have seen one date and time property represented by an ISO 8601 string, they expect all date and time properties be ISO 8601 strings. Once a data format has been chosen for a type of data, it should be used for all representations of the same data type.

As you define the parameters in your requests, as well as responses in your models or schemas, you will be describing the data types for each element. As such, you'll be pretty familiar with common patterns for data types. Sometimes developers will identify numbers as strings, or specify much more specific numbers (e.g., floats, doubles) than is usually done in REST API docs, or they might have other inconsistencies. Look closely at these data types and see if they conform to consistent patterns across all endpoints.

### Casing with parameter names

Another area of high inconsistency is the casing of parameter names. Do all parameter names follow similar casing, or are there variations among upper camel case, lower camel case, underscores, or other? Enums (a list of allowed values), in contrast, are often written in full caps.









### Industry conventions

Beyond consistency within your own API's world, how do your conventions align with the API industry in general? Once after giving an API workshop, a participant asked me to look over her company's API doc site and provide some feedback. The doc site was a list of collapsed sections on a single page, without any clear sidebar navigation or other common features. While maybe novel, I found it hard to navigate and recommended that they align more with industry conventions.

This is why I so frequently include activities in this course that involve reviewing approaches on other API doc sites &mdash; common industry convention leads to predictability when new users navigate your site. If your organize your endpoints under a section called "API Reference," most users will intuitively understand what that section contains. Arnaud explains:

> ... APIs have to be consistent with the rest of the world. There are common practices—-standards, if you will—-that you can use. Not only does following these make your APIs predictable for people who have never used any of your APIs before, thereby enhancing your APIs interoperability with the rest of the world, but it also makes your API designer’s job easier. Let’s see how this is possible.

Look for top APIs from the big tech companies for examples. Stripe, Twilio, Twitter, GitHub, Microsoft, Facebook, Google, and other sites (which you can browse on [programmableweb.com](https://www.programmableweb.com/)) provide good examples of how to approach and organize API docs. To decide whether you're following industry conventions, compare your company's approach to that in several of these common API doc sites.

### Compare with your API style guide

Just as there are style guides for tech docs and marketing material, companies often have API design style guides as well. Consider the scenario of a large company with many different engineering teams each building APIs. To ensure consistency across the APIs they build, these companies often have an API style guide they adhere to. Arnaud explains,

> You must formally define your design with rules in a document called the “API Design Guidelines” or the “API Design Style Guide.”

In fact, Arnaud has collected more than 15 of these style guides in a site called [API Stylebook](http://apistylebook.com/design/guidelines/). In the site, he pulls from each of these style guides to show their guidance for common sections. You can also click links directly into the style guide sites. For example, check out [Google Cloud API Design Guide](https://cloud.google.com/apis/design/) and [Microsoft REST API Guidelines](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md).

Just as documentation style guides go in depth about more minutia than most people care about, API design style guides do the same about every aspect of an API. Before providing feedback about the API you're documenting, find out if your company has an API style guide. If they do, you'll have direct support to back your claims about potential inconsistency or lack of adherence to standards. If your company doesn't have a guide, you could compare the approach in other style guides.

## workflows

are there multiple hoops to jump through to get the info you need? how many endpoints do devs have to chain together to achieve their end?

> To use an object or an API, a user might have to chain multiple interactions. Usability heavily depends on the simplicity of this flow of interactions.

## error messages
errors should be descriptive to let users know what's wrong
error messages should describe the error for all possible error conditions
> * All possible errors must be identified.
> * Error feedback must explain what the problem is and should help the consumers to solve it themselves.
> * Reporting multiple errors one by one should be avoided.
> * Success feedback should provide information about what was done and give information to help for the next steps.

you can provide more cred and influence to the team by playing this role.


are status codes consistent as well?

## pagination, filtering, sorting

controlling the pages returned with pagination parameters. "pagination, filtering, and sorting features" are part of usability.

summary:
> To create APIs whose operations can be guessed, consistently define conventions and follow common practices and standards.
> Being consistent in your design not only makes your API easier to use, but also makes its design simpler.
> Always check if your API needs to provide different representation and/or localization and internationalization features.
> For each goal dealing with lists, consider whether paging, filtering, and sorting features will facilitate its use.
> In order to guide consumers, provide as much as metadata as possible (like hypermedia links, for example).
> Always check the underlying protocol and use its available features to make your API predictable, while taking care not to confuse users with complex or totally unused features.

Arnaud Lauret. The Design of Web APIs (Kindle Locations 4659-4662).

## how are responses grouped

another element of usability is how the response groups properties. the grouping and hierarchy can help clarify the info, esp. whether the props are required

> This organization will also be visible in the documentation or code generated from the specification of your API. Grouping properties in a dedicated structure can also help to provide a better vision of what is required or not, as shown in figure 7.4 .


> To design usable data, you must organize it by creating data groups—moving related properties closer together, using common prefixes, or creating substructures—and sorting the data in those groups and the groups themselves from more important to less important.

> That’s for the inputs, but an API reference documentation must also provide detailed information about possible responses, as shown in figure 12.7 .

## grouping and arrangement of endpoints

also tagging your API endpoints in your docs to group them can help too.

he also talks about right-sizing. don't try to stuff too much information into one endpoint. split it out ointo different endpoints  so that they are more specialized. does the response cram too much disparate stuff in there that doesn't really fit together? in order to answer this question you have to know what goals the person might be trying to achieve. so in the context of those goals, do the endpoints make sense? seems like there is a trend away toward smaller more specialized endpoints rather than general large ones.

summary:

> Organize data properties by sorting them, naming them using patterns, or grouping them in data structures.
> Categorize feedback and sort it by its importance.
> Group goals by focusing on functionality and not representations; you can use API description format features or naming patterns (OpenAPI tags and URL prefixes for REST APIs).
> Keep the number of properties and depth levels as low as possible in data structures.
> Avoid creating does-it-all goals. Split data structures, goals, and even APIs into smaller but functionally significant elements when possible.


## Security
security also a consideration.

> It is also fairly common to have many API designers working on many APIs in the same organization. This requires that all of them share what they do and how they do it—by creating design guidelines and building a community—in order to ensure a certain consistency and avoid everyone losing time reinventing the wheel.

there's a tradeoff between security ad usability -- too many scopes versus just the right amount for the diff roles and goals

> Both developers and end users can feel overwhelmed or annoyed by the process of carefully selecting a few scopes from a lengthy list.

your docs would need to indicate which permissions is required for this operation.

## Tutorials

if you create more tutorials in your doc, which show end to end workflows, you'll begin to see the

> ... only supplying reference documentation is like only providing the list of ingredients for a recipe without some indication of what to do with those ingredients—an edible result might be quite hard to achieve from that. That is why an API must also come with an operating manual describing various use cases and how to achieve them.


## Changelogs

> Additionally, as with any software, when modifying an API, even if no breaking changes are introduced, it is wise to provide a change log indicating the features that have been changed or added. As the designer who knows what changes you have made, it is up to you to list those changes.  



{% comment %}

## Documentation usability

integrate this elsewhere:
> Existing annotation frameworks, at least the one I have been working with, do not allow the same flexibility as you get when working directly with an API description format (for example, providing examples adapted to various contexts when using generic data structures shared across the API is impossible).

Arnaud Lauret. The Design of Web APIs (Kindle Locations 8545-8547).

> Including documentation in the code implies that you will actually modify the code to fix the documentation. That could be a problem depending on who works on what (documentation versus code) and your organization and your confidence level when modifying the code (yes, not all organizations in the world are able to push all applications automatically into production on every single commit without fearing anything).


other quotes from the book that i removed from the google doc:


“Just like security, API documentation should not be an afterthought. It is not something that can be completely delegated to someone else after the design; API designers must participate in it.” why?

It is also fairly common to have many API designers working on many APIs in the same organization. This requires that all of them share what they do and how they do it—by creating design guidelines and building a community—in order to ensure a certain consistency and avoid everyone losing time reinventing the wheel.

Arnaud Lauret. The Design of Web APIs (Kindle Locations 5050-5053).

Why decide to use redoc for the ref docs? Any particular affinity there?

How many sample responses do you recommend?

What do you think about the order of doc -- like stripe, showing resource first, which is the schema?

“I do not recommend only relying on a pure generation based on code, as the resulting documentation will be far from complete.” how common is this idea or practice?

“Existing annotation frameworks, at least the one I have been working with, do not allow the same flexibility as you get when working directly with an API description format (for example, providing examples adapted to various contexts when using generic data structures shared across the API is impossible).” → so you are not a fan of generating the spec from the code?

“An API goals canvas describes use cases that can be achieved using various goals. This means that, again, the work done during the design of the API can be reused to document the API.” why do design and docs go hand in hand? Both activities address use cases.

“ Look at Twilio ( https://www.twilio.com ) and Stripe ( https://stripe.com ) to discover first-class documentation.” does stripe use openapi?

“A detailed reference documentation is a good thing, but it is not enough. We must also create a user’s guide.” is it important to weave them together? How do you reuse content between the two, or is that not really important?

“Creating documentation helps to test the API design.” does this mean people who create doc are uniquely suited to provide feedback on API design?

How do you know if a process is cumbersome? Maybe tech writers assume this is just a typical developer workflow.

If you think an api design is poor, what is the way to communicate this to the team?

{% endcomment %}
