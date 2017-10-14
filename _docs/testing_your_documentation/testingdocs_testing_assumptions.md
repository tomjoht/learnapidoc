---
title: "Test your assumptions"
course: "Documenting REST APIs"
permalink: /testingdocs_testing_assumptions.html
weight: 4.2
sidebar: docapis
section: testingdocs 
path1: /testingdocs.html
---

Almost all documentation builds on assumptions that may or may not be shared with your audience. While [testing your documentation](testingdocs_test_your_instructions.html), recognize that what may seem clear to you may be confusing to your users. Learn to identify these assumptions that can interfere with your user's ability to follow the instructions in your docs.

{% if site.format == "web" %}
* TOC
{:toc}
{% endif %}

## Assumptions about terminology

You may assume that users already know how to SSH onto a server, create authorizations in REST headers, use cURL to submit calls, and so on. Usually documentation doesn't hold a user's hand from beginning to end, but rather jumps into a specific task that depends on concepts and techniques that you assume the user already knows.

Making assumptions about concepts and techniques your audience knows can be dangerous. These assumptions are exactly why so many people get frustrated by instructions and throw them in the trash.

For example, my 10-year-old daughter is starting to cook. She feels confident that if the instructions are clear, she can follow almost anything (assuming we have the ingredients to make it). However, she says sometimes the instructions tell her to do something that she doesn't know how to do &mdash; such as *sauté* something.

To *sauté* an onion, you cook onions in butter until they turn soft and translucent. To *julienne* a carrot, you cut them in the shape of little fingers. To *grease* a pan, you spray it with Pam or smear it with butter. To add an egg *white* only, you use the shell to separate out the yolk. To *dice* a pepper, you chop it into little tiny pieces.

The terms can all be confusing if you haven't done much cooking. Sometimes you must *knead* bread, or *cut* butter, or *fold in* flour, or add a *pinch* of salt, or add a cup of *packed* brown sugar, or add some *confectioners* sugar, and so on.

Sure, these terms are cooking 101, but if you're 10-years-old and baking for the first time, this is a world of new terminology. Even measuring a cup of flour is difficult &mdash; does it have to be *exact*, and if so, how do you get it exact? You could use the flat edge of a knife to knock off the top peaks, but someone has to teach you how to do that. When my 10-year-old first started measuring flour, she went to great lengths to get it exactly 1 cup, as if the success of the entire recipe depended on it.

The world of software instruction is full of similarly confusing terminology. For the most part, you have to know your audience's general level so that you can assess whether something will be clear. Does a user know how to *clear their cache*, or update *Flash*, or ensure the *JRE* is installed, or *clone* or *fork* a git repository? Do the users know how to open a *terminal*, *deploy* a web app, import a *package*, *cd* on the command line, submit a *PR*, or *chmod* file permissions?

This is why checking over your own instructions by walking through the steps yourself becomes problematic. The first rule of usability is to know the user, and also to recognize that you aren't the user.

With developer documentation, usually the audience's skill level is far beyond my own, so adding little notes that clarify obvious instruction (such as saying that the `$` in code samples signals a command prompt and shouldn't be typed in the actual command, or that ellipses `...` in code blocks indicates truncated code and shouldn't be copied and pasted) isn't essential. But adding these notes can't hurt, especially when some users of the documentation are product marketers rather than developers.

We must also remember that users may have deep knowledge in another technical area outside of the domain we're writing in. For example, the user may be a Java expert but a novice when it comes to JavaScript, and vice versa.

## Solutions for addressing different audiences

The solution to addressing different audiences doesn't involve writing entirely different sets of documentation. You can link potentially unfamiliar terms to a glossary or reference section where beginners can ramp up on the basics.

You can likewise provide links to separate, advanced topics for those scenarios when you want to give some power-level instruction but don't want to hold a user's hand through the whole process. You don't have to offer just one path through the doc set.

The problem, though, is learning to see the blind spots. If you're the only one testing your instructions, the instructions might seem perfectly clear to you. (I think most developers also feel this way after they write something. They usually take the approach of rendering the instruction in the most concise way possible, assuming their audience knows exactly what they do.) But the audience *doesn't* know exactly what you know, and although you might feel like what you've written is crystal clear, because c'mon, everyone knows how to clear their cache, in reality you won't know until you *test your instructions against an audience*.

## Testing your docs against an audience

Almost no developer can push out their code without running it through QA, but for some reason technical writers usually don't follow the same QA processes as developers. There are some cases where tech docs are "tested" by QA, but whenever this happens I usually get strange feedback, as if a robot were testing my instructions.

QA people test to see whether the instructions are accurate. They don't test whether a user would understand the instructions or whether concepts are clear. And QA team members are poor testers because they already know the system too well in the first place.

Before publishing, every tech writer should submit his or her instructions through a testing process, i.e., a "quality assurance" process. Strangely, few IT shops actually have a consistent quality assurance process for documentation. You wouldn't dream of setting up an IT shop without a quality assurance group for developers &mdash; why should docs be any different?

{% include random_ad.html %}

When there are editors for a team, the editors usually play a style-only role, checking to make sure the content conforms to a consistent voice, grammar, and diction in line with the company's official style guide.

While conforming to the same style guide is important, it's not as important as having someone actually test the instructions. Users can overlook poor speech and grammar &mdash; blogs and YouTube are proof of that. But users can't overlook instructions that don't work, that don't accurately describe the real steps and challenges the user faces.

I haven't had an editor for years. In fact, the only time I've ever had an editor was at my first tech writing job, where we had a dozen writers. The editor focused mostly on style.

I remember one time our editor was on vacation, and I got to play the editor role. I tried testing out the instructions and found that about a quarter of the time, I got lost. The instructions either missed a step, needed a screenshot, built on assumptions I didn't know, or had other issues.

The response, when you give instructions back to the writer, is usually the old "Oh, users will know that." The problem is that we're usually so disconnected with the actual user experience &mdash; we rarely see users trying out docs &mdash; we can't recognize the "users-will-know-how-to-do-that" statement for the fallacy that it is.

How do you test instructions without a dedicated editor, without a group of users, and without any formal structure in place? At the very least, you can ask a colleague to try out the instructions.

## Using your colleagues as test subjects

Other technical writers are usually both curious and helpful when you ask them to try out your instructions. And when other technical writers start to walk through your steps, they recognize discrepancies in style that are worthy of discussion in themselves.

Although usually other technical writers don't have time to go through your instructions, and they usually share your same level of technical expertise, having *someone* test your instructions is better than no one.

Tech writers are good testing candidates precisely because they are writers instead of developers. As writers, they usually lack the technical assumptions that a lot of developers have (assumptions that can cripple documentation).

Additionally, tech writers who test your instructions know exactly the kind of feedback you're looking for. They won't feel ashamed and dumb if they get stuck and can't follow your instructions. They'll usually let you know where your instructions are poor. They might say, *I got confused right here because I couldn't find the X button, and I didn't know what Y meant.* They know what you need to hear.

In general, it's always good to have a non-expert test something rather than an expert. Experts can often compensate for shortcomings in documentation with their own expertise. In fact, experts may pride themselves in being able to complete a task *despite the poor instruction*. Novices can't compensate.

Another reason tech writers make good testers is because this kind of activity fosters good team building and knowledge sharing. At a previous job, I worked in a large department that had, at one time, about 30 UX engineers. The UX team held periodic meetings during which they submitted a design for general feedback and discussion.

By giving other technical writers the opportunity to test your documentation, you create the same kind of sharing and review of content. You build a community rather than having each technical writer always work on independent projects.

What might come out of a user test from a colleague is more than highlighting shortcomings about poor instruction. You might bring up matters of style, or you might foster great team discussions about innovative approaches to your help. Maybe you've integrated a glossary tooltip that is simply cool, or an embedded series button. When other writers test your instructions, they not only see your demo, they understand how helpful a feature is in a real context and they can incorporate similar techniques.

## Observing users as they test your docs

One question in testing users is whether you should watch them in test mode. Undeniably, when you watch users, you put some pressure on them. Users don't want to look incompetent or dumb when they're following what should be clear instructions.

But if you don't watch users, the whole testing process is much more nebulous. Exactly *when* is a user trying out the instructions? How much time are they spending on the tasks? Are they asking others for help, googling terms, and going through a process of trial and error to arrive at the right answer?

If you watch a user, you can see exactly where they're getting stuck. Usability experts prefer to have users actually share their thoughts in a running monologue. They tell users to let them know what's running through their head every now and then.

In other usability setups, you can turn on a web cam to capture the user's expression while you view the screen in an online meeting screenshare. This can allow you to give the user some privacy while also watching him or her directly.

## Agile testing

In my documentation projects, I admit that I don't do nearly as much user testing as I should. At some point in my career, someone talked me into the idea of "agile testing." When you release your documentation, you're basically submitting it for testing. Each time you get a question from users, or a support incident gets logged, or someone sends an email about the doc, you can consider that feedback about the documentation. (*And if you don't hear anything, then the doc must be great, right? Hmmm.*)

Agile testing methods are okay. You should definitely act on this feedback. But hopefully you can catch errors *before* they get to users. The whole point of a quality assurance process is to ensure users get a quality product prior to release.

Additionally, the later in the software cycle you catch an error, the more costly it is. For example, suppose you discover that a button or label or error message is really confusing. It's much harder to change it post-release than pre-release. At least with documentation, you can continually improve your docs based on incoming feedback.

## Conclusion

No matter how extensively or minimally you do it, look for opportunities to test your instructions against an actual audience. You don't need to do a lot of tests (even the usability pros say 4-5 test subjects is usually enough to identify 80% of the problems), but try to do *some user testing*. When you treat docs like code, it naturally follows that just as we should test code, we should also test docs.
