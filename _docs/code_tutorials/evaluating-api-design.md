---
title: "API design and usability"
permalink: evaluating-api-design.html
course: "Documenting REST APIs"
weight: 8.8
sidebar: docapis
section: docapiscode
path1: doccode.html
last-modified: 2019-12-02
---

Technical writing intersects closely with usability like no other domain on technical projects. This close connection with usability especially surfaces as you're writing tutorials on how to use the API in a step-by-step way. Because of this, in this section I've decided to add some more tips and insights about how to assess the usability and design of an API.

* TOC
{:toc}

## Documenting APIs tests the API design

In [*The Design of Web APIs*](https://www.amazon.com/Design-Web-APIs-Arnaud-Lauret/dp/1617295108), Arnaud Lauret, aka the [API Handyman](https://apihandyman.io/), says,

>Exhaustively documenting APIs has a nice side effect&mdash;it is testing the design. If you are unable to document how to use the API or how to implement it, it can be a sign of improper design.

In other words, as you write out the specific steps users need to follow to perform their goals, you are making your way through the user's footsteps and workflows. If you find these paths to be fuzzy and full of treacherous pits and gotchas, inconsistent parameters or unintelligible responses, chances are the API's usability is poor.

Bob Watson has a post that echoes similar sentiments. In the post ["If your API is hard to document, be warned"](https://docsbydesign.com/2018/02/18/if-your-api-is-hard-to-document-be-warned/), Bob explains that one of the first signs that your API is in trouble is when the technical writers find it difficult to write the documentation. Bob compares technical writers to the canaries that coal miners once brought with them to detect poisonous gases.

Bob says, "If your API is hard to document, it could be a sign of more fundamental problems." If technical writers find it "difficult to articulate market needs and pain points" (because the market needs don't exist), if technical writers find themselves "adding the verbal duct tape to make the product ready to ship," your API is in trouble. The first signs of an API's failure are likely signposted right there in the documentation.

Since technical writers are uniquely suited to provide feedback on usability, especially as we step through the user tasks in detail, it makes sense to expand here on what usability means, how to evaluate the usability of an API, and other details to look for. In presenting this information, I'll rely extensively on Arnaud Lauret's [*The Design of Web APIs*](https://www.amazon.com/Design-Web-APIs-Arnaud-Lauret/dp/1617295108) since it provides an in-depth treatment of APIs and design/usability.

{% include random_ad4.html %}

## What is usability

Usability has the same meaning whether you're referring to end-user applications with graphical user interfaces or developer code with an API. Usability refers to how easy it is for users to accomplish their desired tasks with the tool.

To evaluate usability, you must first understand what tasks users want to perform with the API. Since the API user's guide that technical writers create covers these tasks in detail, technical writers are perfectly situated to provide feedback on an API's usability.

## Challenges in evaluating developer experience usability

Despite the seemingly perfect fit between tech comm and usability, it's a lot more challenging than it might seem for tech writers to provide usability feedback.

{% include ads.html %}

The first issue is that tech writers are often too far downstream to have any actionable feedback on the design, so the motivation to influence design might not be strong. Questions about the API's design have likely been decided on long before the documentation task usually arrives in the tech writer's inbox. Unless you're extremely proactive in identifying APIs at their inception point, you probably don't even hear about the API until it's been approved by leadership and half-way coded. At this point, if you raise your hand and say, this endpoint doesn't make any sense to me, the feedback is too radical. Developers aren't going to drop everything and go back to the drawing board.

But supposing that the developers are listening intently for your feedback &mdash; the design is often above the heads of technical writers. On one project I worked on, the team was finalizing their security design and solicited feedback on the authentication workflows. I dug into these security workflows with good intentions, but honestly I didn't have the engineering knowledge to evaluate whether the security mechanism and workflow they had chosen was the right one for the audience, or whether the process for authorizing requests was appropriate and secure, especially in context of the larger company policies around privacy and authorization.

Much of developer docs have the same knowledge weight. As technical writers, we are often straining to keep our heads above water, learning as we go. We aren't often in a position to critique an approach taken. And even when we create an end-to-end tutorial for using the API toward some business goal, it might be hard to decide whether the workflow is easy or hard for a developer to implement &mdash; this is where lack of an engineering background can be challenging. Much of the code might seem difficult to implement. And assessing whether it's the norm for the space is hard to determine without working with other APIs across the industry.

{% include random_ad3.html %}

Despite these challenges, with a little understanding of what to look for, you can learn how to critique an API's usability just as with any other tool. All you need is to understand what to look for. So let's jump into Arnaud's book for a more focused discussion of these points.

## Evaluating API usability

Arnaud says that "an inconsistent design introduces variations or contradictions that make an interface harder to understand and use." In other words, an API should be consistent in ways that developers can predict without always consulting the documentation. The following sections cover a few questions to ask related to consistency.

{% include random_ad2.html %}

### Straightforward endpoints

Are endpoints intuitive in what they return? Or do you look at an endpoint and not have any idea what it returns? Keep in mind the list of tasks that users want to accomplish with the API, along with the terms they use to describe those tasks. Could you draw lines between the users' tasks and the endpoints they might need to use to accomplish such tasks? If so, then your endpoints are probably straightforward. If the two don't have any resemblance to each other, users will likely be stumped as well.

### Consistent endpoint patterns

Do the endpoints follow consistent patterns? A common pattern is to use plurals in the paths. Arnaud explains:

> Although there are no official REST rules regarding resource path design (apart from uniqueness), the most widely adopted format is `/{plural name reflecting collection’s item type}/{item id}`. Using resource paths exposing resource hierarchy and using plural names for collections to show the collection’s item type has become a de facto REST standard. In our example, a catalog should therefore be identified by `/products` and a product by `/products/{productId}`.
>
> ... Once consumers are familiar with the use of plural names for collections, they expect to see all collections with plural names. You can use a singular for collections if you want, but whatever your choice, stick to it! And this doesn’t only apply to URLs: it concerns every single name and value you choose...

Look at the collection of endpoints in your API. Do they follow consistent formats as Arnaud explains? Or are the endpoints a hodgepodge of different formats and tenses (e.g., `/products/{productId}` and `/transfer/{transferId}`)? Does it seem like different teams worked independently on different parts of the API, without communicating with each other? Technical writers can usually spot parallelism quite easily in lists. So list out your endpoints and see if they follow a consistent pattern, preferably with a plural for the collection and a singular for the specific item.

When you get into the nuts and bolts of an API (as you're likely to do by documenting the API), you'll start to spot inconsistencies. One API I worked on had a different implementation for two different device types. Unfortunately, the APIs used for one device type didn't work similarly for the other device type. Names followed different conventions, and it was obvious that the designs originated from different teams. One reason for slow adoption from users was due to the inconsistency between APIs. Pointing out this inconsistency didn't create any "Aha" moments for the project team, as they were already aware of the embarrassing inconsistency for many months, but it was good to have some validation for my feedback anyway.

### Nouns in endpoints, verbs in operations

Another common pattern with endpoints is to use nouns with the resources, and to let the operations/methods supply the verb. Arnaud covers this in his book, but other sites such as Stoplight also recommend the practice. Stoplight.io says:

> **Use nouns for resources** and avoid anything that looks like procedure calls. There’s no need for endpoints like `/getContacts` when we’re using HTTP methods. Instead, your resource would be named `/contacts` and you could perform the `GET` action (and any others that are relevant) against that resource. ([Basic API Design Guide & Best Practices](https://stoplight.io/api-design-guide/basics/))

At the most basic level, REST API endpoints and their supported operations have a noun + verb grammar (e.g., `contacts` with a `READ` operation). If the endpoint name blends the resource with the operation, as in `getContacts`, it can both be redundant as well as misleading. Separate nouns from verbs when it comes to endpoint names.

Note that this same convention might not be the case with [native library APIs](nativelibraryapis_overview.html), such as a Java API. With native library APIs, the same resource might not have different operations that you can apply to it; instead, the APIs are often functions that perform specific actions, so a `getContacts` function might make sense.

### Data formats in responses

Another point to consider is the data formats returned in responses. Just how usable is the data format for the audience? Are you returning JSON or XML? Do you give users the ability to specify the type of units they want? Arnaud writes,

> Data is at the core of APIs&mdash;resources, parameters, responses, and their properties shape an API. And all of their meanings, names, types, formats, and organization must be consistent in order to help consumers understand these easily.

For example, will developers prefer to work in metric or imperial systems? Celsius or Fahrenheit? I've seen some APIs fail to even indicate what units are used. What time format are you returning, and is this format consistent across all your endpoints? For example, if you return Unix Epoch time for one endpoint but ISO 8601 for another endpoint, that's inconsistent and potentially confusing.

Arnaud explains,

> People seek global uniformity in design. Once consumers have seen one date and time property represented by an ISO 8601 string, they expect all date and time properties to be ISO 8601 strings. Once a data format has been chosen for a type of data, it should be used for all representations of the same data type.

As you [define the parameters](docapis_doc_parameters.html) in your requests, as well as the [responses in your models or schemas](docapis_doc_sample_responses_and_schema.html), you will be describing the data types for each element. As such, you'll be pretty familiar with common patterns for data types. Sometimes developers will mistakenly identify numbers as strings, or specify much more specific numbers (e.g., floats, doubles) than is usually done in REST API docs, or they might have other inconsistencies. Look closely at these data types and see if they conform to consistent patterns across all endpoints. Again, inconsistency is easy to spot and hard to argue against when providing usability feedback.

### Casing with parameter names

Another area of high inconsistency is the casing of parameter names. Do all parameter names follow similar casing, or are there variations among upper camel case (`ResourceId`), lower camel case (`resourceId`), underscores (`resource_id`), or other conventions?

Enums (a list of allowed values) are often written in full caps (`RESOURCEID`), so they might differ from the lower camel case convention, which is most commonly used. But generally, parameter names should have similar casing conventions. Identify which conventions are used in your API. Then locate any inconsistencies.

For example, in the [Microsoft API Guidelines](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md#710-response-formats), the guide notes that "JSON property names SHOULD be camelCased." Additionally, "Services SHOULD provide JSON as the default encoding."

{% include image_ad_right.html %}

Note that it might not always be feasible to implement changes you recommend if your API is already live. If developers push out endpoints with inconsistent parameter names, and developers adopt and implement these APIs, changing the parameter names can cause breaking changes for the implementations.

For example, if someone has already implemented code that looks for the `ResourceId`, and a later update changes this to `resourceId`, code that parses JSON won't recognize this value because JSON is case sensitive. As such, if developers are reluctant to fix inconsistent code because making it consistent would introduce breaking changes, it might be a good argument for keeping it as is.

### Industry conventions

Beyond consistency within your own API's world, how do your conventions align with the API industry in general? Once after I gave an API workshop, a participant asked me to look over her company's API doc site and provide some feedback. The doc site was a list of a seemingly infinite collapsed sections on a single page, without any other sidebar navigation. Though the site was perhaps novel, I found it hard to navigate and recommended that they align more with industry conventions &mdash; by adding a sidebar with navigation.

Awareness and alignment with industry conventions is why I so frequently include activities in this course that involve reviewing approaches on other API doc sites. Following common industry conventions leads to predictability when new users navigate your site. If you organize your endpoints under a section called "API Reference," most users will intuitively understand what that section contains because so many other sites likewise call it "API Reference." Arnaud also emphasizes the importance of aligning with industry conventions:

> ... APIs have to be consistent with the rest of the world. There are common practices&mdash;standards, if you will&mdash;that you can use. Not only does following these make your APIs predictable for people who have never used any of your APIs before, thereby enhancing your APIs interoperability with the rest of the world, but it also makes your API designer’s job easier.

Look for top APIs from the big tech companies for examples. Stripe, Twilio, Twitter, GitHub, Microsoft, Facebook, Google, and other sites (which you can browse on [programmableweb.com](https://www.programmableweb.com/)) provide good examples of how to approach and organize API docs. Compare your company's approach to that in several of these common API doc sites.

### Consult Your API style guide

Just as there are style guides for tech docs and marketing material, companies often have API design style guides as well. Consider the scenario of a large company with many different engineering teams each building APIs. To ensure consistency across the APIs they build, these companies usually have an API style guide they adhere to. Arnaud says that best practices for API development usually involve "formally defin[ing] your design with rules in a document called the 'API Design Guidelines' or the 'API Design Style Guide.'"

In fact, Arnaud has collected more than 15 of these style guides in a site called [API Stylebook](http://apistylebook.com/design/guidelines/). In the site, he pulls from each of these style guides to show their guidance for common sections. You can also click links directly into the style guide sites. For example, check out the [Cisco API Design Guide](https://github.com/CiscoDevNet/api-design-guide) and [Microsoft REST API Guidelines](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md).

Just as documentation style guides go in-depth about more minutia than most people care about, API design style guides do the same about every aspect of an API. Before providing feedback about the API you're documenting, find out if your company has an API style guide. If they do, you'll have direct support to back your claims about potential inconsistencies or lack of adherence to standards. If your company doesn't have a design style guide, you could compare the approach in other design style guides.

Style guides for APIs are just as helpful with API design as they are with documentation. With documentation, style guides make it much easier to write. You no longer have to decide what to make bold and what to italicize, what to call certain terms, whether to use hyphens in "drop-down" or how to refer to required/optional items, and so on. Becoming familiar with your API design style guide can have similar effects as you work with an API. When you encounter multiple-word parameters, you won't have to guess which case to use, what convention to follow for endpoint paths, what to call common properties in responses, and so on.

## Workflows

Now let's look at another aspect of API usability: workflows. Presumably, this is where the technical writer's moment shines. Developers might write the reference documentation, but the use cases and other tutorials in the user guide are usually handled by technical writers.

As you describe the workflows required to use the API, you are uniquely suited to critique the usability. Start by assessing how many APIs you have to chain together to arrive at your result. For example, in my [Flickr API gallery activity](docapis_flickr_example.html), I walk through a use case of getting photos from a specific gallery. Presumably, one would use the `getPhotos` endpoint for this, but this task requires you to chain endpoints together. In the activity I explain:

> One of the arguments we need for the `getPhotos` endpoint is the `gallery_id`. Before we can get the `gallery_id`, however, we have to use another endpoint to retrieve it. Somewhat unintuitively, the `gallery_id` is not the ID that appears in the URL of the gallery. Instead, we use the `flickr.urls.lookupGallery` endpoint listed in the URLs resource section to get the `gallery_id` from a gallery URL

In your API, do users have to use one API to retrieve a specific value that they then plug into the parameters of another API? How many endpoints does a user need to use together before they can achieve their objective? Arnaud explains that "usability heavily depends on the simplicity of this flow of interactions."

## The Illusion of Explanatory Depth

As developers are designing an API, presumably they think through each scenario and design the list of endpoints required. However, despite the forethought and planning that goes into the design of an API, despite all the upfront discussions and ideation before coding even begins, there is often a gap of detail that gets overlooked. When you get down to describing all the steps that users must really perform, the nitty-gritty detail, another reality often surfaces: implementation is much more complex than anyone realized.

There is a phenomenon to describe the gap between how users think something works and how it actually works. It's called [The Illusion of Explanatory Depth](https://www.edge.org/response-detail/27117) and refers to the idea that people often don't realize the complexity of things they think they understand. Psychologist Adam Waytz explains,

> If you asked one hundred people on the street if they understand how a refrigerator works, most would respond, yes, they do. But ask them to then produce a detailed, step-by-step explanation of how exactly a refrigerator works and you would likely hear silence or stammering. This powerful but inaccurate feeling of knowing is what Leonid Rozenblit and Frank Keil in 2002 termed, the illusion of explanatory depth (IOED), stating, “Most people feel they understand the world with far greater detail, coherence, and depth than they really do.”

When you write an end-to-end tutorial about how to use an API for a user goal, you expose all of the detail in a meticulously granular fashion required to achieve the end. As Waytz says, you "produce a detailed, step-by-step explanation of exactly how" this goal is achieved using the system. In so doing, you surface many steps "with far greater detail, coherence, and depth" than people who have been thinking conceptually about design in perhaps a philosophical level have thought out. This is why Arnaud says that writing the documentation *tests* the design. The very act of writing the documentation reduces the illusion in the The Illusion of Explanatory Depth phenomenon.

This is why writing the tutorial is one of the best ways to assess the usability of the API. Unfortunately, by the time you're actually writing this tutorial, the API's design is often finalized (at least for the upcoming release, but maybe not for the next release).

## Error Messages

As you're writing tutorials, testing the API as you go, you will no doubt run into [error messages](docapis_doc_status_codes.html). These little messages pop up here and there in often subtle, hard-to-catch ways. Always note error messages that you see, as error messages are a key factor in usability.

Ideally, error messages should be descriptive enough to let users know what's wrong and to help them correct the issue. Arnaud explains,

> Error feedback must explain what the problem is and should help the consumers to solve it themselves.

If you simply give users errors that say, `500 Internal Server` error, this isn't very helpful. Not only should the documentation seek to clarify the conditions that trigger errors but the error messages themselves should contain the helpful information.

One could say a lot about error messages beyond the general guidance here. Take a look at the section titled [Error condition responses](https://github.com/Microsoft/api-guidelines/blob/master/Guidelines.md#7102-error-condition-responses) in Microsoft's REST API Guidelines to get a sense of the potential level of detail around error messages:

> For nonsuccess conditions, developers SHOULD be able to write one piece of code that handles errors consistently across different Microsoft REST API Guidelines services. This allows the building of simple and reliable infrastructure to handle exceptions as a separate flow from successful responses. ...
>
> The error response MUST be a single JSON object. This object MUST have a name/value pair named "error." The value MUST be a JSON object.
>
> This object MUST contain name/value pairs with the names "code" and "message," and it MAY contain name/value pairs with the names "target," "details" and "innererror."
>
> The value for the "code" name/value pair is a language-independent string. Its value is a service-defined error code that SHOULD be human-readable. This code serves as a more specific indicator of the error than the HTTP error code specified in the response. Services SHOULD have a relatively small number (about 20) of possible values for "code," and all clients MUST be capable of handling all of them....

And on it goes. In other words, there's a lot to consider even with something like error messages.

## Other usability matters

If you'd like to dive deeper into API design and usability, there are plenty of other aspects to cover. Arnaud's book [*The Design of Web APIs*](https://www.amazon.com/Design-Web-APIs-Arnaud-Lauret/dp/1617295108) goes into depth here. For example, he mentions some other aspects to consider:

* **Pagination, filtering, sorting**. When you return a large number of items in the response, how easy is it for users to page to the next item, to reduce the scope through filtering, or to apply other sorting options to determine their ordering?
* **Response groupings**. In the responses provided, how is the information grouped and structured? Does this structure clarify the meaning of the elements? Is there too much nesting?
* **Grouping and arrangement of endpoints**. How are the endpoints tagged and sorted in the API? Do the grouping make sense?
* **Right-sizing of endpoints**. Are the endpoints scoped appropriately to return the right information the user needs, or do the endpoints return truckloads of data that might not all be meaningful or useful to users?

## Conclusion and additional resources

There's a lot to say about the design and usability of a REST API. The intent here is not to be comprehensive but to touch on those aspects most relevant and accessible to technical writers. Hopefully, the sections covered here will get you started in assessing and evaluating the design of the API you document.

{: .tip}
For a podcast I recorded with Arnaud Lauret on usability, see <a href='https://idratherbewriting.com/blog/api-design-usability-arnaud-lauret-podcast/'>Podcast: API Design and Usability with Arnaud Lauret (API Handyman)</a>.

For an additional resource, see Andrew Johnston's presentation [The Trials and Tribulations of the API Style Guide](https://www.youtube.com/watch?v=iBBOWNXVapI) at API the Docs London 2018.

{: .tip}
For more on developer usability, be sure to see the next article in this course: [Developer Experience (DevX) Usability](devx-usability-examples.html).
