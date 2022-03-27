---
title: "4. Reviewing (the writing process)"
permalink: docapis_reviewing.html
course: "Documenting REST APIs"
weight: 8.95
sidebar: docapis
section: writing_process
path1: writing_process.html
last-modified: 2021-11-19
---

Now that you've [written a draft](docapis_writing.html) and have edited the content a few times, you're ready to begin the review process. Unlike other forms of writing, reviews are essential for documentation because you're usually writing about a technical domain that you're not an expert in.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## General strategies for reviewing content {#strategies}

This section lists general strategies for the review process. Before we jump into this, hopefully you've already set up some review session times with various stakeholders. If not, try to get time on their calendars now rather than later. It doesn't matter whether you have a draft to review or not. Book the reviews to reserve a spot on the reviewers' calendars.

### Review strategies that don't work {#strategies_that_fail}

I've tried different processes for reviewing content, and I have more or less realized what works and doesn't. Here's what *doesn't work*:

* Sending a general email to a group of people asking them to review content.
* Asking people to review large amounts of content at once.
* Asking people to come to a review meeting having read the content beforehand.
* Scheduling meetings with all the necessary reviewers together at the same time.
* Sending a link to docs and hoping that others will review it without being forced to do so in a scheduled meeting.

Unfortunately, the review process isn't as easy as sending out links and getting detailed feedback soon after. The process I'll suggest below works, based on years of experience. This process would not be how you'd expect to review a sample chapter or essay in a creative writing workshop. In a creative writing workshop, usually you send out about 10-20 pages of material a week ahead of time to the group. They read it during the week, prepare comments, and then share their comments in a round-robin format during the workshop. When I was getting my MFA in literary nonfiction, this was the pattern for how we reviewed content.

So when I began my career as a technical writer, I more or less expected the same workflow. It took years of disappointment and frustration with the review process to realize that this isn't how the corporate world works, and it's not how documentation reviews work.

In some ways, you don't even need to have much technical depth or familiarity with the content you're reviewing. You're _facilitating a process_, bringing people together to collect their feedback, making changes, and aligning different parties. You're arbitrating, aligning, clarifying, etc. By facilitating the review among different groups, you are moving content through this phase of its development.

{% include random_ad4.html %}

### Giving time during the meeting for reviewers to read the content {#give_time_to_read}

What works best is to carve out time during the actual meeting for reviewers to read the content. If you have a 45-minute meeting (an ideal length for review meetings), allow reviewers to either spend the first 20 minutes reading the content before launching into a discussion, or allow them to give feedback in real-time while they're reading. The former technique (giving time to read for 20 minutes) is the [basic _modus operandi_ of meetings at Amazon](https://idratherbewriting.com/blog/a-place-for-exploratory-writing-in-the-workplace/), and it works great elsewhere too. It's a little odd to have this quiet time during the meeting, but it's also somewhat reassuring for the reviewers to know that you've given them the necessary time to read the docs during the meeting.

{% include random_ad3.html %}

You might think, oh, we'll just ask everyone to read the doc beforehand and come to the meeting prepared with comments. When you do this, usually one person has read the content and others haven't. This frustrates the person who did read (he or she now just has to sit there waiting for others), and makes others feel irresponsible for not having done the preparation. The others end up skimming the content quickly so they can get started with the review. Then when they share their feedback, they make suggestions about adding content that's already there (because they didn't read it carefully enough).

So in general, bake time into the review meeting to allow people to read the content during the meeting. While you'll occasionally encounter reviewers who can do the reviews outside of meetings, these types are rare. Also, I've found that the more executive the reviewer, the more they expect you to present them with content to read on the spot and then take notes as they provide feedback.

### Keep the meetings 45 minutes or less {#keep_meetings_short}

A second technique is to keep the review session somewhat short and painless. Reading, analyzing, and providing feedback on content takes a lot of analytical bandwidth, and most people tap out after about 45 minutes. I've rarely seen any review session stay on track for a full hour. As such, don't try to review more than a handful of pages at a time. The rule of thumb is this: don't review more than the reviewer can read in 20 minutes. That works out to about 6 pages, no more.

People don't have time to review more than this, and you'll observe that after about a half-hour, their attention span wanes. It's at this point that the reviewers try to steer the discussion into easier waters, talking about the feature roadmap or current bugs rather than the documentation. To ensure you stay on track, keep the meeting short and focused.

{% include ads.html %}

This means you might need to set up multiple doc review sessions if you have a lot of content to review. That's all right. You could set up several 30-minute review sessions with people, if that's what it takes. It's also a lot easier to book 30 minutes on someone's calendar rather than a full hour, especially if you're including multiple reviewers.

If you have 12 pages for people to read, and only 30 minutes for the review session, consider setting up three review sessions. Give people the first 10 minutes to read about 4 pages and then provide a response. It might seem like you're filling their calendar with lots of doc reviews, but it might be the only way to finish the reviews.

### Stagger the review process {#stagger_the_review}

Another strategy is to layer the review process. It doesn't make sense to have all reviewers analyze the content at the same time. Ideally, you want to incorporate the edits from each review before the next reviewer sees the content. This way you can iteratively improve the content each time and get a fresh review of the newly edited content.

Without staggering the reviews, if you have five reviewers all look at the content at the same time, they might all point out the same issues. After you fix the issues, you won't have any more reviewers to look at the revised copy because you've already consumed all their reviewing time.

{% include random_ad2.html %}

Reviewers do actually have a finite amount of time they're willing to meet with you to review content, especially people in higher-level roles. For example, if you're pulling in a Level 8 or 9 person, don't expect to get more than 30 minutes of their review time total for the entire project. You basically get one shot with them and that's it. Because of this, you want to stagger your reviews so that the higher-ups review content only after the lower-levels have ironed out all of the issues.

To layer this review process, start the review at the product team and expand out from there. After you get the engineers to review the content, review it with the PM, then the partner engineers, then any other stakeholders (e.g, support groups), then business development, and finally any executives if the content requires it. You might not need to include all these groups, but include at least several as appropriate. The review process should look somewhat like this:

<figure><img class="docimage" src="{{site.media}}/{% if site.format == "kindle" %}review_process.png{% else %}review_process.svg{% endif %}" alt="The review process is iterative. After each review, incorporate the edits before the next review." /><figcaption>The review process is iterative. After each review, incorporate the edits before the next review.</figcaption></figure>

I expand more on this staggered approach in [Processes for reviewing documentation](docapis_review_processes.html).

### Bring a list of questions {#bring_questions}

During each review, bring a list of questions that you can ask the reviewer. At first, you can let the reviewers read the content and provide open feedback on any aspect, but as they run out of comments, bring up the questions in your list. You might find the reviewer has more thoughts about topics from your question list than they originally led on. During later reviews, such as follow-up reviews, the list of questions can be instrumental in providing purpose and structure to the review meetings. You can even link the questions to the calendar meeting invite.

During any review session, don't worry about asking dumb questions. One thing I've observed as I get older is that younger people are anxious about asking dumb questions, while older people simply don't care about what others think. Back when I was in grad school and teaching writing composition 101, I observed this difference between young students and returning adult students. The returning adults weren't afraid to stop me mid-sentence and have me re-explain something that they didn't get, even if it seemed somewhat basic. The same adult student could ask five questions in a row without thinking twice about it. Bring that same attitude to doc reviews.

### Everyone doesn't need to review all the content {#selective_areas_and_reviewers}

Another principle to remember is that everyone doesn't need to review all the content. You'll have a mix of technical and conceptual material in the docs. A product manager might not have any feedback on the code samples but could have a lot to say about the product overview, messaging, and concepts. In contrast, engineers might not have much to say about the product overview and messaging, but they could have a lot of comments on the code samples.

If you can highlight different parts of the content and ask reviewers to specifically look at those sections, your review meetings will be shorter and more focused. You'll have better results and won't waste your time having people read content that they will have little input on. This suits the idea of shorter, more targeted review meetings.

### Best days and times to review content {#best_days_and_times_for_review}

It might look like you have a full week to schedule people for reviews, but there are optimal days and times to review content. At all costs, avoid Monday mornings. During this time, people are still recovering from the weekend and are inundated with email from people working in other time zones. People in other time zones (India, Australia, Europe) have already been operating for a full day (sending emails, raising issues, and generally working), so if you're meeting with someone in the Pacific time zone, on Monday morning they're slogging through email, issues, and other tasks surfaced by these other groups. Also, people are generally grumpy on Monday mornings (still not in the rhythms of work), and if they already dislike reading and reviewing documentation, by combining the Monday morning with this doc review meeting, they might come across as cold and disinterested.

Another time to avoid is Friday afternoon. By this time, people are usually checked out mentally for the week. From about 2 pm onward on Fridays, it gets quiet at companies. Some people have already completed the week (especially people in time zones that are a day ahead). Additionally, some people leave early for weekend trips or other engagements, or they're just tired from a week of work. The absolute worst thing you can do is schedule a 4 pm Friday meeting for an hour. People will hate you for it.

Another time to avoid is lunchtime. Scheduling a meeting from 12-1 pm is considered somewhat rude, even if people don't eat lunch with anyone. Many people do have lunch engagements and prefer to spend this time interacting socially, but even for loners or workaholics who prefer to eat at their desks, they usually want a little personal time to relax and be idle. By booking their lunchtime, you incur their displeasure (which you'll sense from their tone and attitude during the review).

That leaves you Monday afternoons to Friday mornings. I've found that engineers typically prefer to review docs in the afternoons rather than the mornings. During the mornings, engineers tend to be more focused on coding and have more energy for work; they don't want to be sidetracked with doc reviews during their most optimal coding time. Instead, the early afternoon works much better, when they've accomplished some coding work and are ready to decompress a bit.

Also, be considerate of people in other time zones. If someone is in Australia, you might only have a three-hour window of overlap to catch both you and the reviewer during business hours. Avoid the temptation to conduct a meeting after hours. You might think that to get time on a person's schedule in India, you'll need to join a 7 pm meeting. After you do this several times, wait for burnout to set in. I've seen it happen multiple times. A writer starts accommodating India time zones for doc reviews (because it seems to be the only way to make progress in the doc reviews), and a few months later, this same writer transitions to another team.

{% include image_ad_right.html %}

Likewise, if someone is in another time zone, don't schedule them outside of their regular business hours. People rarely shift their schedules to review documentation. In a worst-case scenario, the only overlap might be one hour during the early morning, from 8 am to 9 am. If so, this is better than meeting outside of work. However, if this is the only window of time, rest assured that every other team who wants to meet with this person will also be scheduling meetings during that window. In short, if you have to review docs across problematic time zones, plan far ahead for this.

### For impossibly busy schedules, ask the reviewer to indicate the time {#ask_reviewer_to_indicate_time}

Another challenge is dealing with reviewers who have impossibly busy schedules (especially common for higher-level people). If the reviewers don't have any gaps in their schedule, ask them when a good time would be. A lot of people fill their schedules with recurring meetings that make them appear to be much busier than they are. They might have meetings on their schedule that they never attend. Some will carve out big chunks of time and label them DNS (for "Do Not Schedule") because they need to have some time to actually work. Politely ask someone when a good time would be to review a doc, letting them know your publishing deadlines and timeframes. They might allocate time during their DNS block.

## 4.1 Schedule the reviews in a staggered timeframe {#schedule_the_reviews}

Now that you're familiar with the general strategies for reviewing docs, it's time to act. See if you can set up all meetings at once, building toward your deadline. For example, suppose the deadline to publish is in two weeks, and you want to get input from four groups: Engineering, Product Management, Partner Engineering, and other stakeholders. This means you need to schedule 4 meetings. Give yourself time in between to make the edits. Set up meetings like this:

* Monday afternoon - Engineering doc review
* [incorporate edits]
* Thursday - Product Mgmt doc review
* Monday afternoon - Partner Engineering doc review
* [incorporate edits]
* Thursday - Other stakeholders doc review
* [incorporate edits]
* Publish docs!!!

Let them know that they'll have time to read the doc during the meeting.

### How to conduct the review session {#how_to_conduct_review_sessions}

During the review session, start by telling everyone that you'll give them 20 minutes to review the doc. Then after 20 minutes, ask for general feedback. For example, ask, "Does anyone have any general feedback?" Usually, a few people will start out. Don't steer the discussion just yet. Take notes and allow the reviewers to direct the focus and flow of their feedback. You don't want to bias their perspective or fill them with ideas that they didn't have.

As reviewers list out some issues, don't attempt to defend or counter any of their points (at least not at first). You are in listening mode. Nod your head, periodically summarize what they're saying to show that you understand, and take notes. If you have multiple reviewers, they can check each other's assertions and provide pushback if they disagree.

If reviewers do disagree with each other, you don't need to enter the fray unless they're missing some key piece of background information or detail. For example, maybe you included a certain perspective because the business development (BD) group wanted to pitch the product that way. You could point this out so that reviewers better understand why you took the approach you did. But overall, adopt an attitude of listening. You asked for their feedback. You're not defending a dissertation.

During the meetings, keep on the lookout for quiet people, and ask them questions to give them an opportunity to share their perspectives. Oftentimes, meetings are dominated by more extroverted, vocal types who have a lot of opinions. Introverts might stay quiet because that's just how they roll, even if they have more insightful things to say than the extroverts filling the air with their sound waves.

When you spot a quiet person, ask them politely for their input. For example, “Sam, what's your opinion on this?” You'll find that either (1) they're quiet because they actually don't have an opinion, in which case they'll usually just agree with what everyone else is saying. Or (2) they may start to express some feedback that they were holding back, for whatever reason, and it's actually refreshing and insightful. Look to balance out the voices in the room.

(By the way, this tip about balancing out the voices in a room applies for all types of meetings, not just doc review meetings. See [Quiet: The Power of Introverts in a World That Can't Stop Talking](https://www.amazon.com/Quiet-Power-Introverts-World-Talking/dp/0307352153) for more on introverts in the workplace.)

If the reviewers run out of questions, bring out your list of questions and start asking your questions one by one. It's at this point that you start to control the focus and flow of the meeting. You know the weak spots and gray areas of your docs better than most reviewers do. Spend time addressing these gray areas, but only after all reviewers have given their feedback on issues that jumped out to them.

## 4.2 Incorporate edits {#incorporate_edits}

After the meeting, incorporate edits into the documentation. Make a tally of all the changes you made, and list these changes in the revision so that others can see that their voices were heard and their feedback was incorporated. When people see that their feedback has been incorporated into the next revision, it helps them feel that their input and participation in the doc review was worthwhile, and they will be more likely to provide feedback in the future. If you don't incorporate their feedback, consider indicating reasons why in your revision notes. You could always lay the blame at another group. For example, "re combining the two topics, the partner engineering group said they needed them separate due to access control issues."

It's worth noting that not all feedback is worth incorporating. Sometimes reviewers are wrong, or the notion they describe during the meeting might have sounded all right when vocalized in the air (and without more context), but it really doesn't work when you try to incorporate it. Or you might simply disagree because you have more product information and a better understanding of partners and use cases than the reviewer does. You are, after all, the writer. Trust your writer's instincts.

### Tech writers as product aligners {#product_aligners}

Occasionally you will find that different groups have conflicting perspectives about what the documentation should say. For example, Engineering might want to be much more hesitant about supporting a feature that Product Management wants to advertise in a more visible way. Or BD might want you to avoid including too many technical details, instead of focusing more on a decision-maker audience than an engineering integrator audience. In contrast, your partner engineers might want you to include more technical details, even including min and max values that no one knows and which BD doesn't care about.

Realizations about misalignment between groups is expected during the review process. Reviewing documentation serves two hidden purposes: (1) it raises awareness about conflicting perspectives on products, and (2) it forces people to come to an agreement. As a writer, because you're the one defining and describing the product, you're the driving force to create the alignment. Just don't be surprised when your doc suddenly spawns a sense of controversy and heated exchange between groups. Sometimes, that's what it's supposed to do. This disagreement has been hiding in the shadows, and now by putting ideas into writing, you've forced the disagreement into the sun &mdash; people will have to deal with it.

If you're really caught in a pickle, don't try to take sides or promote your own view. Instead, bring the two parties together in a meeting to hash it out. You might have your own thoughts about the right direction, and since you control the docs, you can choose the direction you want to go. But it usually doesn't go well when tech writers face off against PMs or Engineering in battles like these. You might need to function as a broker between the two sides, trying to find a compromise that appeases both parties.

### Tracking down information {#tracking_down_information}

During the reviews, some reviewers might ask you for information that neither you nor the reviewers have. For example, they might ask you for min/max values of a certain parameter. Part of your job is to track down this information. If you can't find it, try this blunt force tactic. Identify a wiki page or code file related to the question. Then look for the last 5 authors to work on this content (as noted in the version history for the file). Send an email blast to all five of these people with the question.

They might not have the answer either, but they might suggest where you should go to find the answer. Perhaps there's a special group or email list that supports the technology, and you can ask your question there. This technique works pretty well. As a tech writer, you work across many different groups and roles, so you should be good at navigating the org chart and using different groups, email lists, office hours, or other tools to find information.

### Reviewing docs is fun and social {#fun_social}

Finally, I want to point out that reviewing docs can be one of the more fun and interesting aspects of the tech writer's job. You might have been working alone on this doc for weeks, but the review period allows you to dip your toes into more social waters. You get to meet people, interact, engage in discussions, and they get to know you and read your work.

It can be exhilarating if they like the docs, and also exhausting. You might get feedback that discourages you because you'll need to track down information, rework sections you thought were fine, or address other large gaps that will require more time and effort than you wanted to spend. Even so, it's worth it. Other times, reviewers might have very little to say except praise for a job well done.

### When does the review cycle end {#when_does_it_end}

The review cycle ends when you release the product, basically. If there's no release timeframe, it ends when your number of edits approach zero with each revision. With each review session, there should be fewer edits to make from subsequent reviewers. At some point, as you're reading and rereading the docs, you'll end up changing only minor cosmetic style and grammar details. When you hit this point (accompanied by doc nausea), recognize that your changes are no longer moving the needle anymore. You've addressed content accuracy, information about user journeys, and other higher-level concerns.

If you ever find yourself changing a period to a semicolon and then back to a period, stop. You've hit the editing wall. No one cares at this point. Also, if your readers are engineers, they probably won't appreciate the fine stylistic details you might be tweaking anyway. To move the content to the next level, you need partner feedback from the actual people using the product.

## Next steps

Continue on to [5. Publishing](docapis_publishing.html), the final step in the writing process.
