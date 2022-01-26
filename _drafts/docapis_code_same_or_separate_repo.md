---
title: Keeping code docs in the same or separate repos
permalink: docapiscode.html
keywords:
course: "Documenting REST APIs"
sidebar: docapis
# section: docapiscode
# path1: doccode.html
published: false
# last-modified: 2020-11-02
---


How do you avoid duplication of information if you put some info in the code sample that doesn’t appear in the conceptual part?*

*14. Should you lead with a code example and then follow it up with an explanation? if this is how people read anyway, perhaps this is the best approach? Code first, then explain it? probably. Probably let this be some kind of explanation that follows progressive information disclosure.*

Main takeaway: just as you create more context-sensitive help by bringing help text into the UI, the same could be said of text with code samples.*  *I think debs want to immerse themselves in the code because it speaks more clearly to them.*

*seems like so much discussion is whether it’s better to embed the docs in the code or not.*
 *Where should comments appear in code?*
 How frequently should they appear?
 What is twill’s approach to documenting code?*  [Account Verification with Authy, Java and Servlets - Twilio](https://www.twilio.com/docs/authy/tutorials/account-verification-java-servlets) side by side panes.
Should we listen when programmers really want less text and more code? Is this what twill discovered when they found that pages that had code higher up performed better? Users know that code samples are more instructive and helpful.*

*To what extend does carroll’s minimalism come into play when documenting code samples?*

Do minimalist approaches fit an engineering audience even better than other types of audiences because engineers really like hands-on learning, jumping right into code?*


*Why did SO’s documentation experiment fail? Not sure. Maybe they didn’t really understand something, though they tried to put this principle into practice.  They were so heavily example and code-forward, and thought that perhaps much of this code could simply speak for itself. I don’t know why that didn’t work out, but it seems significant that it did not.*

11*. How do you test all of your code samples to make sure they stay up to date?*

*How can you ensure that code remains up to date and accurate from release to release? Can you cycle code samples in with testing group to make sure they run? That might be really interesting.  The article, “How Software Engineers Use Documentation: The State of the Practice” says that incomplete and inaccurate docs are a huge issue in software documentation*

*5. How can you reduce the effort required to keep docs accurate? This is another interesting question raised by the article referenced in question 2. Are there strategies you could do such as keeping docs inside of code that might make it live longer? “We must find ways to express the most*

*But it seems like could you not implement a paradigm with code on the left and narration on the right? Why is that so difficult to achieve?*

—> *thought: academics and practitioners approach the same topic from two sides of the same coin. Or one annotates the other? Reaction posts? Each reacting to the other? What if you could implement the same annotation effect, or scrolling, with those kinds of articles that you do with code? That would really be interesting. I think at the heart of this is a design pattern where you have explanation that stands to the right of code. Like twillo?


*do you put the code on the right or the left?* What goes into the decision behind that?

Does this create non-linear reading that might be jarring? Does a user have to split their focus?*
*Is it perhaps better to proceed in a more linear order, which would create readability?*

- *I really like the scroll effect. Is that common? Can you just jump to places? What does scroll give you?*
## Examples

 *What can we learn from palpal’s code?* [PayPal Checkout Integration Guide - PayPal Developer](https://developer.paypal.com/docs/checkout/integrate/#1-get-the-code). They have a pretty cool interactive code demo: [PayPal Checkout Integration Patterns](https://developer.paypal.com/demo/checkout/#/pattern/confirm). They also choose to use dark backgrounds; [PayPal Checkout Integration Guide - PayPal Developer](https://developer.paypal.com/docs/checkout/integrate/#3-execute-the-payment)

 [Account Verification with Authy, Java and Servlets - Twilio](https://www.twilio.com/docs/authy/tutorials/account-verification-java-servlets)

 https://colab.research.google.com/github/tensorflow/docs/blob/master/site/en/tutorials/_index.ipynb. they have an interactive notebook. Launched from [TensorFlow](https://www.tensorflow.org/tutorials/).
