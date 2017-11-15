---
title: What type of API do you document?
permalink: /survey_most_popular_apis_to_document.html
course: "Documenting REST APIs"
weight: 13.2
sidebar: docapis
section: resources
path1: /resources.htmll
---

{: .survey}
[Survey question](survey_introduction.html): Do you provide documentation for a REST API, Java API, C++ API, .NET API, or other?

Here's the result:

<img src="images/typesofapis-600x398.png" alt="Common types of APIs that technical writers in my survey document" />

It's interesting to see the variety of responses. In looking at some of the responses, I had to stop and ask, is that really an API? I didn't realize the variety out there, and these responses are only a small fraction of the types of APIs available.

Note that many tech writers have worked with more than one type of API, both in current and former jobs (hence one respondent could have theoretically listed all of these types). In my survey question I might have added, what API are you _currently_ working on, because SOAP was more common 5 years ago and is largely being replaced by REST. But current and former API doc projects are not reflected in responses here. This is fine.

{% include random_ad.html %}

Also note that I combined C#, VB.NET, and VB into one category: .NET. This is because .NET is an umbrella term that includes each of these languages.

## Understanding the responses

Sarah Maddox has a great post titled [API Types](https://ffeathers.wordpress.com/2014/02/16/api-types/) (see also her [slidedeck](http://www.slideshare.net/sarahmaddox/api-types) where she goes into detail about different types of APIs). I highly recommend reading her post to get a better understanding of the various types of APIs. She divides APIs into several categories: web service APIs, library-based APIs, class-based APIs, hardware APIs, and more.

Without question, REST APIs are the most common type of APIs that technical writers document. Both REST APIs and SOAP APIs fall into a category of “web service APIs". You communicate with web service APIs (or more commonly “web APIs") communicate through HTTP protocol. That is, in your code you make a request by going to a URL with a certain path configured, and you get a response in the same browser.

Keep in mind that you might have a Java application that uses a REST API, or some other platform-specific language using this HTTP protocol, such as PHP or C++. The HTTP part is simply how information is transferred.

In contrast to web APIs, JavaScript APIs are an example of a “library-based API." However, I'm not sure there's much difference between a JavaScript _API_ and a JavaScript _library_. In both cases, you download a library of JavaScript functions that you can then call in your code. Sometimes you reference the library from an online source, and other times you download the library to your own server (perhaps stripping out the JavaScript code you're not using).

“Class-based APIs" include C, C++, Java, C#, VB.net, and VB. Java and C++ are the most common. Other people might call these “platform APIs". These type of APIs are a library of classes that you can incorporate in your code to extend the functionality of what you can do.

With REST APIs, you can use whatever language you want to make the calls, so REST APIs are language agnostic. However, this isn't the case with class-based or platform APIs. If you have a Java API, you can only use it in Java code. C++ APIs are only used in C++ programs. The API is a library of classes that is compiled in your code, along with all the other classes you create.

Platform APIs are often more difficult to document because you must know the basics of the platform in order to provide intelligent documentation. For example, you have to know what classes and objects are, what the various access modifiers mean, what _interfaces_ and _enums_ and _inheritance_ and all the other platform specific nuts and bolts are in order to document the API.

But REST APIs aren't language specific at all, and hence are much more accessible. They just involve different endpoints (URLs) that you go to (such as http://api.acme.com/user) and you get a response back (in JSON or XML) in the same browser. You don't really have to know how programmers will actually integrate the REST calls in their code. Professional programmers don't always need that level of detail (though code samples are always nice, and if your target audience uses a particular language, you'll probably provide samples in that language). But engineers basically need to know what endpoints available, the configuration options, and what gets returned in the response. They will figure out how to call the endpoint in the language they're using.

The other APIs mentioned in the survey are infrequently used, but I'll quickly mention them. [MM7](http://en.wikipedia.org/wiki/MMS_Architecture) refers to a messaging architecture for mobile devices. SOA, or service-oriented architecture, is an architectural pattern that involves separating out components into independent services that interact with each other (see [StackEdit](http://stackoverflow.com/questions/9496271/what-is-the-difference-between-an-api-and-soa)). A SOA includes various APIs through the different services.

The Oracle and SQL APIs allow you to interact with your database using a set of functions that give you advanced capabilities. Two people listed “JSON API". I believe they really meant a REST API that returns JSON-formatted responses. However, in googling JSON API, I did find a [JSON API](http://jsonapi.org/) that (I think) is some kind of specification for how JSON responses in an API should be returned. But I doubt this is what the survey participants are working on. Similarly, for the XML API, I'm guessing this is a SOAP API, because SOAP usually provides responses in XML, though REST APIs can do likewise.

## Why are REST APIs so popular among tech writers?

Why are REST APIs the predominant type of API that technical writers work with? Here are at least 3 reasons why tech writers are involved in API doc:

*   **REST APIs are hot.** In a world of increasing variety of code languages, you need a language agnostic format to enable a neutral interchange between the languages. By using HTTP, REST solves this problem. Hence as programming languages proliferate, REST is a scalable way to provide interchange between them all. REST also supports a cloud architecture. As SaaS models are becoming increasingly common, REST facilitates this architecture.
*   **REST APIs are easier to document than platform APIs.** With REST APIs, you don't need to know programming to document them. You're just documenting endpoints and responses. Tech writers can more easily integrate their skills into REST documentation. I'm not saying REST API doc is easy -- just a little _easier_ than Java API or C++ API doc, in my opinion.
*   **REST APIs require "manual" documentation.** You can't auto-generate documentation from source code comments in the REST API. This is perhaps good for tech writers – it means technical writers can take a more active role in preparing and shaping the API documentation. You don't need to plug into your engineer's source control repository workflow to edit the documentation. Usually you have to manually create REST API documentation. And if you do have a custom-built automated workflow, usually it's easier for tech writers to insert themselves into it.

## Other extrapolations

By looking at the most popular types of APIs people document, you can also extrapolate some other information, such as what the best programming languages are to learn. If you're going to learn programming, you can see that Java, C++, and .NET are the most popular. Google uses a lot of Java, Facebook uses C++, and Microsoft uses .NET. As long as these companies dominate the Internet landscape, these languages will also be important to know. But I'll get into this question in another survey response.
