---
title: API glossary
permalink: /api-glossary.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 13.1
sidebar: docapis
section: resources
path1: /resources.html
---

API
: Application Programming Interface. Enables different systems to interact with each other programmatically. Two types of APIs are web services and library-based APIs. See [What is a REST API?](http://idratherbewriting.com/learnapidoc/docapis_what_is_a_rest_api.html).

API Console
: Renders an interactive display for the RAML spec. Similar to Swagger UI, but for [RAML](http://idratherbewriting.com/learnapidoc/pubapis_raml.html#sample-spec-for-mashape-weather-api). See [github.com/mulesoft/api-console](https://github.com/mulesoft/api-console).

APIMATIC
: Supports most REST API description formats (OpenAPI, RAML, API Blueprint, etc.) and provides SDK code generation, conversions from one spec format to another, and many more services. APIMATIC "lets you define APIs and generate SDKs for more than 10 languages." For example, you can automatically convert Swagger 2.0 to 3.0 using the [API Transformer](https://apimatic.io/transformer) service on this site. See [https://apimatic.io/](https://apimatic.io/) and read the [documentation](https://docs.apimatic.io/).

API Transformer
: A cross-platform service provided by APIMATIC that will automatically convert your specification document from one format or version to another. See [apimatic.io/transformer](https://apimatic.io/transformer).

Apiary
: Platform that supports the full life-cycle of API design, development, and deployment. For interactive documentation, Apiary supports the API Blueprint specification, which similar to OpenAPI or RAML but includes more Markdown elements. See [apiary.io](https://apiary.io).

API Blueprint
: An
The API Blueprint spec is an alternative to OpenAPI or RAML. API Blueprint is written in a Markdown-flavored syntax. See [API Blueprint](http://idratherbewriting.com/learnapidoc/pubapis_api_blueprint.html) in this book, or go to [API Blueprint's homepage](https://apiblueprint.org/) to learn more.

Apigee
: Similar to Apiary, Apigee provides services for you to manage the whole lifecycle of your API. Specifically, Apigee lets you "manage API complexity and risk in a multi- and hybrid-cloud world by ensuring security, visibility, and performance across the entire API landscape." Supports the OpenAPI spec. See [apigee.com](https://apigee.com/api-management/).

Asciidoc
: A lightweight text format that provides more semantic features than Markdown. Used in some static site generators, such as [Asciidoctor](http://asciidoctor.org/) or [Nanoc](https://nanoc.ws/). See [http://asciidoc.org/](http://asciidoc.org/).

branch
: In Git, a branch is a copy of the repository that is often used for developing new features. Usually you work in branches and then merge the branch into the master branch when you're ready to publish. If you're editing documentation in a code repository, developers will probably have you work in a branch to make your edits. The developers will then either merge the branch into the master when ready, or you might submit a pull request to merge your branch into the master. See [git-branch](https://git-scm.com/docs/git-branch).

clone
: In Git, a clone is a copy of the repository. The first step in working with any repository is to clone the repo locally. Git is a distributed version control system, so everyone working in it has a local copy (clone) on their machines. The central repository is referred to as the origin. Each user can pull updates from origin and push updates to origin. See [git-clone](https://git-scm.com/docs/git-clone).

Codegen
: Refers to the Swagger tooling integrated with code libraries to auto-generate the Swagger specification document from annotations in the code. "Swagger Codegen can simplify your build process by generating server stubs and client SDKs from your Swagger specification." See [Swagger Codegen](https://swagger.io/swagger-codegen/).

commit
: In Git, a commit is when you take a snapshot of your changes to the repo. Git saves the commit as a snapshot in time that you can revert back to later if needed. You commit your changes before pulling from origin or before merging your branch within another branch. See [git-commit](https://git-scm.com/docs/git-commit).

CRUD
: Create, Read, Update, Delete. These four programming operations are often compared to POST, GET, PUT, and DELETE with REST API operations.

curl
: A command line utility often used to interact with REST API endpoints. Used in documentation for request code samples. curl is usually the default format used to display requests in API documentation. See [curl](https://curl.haxx.se/). Also written as cURL. See [Make a cURL call](https://idratherbewriting.com/learnapidoc/docapis_make_curl_call.html) and [Understand cURL more](https://idratherbewriting.com/learnapidoc/docapis_understand_curl.html).

endpoint
: The end part of the request URL (after the base path). Also sometimes used to refer to the entire API reference topic. See [Describe the endpoints and methods](https://idratherbewriting.com/learnapidoc/docapis_doc_endpoint_definitions.html).

Git
: Distributed version control system commonly used when interacting with code. GitHub uses Git, as does BitBucket and other version control platforms. Learning Git is essential for working with developer documentation, since this is the most common way developers share, review, collaborate, and distribute code. See [https://git-scm.com/](https://git-scm.com/).

GitHub
: A platform for managing Git repositories. Used for most open source projects. You can also publish documentation using GitHub, either by simply uploading your non-binary text files to the repo, or by auto-building your Jekyll site with GitHub Pages, or by using the built-in GitHub wiki. See [GitHub wikis](http://idratherbewriting.com/learnapidoc/pubapis_github_wikis.html) in this course as well as on [pages.github.com/](https://pages.github.com/).

git repo
: A tool for consolidating and managing many smaller repos with one system. See [git-repo](https://code.google.com/archive/p/git-repo/).

HAT
: Help Authoring Tool. Refers to the traditional help authoring tools (RoboHelp, Flare, Author-it, etc.) used by technical writers for documentation. Tooling for API docs tend to use [Docs as code tools](pubapis_docs_as_code.html) more than [HATs](pubapis_hats.html).

HATEOS
: Stands for Hypermedia as the Engine of Application State. Hypermedia is one of the characteristics of REST that is often overlooked or missing from REST APIs. In API responses, responses that span multiple pages should provide links for users to page to the other items. See [HATEOS](https://en.wikipedia.org/wiki/HATEOAS).

Hugo
: A static site generator that uses the Go programming language as its base. Along with Jekyll, Hugo is among the top 5 most popular static site generators. Hugo is probably the fastest site generator available. Speed matters as you scale the number of documents in your project beyond several hundred. See [https://gohugo.io/](https://gohugo.io/).

JSON
: JavaScript Object Notation. A lightweight syntax containing objects and arrays, usually used (instead of XML) to return information from a REST API. See [Analyze the JSON response](https://idratherbewriting.com/learnapidoc/docapis_analyze_json.html) in this course and [http://www.json.org/](http://www.json.org/)

Mercurial
: An distributed revision control system, similar to Git but not as popular. See [https://www.mercurial-scm.org/](https://www.mercurial-scm.org/).

Mulesoft
: Similar to Apiary or Apigee, Mulesoft provides an end-to-end platform for designing, developing, and distributing your APIs. For documentation, Mulesoft supports [RAML](http://idratherbewriting.com/learnapidoc/pubapis_raml.html). See [https://www.mulesoft.com/](https://www.mulesoft.com/).

OpenAPI
: The official name for the Swagger specification. The OpenAPI specification provides a set of elements that can be used to describe your REST API. When valid, the specification document can be used to create interactive documentation, generate client SDKs, run unit tests, and more. See [https://github.com/OAI/OpenAPI-Specification](https://github.com/OAI/OpenAPI-Specification). Now under the Open API Initiative with the Linux Foundation, the OpenAPI specification aims to be vendor neutral.

OpenAPI Initiative
: The governing body that directs the OpenAPI specification. Backed by the Linux Foundation. See [https://www.openapis.org/](https://www.openapis.org/).

parameter
: A value usually passed into an endpoint that affects the response in some way. REST has four possible parameter types: head, path, query, and body parameters. See [Documenting parameters](http://idratherbewriting.com/learnapidoc/docapis_doc_parameters.html) for more.

Pelican
: A static site generator based on Python. See [https://github.com/getpelican/pelican](https://github.com/getpelican/pelican).

Perforce
: Revision control system often used before Git became popular. Often configured as centralized repository instead of a distributed repository. See [Perforce](https://en.wikipedia.org/wiki/Perforce_Helix).

pull
: In Git, when you pull from origin, you get the latest updates from origin onto your local system. When you run `git pull`, Git tries to automatically merge the updates from origin into your own copy. If the merge cannot happen automatically, you might see merge conflicts. See [https://git-scm.com/docs/git-pull](https://git-scm.com/docs/git-pull).

Pull Request
: A request from an outside contributor to merge a cloned branch back into the master branch. The pull request workflow is commonly used with open source projects, because developers outside the team will not usually have contributor rights to merge updates into the repository. GitHub has a great interface for making and processing pull requests. See [Pull Requests](https://www.atlassian.com/git/tutorials/making-a-pull-request).

push
: In Git, when you want to update the origin with the latest updates from your local copy, you make `git push`. Your updates will bring origin back into sync with your local copy. See [https://git-scm.com/docs/git-push](https://git-scm.com/docs/git-push).

RAML
: Stands REST API Modeling Language and is similar to Swagger and other API specifications. RAML is backed by Mulesoft, a commercial API company, and uses a more YAML-based syntax in the specification.See [RAML tutorial](http://idratherbewriting.com/learnapidoc/pubapis_raml.html) in this course or [RAML](https://raml.org/).

RAML Console
: In Mulesoft, the RAML Console is where you design your RAML spec. Similar to the Swagger Editor for the OpenAPI spec.

repo
: In Git, a repo (short for repository) stores your project's code. Usually you only store non-binary (human-readable) text files in a repo, because Git can run diffs on text files and show you what has changed (but not with binary files).

REST API
: Stands for Representational State Transfer. Uses web protocols (HTTP) to make requests and provide responses in a language agnostic way, meaning that users can choose whatever programming language they want to make the calls. See [What is a REST API?](http://idratherbewriting.com/learnapidoc/docapis_what_is_a_rest_api.html).

Smartbear
: The company that maintains and develops the open source Swagger tooling (Swagger Editor, Swagger UI, Swagger Codegen, and others), and which that formed the OpenAPI Initiative which leads the evolution of the Swagger (OpenAPI) specification. Also developed SwaggerHub. See [Smarbear](https://smartbear.com/).

Sphinx
: A static site generator developed for managing documentation for Python. Sphinx is the most documentation-oriented static site generator available and includes many robust features -- such as search, sidebar navigation, semantic markup, managed links -- that other static site generators lack. Based on Python. See [https://www.staticgen.com/sphinx](https://www.staticgen.com/sphinx).

Static site generator
: A breed of website compilers that package up a group of files (usually written in Markdown) and make them into a website. There are more than 350 different static site generators. See [Jekyll](http://idratherbewriting.com/learnapidoc/pubapis_jekyll.html) in this course for a deep-dive into the most popular static site generator, or [Staticgen](https://www.staticgen.com/) for a list of all static site generators.

Swagger
: An official specification for REST APIs. Provides objects used to describe your endpoints, parameters, responses, and security. Now called OpenAPI specification.

Swagger contract
: The specification document, usually created manually, that defines the blueprints that developers should code the API to. The contract aligns with a "spec-first" or "spec-driven development" philosophy. The contract essentially acts like the API requirements for developers. See [this blog post/podcast](http://idratherbewriting.com/2015/10/12/spec-driven-design-podcast-michael-stowe/) for details.

Swagger Editor
: Swagger specification validator. An online editor that dynamically checks whether your Swagger specification document is valid.

Swagger specification document
: The file (either in YAML or JSON syntax) that describes your REST API. Follows the OpenAPI specification format.

Swagger UI
: A display framework. The most common way to parse a Swagger specification document and produce the interactive documentation as shown in the Petstore demo.

SwaggerHub
: A site developed by Smartbear to help teams collaborate around the Swagger spec. In addition to generating interactive documentation from SwaggerHub, you can generate many client and server SDKs and other services. See [Manage Swagger Projects with SwaggerHub](http://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html).

VCS
: Stands for version control system. Git and Mercurial are examples.

version control
: A system for managing code that relies on snapshots that store content at specific states. Enables you to revert to previous states, branch the code into different versions, and more. See [About Version Control](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control) for details.

YAML
: Recursive acronym for "YAML Ain't No Markup Language.” A human- readable, space-sensitive syntax used in the Swagger specification document. See [More About YAML](http://idratherbewriting.com/learnapidoc/pubapis_yaml.html).

{% include random_ad.html %}
