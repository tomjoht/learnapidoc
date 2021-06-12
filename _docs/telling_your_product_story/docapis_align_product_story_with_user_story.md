---
title: "Aligning your product's story with your user's story"
permalink: /docapis_align_product_story_with_user_story.html
course: "Documenting REST APIs"
weight: 15.0
sidebar: docapis
section: docstory
path1: /docapis_story.html
last-modified:
published: false
---

In any documentation scenario, there are usually at least two competing stories: the company's story about their product, and the user's story. The two stories don't always align. For a product or feature to be successful, the overall story about that product needs to align with the user's story. These stories aren't always apparent, and learning to see them constitutes a complex task, since you have to reduce a sea of action and noise down to its essence. The misalignment of these stories often explains why products fail.

## Looking at larger trajectories

Many technical writers focus only on the immediate technical task before them and fail to grasp trajectories from a larger view. Some technical writers might think these larger trajectories are beyond the concerns of the technical writer. For example, I might draw boundaries around my responsibilities by saying, *My task is to describe how this widget works, but it is the product marketing team's job to get people to use it.*

I don't always exclude myself from this camp &mdash; one has to draw boundaries somewhere. For example, I might say to myself: *I didn't design the widget, so why should I care if it fails? It's not my brainchild. My role is simply to describe how the widget works &mdash; to produce documentation for it. My only concern is within the experience of those using the widget's documentation.*

However, this mindset gets us into trouble. The reason we write documentation is not to produce a document, but rather to put into action what the document describes. Robert Johnson, a professor of writing, explains that when the Greeks proposed theories about craft (the making of things, or *techne*), the craftsmen didn't merely have the product as the end goal, but rather the thing for which the product was intended. Johnson explains:

> ... *techne* and the arts of making have two ends (*telos*). The initial end is the thing being produced, the product. Beyond the product, however, is the use (or uses) for the product.

He then draws upon Janice Lauer and Janet Atwill's explanation of *telos* (or end purpose and design):

> The end of an art is not a product, but the use made of an artistic construct. The end of the housebuilding, for example, is neither the builder's use of the art nor the house itself, but rather then use made of the house by those for whom it was constructed. (27)
>
> Thus, products of human making are essentially inert until they are placed into use...

Johnson also draws upon John Wild, interpreting Aristotle, to explain that a concern for the end purpose of craft is what separates the artist from the technician:

> A man may know all the rules of a certain art, but if he does not know when and where to apply them, the 'effects' will be of no real use. He will then be a technician rather than a true artist, for he knows only the conditions of the art, not the art itself. The specific end of the art is its work, and this is always something good or useful for some end.

Johnson's goal in citing these scholars is to debunk the idea that "craft knowledge" is an oxymoron, or in other words, to argue that craftsmen *are* in fact operating with strategic knowledge. For example, house builders are not just nailing wood together to build a house for the sake of having a house; effective housebuilders perceive the end of their craft as creating livable spaces for families to comfortably dwell. If that end goal guides your action, you're a true artist; if you're just focused on lining up 2x4s, you're a technician.

In the same light, if, as a technical writer, my only goal is to document a widget, then at the end of day, having produced widget documentation meets my goal, right? Few of us will accept that. The goal was never to produce widget documentation, but to influence users to successfully create and install widgets. So unless we are content with merely the technical aspects of writing, we must acknowledge that we care about the ends (or *telos*) of our craft.

Translating this conversation to the tech comm workplace, the current trend is to distinguish between "technical writers" and "content strategists." The *technical writer* merely creates widget documentation; the *content strategist*, on the other hand, brings about the implementation and installation of widgets in user systems. I'm not planning to get into a discussion about job titles here. Like Johnson, I think writing involves strategy. The real work you do in writing is not to make a page or screen with words and sentences but to influence the actions users take around these words. Overall, if you aren't concerned about how your words influence users, then you're a technician. But if you are concerned, you're a true artist.

If we want to include *telos* in our craft, we must assess whether we are successful in our end goals. Presumably, the end of most software documentation is to increase the use and adoption of the software product. We want users to implement a system they've acquired, to set it up, run it, incorporate it, etc. &mdash; not just to have documentation for doing it.

The question we should be asking is not just "Is my documentation clear and easy to follow?" The larger questions are "Why aren't more people using and following my documentation to adopt the product? Why is it that so few people are crossing that finish line with the product?"

The answer to this question takes us into additional questions that get more interesting. We start to veer into the terrain of these invisible stories that shape action, and potential gaps between product stories and user stories; these gaps are what motivates or demotivates product adoption, persuades or dissuades user actions.

## A specific documentation scenario

Let's ground our discussion in a specific scenario, one directly related to documentation. One of my first projects when I started working at Amazon was to document [Fire App Builder](https://developer.amazon.com/docs/fire-app-builder/overview.html), a Java-based Android framework for building Fire TV apps. At first glance, it seems that my task was to create documentation for users.

I buried my head for months in the craft of writing documentation. I implemented best practices for information design. And I did "create documentation." But in publishing the documentation, I was short-sighted to think that I had reached my goal. My goal was never to create documentation for Fire App Builder. It was to create more Fire TV apps in the Appstore, which would in turn increase selection in the Appstore.

When I stop to analyze whether I achieved the end purpose of my craft, it raises some questions. While yes, we do have many Fire TV apps in the Appstore, the number wasn't nearly the count I had anticipated while writing the documentation. Whereas the first year saw approximately 75 apps onboard with Fire App Builder, I had in my mind thousands. Why did we see dozens instead of thousands of adoptions?

I should pause here to acknowledge the complexity of looking at end goals. You might say, You're still looking too short-sighted, Tom. Your goal isn't to increase the number of Fire TV apps in the Appstore or to expand the Appstore's selection for customers, but rather to increase market share of Fire TV in the streaming media market. And that end goal is to strengthen the Amazon ecosystem of products that interact with each other, turning the flywheel. And that work is to further the original goal of creating an *Everything store*, where every conceivable thing is available at your fingertips. And that end goal is ... and so it goes.

When you look too far down the end-goals, it gets to be too far reaching. The connection to these further goals is too tenuous. So many other efforts and causes influence the larger end of simply increasing market share of Fire TV (think of all the efforts around acquiring media content, the user interface design, the supporting products, the ecosystem of voice, etc.). It's hard to measure success in this larger end because there are hundreds of causes for that larger effect. So let's restrict the end goal to just one level beyond producing documentation: increasing the number of Fire TV apps in the Appstore.

With this end in mind, when I'm writing a topic on how to configure the manifest file in Fire App Builder, it may appear that my task is to explain the `minSdkVersion` settings to users, but this is like looking at the leaf or branch in front of my face instead of the forest. My real task involves increasing the number of Fire TV apps in the Appstore.

When we analyze whether our documentation was successful, we ask whether it achieved its actionable end. Why did some users adopt it while others reject it? This gets to the heart of the craft and the purpose for which we're simplifying complexity. This is rhetoric applied to the workplace. Why did people not do what I hoped they would do from the language and words I created? Why did the discourse in my docs not motivate action?

Now that we're in the realm of rhetoric and motives and actions, we can start to analyze the situation from a better perspective. In the next section, I'll explore what drives action on a deeper level &mdash; the stories we push about our products versus the stories that users believe.

## Scholars on stories

Before moving into some other examples, let's dive into what scholars have to say about story and narrative so that we can build a theoretical foundation to steer our analysis. To push users toward the end goal, we form a story around the product that serves the purpose of persuading users to take action toward the product. Whether one initiates the action or not depends on how our product's story aligns with the user's story.

Michael Drout, an English professor at Wheaton College, argues that

> "... story channels our intuition and lets us understand how things work. ... the structure of argument is finding ways to tell stories about the things you want to talk about."

In other words, stories form the organizing conceptual framework that determines our understanding and actions. Although most of the foundations for the humanities align with rhetorical theory (and the focus on logos, pathos, and ethos), another theory called [Narrative Paradigm Theory](https://en.wikipedia.org/wiki/Narrative_paradigm), proposed by twentieth-century communications scholar Walter Fisher, argues for a different approach. In the Narrative Paradigm, rather than grounding decision-making and evaluation in logic, one looks at *stories* as the underlying fabric of society.

Looking through Fisher's Narrative Paradigm lens, we might ask, what really factors into our sense-making of the world around us? Do we arrive at a sense of the world through careful analysis of logic, by analyzing the soundness of reasoning and evidence behind well-ordered arguments? Or do we make sense of the world around you through stories &mdash; the stories we hear, and the stories we tell ourselves?

Scholars in the psychology discipline also say story is foundational to our sense-making of the world. In "Stories from the Secret City: Ray Smith’s Art of Narrative as Rhetoric," Russel Hirst presents the cognitive psychology research on story:

> "Cognitive psychologists tell us that hearing and reading stories is a major way in which humans make sense of their world and position themselves in it. We also listen to our own internal narratives about our lived experience, over and over. In our conscious and unconscious minds, we weave stories into a conceptual fabric<sup>1</sup>. This ever-expanding tapestry forms, in large measure, our worldview. It thus profoundly influences a host of our cognitive functions, such as our cause-and-effect thinking. Of course, it is not stories alone that weave this tapestry; we also read statistics, hear reasoned arguments, look at scientific facts, etc.<sup>2</sup> But stories loom large in our psyches and influence our thinking and behavior in deep ways.<sup>3</sup> This fact has inspired the recent swell of interest in narrative theory in many fields, including literature, sociology, psychology, public relations, management, rhetoric, and technical communication."

If stories are the conceptual fabric that profoundly influences the way we see and experience the world, aren't these stories worth examining on a deeper level?

Another scholar, Tracy Bridgeford, draws upon psychologist Jerome Bruner to explain that the stories provide a frame through which we make sense of the world. Bridgeford writes,

> "Narrative frames, Bruner says, provide a 'means of constructing the world, of characterizing its flow, [and] of segmenting events within that world,' without which we’d be 'lost in a murk of chaotic experiences' (56). Human beings, he says, do not 'deal with the world event by event or with text sentence by sentence,' they frame events and sentences in larger structures' (64)."

In other words, narrative frames or stories (rather than logic and reasoning) ground how we see and interpret the world.

My favorite metaphor for story is to compare it to gravity. In [*What’s Your Story?: Storytelling to Move Markets, Audiences, People, and Brands*](https://www.safaribooksonline.com/library/view/whats-your-story/9780132277426/ch01.html), Ryan Mathews and Watts Wacker say stories are "a force as powerful and universal as gravity and, sadly, often almost as invisible to the people it impacts." Gravity works as a good analogy for the power of story because gravity itself is invisible. You don't see it, yet gravity influences the orbital paths and trajectories of nearly everything we see. In Einstein's General Theory of Relativity, gravity bends space and time:

{% include course_image.html filename="story_gravity" ext_print="svg" ext_web="svg" alt="Stories are the gravitational forces that bend the space time fabric of our minds" caption="Stories are the gravitational forces that shapes how we see and interpret the world" %}

A great deal has been written (both in mainstream media and academic journals) about "corporate narratives," especially origin stories and even CEO stories. For example, check out "Strategic Application of Storytelling in Organizations" by Randolph Barker and Kim Gower, who use Narrative Paradigm Theory as the foundation for their "Storytelling Model of Organizational Communication." They argue that "storytelling [is] an effective way to communicate in this [corporate] environment to arrive at enhanced organizational communication and performance."

However, scholars rarely relate storytelling to technical documentation, even though, as Richard Rabil points out, "technology is not an intrinsically neutral or benevolent force" but has been used "accomplish wonders and perpetrate horrors..." My goal in this article is to give more attention to technical documentation within the story framework.

## What is a story

What exactly do we mean by "story"? Stories are the arguments we believe, whether fallacious or sound, backed by valid reasoning or not. Some people use the term *story* rather than *narrative* because *story* encapsulates the overall significance and meaning of the events, whereas *narrative* refers more to the sequence of events taking place. Others use the two terms more interchangeably.

In the software workplace context, "user story" is also a term used in agile software development. When gathering requirements, the product manager collects "user stories" that function as the requirements or requested features written from the user's perspective (for example, a user story might be: "I want to be able to add a widget to my web page"). A typical product might have 10-20 user stories that the team works on.

These agile user stories aren't the kind of user story I'm talking about here &mdash; agile stories are more like user requirements. As such, I'm tempted use the term "user narrative." However, if narrative refers more to the sequence and order of plot and events, it's not quite the right term either. At any rate, perhaps the term "user stories" will connect more with the product manager's lingo and provide more immediate relevance, even if the usage refers to a larger meaning.

## Examples of stories

The invisible stories driving our actions and thoughts aren't always apparent. Identifying them requires some insight and clairvoyance. But identifying these stories that then play out in the narratives of our lives will help us understand why people adopt or reject the products we document.

Let's unpack the idea that stories drive action a bit more with more concrete examples. In a recent op-ed in the *New York Times*, David Brooks asks, ["What is the Democratic story?"](https://www.nytimes.com/2018/07/23/opinion/democratic-party-race-ocasio-cortez-economics.html). In other words, what story are Democrats telling in order to bring people to their side? Brooks starts by describing the story the Republicans were telling about their candidate:

> The story Donald Trump tells is that we good-hearted, decent people of Middle America have been betrayed by stupid elites who screw us and been threatened by foreigners who are out to get us. That story resonated with many people. You can get a lot of facts wrong if you get your story right.

He then asks what story the Democrats are going to tell to persuade others against the Trump story:

> Today’s Democrats tell two other stories.  The first is the traditional socialist story associated with Bernie Sanders: America is rived by the class conflict. The bankers and the oligarchs are exploiting the middles. We need a fighter who will go out and battle concentrated economic power.
>
> The second is the multicultural story: American history has been marked by systems of oppression. Those who have been oppressed &mdash; women, African-Americans, Latinos &mdash; need to stand together and fight for justice.

Brooks identifies these larger stories that are driving people forward and influencing their action, even if they're unaware of these underlying stories. What Brooks fails to ask is what the *people's* story is, and how that story matches up with the Democratic or Republican story. People are not, after all, an empty sponge, absorbing whatever story someone tries to tell them; rather, they are driven by their own stories, which usually center more closely on their own interests.

Before diving too far into the product versus user stories, let us pause to let these ideas sink in a bit, applying them to you and me, right here. I have a story, and you have a story. On this blog, my story is that I'm a technical writer in the trenches, not a bystanding academic or consultant at a distance. I'm knee-deep in the real work of documentation, and as such, I can relate to other technical writers. My entrenchment in the workplace gives me unparalleled insight in my blog posts to make my assertions and reflections real, relevant, and rooted in experience. Whether this is true or not is beside the point. This story guides and shapes my perspective, and I think it helps align readers with me because they perceive me as a virtual colleague.

Your story (in the context of you reading this blog) is that you want to keep updated with the latest trends and happenings in the field. You know you need to stay current, and so reading tech comm blogs serves as a form of continuing education, a way to keep your pulse on information, techniques, or other news you need to keep aware and up to date. You feel that reading here and participating in comments and other discussions aligns with the same purposes for which you might attend a tech comm event &mdash; to interact with like-minded colleagues, to participate in the ongoing conversation as part of the curious, ever-learning body of technical communicators. (At least this is the story I'm projecting onto my imagined audience.)

## Articulating the invisible stories

Let's return to the technical writer's workplace and articulate some stories to bring this concept to life. To make use of this story framework with docs, we need to identify two types of stories: product stories and user stories. Then we assess how the two stories align, particularly in regards to documentation.

Let's look at three examples to make these efforts clear. I'm going to use three products within my own work context because I'm most familiar with them, and articulating these stories will be useful to me.

### Example 1
In the case of Fire App Builder, which I described earlier, the product story was this:

> While many developers are familiar with building Android apps for mobile phones and tablets, TV introduces another form factor with many new elements and considerations that are unfamiliar to developers. Fire App Builder gives developers a ready-built project to create a TV app using the same Android tools you used to build phone and tablet apps.

Or more succinctly, *TV apps are hard to build; here's a sample TV toolkit to make it easier.*

So ... why didn't Fire App Builder's easy toolkit lead to a massive outpouring of Fire TV app development?

Maybe the product story didn't quite fit with the user's story. Certainly, there isn't just *one* user story. But what would some of them be? Here's one possible user story:

> I want the most platform coverage for my app, pushing it to Android TV and Fire TV and more. I'm starting with a Google template instead of an Amazon template because Android TV has more market share than Fire TV, so presumably this Google template will have wider compatibility with all the Android TV platforms. Using the Google template, my coverage will be greater and the app will still probably work on Fire TV.

In this light, the story about a template being "easy" doesn't quite match up with the user's story about alignment with the most widespread Android platform. If this is the case, the documentation could steer more towards arguments that compare and contrast the strategies of starting with Google's [Android Leanback template](https://github.com/googlesamples/androidtv-Leanback) versus starting with Fire App Builder. The documentation could also emphasize the fact the Fire App Builder toolkit also produces a valid app for Google Play, and more.

The documentation also needs to look closely at the Google services available on Google Play that aren't compatible with the services on Amazon Appstore, and then explain what to use instead. For example, if a user wants to sell items, they'd need to use In-app Billing with Google and In-app Purchasing with Amazon. The incompatibility of services might also be driving developers away.

### Example 2

Let's try another product: voice-enablement of Fire TV. This is a more of a feature than a product, but enabling this feature can take months of effort. There's currently a major initiative in our group to encourage developers to [voice-enable their app and content](https://developer.amazon.com/docs/fire-tv/voice-enable-your-app-and-content.html). The product story is as follows:

> Voice interactivity delights customers and makes it easier for them to find your content and interact with your app. Instead of having to type out their search using a remote control (a tedious process), customers can simply say "Play House of Cards." While watching a movie, they can simply say "Alexa, pause" as they go to fridge or answer the door. Voice-enablement leads to a hands-free TV viewing experience that is simply more enjoyable and convenient.

However, the user's story (and by user, I mean third-party developer, not customer) might be somewhat different here. The developer's story might be as follows:

> My main goal in developing and enhancing my app is to increase lift and engagement for my content. It's going to take 6 months of development effort to incorporate full-featured voice interactivity with my app, yet there's no hard data showing a significant lift or increased engagement from voice (at least not yet). It might be more profitable to spend my energy elsewhere &mdash; at least in these early stages of voice integration with products.

Sure, a lot of these stories might play out in developer marketing realm, but documentation isn't entirely a side note here. Documentation might appear to be objective, but think about the way we select and arrange information, what we choose to leave in or out, what we put in the foreground and background &mdash; this selection shapes the documentation into a particular body of information that reflects our own perspectives, agendas, and goals.

To align with the user story here, the documentation could organize voice topics under titles such as "Increasing App Engagement" instead of "Integrating Voice." The documentation could explain *why* developers might want to integrate voice (not just *how* to integrate it). For example, the documentation could note the increased discoverability from voice that could lead to greater content visibility. The documentation could also place more attention on how individual companies can integrate metrics to measure engagement and lift of their own content, inviting developers to do their own analytics pilots to measure value.

See how consideration of these larger stories can help shape and influence the direction of documentation? The technical writer is not just explaining the technical details of how to integrate the MediaSession API into an Android project. The technical writer is focused on the user's story and aligning the documentation around it. (This is essentially what user-centered documentation means, but here we're centering on the user's story.)

### Example 3

Let's look at one more product and user story: [Amazon Creator](https://creator.amazon.com/). This is a browser-based solution, designed for content creators rather than developers, to create a Fire TV app from a YouTube channel within a matter of minutes. The product story is as follows:

> You can create a Fire TV app in minutes, using a simple-to-use web tool that doesn't require any coding at all. You're already pushing video content onto YouTube, so why not bother to spend a few minutes building a Fire TV app to distribute your content on another channel, expanding your audience to include the millions of Fire TV customers as well?

In writing the documentation for Amazon Creator, I felt that upon release, we would see thousands of Fire TV apps &mdash; almost one app for every YouTube channel. Yet once again, rates of adoption didn't match up with expectations. What happened? In this case, the documentation was as clear and easy-to-follow as possible, since the web tool itself doesn't even really need documentation. What happened to the thousands of Amazon Creator apps? Why didn't users feel more persuaded to create Amazon Creator apps from their YouTube channels?

The user's story might not have been related to ease of building the app at all. Perhaps users told themselves this story:

> Our viewers already know how to find us on YouTube, and Fire TV viewers can easily access YouTube through the Firefox or Silk app. There's no benefit to having our own separate app, especially if the video views in the app won't count in the YouTube analytics. We want the views, feedback, comments, and other analytics more squarely centered on our main distribution channel in YouTube rather than fragmented into other channels.

In this case, instead of focusing on the ease of use for building an Amazon Creator app, the documentation could instead address the questions about analytics more directly, providing guidelines about the unique perspective users would gain by looking at analytics through Amazon's metrics. This alternative view can provide better segmenting of audiences, leading to more detailed understanding about viewing habits by device.

## Conclusion

Both product and user stories to be articulated more clearly through product and documentation teams. All too often, both product and doc teams don't fully understand what story they're telling to users and why. They easily fall prey to the *hey, it's so easy...* user story. But ease of use isn't always compelling enough to motivate adoption.

Many times products don't articulate their story at all. Without a clear story, documentation focuses on features instead of user's needs and concerns. When this happens, there's no north star to steer the ship of documentation, and consequently, the topics don't resonate with users.

At some level, you have to find common ground or purpose across product and user stories. In the *Harvard Business Review*, Mark Bonchek explains:

> "The cornerstone of a strategic narrative is a shared purpose. This shared purpose is the outcome that you and your customer are working toward together. It’s more than a value proposition of what you deliver to them. Or a mission of what you do for the world. It’s the journey that you are on with them. By having a shared purpose, the relationship shifts from consumer to co-creator."

As you try to align the product story with the user story, look for these areas of shared interest to align the two stories. At the end of the day, don't just sit back and think, what great documentation I've created. Instead, keep the focus on the real end game: product adoption. Our job is not to document widgets, but to encourage the use and implementation of widgets in the user experience.

By articulating product and user stories, we can adjust the product stories to be more in tune with the user's story. Learning to see these underlying stories is difficult. And there might be multiple stories for different users, and multiple stories within the same product. But learning to see these stories and their (lack of) alignment allows us to understand why our documentation achieves or fails its true end.

Both Fire App Builder and Amazon Creator &mdash; frameworks to build Fire TV apps &mdash; failed not only because they failed to align with the developer's story, but because the developer's story failed to align with the user's story. It turns out that users didn't want massive app selection on Fire TV. Once you have your Netflix, Hulu, YouTube TV, Crackle, and a handful of other apps, you're mostly satisfied and don't need or even want to see hundreds of results for each title.

## References

Barker, Randolph T; Gower, Kim. ["Strategic Application of Storytelling in Organizations: Toward Effective Communication in a Diverse World."](http://journals.sagepub.com/doi/abs/10.1177/0021943610369782) *Journal of Business Communication*. Vol. 47, Num. 3. July 2010.

Bonchek, Mark. ["How to Build a Strategic Narrative."](https://hbr.org/2016/03/how-to-build-a-strategic-narrative) *Harvard Business Review*. March 25, 2016.

Bridgeford, Tracy; Kitalong, Karla Saari; Selfe, Dickie. "STORY TIME: Teaching Technical Communication as a Narrative Way of Knowing." [*Innovative Approaches to Teaching Technical Communication*](https://www.jstor.org/stable/j.ctt46nzds). University Press of Colorado, Utah State University Press. 2004

Brooks, David. ["What Is the Democratic Story?"](https://www.nytimes.com/2018/07/23/opinion/democratic-party-race-ocasio-cortez-economics.html) *New York Times.* July 23, 2018.  

Drout, Michael D. C. [*A way with Words: Writing, Rhetoric, and the Art of Persuasion.*](https://www.audible.com/pd/Self-Development/The-Modern-Scholar-Audiobook/B002VA3LIA?ref=a_a_library_c4_libItem_1_B002VA3LIA&pf_rd_p=ae76b2bb-e63d-4a67-b357-dab3dee05ca1&pf_rd_r=H90ZY9STGXA34FHGE37S&) The Modern Scholar. Recorded Books, 2006.  

Hirst, Russel. ["Stories from the Secret City: Ray Smith’s Art of Narrative as Rhetoric"](http://www.ingentaconnect.com/content/stc/tc/2017/00000064/00000001/art00003). *Technical Communication* Volume 64, Number 1. February 2017.

Johnson, Robert R. ["Craft Knowledge: Of Disciplinarity in Writing Studies."](https://www.jstor.org/stable/27917868) *College Composition and Communication.* Vol. 61, No. 4. June 2010.

Rabil, Richard. ["Love to Write? Get into Technical Writing. Society Needs You."](https://richardrabil.com/2017/10/20/get-into-technical-writing/) richardrabil.com. October 20, 2017.

Mathews, Ryan; Wacker Watts. [*What’s Your Story?: Storytelling to Move Markets, Audiences, People, and Brands*](https://www.safaribooksonline.com/library/view/whats-your-story/9780132277426/). Prentice Hall Professional Business. 2007
