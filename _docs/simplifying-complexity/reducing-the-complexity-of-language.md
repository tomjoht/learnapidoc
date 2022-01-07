---
title: "Principle 7: Reduce the complexity of technical language"
permalink: simplifying-complexity/reducing-the-complexity-of-technical-language.html
sidebar: simplifying_complexity
description: "Highly technical material often becomes incomprehensible due to the unfamiliar terminology that's simply part of the technical domain. Readers who don't already speak the technical language in fluent ways will struggle to make sense of the material. To make these highly technical texts more accessible to users of all levels, you can create glossaries, embed definitions in tooltips, provide links for background knowledge, and more. As you define your terms, it's helpful to read beyond your company's content and check out how the same terms are used in your competitor's documentation and industry articles. As you become more aware of terms and their definitions, you will be more precise and careful with language in your documentation."
podcast_link: http://www.podtrac.com/pts/redirect.mp3/s3.us-west-1.wasabisys.com/idbwmedia.com/podcasts/glossaryreading.mp3
published: false
---

{% include audio.html %}

## Unfamiliar terms &mdash; one reason for incomprehensibility

One reason technical documentation is so difficult to follow is because of the unfamiliar terms and jargon in the content. A while ago I was evaluating whether to use Acrolinx, a language linter for tech docs, and I learned that the bulk of configuration for Acrolinx is in building out your own custom dictionary. Apparently, identifying your custom terms and incorporating them into Acrolinx's checking logic can take a number of weeks or months. The custom terms can account for around half of the terms in your dictionary.

Unlike most other professional writing disciplines, tech docs are notorious for the amount of specialized terms in their content. Specialized product terms, industry jargon, and company lingo all make their way into documentation.

API evangelist Kin Lane recently noted his frustration with an API's language when he encountered the undefined acronym &mdash; "DEG". Lane explains,

> I came across a set of API resources for managing a DEG the other day. You could add, update, delete and get DEGs. You can also pull analytics, history, and other elements of a DEG. I spent about 10-15 minutes looking around their developer portal, documentation, and even Googling, but never could figure out what a DEG was. Nowhere in their documentation did they ever tell consumers what a DEG was, you just had to be in the know I guess. The API designer (if that occurred) and developer had never stopped to consider that maybe someone would stumble across their very public API and not know what a DEG was. ([Using Plain Language In Your API Paths](https://apievangelist.com/2018/07/09/use-plain-language-in-api-paths/))

DEG must have been an acronym specific to the developer's API. In these cases, there's really no excuse for not defining your own pet acronyms and unique vocabulary. You can't simply make up an acronym and not define it for users (without frustrating them).

But many times, acronyms and unfamiliar terms are part of a specialized domain. For example, Lane wouldn't even pause if he ran across the terms "OpenAPI," "Swagger Codegen," "REST client," or even "three-legged OAuth" &mdash; these terms, probably unfamiliar to those outside of the REST API world, are part of the discourse of his technology landscape.

As a technical writer, using the correct terms for your knowledge and product domain is necessary, and those terms (however specialized and exclusive) are often appropriate for that particular knowledge domain.

To simplify the language, you can't just omit the necessary terminology for the domain or substitute in more friendly names. You have to teach the user the right language so they can participate in the conversation.

One commonsense approach for teaching users how to speak this language involves defining unfamiliar words for the user. You can define unfamiliar words in at least three ways: (1) include a glossary, (2) include inline tooltips with definitions, and (3) include "Background Knowledge" sections to help new users ramp up on the knowledge domain.

Since technical writers tend to be language connoisseurs, priding themselves on the ability to squeeze clarity out of engineering babble, focusing on language as a means of helping users understand content constitutes a major advantage tech writers can leverage to simplify complexity.

## Previous writing about glossaries

Entire books have been written on plain language principles and writing for clarity. My intent isn't to duplicate this research but to briefly note it before exploring my own angle on the topic.

The principles of plain language are explained well in the [Federal Plain Language Guidelines](https://www.plainlanguage.gov/guidelines/). Ginny Redish's [Letting Go of the Words](https://idratherbewriting.com/2011/04/08/book-review-letting-go-of-the-words-by-ginny-redish/) also provides excellent guidance for clear language, as does the [ASD-STE100 spec](https://idratherbewriting.com/2017/01/25/hyperste-simplified-technical-english-asd-ste100/). For example, keep sentences short, with one main idea per sentence. Use active voice with clear verbs. Don't stack adjectives before nouns. Use section headings, lists, and tables to break up content. You know these basics.

In ["Defining Glossaries"](http://www.ingentaconnect.com/search/article?option1=tka&value1=defining+glossaries&pageSize=10&index=1), Michelle Tackebary describes the history of glossaries and approaches for defining terms, such as distinguishing between *contextual definitions* and *stipulative definitions*. Tackebary provides a history of glossaries, even going back hundreds of years, with clergyman writing *glosses* in the margins of texts they were studying). She explains glossary best practices and notes recommendations from style guides and other research.

In ["The ABCs of Writing a Technical Glossary"](http://www.ingentaconnect.com/contentone/stc/tc/1998/00000045/00000001/art00003), Evie Gray and her co-authors outline a number of principles and best practices for creating glossaries. For example, they cover commonsense principles such as to avoid defining terms with the term you're defining, but they also expand on the right tense, format, and scope to be used in glossaries.

As Tackebary noted, style guides also provide some guidance on glossaries. The [*Apple Style Guide*](http://cdn2.hubspot.net/hubfs/1772454/Blog_Images/01.26.16.Apple_Style_Guide.pdf) contains a useful section on "How to write a glossary." And [*Read Me First!*](https://www.safaribooksonline.com/library/view/read-me-first/0131428993/ch13.html) also has a "Glossary Guidelines" section. These style guides contain practical (though brief) advice on creating a glossary and tend to focus on consistent styles within definitions, cross references, and other aspects.

To limit the discussion to a reasonable scope, I'm focusing here on the terminology aspect of language, specifically how to handle the proliferation of specialized terms in documentation. In technical documentation, the complexity is often due to the new language that users must operate within. These scenarios are most common with developer documentation but would also include science or medical documentation as well.

## Identifying unfamiliar terms for the audience

To ground the discussion in a concrete way, let's start with a passage to dissect. The following paragraph is from some tech docs I work on:

> This Fire TV Catalog plugin is based on Apache Cordova. [Apache Cordova](https://cordova.apache.org/) provides a wrapper that allows you to include native Android functionality in HTML5 web apps. Using Cordova, you can create an APK file for your web app.

Some terms that might be unfamiliar to users include the following:

* Fire TV Catalog
* Apache Cordova
* wrapper
* native Android
* HTML5 web app
* APK

In just two sentences, there are half a dozen specialized terms. Is it any wonder why tech docs can be so dense and inaccessible? How can we simplify the content so that users can understand what we're saying?

<figure><img class="docimage medium " src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/jargon-01.svg" alt="Without a mutual understanding of terms, the effectiveness of communication plummets" /><figcaption>Without a mutual understanding of terms, the effectiveness of communication plummets</figcaption></figure>

First, we have to identify terms that might be unfamiliar. A term on its own isn't familiar or unfamiliar &mdash; it can only be familiar/unfamiliar in the context of an audience. So the question is, *for our intended audience*, which terms will be unfamiliar?

Except for the first term ("Fire TV Catalog"), all the other terms are fairly standard terms in this knowledge domain (web app development). If you develop web apps, you should pretty much know what these terms mean. Otherwise, you have some initial learning to do, and you probably wouldn't even be reading this documentation.

For example, if you don't know what an APK is as it relates to app development, or what native apps or web apps are, then we need to roll back the tutorial here and start with more foundational concepts.

As a tech writer, how do you recognize which terms will be familiar with your audience? Without more understanding of your audience, identifying familiar versus unfamiliar terms is nearly impossible. (This is why my previous topic focused on the importance of [reconstructing the absent reader](/simplifying-complexity/reconstructing-the-absent-user.html).) In this example, the audience is a developer creating a web app, so the audience *should* be familiar with standard terms and concepts in the web app development space.

But how do you, as a technical writer who is presumably *not a web app developer*, know which terms are standard industry terms for web app developers? This is one of the main challenges in developer documentation. Basically, there's no shortcut here &mdash; as a tech writer, you have to ramp up on the knowledge domains you're writing in (at least a bit, even if the ramp up just involves a cursory read-through of material). Otherwise, you won't be able to distinguish between industry-standard terms and company-specific terms.

When you do ramp up on the knowledge domain, you'll start to recognize which terms are familiar and which might be new. It's not necessary to define familiar terms for your audience, because presumably this would just be extra noise, adding more information than the audience needs.

However, suppose your audience doesn't involve seasoned developers all familiar and conversant with these terms. More realistically, your audience's knowledge likely falls along a spectrum, with some newbie web app developers struggling to understand the space, and some seasoned web app developers not needing much help at all (guess which audience is more apt to be reading the documentation).

In this scenario, where the audience has a range of technical abilities, many industry-standard terms will be unfamiliar to some of the audience. Should you, as a technical writer, define them for the less experienced users? Or is the burden on the user to ramp up on the industry before reading your docs?

## "Background Knowledge" sections help new users ramp up

Here's one approach to helping new users ramp up on the knowledge domain. Rather than trying to educate newbie developers on the knowledge domains &mdash; a task usually beyond the bandwidth or expectations of any technical writer &mdash; you can provide a list of links the user can read to ramp up their knowledge. I call this section "Background Knowledge."

For example, in a topic I was writing about [device filtering and compatibility](https://developer.amazon.com/docs/app-submission/device-filtering-and-compatibility.html#background-knowledge), I included a section called "Background Knowledge." In that section, I provided a number of links to foundational material that would ramp users up to the right level.

<figure><img class="docimage large " src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/background-knowledge-terms.png" alt="Helping users ramp up on background knowledge" /><figcaption>Helping users ramp up on background knowledge</figcaption></figure>

Users who already understand these foundational concepts and industry-standard terms can skip the background knowledge sections, but users who would otherwise be confused will have a lifeline to follow to stay afloat. Remember that your audience doesn't consist of one user profile. You might have new web developers, seasoned web developers, QA engineers, novices embarking on their first web app project, and more.

In this particular documentation scenario, Amazon Appstore's documentation relies heavily on the Android documentation, since Amazon's operating system is a fork of Android, and we try to maintain as much parity with Android as possible. It would be foolish to try to repeat and maintain so much of the foundational concepts from Android in Amazon's documentation, but at the same time, it's not wise to assume that Android developers are 100% familiar with all Android coding practices. This "Background Knowledge" section is a convenient way to bridge potential gaps in knowledge without duplicating information.

In this "Background Knowledge" section, I also add some important terms to know. Many of these terms are industry-standard terms, but some aren't. For example, "app" and "APK" mean different things, especially within the Amazon Appstore ecosystem. Further, other app stores have differing terms for apps, such as "channel," which Amazon doesn't use in the same way. ("Amazon Channels" provides premium cable networks like HBO and ShowTime.) Listing out important terms here helps users learn the needed language to follow the concepts in the same documentation topic.

The embedded terms that I include in "Background Knowledge" are a subset of the total terms in the glossary. The full glossary might contain hundreds of terms important to know across the entire doc set, but for this specific topic, the terms provided are the important and relevant ones to know for the topic at hand.

Providing these mini-dictionaries at the start of a topic makes readers more apt to actually read the glossary definitions, since glancing at 10 definitions is more feasible than reading through hundreds of definitions, many of which would be irrelevant to the reader's current purpose.

Providing definitions of terms is an important foundation for communication, but where do you present these definitions? The most appropriate place is near the beginning of the topic rather than at the end. Engineers (and philosophers and other disciplines) tend to define terms up front that they're using in arguments and other logic to follow. For example, in *The Story of Philosophy*, Will Durant explains:

> "If you wish to converse with me," said Voltaire, "define your terms." How many a debate would have been deflated into a paragraph if the disputants had dared to define their terms! This is the alpha and omega of logic, the heart and soul of it, that every important term in serious discourse shall be subjected to strictest scrutiny and definition. it is difficult and ruthlessly tests the mind, but once done, it is half of any task. (75)

It makes logical sense to present the essential glossary terms near the beginning, but we might be hesitant to do so if the list pushes the more important content down. My compromise is to stuff the glossary terms inside an expandable button.

## Does your documentation use industry standard terms correctly?

Earlier I noted that in order to distinguish between familiar and unfamiliar terms, you have to understand the knowledge domain you're writing in. This is much easier to say than do. Technical writers often cover a wide range of technologies, and developer landscape runs deep and complex.

As a result, technical writers often have a superficial understanding of the knowledge domain, barely able to recognize the right lingo (for example, a tech writer might know that JavaScript uses the term "function" while Java uses the term "class"). So beyond recognition of the right terms for the industry, the next question is whether your documentation uses industry-standard terms *correctly*.

So far I've assumed that *Apache Cordova*, *wrapper*, *native Android*, *HTML5 web app*, and *APK* are industry standard terms. But remember that I'm not a web app developer, so my knowledge of web app development is only cursory. The terms look right, but are they? Are they the same terms my competitors are using in their documentation? Are they the same terms used in blog articles, posts on Stack Overflow, and elsewhere? If not, users will likely be confused.

For example, look at the term "HTML5 web app." Is this term correctly aligned with the industry standard term for web apps?  Does "HTML5 need to precede "web app"? Should it be written "web app" or "webapp" (one word) or "web application"? Does the "HTML5" adjective distinguish web apps from WebViews embedded in a native Android app? What do you call Android apps with embedded WebViews?

Here is where it helps to read the competitor's documentation to get a sense of how the industry as a whole uses these terms. In this example, I searched for "web app" on [developer.android.com](https://developer.android.com) and located their topic on [Web-Based Content](https://developer.android.com/guide/webapps/). Their usage of "web-based content" (rather than web app) refers to an embedded WebView within an Android application, which makes sense given that the site is about the Android framework (and not web app frameworks, which are based on HTML5, CSS, and JavaScript rather than Java-based Android). A WebView is kind of like a mini-web browser that you embed within a page &mdash; it shows content from an external website within a specific area of your page.

Looking at the [docs for Google Play Console](https://support.google.com/googleplay/android-developer/search?q=web+app) didn't lead to many hits, because Google Play is an Android shop that only accepts Android APKs. In fact, results from Google Play Console include hits from Android as well. In the combined results, there is a topic called [Best Practices for Web Apps](https://developer.android.com/guide/webapps/best-practices) and another called [Building Web Apps in WebView](https://developer.android.com/guide/webapps/webview), but the usage and context varies significantly from Amazon. Google says,

> If you want to deliver a web application (or just a web page) as a part of a client application, you can do it using `WebView`.

Thus, with Google, you might have a web page or web application that runs on a mobile browser, and you want to bring that web page or web application into your Android APK. You can do so through a `WebView`. But with Amazon, you can upload a zip file containing your mobile web application (all the HTML, CSS, and JS files) directly into the Appstore, without packaging it into an APK through a wrapper like Cordova. (Amazon ends up just wrapping the uploaded web application into an APK on the backend during the submission process.)

By reading through the competitor's documentation, I've expanded my understanding of these terms and can see where users might experience confusion. In a future edit to my docs, I might decide to explain more of what Amazon means by web apps, how the treatment differs from Google Play, and how you can upload web apps without resorting to a `WebView` in an APK file.

There are quite a few terms to get right here besides *web application* &mdash; highly related terms include *hybrid application*, *native application*, *progressive application*, *mobile applications*, and more.

See how reading the competitor's documentation can help illuminate potential issues with terminology that I assumed were industry standard but turned out to be more nuanced and complex than I originally thought? It might require some general reading on a topic (as well as consultation with engineers) before you can feel confident that you're using the right industry terms and lingo, but it's necessary.

As another example around reading the competitor's documentation, I recently undertook the task of submitting an app into Roku from beginning to end just to get a better sense of the whole Roku user journey. Right from the start, I learned that Roku calls their apps *channels* instead of *apps*. And for the app I was building with Direct Publisher, their documentation didn't refer to it as a native app or web app at all. It was just a way to build a channel by using a feed.

When you read the competitor's documentation, not only do you get a broader sense of the industry terminology, you also increase your awareness of the user's full context. Especially if users might use multiple products across the technology ecosystem, understanding the terms and other workflows in competitor products can inform your own documentation in helpful ways. You can align with the same terms, note where processes or features differ, and more.

Granted, this kind of knowledge gathering takes time, and we might object that we barely have enough time to edit the content we have, much less undertake reading how similar terms are used across the competitor's documentation and industry at large. But this reading is precisely where terminology gets interesting. If we only look at our own company's use of terms, the definitions of the terms might seem clear and straightforward. But we run the risk of operating in a bubble, without awareness of the linguistic chaos and complexity going on outside. It blew my mind the first time I realized that Roku didn't call apps "apps" but rather "channels."

As we learn about the ways different companies use the same terms, it creates more intrigue and appeal around language. There's more of a sense of something at stake for incorrect or naive term usage. Perhaps this sense of heightened stakes is enough to awaken our affinity for language and take more delight in making glossaries.

## When your company is using the wrong term...

If you find that your company is using the wrong term, you can work to change it. For example, at my work, in our app submission process, our UI used the term *binary* when referring to *APK.* I'm not sure when or where *binary* was introduced, but this term caught on and permeated project descriptions, support, and solution architect discussions.

As I was reading through the competitor's documentation (Android/Google Play) to see how they used the term "binary," I found that they didn't use the term at all. Google consistently referred to the app files as an "APK." This brought more clarity to several Amazon support tickets where users were asking what "binary" files were. I could immediately see why users (especially those who uploaded their apps into Google Play) would be confused as to why Amazon's submission interface asked them to upload their "binary."

As a result, I championed changing the term binary to APK. Changing this term was not an insignificant update, given that "binary" appeared on tabs, microcopy, error messages, and other parts of the UI, not to mention throughout the documentation, KB articles, and internal project roadmaps, and more. Most problematic, the term had saturated the language that most Amazon teams used to talk about the submissions process. Solutions architects, project managers, support, and other team members at Amazon all perfectly understand what "binary" meant and used it freely, even though most users didn't.

I'm happy to say that in this effort to change terms, I was eventually successful. We decided to replace the term "binary" with "APK."

Sometimes you can't change your product's language to align with industry-standard language. Years ago at another company, I lobbied unsuccessfully to change the term "Omnibus" in an application. It was the term that the project sponsor preferred despite hundreds of users not understanding the term.

For whatever reason, you might be stuck with either the wrong term or a non-intuitive term. In that case, you might include a parenthetical clarifier after the term when you use it. For example, before the switch from binary to APK, I frequently referred to "binaries" like this: "You can submit your binary (APK) file on the Binary Files (APK) tab."

This might seem like a passive aggressive way for technical writers to sneak in their dislike of certain terms, whispering a more familiar one with each usage. Even so, there aren't many alternatives here.

## Company-specific terms

Beyond industry-standard terms, which I've explored in depth already, what other terms might need attention? The terms unique to your company or product, of course!

Usually, any unfamiliar term that is specific to your company should appear in a glossary. Here's a great example from the [Lyft developer documentation](https://developer.lyft.com/docs/glossary). The terms they define are as follows: *Driver Rating*, *Lyft*, *Lyft Line*, *Lyft Lux*, *Lyft Lux SUV*, *Lyft Plus*, *Lyft Premier*, *Passenger Rating*, *Prime Time*, *Trust & Service* Fee. As these are all terms mostly specific to Lyft, it makes sense for them to appear in the glossary.

Returning to my initial passage for discussion ("This Fire TV Catalog plugin is based on Apache Cordova...."), *Fire TV Catalog* is a company-specific term. It should probably be linked to either the introductory topic about Fire TV Catalog or to a glossary definition about Fire TV Catalog. This term happens to be especially confusing, since catalog doesn't refer to the apps listed in Amazon's Appstore but rather to the apps whose media has been ingested into a master index of searchable metadata.

## Technical considerations for glossaries

<script>
$(function () {
  $('[data-toggle="popover"]').popover()
})
</script>

I've explored which terms to define, but there are other considerations with glossaries, including technical ones. First, the glossary definition should be stored in a re-usable source so that the definition can be provided in different parts of your documentation.

For example, you'll probably want the definition to appear on a master glossary page as well as embed it on the page in a Background Knowledge section, and maybe embed the definition in <a style="cursor: pointer !important; color: green; text-decoration: underline; text-decoration-style: double;" data-toggle="popover" title="tooltip" data-placement="top" data-html="true" data-content="A tooltip shows a definition or hint for some UI text or other element. Tooltips hide explanations from users who don't need them while providing a way for others to get more detail.">inline tooltips</a>. (By the way, [Jekyll](https://idratherbewriting.com/documentation-theme-jekyll/mydoc_adding_tooltips.html) is excellent at re-using definitions stored in YAML files.)

Further, you might have specialized glossaries for different products, with overlapping terms. For example, a glossary for *Alexa Skills Kit* and *Alexa Voice Service* and *Alexa Auto* (which are all different products with their own documentation) might all define the terms "near field" and "far field." These terms might also appear in the Fire TV glossary. By storing all glossary definitions in one file, and then referencing that definition where needed, you can reduce duplication.

(I won't go into technical details on how to do this, since glossaries can be implemented in a variety of ways. Certainly, if doc projects are walled off from each other, this re-use becomes difficult. But in general, you  don't want independent teams each creating their own glossaries with similar terms defined in contrasting ways.)

There are other considerations for glossaries as well. If you decide to have one mega glossary, what product sidebar should be shown for it? Is it better to have smaller, specialized glossaries that focus on the terminology for a specific product and shown in the context of that documentation, or to consolidate all glossary definitions across the site into one massive glossary?

There are pros and cons to each approach. With smaller, specialized glossaries, readers can get a sense of the 10-20 unique words they need to know. The glossary topic can also be included in the sidebar for that documentation's navigation. However, if you link one definition to another (e.g., "See also..."), you have to ensure that the links in each specialized glossary doesn't point to missing references.

But with one mega glossary, it's easier to maintain, and you don't need to worry about links between definitions remaining valid. The mega glossary can be a one-stop shop for definitions across your site. Viewing the glossary probably removes users from the context of a particular documentation set, but perhaps by opening the mega glossary in a separate window, this change in context wouldn't matter.

## Glossaries make you aware of your terms

More than anything else, creating a glossary makes you aware of all unique terms you're using in your documentation. It also makes you more accountable to use them in a precise and accurate way. This kind of awakening and awareness about the language we're using in docs can go a long way towards simplifying complexity.

The next time you're working on docs, stop and take a look at your content. List out all the terms that are either jargon or which might be unfamiliar to users. It can be somewhat surprising at first. Collect these terms into a glossary for the user. It's that simple. More importantly, when we define these terms, and then realize that the definitions are much more fuzzy than we originally thought, it helps expose why our docs get to be so complex in the first place.

## Why language gets in a bad state

Before leaving the topic of language, I can't help but explore a deeper idea that I've been wondering about. Why does the language in technical documentation get in such a bad state?

If you've ever received highly technical documentation written by engineers (or worse, written by super technical engineers for whom English is their second or third language), you've probably had to fight through engineering babble on a level of incomprehensibility you didn't think was possible.

Why can't engineers (whom we champion for their intellect and critical thinking abilities) write more clearly? Why is it that so few engineers seem capable of writing at all? Why is their code so precise and efficient but their grammar so sloppy and incoherent?

Even for those engineers who *can* write, why do they often hate to do it? For example, commenting on the 2018 GitHub Developer Survey, Matt Asay explains,

> 93% of [developer] respondents gnashed their teeth over shoddy documentation but also admitted to doing virtually nothing to improve the situation. … If you think this deeply felt need for documentation would motivate more developers to pitch in and help, you’d be wrong: 60% of developers can’t be bothered to contribute documentation. ([Open source documentation is bad, but proprietary software is worse](https://www.techrepublic.com/article/open-source-documentation-is-bad-but-proprietary-software-is-worse/))

With GitHub projects, most of which are open source, it seems most developers won't bother to write documentation. Why not?

I have a theory: Immersion in computer code messes with their natural language faculties. If you've ever been to another country (where they speak another language) for an extended period of time, and then returned to your home country, you might have observed a similar phenomenon. For example, Mormon missionaries often spend two years abroad, leaving their English-speaking environments to spend each day, from dawn to dusk, speaking Spanish in Guatemala or speaking Russian in St. Petersburg or wherever.

When they return to the United States, they often can't speak. They're at a loss for words and will hesitate or give you blank looks as they search for the right word (it's on the tip of their tongue but locked away in an old rusty cabinet they can't open). It's kind of hilarious to be around recently returned missionaries. They're very quiet for the first few weeks upon returning.

Programming code is just like that immersion in a foreign language. Developers immersed in classes and parameters, fields, objects, constructors, packages, interfaces, inheritance, superclasses, methods, and more start thinking in code. Just as developers define their variables before a list of functions, so too do they often define a list of terms at the top of a technical document. Just like they might shorten lengthy statements into more space-efficient variables, when they return to writing they likewise start converting everything into their own acronyms, compressing their writing.

Immersion in another language (including programming languages) habituates the mind to the rhythm, structure, and syntax of that language. When it comes time to switch back to natural spoken language, engineers become inhibited and inarticulate. Sure, some programmers are seemingly as fluent in language as they are brilliant with code, just as some people are seamlessly bilingual &mdash; but the majority aren't. The majority of programmers are socially withdrawn; think of the awkward nerd in the basement.

The idea that language shapes thought isn't new. The Sapir-Wharf hypothesis argues that language, to some extent, shapes and influences the way we think. A classic example is with the color blue and the Russian language. Apparently, in Russian, the color "blue" doesn't exist &mdash; just "light blue" or "dark blue." So how does that influence Russian-speakers when it comes to color discernment? Apparently, Russians tend to discern shades of blue slightly more quickly than other cultures.

Opponents to Whorfianism admit that language has a *tiny* influence on the shape of our thoughts, but not much. For example, John McWhorter says Whorfianism (aka [linguistic relativism](https://en.wikipedia.org/wiki/Linguistic_relativity)) is mostly hogwash and can lead to dangerous generalizations about cultures. For example, one might conclude that advanced philosophy &mdash; so common among European societies &mdash; is evidence of a superior language and culture (see [No, Your Language Doesn’t Influence How You Experience the World](http://www.slate.com/articles/podcasts/lexicon_valley/2014/07/lexicon_valley_the_language_hoax_by_linguist_john_mcwhorter_takes_on_the.html)).

I'm no expert on Whorfianism, but as far as I know, the topic hasn't been examined with *programming languages* in mind. Could it be that immersion in programming languages impacts that shape of one's thoughts in ways that make programmers less articulate? Is this how tech docs get into such a bad state to begin with?

Without more evidence and research, it's difficult to draw conclusions. I can only speculate on the reasons why so many engineers dislike writing and tend to be poor at it.

Let's explore the question from another line of thought, moving beyond Whorfianism to consider the *curse of knowledge*. In [*Made to Stick: Why Some Ideas Survive and Others Die*](https://www.amazon.com/Made-Stick-Ideas-Survive-Others/dp/1400064287/sr=8-1/qid=1167495807?ie=UTF8&s=books&tag2=guykawasakico-20), sibling authors Chip and Dan Heath explain how too much knowledge can cripple communication. In an interview with Guy Kawasaki, they explain:

>  Lots of research in economics and psychology shows that when we know something, it becomes hard for us to imagine not knowing it. As a result, we become lousy communicators. Think of a lawyer who can’t give you a straight, comprehensible answer to a legal question. His vast knowledge and experience renders him unable to fathom how little you know. So when he talks to you, he talks in abstractions that you can’t follow. And we’re all like the lawyer in our own domain of expertise.
>
> Here’s the great cruelty of the Curse of Knowledge: The better we get at generating great ideas &mdash; new insights and novel solutions &mdash; in our field of expertise, the more unnatural it becomes for us to communicate those ideas clearly. That’s why knowledge is a curse.

Let's assume that the curse of knowledge is a real phenomenon. This puts engineers and other SMEs in a real bind. You need expert-level knowledge about programming code to build robust, enterprise-grade solutions. Yet that same expertise creates so many obstacles to clear speech. One can hardly imagine not knowing everything he or she already knows. The concepts, the language, and the style of speech in the highly specialized knowledge domain all blind the engineer in endeavors of natural communication.

The programmer's knowledge domain has become so internalized, he or she can hardly step outside of it to speak in human terms. Consequently, the engineer can only speak in code, referring to classes and methods and data types because that is how the subject is properly described.

Chip and Dan don't leave experts stuck with this curse. They instead offer principles for experts to make their ideas "sticky" (or unforgettable). I won't veer into stickiness but want to instead stop and ponder that maybe, if not due to immersion in another language, it's the curse of knowledge that gets at the heart of why language in technical documentation is so opaque.

If so, the very act of developing expertise puts us at a disadvantage to communicate in natural, understandable speech. The more you know, the easier it is to become blind to that knowledge, unable to see and describe the world without the specialized discourse that only other experts understand.

And yet, without possession of this knowledge, the opposite happens: you have no ability to describe the complexity at all. The doc page remains blank. So as far as communication goes, you're damned if you do acquire expert knowledge, and damned if you don't acquire it.

Good communicators can extricate themselves from these assumptions and autopilot discourse. But it takes effort. The first steps must surely start with a recognition of specialized terms. And then a careful and brief definition of those terms. In other words, a glossary, presented as a gift to the user but really benefitting the author by way an increased awareness of language.


{% comment %}
integrate this quote:

I’ve worked in too many IT shops where actual spoken communication and other forms of normal human social interaction were almost non-existent, and when interaction did happen it wasn’t pleasant.https://www.quora.com/Why-did-you-stop-being-a-software-developer Ciaran Irvine, former 18 Years as a Web Developer
 {% endcomment %}
## Related reading

To read more about the importance of glossaries in API documentation, check out the [Glossaries](/learnapidoc/docapis_glossary_section.html) topic in my [API documentation course](/learnapidoc/).

See also [Has plain language deepened or ruined our delight in language?](https://idratherbewriting.com/2017/09/20/plain-language-ruined-my-delight-in-language/) for a post reflecting on the downsides of using plain language.

## Questions for reducing the complexity of technical language

* Are you using the right technical terms?
* Do these technical terms align with the same terms used in other documentation from other companies on the same topic?
* Are the terms defined?
* Is there any background reading users should do to ramp up on the topic?
* Do you use terms consistently or do you include synonyms?
* Could some of the language be made more accessible through tooltips?
* Are you using plain language to reduce the jargon and technical complexity as much as possible?

## References

Asay, Matt. [Open source documentation is bad, but proprietary software is worse](https://www.techrepublic.com/article/open-source-documentation-is-bad-but-proprietary-software-is-worse/). *Tech Republic.* 9 June 2017.

Durant, Will. [*The Story of Philosophy: The lives and opinions of the world's greatest philosophers from Plato to John Dewey.*](https://www.amazon.com/Story-Philosophy-Opinions-Greatest-Philosophers/dp/0671739166) Simon & Schuster, New York, 1961.

Gray, Evie; Ingram, William; Bodson, Dennis. ["The ABCs of Writing a Technical Glossary."](http://www.ingentaconnect.com/contentone/stc/tc/1998/00000045/00000001/art00003), by  *Technical Communication*.  First Quarter 1998.

Heath, Chip; Heath, Dan. [*Made to Stick: Why Some Ideas Survive and Others Die*](https://www.amazon.com/Made-Stick-Ideas-Survive-Others/dp/1400064287/sr=8-1/qid=1167495807?ie=UTF8&s=books&tag2=guykawasakico-20). 2 Jan 2007. Random House, New York.

Tackebary, Michelle Kidd. ["Defining Glossaries."](http://www.ingentaconnect.com/search/article?option1=tka&value1=defining+glossaries&pageSize=10&index=1) *Technical Communication*. Volume 52, Number 4, November 2005.

Vuolo, Mike. ["No, Your Language Doesn’t Influence How You Experience the World"](http://www.slate.com/articles/podcasts/lexicon_valley/2014/07/lexicon_valley_the_language_hoax_by_linguist_john_mcwhorter_takes_on_the.html). Lexicon Valley Episode No. 38: Fisherman's Whorf. *Slate*. 15 July 2014.

<small><b>Image credits</b></small>

<small>Background pattern from <a href="https://www.freepik.com/free-vector/circular-halftone-dots-vector-background_1725109.htm">Freepik</a></small>
