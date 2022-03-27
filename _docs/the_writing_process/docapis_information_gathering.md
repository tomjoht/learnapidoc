---
title: "2. Information gathering (the writing process)"
permalink: docapis_information_gathering.html
course: "Documenting REST APIs"
weight: 8.93
sidebar: docapis
section: writing_process
path1: writing_process.html
last-modified: 2021-11-19
---

Now that you've [created a doc plan](docapis_planning.html), gathered up source material (and presumably read it as well), and observed a demo, you're ready to move on to phase two of the writing process: information gathering through interviews.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## How you see yourself: writer versus journalist {#how_see_yourself}

As you gather information, a paradigm shift about the tech writing role would help out during this phase. Rather than thinking of yourself as a technical _writer_, think of yourself as a technical _journalist_. As a journalist, you gather information for your story by interviewing people. There are several different groups of people to gather information from:

* **Engineering** &mdash; the group that coded the feature
* **Product management** &mdash; the group that oversees the feature's planning and strategy
* **Partner engineers** &mdash; the group that helps users implement the feature
* **Quality assurance** &mdash; the group that tests the feature

These groups will each provide a different input on the feature. Note that groups and titles will vary (especially the term for "partner engineers"), but the four domains represented here are common across companies.

{% include random_ad4.html %}

## General tips for interviews {#tips_for_interviews}

The following are several tips for interviews that apply across all groups.

### Prepare lists of questions {#prepare_questions}

With each interview, it's good to give the person a list of questions ahead of time. This not only keeps you on track but also reassures the interviewees that the meeting will have a focus and purpose. Some people despise meetings that consume time they could have otherwise been spent coding. A simple list of questions sends the message that the meeting will be worthwhile. For more on this technique, see [A tip for doc reviews &mdash; bring a list of questions](https://idratherbewriting.com/blog/tip-for-doc-reviews-bring-list-of-questions/).

{% include image_ad_right.html %}

### Be aware of your role as a product aligner {#product_aligner}

There's another reason for reaching out to these four distinct groups: any group alone might present a skewed perspective, and without more variety, it's easy to mistake their perspective as the *Truth*. When you write documentation, you often raise awareness about differing points of view that need to be addressed. You might find disagreements between engineering and product management, or between product management and business development, and so on.

{% include random_ad3.html %}

For example, in our scenario of creating an API for coffee shops, perhaps the product management group envisions partners being able to add their own coffee shops and supplementary data, including ratings and reviews &mdash; essentially enabling partners to both read and write to the API. In contrast, Engineering might have more conservative views about what's possible with the data and might want to promote a more simplified model of updates only going one way &mdash; read-only. Writing documentation raises awareness of these differences and will force these groups to align as they review the documentation.

When these differences of opinion surface, don't be surprised. You will occasionally run into a product manager who freaks out about potential content almost going out to partners before it can be edited/tweaked in a certain way, which actually changes the direction provided by some other group. In these scenarios, your role pivots from tech writer to something entirely different: _product aligner_. During these moments, your role is to help define and shape the product's story and messaging.

Rather than inserting yourself into any disputes between groups, let the different groups do their own sparring and other hand-to-hand combat. Your job is mostly just to bring them into the ring together and see who's left standing at the end.

### Be aware of engineering myopia {#engineering_myopia}

A strategic advantage to the tech writer role is your broad perspective across products. As you interview different groups, you might find that, surprisingly, they lack awareness of other products. Some aspects of the product you're documenting might actually duplicate other products or have other redundancy and conflict. This phenomenon happens most frequently in large tech companies, where many teams work independently across different org lines.

Be aware of your cross-product perspective and recognize that it's a unique advantage you bring to the table. When a PM or engineer is unaware of how the API they're building differs from one that a neighboring team built, don't be shocked, and don't belittle the PM or engineers. These groups are often so specialized, they know only their sliver of the technology. Part of the value you bring to the table is your awareness of other products. Don't be afraid to surface the issues you observe and bring other groups into the conversation.

{% include random_ad2.html %}

## 2.1 Interview the engineers {#interview_engineers}

Now let's get into some strategies for interviews, starting with the engineers. Most likely the engineering team has already designated someone to be your contact point &mdash; the main engineer who coded the feature. (If you don't have a contact point, start with the tech lead or team lead for the API; they might designate someone else down the line.)

Set up time with this engineer and prepare a list of questions (the technique I described earlier). Now, this is extremely important: _Record your interview with the engineer._ Even if you're meeting in person, create a conference session in the room on your computer and record the meeting. The engineer is going to dive into gobbledygook and other technical speak, and you'll want to go back and re-listen to this again, even if it's just to get the terminology and phrasing correct. You won't be able to take enough notes in real-time to keep up (unless you're part-engineer already), and you might be too busy taking notes to catch all the details of the conversation.

{% include ads.html %}

Some questions to ask the engineer might be as follows:

* Are there any requirements to use this API?
* How do you set it up?
* How do you initialize it?
* Can you talk through the code in the sample app?
* How do you use this API for some common use cases?
* Are there limitations that partners will want to know about?

**Pitfall warning:** The engineer might give you a Javadoc and say that all the details are contained within the Javadoc, and it's self-explanatory to any Java engineer &mdash; as such, there's not much more to say. *All a user needs is a Javadoc to understand the API and implementation details*. For tech writers without an engineering background, this attitude can be difficult to counter because the Javadoc is challenging to read without a background in Java. In fact, just navigating the Javadoc output can be confusing, and you might feel up against a technology barrier, unsure if your lack of understanding will make it impossible to write intelligently about the feature. What does the user know or not know? What is common knowledge in the programming domain and what isn't? Are engineers even using industry standard terms here? You're at a real disadvantage in this situation, but press the engineer to provide some details.

Recognize this attitude ("All the developer needs is this Javadoc!") as a red flag to push back on. You can later get more ammunition for a counter argument when you meet with partner engineers, but for now, press on.

One strategy to get the engineer to unravel more detail is to have him or her talk through the code in the sample app, which was presumably used in the demo. The demo provides an instance in which the API was implemented toward some end. The engineer might have all kinds of disclaimers and notes about how the demo doesn't represent a true implementation, or how it's likely not how users will actually implement the API, but at least it's something to go on. You could also loop in the partner engineers to better gauge the knowledge levels and needs that users will have.

As you talk with the engineer, you'll find that a lot of times, the engineer who codes the feature doesn't know how the feature should be messaged or pitched, and doesn't have the larger picture about workflows and product implementation. Just as you might be unfamiliar with how to actually work with the API, the engineers who created it might not know how partners/developers will implement the API in their particular business domain and use cases. Your project engineers know software, but they often don't know the domain or industry where the partners will be implementing the API.

This is a key point and one that throws a monkey wrench in the writing process. Ideally, you might think the engineers who created the feature could walk you through how third-party developers will use it. After all, the API was designed to support various business use cases. Companies don't create APIs without a strong knowledge of who they're for and what scenarios they envision the APIs being used. They're providing a stream of data for a specific business use case. The company using the API will pay large amounts of money for this data.

And yet, does the engineer creating the API actually know how to implement the API in such business scenarios? Not always. As such, the information you get from the engineer will be somewhat general and not specifically tailored to how the APIs are used for key business tasks.

Think of the API and its various methods or endpoints like providing a cupboard of ingredients to a chef. Project teams don't know exactly how the chef (partner) will use the eggs, flour, sugar, butter, molasses, paprika, and cornmeal &mdash; because the ingredients could be used in a variety of recipes and intents. From the engineer's perspective, the requirements doc only specified that they create the molasses and paprika, not how they concoct these ingredients together toward some coherent recipe.

Engineers are so specialized, their view of the system often is much narrower than you assume. They might have specialized technical knowledge while lacking a broader understanding of the technology in the context of business domains. As a result, your interview with this development engineer will only take you so far. To gather the other information you need, you need to set up time with several other people.

## 2.2 Interview the product manager {#interview_pm}

The product manager (PM) might not be as technical as the engineers, but he or she will have a better handle on product messaging, use cases, audience analysis, and concepts related to the product. The product manager also likes to have input on the docs because the docs are part of the product experience.

Some topics will absolutely require the PM's input. If you start listing known limitations and issues with the feature, the PM will want to have input. If you drop hints about future, related features on the roadmap, you'll need to clear this with the PM as well.

Some questions to ask the PM might be as follows:

* Who is the audience for this API?
* What are some use cases for this API?
* What are some important concepts to know when working with this API?
* When is the release date for the feature?

The PM is sometimes easier to speak with because PMs aren't as steeped in the technology as the engineers, and so you might find this interview more comfortable. However, while the PM is your friend, the PM often has an agenda: to present the product in an extremely positive light, reflecting the successes of the product team (led by the PM). The PM will squirm against listing any warts, limitations, and issues with the product. PMs generally dislike transparency.

Whereas the engineers might note some important issues/limitations, the PM might want you to spin these issues in a positive way. Or the PM might try to persuade you that the omission of limitations is an indirect way of addressing them. For example, the PM might say, _We don't need to say that you can't do [X] with the feature; we just don't mention [X] at all. So by not saying it, we don't have to note this limitation about our product._

While this might be reasonable in many situations, if X is a feature most users will want or expect to do, the documentation should mention it. Tech writers are supposed to be _user_ champions, not product champions. For example, in our coffee API scenario, suppose the coffee API works only for coffee produced in the U.S., not coffee imported from Columbia, Guatemala, or elsewhere. It would be a pretty big gap not to mention this limitation explicitly in the documentation.

{: .tip}
For more on the topic of transparency, see [Transparency in documentation: dealing with limits about what you can and cannot say](https://idratherbewriting.com/2017/07/13/transparency-in-documentation/).

Keep the PM in the loop of the doc review even if they have little input on the technical aspects of the product. The PM is aware of all the stakeholders that you might not know about, and they can easily pull people into conversations to answer questions. For example, the PM likely connects the dots up the executive chain and can include others in the doc review several levels above you, or across teams that you didn't even know existed. The PM can be your connection point to all the other teams and interested parties related to the feature.

## 2.3 Interview the partner engineers {#interview_partner_engineers}

Another group to interview is the partner engineers. The title might differ by company &mdash; for example, "solutions engineers" or "developer relations." This is the group that interfaces with partners/users to help them implement the company's products. This group is one of the most important to have frequent communication with because they give you the closest feedback from users.  

Roles and companies vary of course, but in my experience, I rarely have direct interactions with the users. Instead, the partner engineers are the contact points with the users, and most feedback about users comes from the partner engineers. The partner engineers' familiarity with the partner's experience, friction points, and feature needs/requests gives them their primary value.

Partner engineers appreciate being in the loop about feature development and the documentation efforts, though they might not have much input on the documentation until you show them a draft. Partner engineers tend to work with existing documentation more than future documentation. They might be reactive (responding to current partner issues) rather than proactive (planning for future features and roadmaps, as PMs do).

Whether you choose to interview the partner engineers now or later depends on how much they know about the feature/API and the partner needs. Ideally, meet with the partner engineer who specializes in this feature ahead of time and get a better understanding of the target users and their use cases.

This information might be redundant with the use cases that the PM describes, but maybe not. The partner engineer can describe the business cases, implementation workflows, and other partner details in more depth. You could, at the very least, check the information you gathered from the PM against the partner engineer's knowledge.

Some sample questions to ask the partner engineer include the following:

* Which partners are we developing this feature for/with?
* How is this target partner planning to use the API?
* How does this partner implement the feature within their company? What's their workflow and setup?
* What issues or questions do you anticipate partners will have related to this API?

Usually, when companies develop a new feature, they select a target partner to develop the feature for, and this target partner becomes the beta partner that product teams work closely with. The partner provides constant input about features of the product and helps steer the product's development, feature set, and roadmap against their own needs and requirements. Partner engineers will often be the contact points with this development partner (more so than the PM), so it's key that you plug into this partner relationship &mdash; your access to the partner/user often comes directly through the partner engineer.

Most partner engineers are strong champions of documentation because documentation provides a tool that partner engineers need to do their jobs. At some point, partner engineers will be handing partners a link to the docs. As such, partner engineers are invested in having great docs because it makes their job easier. If the docs are poor, the partner engineers will have to hold the partner's hand in the implementation and answer a lot of questions, troubleshoot issues, and more. In contrast, good docs might free them up from many partner meetings and bug threads.

Building rapport with your partner engineers is one of the main strategies you can implement for success with your doc group. Touch base with a partner engineer now to gather more information. Later you'll loop back around with them for documentation reviews.

## 2.4 Interview the Quality Assurance (QA) group {#interview_qa}

Another group to interview is the QA group. This group won't have much information about the users and use cases. Instead, QA should have a group of test cases that they are testing the feature against. This list of test cases might help flesh out common tasks with the API. For example, the QA group might verify that the API returns the correct data for a variety of use cases. If you can get a hold of these test cases, they could inform the various how-tos and other technical details that are described in your documentation.

QA teams aren't used to working with tech writers, so you'll need to steer this conversation towards the paths you want. Some questions to ask QA include the following:

* Do you have a list of test cases that you're testing the API against?
* How are you testing the API? Is there a specific test environment you're using?
* Are there any test devices or setup I can use?
* Is there a sample app you're using to do the testing? How do you use this sample app?
* Do you have any documents that describe testing steps?
* Are there any bugs or limitations to be aware of? Where are the bugs tracked?
* Do you have a list of exactly what data the API should return in various scenarios?
* Are there any resources related to this API that might be helpful?

You can later involve QA in the review of the docs, but they tend to have minimal input on the documentation quality. They only seem to be interested in two questions: what do we promise, and does the feature return what we promised? For example, if your docs say that the API provides data for a specific use case, QA might chime in to say that the API doesn't actually provide that data. They rarely comment on clarity, organization, or style of the documentation.

The main benefit from QA will be information about how to test the API. They often have sample apps, test environments, streamlined procedures, and other resources set up to test an API. This can help facilitate how you can explore the API yourself because, as I mentioned earlier, playing around with the API is essential to better understand the product and inform your ability to write. I don't know about you, but I find it hard to write about something that I can't experience and explore for myself. If QA can help unlock that hands-on exploration, it's a huge win.

## Next steps

Continue on to [3. Writing](docapis_writing.html).
