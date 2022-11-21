---
title: "Redocly tutorial -- authoring and publishing API docs with Redocly's command-line tools"
permalink: pubapis_redocly.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 4.9
section: restapispecifications
path1: restapispecifications.html
last-modified: 2022-11-20
---

[Redocly](https://redoc.ly/) provides a variety of tools for working with API docs. Using Redocly's command-line tools, you can split the OpenAPI definition into many sub-files, and then later bundle up the discrete files into a single file during the publishing stage. You can generate your docs into one of the most attractive outputs available for REST API docs, including integration with conceptual topics as well. Redocly also offers more robust developer portals and SaaS offerings that cover the full authoring and publishing lifecycle.

* TOC
{:toc}

*Note that Redocly is one of the sponsors of my site.*

## Background about Redocly's approach to simplifying the author experience with OpenAPI

Before Redocly became Redocly, the team worked on a product called [Rebilly](https://www.rebilly.com/docs/developer-docs/api/overview/) that included a 22,000 line OpenAPI definition file. Working in such a long file and authoring in YAML or JSON was especially challenging.  Not only was maneuvering in a single massive file difficult, one small indentation error would require them to constantly troubleshoot syntax issues. (The single YAML file for all OpenAPI definition elements was analogous to software developers storing all code for an application in a single file &mdash; an unthinkable way of working with code.)

When Redocly innovated on their approach to simplifying OpenAPI spec development, instead of putting a graphical user interface (GUI) on top of the OpenAPI code and requiring users to write the OpenAPI definition in forms, menus, and other widgets, Redocly decided on a more docs-as-code approach that aligns with the developer audience.

Redocly developed command-line tools to split the OpenAPI definition into smaller files to make it easier to work with. Files are stored as separate files and referenced through JSON reference tag (`$ref`) in the main OpenAPI file. Working in smaller files reduces the likelihood of syntax issues and other formatting errors. It also makes it easier to focus on the content.

{% include image_ad_right.html %}

The CLI tools also let you check your OpenAPI definition against a ruleset to ensure you're following best practices. You can configure the ruleset with different levels of strictness, either including or ignoring optional best practices in the OpenAPI specification. This linting lets you identify issues in your OpenAPI definition that might not technically be errors, but would better if included.

{% include random_ad4.html %}

When you're ready to publish your OpenAPI definition, you can also use a command line tool to bundle the small files up into a single file again. You can then feed your OpenAPI definition file into any OpenAPI documentation tool, including Redoc's documentation output: [Redocly API Reference](https://redoc.ly/reference-docs) (premium version), or the community edition of [Redoc](https://redoc.ly/redoc) (free version). There's also a [Developer Portal](https://redoc.ly/developer-portal) option, or a more cloud-based [Workflows integration](https://redoc.ly/workflows). Some of these tools (especially the command-line tools) will come into focus through the tutorial below.

## Overview of Redocly products

Redocly has a variety of products, so let's first clarify these tools before diving more deeply into the the tutorial.

<table>
   <colgroup>
      <col width="30%" />
      <col width="60%" />
      <col width="20%" />
   </colgroup>
   <thead>
      <tr>
         <th markdown="span">Tool</th>
         <th markdown="span">Description</th>
         <th markdown="span">Cost</th>
      </tr>
   </thead>
   <tbody>
       <tr>
          <td markdown="span">[Redoc](https://redoc.ly/redoc)</td>
          <td markdown="span">The API reference documentation output generated from the OpenAPI definition. Compare Redoc with [Swagger UI](pubapis_swagger_demo.html) or other document generators that parse through an OpenAPI file and render documentation. The free version has limited functionality. </td>
          <td markdown="span">Free</td>
       </tr>
      <tr>
         <td markdown="span">[API Docs](https://redocly.com/reference/)</td>
         <td markdown="span"> The premium version of Redoc -- the API docs output from the OpenAPI definition file. This premium version includes Try-it functionality, enhanced search, fast loading, special tags, and other features. You can also compare the difference between [Redoc and Redocly here](https://redocly.com/redoc-vs-reference/).</td>
         <td markdown="span">Premium</td>
      </tr>
      <tr>
         <td markdown="span">[`create-openapi-repo`](https://github.com/Redocly/create-openapi-repo)</td>
         <td markdown="span">CLI tool for splitting a single OpenAPI definition file into multiple files. You can also use this CLI tool to start a new API definition.</td>
         <td markdown="span">Free</td>
      </tr>
      <tr>
         <td markdown="span">[`redocly-cli`](https://redocly.com/redocly-cli/)</td>
         <td markdown="span">CLI tool that provides linting against a customizable ruleset, as well as bundling of the OpenAPI files into a single file. You can also preview the output of your docs with the Redocly API Reference through this tool.</td>
         <td markdown="span">Free</td>
      </tr>
      <tr>
         <td markdown="span">[Developer Portal](https://redocly.com/portals/)</td>
         <td markdown="span">A sample starter developer portal, built on top of Gatsby. Intended for more robust documentation scenarios. See [Developer portal: Introduction](https://redoc.ly/docs/developer-portal/introduction/) for the Redocly documentation, and [`developer-portal-starter`](https://github.com/Redocly/developer-portal-starter) for some of the code.</td>
         <td markdown="span">Premium</td>
      </tr>
      <tr>
         <td markdown="span">[Workflows](https://redoc.ly/workflows) </td>
         <td markdown="span">An online Redocly app that provides the full authoring and publishing toolset in the cloud, with GitHub integration and docs-as-code workflows. See [https://app.redoc.ly](https://app.redoc.ly) </td>
         <td markdown="span">Premium</td>
      </tr>
   </tbody>
</table>

This article will focus mostly on the authoring experience working with the OpenAPI definition (using [`create-openapi-repo`](https://github.com/Redocly/create-openapi-repo) and [`redocly-cli`](https://redocly.com/redocly-cli/)), as well as publishing using [Redoc](https://redoc.ly/redoc). For more details about Redocly's Developer Portal and Workflows product, see the Products menu on [Redocly's site](https://redoc.ly). 

## Redocly CLI Walkthrough tutorial

This tutorial will give you a sense of how the Redocly CLI tools work and how to publish the OpenAPI using Redoc. You'll break up an OpenAPI file, make some changes, bundle it back up, and then publish it with Redoc. The tutorial has the following sections:

  - [1. Install the prerequisites](#prerequisites)
  - [2. Break up an OpenAPI file](#break_openapi)
  - [3. Check your OpenAPI definition against rules](#check_rules)
  - [4. Preview the Redoc output](#preview_output)
  - [5. Bundle up the OpenAPI definition into a single file](#bundle)
  - [6. Combine conceptual docs with reference docs](#conceptual_content)
  - [7. Explore the premium version: Redocly API Reference](#explore_premium)
  - [8. Publish the reference output](#build))

The sections aren't necessarily sequential, but they proceed through Redocly's tools in a logical way to become familiar with different aspects of the products. Also, the tutorial uses a sample OpenAPI definition related to the OpenWeatherMap API (used elsewhere in the course). Also, the instructions were written using a Mac. There might not be any differences with Windows, but note that Windows wasn't used here.

{: .note}
This tutorial is a brief exposure to Redocly's tools only. For more comprehensive documentation, see [Redocly's documentation](https://redoc.ly/docs/).

### 1. Install the prerequisites {#prerequisites}

Before you can work with the Redocly CLI tools, you need to install them. [node.js](https://nodejs.org/en/) is a prerequisite to installing both Redocly CLI tools.

1.  Install [`create-openapi-repo`](https://github.com/Redocly/create-openapi-repo) following the instructions in [How to generate your repository](https://github.com/Redocly/create-openapi-repo#how-to-generate-your-repository).

    "npx" is the npm package runner and is the recommended way of running packages that you would run occasionally (see [Downloading and installing packages globally](https://docs.npmjs.com/downloading-and-installing-packages-globally)). Redocly recommends using npx when installing the `create-openapi-repo` because it's typically used only once.

2.  Install [`openapi-cli`](https://github.com/Redocly/openapi-cli) following the instructions here: [Installation](https://redoc.ly/docs/cli/#installation).
3.  After you finish installing these CLI tools, restart your terminal.
5.  Check that your terminal recognizes the `create-openapi-repo` and `openapi-cli` commands.

{% comment %}
If not, you might need to either prepend the installation paths for the tools before the command, or else create an alias in your `.bash_profile` that has these paths. In my `.bash_profile` (inside the home directory at `~/`), I added aliases for the two paths:

    ```
    alias openapi='/Users/tomjoht/.nvm/versions/node/v10.11.0/bin/openapi'
    alias create-openapi-repo='/Users/tomjoht/.nvm/versions/node/v10.11.0/bin/create-openapi-repo'
    ```

You might not need to create aliases like this, and you might be using another profile instead of `.bash_profile`. Do whatever is necessary to install these tools before proceeding.
{% endcomment %}

### 2. Break up an OpenAPI file {#break_openapi}

In this step, you'll break up an existing OpenAPI file into smaller files. We'll use a sample OpenAPI file that we've been using in other places in this course.

1.  Download the [openapi_openweathermap.yml](https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml) file.

    Right-click the file and choose **Save Link As**. Save it in a folder called `redocly_project` in a convenient location. This OpenAPI definition is a small OpenAPI 3.0 file for one API in the [OpenWeatherMap API](https://openweathermap.org/api). Note that you can use another OpenAPI definition in this tutorial if you prefer. There's nothing special about this file &mdash; it just gives us an OpenAPI definition to work with.

2.  Open a terminal, browse to your `redocly_project` directory, and type the following:

    ```
    create-openapi-repo
    ```

    The CLI asks, "Do you already have an OpenAPI/Swagger 3.0 definition for your API? (y/N)"

3.  Type **y** and press **return**.

    The CLI asks, "Please specify the path to the OpenAPI definition (local file):"

4.  Type `openapi_openweathermap.yml` and press **return**.

    The CLI asks, "API Name: (OpenWeatherMap API)."

5.  Press **return**.

    The CLI asks, "The following folders will be created: openapi and docs. You can change them by running `create-openapi-repo <openapiDir> <docsDir>` Proceed? (Y/n)"

6.  Type **Y** and press **return**.

    The CLI breaks up your OpenAPI file into smaller files inside an `openapi` file. Redocly also installs adds some `node_modules` folders and initializes a git repository.

7.  In a text editor (such as VS Code, Atom, or Sublime Text), open the `redocly_project` folder and browse the contents.

    The folder structure looks like this:

    ```
    └── redocly_project
        ├── .git ...
        ├── .redocly
        ├── LICENSE
        ├── node_modules ...
        ├── README.md
        ├── docs
        │   ├── favicon.png
        │   └── index.html
        ├── openapi
        │   ├── README.md
        │   ├── components
        │   │   ├── README.md
        │   │   ├── parameters
        │   │   │   ├── id.yaml
        │   │   │   ├── lang.yaml
        │   │   │   ├── lat.yaml
        │   │   │   ├── lon.yaml
        │   │   │   ├── mode.yaml
        │   │   │   ├── q.yaml
        │   │   │   ├── units.yaml
        │   │   │   └── zip.yaml
        │   │   ├── schemas
        │   │   │   ├── 200.yaml
        │   │   │   ├── Clouds.yaml
        │   │   │   ├── Coord.yaml
        │   │   │   ├── Main.yaml
        │   │   │   ├── Rain.yaml
        │   │   │   ├── Snow.yaml
        │   │   │   ├── Sys.yaml
        │   │   │   ├── Weather.yaml
        │   │   │   └── Wind.yaml
        │   │   └── securitySchemes
        │   │       └── app_id.yaml
        │   ├── openapi.yaml
        │   └── paths
        │       ├── README.md
        │       └── weather.yaml
        ├── openapi_openweathermap.yml
        ├── package-lock.json
        └── package.json
    ```

    The original OpenAPI definition remains the same: `openapi_openweathermap.yml`. Redocly has extracted each of the paths, parameters, components, and other elements into individual files inside the `openapi` folder.

    Redocly creates a new OpenAPI definition file at `openapi/openapi.yaml`. This OpenAPI definition contains references to all of the files that it extracted as external files. If you view this `openapi.yaml` file, you'll see that Redocly has separated out paths with external JSON references (`$ref`), such as the following:

    ```yaml
    paths:
      /weather:
        $ref: paths/weather.yaml
    ```

    The `weather` path is now stored in `openapi/paths/weather.yaml`. When you open this `weather.yaml` file, you'll see that its parameters are also stored in external files:

    ```yaml
    parameters:
      - $ref: ../components/parameters/q.yaml
      - $ref: ../components/parameters/id.yaml
      - $ref: ../components/parameters/lat.yaml
      - $ref: ../components/parameters/lon.yaml
      - $ref: ../components/parameters/zip.yaml
      - $ref: ../components/parameters/units.yaml
      - $ref: ../components/parameters/lang.yaml
      - $ref: ../components/parameters/mode.yaml
    ```

    The OpenAPI definition allows for breaking up files like this and referencing the external files with `$ref`.

    {: .note}
    Note that `../` refers to another file, whereas `#/` refers to another section on the same page (such as with references to `components`).

    Although the `$ref` syntax is standard, most tools don't work well with OpenAPI files separated out. Usually, when you want to generate API documentation, you'll need to feed the preferred API documentation generator a single OpenAPI YAML or JSON file, not a folder of separate files. But when your working on the API definition, it's helpful to separate files to more easily work with the content.

    In this OpenAPI scenario, there's just one simple path: `weather`. However, suppose you had a slash, such as `weather/surfing` or something similar. In that case, because `/` is an illegal character in file names, Redocly would store this as `weather@surfing` under the `paths` folder. Forward slashes (`/`) become `@` symbols.

    Additionally, if you had a path parameter, such as `weather/{beach_id}`, Redocly uses curly braces `{}` to denote path parameters (rather than a colon `:` which is sometimes used).

    See the `README.md` in the `openapi` folder for more details on these conventions. These conventions are recommendations only. You can decide how you reference the paths from `openapi.yaml`.

{% include ads.html %}

### 3. Check your OpenAPI definition against rules {#check_rules}

Redocly lets you run a linter against your OpenAPI definition to check for best practices. In this step, you'll break some rules, run the linter, and see the warnings displayed.

1.  Open the `.redocly.yaml` file (inside the root directory) to see Redocly's configuration details, including the linting rulesets, themes, and OpenAPI file used:

    ```yaml
    apiDefinitions:
      main: openapi/openapi.yaml
    lint:
      extends:
        - recommended
      rules:
        no-unused-components: warning
    referenceDocs:
      htmlTemplate: ./docs/index.html
      theme:
        colors:
          primary:
            main: "#32329f"
    ```

    See [Configuration file](https://redoc.ly/docs/cli/configuration/) for details about each of these fields. Notice that `main` references the OpenAPI definition file. You could list multiple OpenAPI definitions here. Under `lint`, the `recommended` ruleset is specified.

    You can customize how strict the linting rules are, whether to ignore some rules, and make other configurations. For example, the recommended rules check that you follow best practices for completing the information (even if it's optional in the spec) because this information leads to a better output when you generate the Redoc output. You will see warnings if you're missing a `contact` object under `info`, if you're missing a `description` for `tags`, if you're missing `description` properties for each `parameter`, and so on. You can learn more about the linting rules here: [Rules](https://redoc.ly/docs/cli/built-in-rules/).

2.  In a terminal prompt, `cd` to your `redocly_project` folder.

3.  Run the linter:

    ```
    redocly lint
    ```

    By default, all OpenAPI files listed in your `.redocly.yaml` file's `apiDefinitions` object will be used. These are the command's `entrypoints`. For example, although you just typed `openapi lint`, the command fills in the implied defaults as follows:

    ```
    redocly lint main openapi/openapi.yaml
    ```

    Here's the response when the linter finds that your OpenAPI definition is valid:

    ```
    validating /Users/tomjoht/projects/redocly_project/openapi/openapi.yaml...

    /Users/tomjoht/projects/redocly_project/openapi/openapi.yaml: validated in in 35ms

    Woohoo! Your OpenAPI definition is valid.
    ```

4.  To see a generated warning, let's violate some best practices. Open your `openapi/openapi.yaml` file and remove the `license` object:

    ```yaml
    license:
      name: CC Attribution-ShareAlike 4.0 (CC BY-SA 4.0)
      url: 'https://openweathermap.org/price'
    ```

    Then save the file.

5.  Now run the `openapi lint` command again, and this time you'll see that Redocly identifies a missing license and provides recommendations:

    ```
    validating /Users/tomjoht/projects/redocly_project/openapi/openapi.yaml...
    [1] openapi/openapi.yaml:3:3 at #/info

    Info object should contain `license` field.

     1 | openapi: 3.0.2
     2 | info:
     3 |   title: OpenWeatherMap API
     4 |   description: >-
     … |   < 14 more lines >
    19 |     email: some_email@gmail.com
    20 | servers:
    21 |   - url: 'https://api.openweathermap.org/data/2.5'

    Warning was generated by the info-license rule.


    /Users/tomjoht/projects/redocly_project/openapi/openapi.yaml: validated in in 126ms

    Woohoo! Your OpenAPI definition is valid. 🎉
    You have 1 warning.
    ```

As your OpenAPI file gets larger and more complex, having a linter to check the definitions against a ruleset can be highly valuable.

(Before continuing on, restore the `license` object in the `openapi.yaml` file that you previously removed.)

### 4. Preview the Redoc output {#preview_output}

The CLI contains a Redoc documentation preview server that listens for changes and rebuilds when it detects a change. To run the preview server:

1.  Type the following command:

    ```
    redocly preview-docs
    ```

    The response is as follows:

    ```
    Using Redoc community edition.
    Login with openapi-cli login or use an enterprise license key to preview with the premium docs.


      🔎  Preview server running at http://127.0.0.1:8080

    Bundling...


      👀  Watching /Users/tomjoht/projects/redocly_project/openapi/openapi.yaml and all related resources for changes

    Created a bundle for /Users/tomjoht/projects/redocly_project/openapi/openapi.yaml successfully
    GET /: 43.289ms
    GET /hot.js: 22.313ms
    GET /simplewebsocket.min.js: 34.003ms
    GET /openapi.json: 0.507ms
    GET /favicon.png: 1.720ms
    ```

    Redoc bundles up your individual files into a single OpenAPI definition and passes it into the Redoc documentation generator. By default, you're using the community edition of Redoc, which lacks some of the features of the pro version. (The differences are explained in more detail later in this section and also in [7. Explore the premium version: Redocly API Reference](pubapis_redocly.html#explore_premium).)

2.  Go to `http://127.0.0.1:8080` in your browser to see a preview of the output:

    <img src="{{site.media}}/redoclypreviewdocs.png" alt="Redocly preview" />

3.  To see the auto-regeneration, go into one of your files in `openapi` and make a change. For example go to `openapi/components/parameters/lat.yaml` and change a line in the description, and then save the file.

    The preview server rebuilds the output and reloads the page.

4.  Press **Ctrl+C** to stop the preview server.

    Note that we're currently using the Community Edition of Redoc. We'll explore more features in the Pro version in [7. Explore the premium version: Redocly API Reference](#explore_premium).

### 5. Bundle up the OpenAPI definition into a single file {#bundle}

Let's bundle the separate files into a single OpenAPI definition file. You might want to do this if you're done working with your file and want to generate out the output to feed into another tool to render the documentation. To bundle up the OpenAPI files:

1.  Run the following command:

    ```
    redocly bundle main -o dist.json
    ```

    `main` refers to the OpenAPI definition you want bundled, as specified in your `.redocly.yaml` file's `apiDefinitions` object. The `-o dist.json` specifies the output file. After running the command, you see the following:

    ```
    bundling openapi/openapi.yaml...
    📦 Created a bundle for openapi/openapi.yaml at dist.json in 38ms.
    ```

2.  Open `dist.json` to see that it contains all the references packaged into a single file.

Now let's dive into some more features related to the authoring experience: how to integrate conceptual docs with reference docs.

### 6. Combine conceptual docs with reference docs {#conceptual_content}

One common question in writing API tech docs is how to combine conceptual docs (e.g., getting started tutorials, information about authorization, troubleshooting, etc.) with the reference docs. Most API documentation generators generate reference docs only.

Redocly has some unique offerings when it comes to organizing and working with conceptual content. One integration strategy is to put all of your conceptual information into the `description` field of your `info` object, and then store that `description` content in an external file. Any heading 1 and 2 tags (`#` and `##`) in your `description` will become separate entries in the sidebar. Let's walk through this.

1.  In our sample redocly project, open `openapi.yaml` and change the `description` to a `$ref` pointing to a separate Markdown file. Specifically, identify this section:

    ```yaml
    openapi: 3.0.2
    info:
      title: OpenWeatherMap API
      description: >-
        Get the current weather, daily forecast for 16 days, and a
        three-hour-interval forecast for 5 days for your city. Helpful stats,
        graphics, and this day in history charts are available for your reference.
        Interactive maps show precipitation, clouds, pressure, wind around your
        location stations. Data is available in JSON, XML, or HTML format. **Note**:
        This sample Swagger file covers the `current` endpoint only from the
        OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but
        you must select at least one parameter. Calling the API by city ID (using
        the `id` parameter) will provide the most precise location results.
    ```

    And change it to this:

    ```yaml
    openapi: 3.0.2
    info:
      title: OpenWeatherMap API
      description:
      $ref: description.md
    ```

    Note that `$ref: description.md` is technically incorrect with the OpenAPI spec, but the Redocly bundle process places that Markdown inline to correct it.

    {: .tip}
    For more detail on using `$ref`, see [Using JSON references ($refs)](https://redoc.ly/docs/resources/ref-guide/).

2.  Create a file called `description.md` under the `openapi` folder and paste the description content there.
3.  Run the preview server:

    ```
    redocly preview-docs
    ```

4.  Go to [http://127.0.0.1:8080](http://127.0.0.1:8080). The description appears the same as before, but it's now a bit easier to work with because it's in a standalone file. You don't have worry about maintaining proper indentation in YAML. You can write more freely. As with the OpenAPI spec, the Markdown flavor supported is [Commonmark Markdown](https://spec.commonmark.org/0.29/).
5.  In your `description.md` file, add some heading tags, like this:

    ```md
    # Overview

    Get the current weather, daily forecast for 16 days, and a
    three-hour-interval forecast for 5 days for your city.

    ## Graphics and charts

    Helpful stats, graphics, and this day in history charts are available for your reference.

    # Interactive maps

    Interactive maps show precipitation, clouds, pressure, wind around your location stations. Data is available in JSON, XML, or HTML format.

    **Note**: This sample Swagger file covers the `current` endpoint only from the OpenWeatherMap API. <br/><br/> **Note**: All parameters are optional, but you must select at least one parameter. Calling the API by city ID (using the `id` parameter) will provide the most precise location results.
    ```

6.  Save the file and check the reload in the preview server.

    In the preview server, notice how the heading levels are reflected in the sidebar.

    <img src="{{site.media}}/redoclysidebarnav.png" alt="How headings are reflected in the sidebar" />

    First-level headings become parent-level sidebar entries. Second-level headings become child-level sidebar entries to the parents. (Deeper levels aren't supported.)

7.  You can also re-use some content from your OpenAPI definition. In your description file, add this tag:

    ```
    <SecurityDefinitions />
    ```

8.  Save the file and check the reload in the preview server.

    The security object from your OpenAPI definition appears directly in your description content.

    The pro version lets you embed other tags and also push content into the right menu. We'll explore that in the next section.

    For an example of fairly robust API documentation that uses the sidebar for a lot of conceptual documentation, see the [Checkr documentation](https://docs.checkr.com/).

    <a class="noCrossRef" href="https://docs.checkr.com/"><img src="{{site.media}}/checkrdocs.png" alt="Checkr documentation" /></a>

If integrating your conceptual content like this doesn't work for your doc needs, Redocly offers a more robust option: [Redocly Developer Portals](https://redoc.ly/developer-portal/). The Redocly Developer Portals use Gatsby as a static site generator to give you more complete control and customization for non-reference content. Gatsby also provides many pre-built React components, which makes building out other features of a developer portal, such as marketing landing pages and other UI elements in a console, much easier.

{% include random_ad2.html %}

### 7. Explore the premium version: Redocly API Reference {#explore_premium}

The lack of the Try-it explorer in the Redoc community edition is a major reason to upgrade to the premium version (Redocly API Reference). As I've argued elsewhere in this course, the try-it functionality makes API documentation both interactive and interesting. In this tutorial, we've been using the community edition of Redoc. The premium version, called [Redocly API Reference](https://redoc.ly/reference-docs), provides several key benefits:

* **The Try-it-out explorer**. You can execute calls in the browser. This interactivity is what makes REST API docs so powerful and instructive.
* **Optimized loading**. The output is split into multiple files to render loading more quickly (up to 10x faster).
* **Special tags**. You can use special tags to pull in content from your reference content (such as your security definition or a response).
* **Right pane**. You can push code into the right pane so that it appears juxtaposed with the conceptual info in the main column.
* **Enhanced search**. Search is more comprehensive and detailed, including results for request and response parameters, among other enhancements.

Here's a short video explaining the top 3 reasons why people choose the pro version:

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains YouTube videos. Please go to [https://idratherbewriting.com/learnapidoc/pubapis_redocly_tutorial.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<iframe width="560" height="315" src="https://www.youtube.com/embed/NcEHOlnAY6A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

{% endif %}

If you have a license for the pro version, you would [generate an API key](https://redoc.ly/docs/workflows/personal-access-token.md) and then use the [`openapi login`](https://redoc.ly/docs/cli/commands/#login) command to unlock the pro features. (The [`openapi logout`](https://redoc.ly/docs/cli/commands/#logout) command clears the API key, reverting you to the community edition.) Pricing for different versions of Redocly is available on their [Pricing](https://redoc.ly/pricing) page.

Let's enable the premium version features and see how they work. (You won't have to purchase anything to explore the features locally.)

1.  Sign in to [Redocly](https://redoc.ly/).
2.  Go to your Redocly profile at [https://app.redoc.ly/profile](https://app.redoc.ly/profile) and create a Personal API key. Copy the key.
3.  Type the following:

    ```
    redocly login
    ```
4.  When prompted for a password, paste the password into the terminal and press **Enter**. Then, authorization begins. [Q: Are you prompted for your API key at this point?]
4.  In your `description.md` file, add some `PullRight` tags with some sample code, such as the following:

    ```
    <PullRight>
    Examples of API calls:

    JSON api.openweathermap.org/data/2.5/weather?q=London

    XML api.openweathermap.org/data/2.5/weather?q=London&mode=xml

    HTML api.openweathermap.org/data/2.5/weather?q=London&mode=html
    </PullRight>
    ```

5.  View the preview server ([http://127.0.0.1:8080/](http://127.0.0.1:8080/)) and see the code populate in the right column.

    <img src="{{site.media}}/pullrightredocly2.png" alt="PullRight tags" />

6.  In your `description.md` file, re-use a parameter description from your reference:

    ```
    <RedocResponse pointer={"#/components/parameters/lat"} />
    ```
7.  View the preview server and see the `lat` parameter appear (highlighted below).

    <img style="border: 1px solid #dedede;" src="{{site.media}}/redoclyembedref.png" alt="Re-used reference content" />

8.  Open `.redocly.yaml` and add `showConsole: true` under `referenceDocs`:

    ```yaml
    referenceDocs:
      htmlTemplate: ./docs/index.html
      showConsole: true
    ```
9.  View the preview server and look for the blue "TRY IT" tab next to the weather path:

    <img src="{{site.media}}/try-it-tab-redocly.png" alt="Try it tab" />

10. Click the **TRY IT** tab. An API explorer replaces the right pane with options to configure a request.
11.  For the `zip` parameter, enter `95050` (or another zip code).
12. Click the **Auth (app_id)** tab in the upper-right and enter your [OpenWeatherMap API key](https://home.openweathermap.org/api_keys). (If you don't have one, use `126cac1a482f51de0f1287b45ae2bf9a`.)
13. Click **Send**.

    A successful response returns JSON such as the following:

    ```json
    {
      "coord": {
        "lon": -121.98,
        "lat": 37.35
      },
      "weather": [
        {
          "id": 711,
          "main": "Smoke",
          "description": "smoke",
          "icon": "50n"
        }
      ],
      "base": "stations",
      "main": {
        "temp": 65.48,
        "feels_like": 62.38,
        "temp_min": 63,
        "temp_max": 68,
        "pressure": 1016,
        "humidity": 68
      },
      "visibility": 10000,
      "wind": {
        "speed": 8.05,
        "deg": 10
      },
      "clouds": {
        "all": 40
      },
      "dt": 1596517361,
      "sys": {
        "type": 1,
        "id": 5845,
        "country": "US",
        "sunrise": 1596460471,
        "sunset": 1596510811
      },
      "timezone": -25200,
      "id": 0,
      "name": "Santa Clara",
      "cod": 200
    }
    ```
    You can learn more about the Try it feature here: [The try it API console](https://redoc.ly/docs/api-reference-docs/console-overview/).

### 8. Publish the reference output {#build}

So far we've been exploring the API reference output from within the preview server. Now let's publish the reference output outside of the preview server:

1.  Bundle the OpenAPI definition.

    ```
    redocly bundle main -o dist.json
    ```

2.  Inside a folder called `redoc`, create an HTML file called `index.html`.
3.  In your `index.html` file, insert the following  template for rendering the OpenAPI definition using Redoc JS delivered through a CDN.

    ```html
    <!DOCTYPE html>
    <html>
      <head>
        <title>ReDoc</title>
        <!-- needed for adaptive design -->
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700|Roboto:300,400,700" rel="stylesheet">

        <!--
        ReDoc doesn't change outer page styles
        -->
        <style>
          body {
            margin: 0;
            padding: 0;
          }
        </style>
      </head>
      <body>
        <redoc spec-url='http://petstore.swagger.io/v2/swagger.json'></redoc>
        <script src="https://cdn.jsdelivr.net/npm/redoc@next/bundles/redoc.standalone.js"> </script>
      </body>
    </html>
    ```

    {: .important}
    If you have a license for the premium version (the Redocly API Reference) and you want the Try-it console enabled, you would use the code described here: [Example with "Try It" console enabled](https://redoc.ly/docs/api-reference-docs/on-premise/js-cdn/#example-with-try-it-console-enabled) in the JavaScript CDN usage (self-hosted) page. However, because we're just publishing with the community edition version of Redoc, we'll use the code described in the [Redoc GitHub page](https://github.com/Redocly/redoc#tldr).

3.  Replace `http://petstore.swagger.io/v2/swagger.json` with a reference to `dist.json`.

    ```html
      <redoc spec-url='dist.json'></redoc>
    ```

4.  Drag the `dist.json` file generated in step 1 into your `redoc` folder so that the reference is valid.
5.  To view the output, you can either upload the files onto a web server, or you can simulate an HTTP server locally. To simulate an HTTP server locally, you can use Python Simple HTTP Server. You can view detailed steps for running this server here: [ Activity: View local OpenAPI file in Swagger UI](https://idratherbewriting.com/learnapidoc/pubapis_swagger.html#view_local_openapi_swaggerui). In short, if you already have [Python3](https://www.python.org/downloads/) installed, `cd` to your `redoc` folder and run this command: `python3 -m http.server`. Then browse to port `http://localhost:8000/` and view the Redoc output.

{: .tip}
Redoc provides a lot of options to configure the output. Options to configure the [community edition of Redoc](https://redoc.ly/redoc) are here: [`<redoc>` options object](https://github.com/Redocly/redoc#redoc-options-object). Options to configure the [Redocly API Reference version](https://redoc.ly/reference-docs) are here: [Customization](https://redoc.ly/docs/api-reference-docs/on-premise/customization/).

For sample API reference docs built with Redoc, see [Some Real-life usages](https://github.com/Redocly/redoc#some-real-life-usages) on the Redoc GitHub page.

{% include random_ad3.html %}

## Conclusion

Redoc provides one of the most attractive outputs for REST API docs. In a [recent survey about trends in developer documentation](https://idratherbewriting.com/learnapidoc/docapis_trends.html), I asked developers "How do you render the OpenAPI specification into documentation?" Although [Swagger UI](https://idratherbewriting.com/learnapidoc/pubapis_swagger.html) was the most common (used 27% of the time), this is likely because it's free. The premium version of Swagger (called [SwaggerHub](https://idratherbewriting.com/learnapidoc/pubapis_swaggerhub_smartbear.html)) was used only 4% of the time. In contrast, Redoc was used 8% of the time.

{% if site.format == "kindle" or site.format == "pdf" %}
*Note: This content doesn't embed well in print because it contains JavaScript. Please go to [https://idratherbewriting.com/learnapidoc/pubapis_redocly_tutorial.html] to view the content.*
{% endif %}

{% if site.format == "web" %}

<iframe src='https://www.questionpro.com/t/ZRimssZG1r6Yg' width='100%' height='600' frameBorder='0'></iframe>

{% endif %}

Overall, the output from Redoc does seem more polished and user-friendly than other API reference doc outputs. For the interactivity feature alone I would definitely recommend using the premium version ([Redocly API Reference](https://redoc.ly/reference-docs/)) rather than the community edition. Redocly's CLI-based toolset provides a way to work more efficiently in the code, supporting a [docs-as-code workflow](https://idratherbewriting.com/learnapidoc/pubapis_docs_as_code.html). If this command-line-based toolset and three-column output appeal to you, Redoc might be the way to go. You can start a [free trial here](https://app.redoc.ly/org/idratherbewriting/start-trial) or learn more here: [Redocly](https://redoc.ly/).
